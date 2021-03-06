#!/usr/bin/coffee --bare
`#!/usr/bin/env node
`

## http://steamcommunity.com/sharedfiles/filedetails/?id=800043882

fs = require 'fs'
path = require 'path'
xlsx = require 'xlsx'

loadXLSX = (data) ->
  ## Based on svgtiler's XLSXDrawings
  workbook = xlsx.read data, type: 'binary'
  ## https://www.npmjs.com/package/xlsx#common-spreadsheet-format
  for subname in workbook.SheetNames
    sheet = workbook.Sheets[subname]
    if subname.length == 31
      console.warn "Warning: Sheet '#{subname}' has length exactly 31, which may be caused by Google Sheets export truncation"
    rows = xlsx.utils.sheet_to_json sheet,
      header: 1
      defval: ''
    rows.subname = subname
    rows

saveXLSX = (sheets, filename) ->
  workbook = xlsx.utils.book_new()
  for sheet in sheets
    xlsx.utils.book_append_sheet workbook,
      xlsx.utils.aoa_to_sheet(sheet), sheet.subname
  xlsx.writeFile workbook, filename

tileNames = ['solid', 'ledge', 'water', 'acid', 'buoy', 'ledgewet']
tileMapping =
  s: 'solid'
  solid: 'solid'
  "-": 'ledge'
  ledge: 'ledge'
  w: 'water'
  water: 'water'
  a: 'acid'
  acid: 'acid'
  buoy: 'buoy'
  bu: 'buoy'
  ledgewet: 'ledgewet'
  lw: 'ledgewet'
tileChar =
  solid: 's'
  ledge: 'l'
  water: 'w'
  acid: 'a'
  buoy: 'b'
  ledgewet: 'L'
objectNames = ['player', 'box', 'key', 'lock', 'chest', 'yield', 'crystal',
               'diamond', 'record', 'fan', 'bird', 'crux', 'generic']
objectMapping =
  p: 'player'
  player: 'player'
  b: 'box'
  box: 'box'
  k: 'key'
  key: 'key'
  d: 'lock'
  door: 'lock'
  l: 'lock'
  lock: 'lock'
  chest: 'chest'
  c: 'chest'
  y: 'yield'
  yield: 'yield'
  cr: 'crystal'
  crystal: 'crystal'
  goal: 'crystal'
  di: 'diamond'
  diamond: 'diamond'
  r: 'record'
  record: 'record'
  f: 'fan'
  fan: 'fan'
  bi: 'bird'
  bird: 'bird'
  g: 'generic'
  generic: 'generic'
  o: 'generic'
  oobleck: 'generic'
objectHeight =
  player: 2
  box: 1
  key: 1
  lock: 2.5
  chest: 1
  yield: 1
  crystal: 1 #?
  diamond: 1 #?
  record: 1
  fan: 1
  bird: 1
  crux: 1
  generic: 1

copyRoom = (room) ->
  for row in room
    for string in row
      string

duplicateRooms = (rooms) ->
  roomMap = {}
  for room in rooms
    roomMap[room.subname] = room
    if match = (room?[0]?[0] ? '').match /^duplicate:([^:]+)/
      newname = room.subname
      commands = room[1..]
      room = copyRoom roomMap[match[1]]
      room.subname = newname
      for command in commands
        switch command[0]
          when 'replace'
            for row, y in room
              for cell, x in row
                if cell == command[1]
                  row[x] = command[2]
    room

buildLevel = (rooms) ->
  level = []
  ## First character to encode tiles
  level.push "local wip = { " +
    ("#{tileChar[tile]} = \"#{tile}\"" for tile in tileNames).join(', ') +
    " }"
  roomMap = {}
  for room in rooms
    roomMap[room.subname] = room
    level.push "function #{room.subname}()"

    ## Remove trailing blank rows until we get to 15 rows
    ## (sometimes XLSX exports include these blank rows)
    while room.length > 15 and
          (cell for cell in room[room.length-1] when cell.trim().length).length == 0
      room.pop()
    height = room.length
    width = Math.max (row.length for row in room)...
    unless width == 20 and height == 15
      console.warn "Warning: Room #{room.subname} dimensions #{width}x#{height} instead of 20x15"

    tiles =
      for y in [0...height]
        for x in [0...width]
          '.'
    spawns = []
    roomObjects =
      for row, y in room
        for cell, x in row
          items = cell.split /\s*[,;]\s*/
          for item in items
            if item of tileMapping
              tiles[y][x] = tileChar[tileMapping[cell]]
              continue
            else
              item = item.trim()
              global = (item[0] == '!')
              if global
                item = item[1..].trim()
              [object, arg] = item.split ':'
              continue unless object of objectMapping
              object = objectMapping[object]
              {object, global, arg}
    for row, y in roomObjects
      for items, x in row
        for {object, global, arg} in items
          if object of objectMapping
            if arg?
              ## Auto-quote arguments for chests and records
              if object in ['chest', 'record'] and
                 arg[0] not in ['"', "'"]
                arg = "\"#{arg.replace '"', '\\"'}\""
              arg = ", #{arg}"
            else
              arg = ""
            for dy in [1...objectHeight[object]]
              for neighbor, i in roomObjects[y+dy]?[x] ? []
                if neighbor.object == object
                  roomObjects[y+dy][x].splice i, 1
                  break
            yActual = y + objectHeight[object] - 1
            xActual = x + 0.5
            if global
              spawn = 'Global'
              if object in ['player', 'yield', 'crystal', 'diamond',
                            'record', 'bird']
                console.warn "Warning: #{object} should not be global"
            else
              spawn = 'Spawn'
            spawns.push "  #{spawn}(\"#{objectMapping[object]}\", #{xActual}, #{yActual}#{arg})"
    level.push "  ApplyTiles(wip, 0, 0, [["
    level.push (row.join '' for row in tiles).join '\n'
    level.push "]])"
    level.push spawns...
    level.push "end"
  level.push '' ## final newline
  level.join '\n'

main = ->
  filenames = []
  outputDirs = null
  expand = false
  skip = 0
  args = process.argv[2..]
  for arg, i in args
    if skip > 0
      skip--
      continue
    switch arg
      when '-o'
        outputDirs ?= []
        outputDirs.push args[i+1]
        skip = 1
      when '-e', '--expand'
        expand = true
      else
        filenames.push arg
  if expand
    extension = '-expanded.xlsx'
  else
    extension = '.lua'
  for filename in filenames
    console.log '**', filename
    filename2 = path.parse filename
    filename2.base = filename2.base[...-filename2.ext.length] + extension
    sheets = loadXLSX fs.readFileSync filename, encoding: 'binary'
    sheets = duplicateRooms sheets
    if expand
      output = (filename) -> saveXLSX sheets, filename
    else
      level = buildLevel sheets
      output = (filename) -> fs.writeFileSync filename, level
    if outputDirs?
      for dirname in outputDirs
        outname = path.join dirname, filename2.base
        console.log '->', outname
        output outname
    else
      outname = path.format filename2
      console.log '->', outname
      output outname

main()
