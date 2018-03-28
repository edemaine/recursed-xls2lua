## http://steamcommunity.com/sharedfiles/filedetails/?id=800043882

fs = require 'fs'
path = require 'path'

loadXLSX = (data) ->
  ## Based on svgtiler's XLSXDrawings
  xlsx = require 'xlsx'
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

tileNames = ['solid', 'ledge', 'water', 'acid']
tileMapping =
  s: 'solid'
  solid: 'solid'
  l: 'ledge'
  ledge: 'ledge'
  w: 'water'
  water: 'water'
  a: 'acid'
  acid: 'acid'
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
  lock: 'lock'
  chest: 'chest'
  c: 'chest'
  y: 'yield'
  yield: 'yield'
  cr: 'crystal'
  crystal: 'crystal'
  goal: 'crystal'
  d: 'diamond'
  diamond: 'diamond'
  r: 'record'
  record: 'record'
  f: 'fan'
  fan: 'fan'
  b: 'bird'
  bird: 'bird'
  g: 'generic'
  generic: 'generic'
  o: 'generic'
  oobleck: 'generic'
objectHeight =
  player: 2
  box: 1
  key: 1
  lock: 3
  chest: 1
  yield: 2
  crystal: 1 #?
  diamond: 1 #?
  record: 1
  fan: 1
  bird: 1
  crux: 1
  generic: 1

buildLevel = (rooms) ->
  level = []
  ## First character to encode tiles
  level.push "local wip = { " +
    ("#{tile[0]} = \"#{tile}\"" for tile in tileNames).join(', ') +
    " }"
  for room in rooms
    level.push "function #{room.subname}()"
    height = room.length
    width = Math.max (row.length for row in room)...
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
              tiles[y][x] = tileMapping[cell][0]
              continue
            else
              [object, arg] = item.split ':'
              continue unless object of objectMapping
              object = objectMapping[object]
              [object, arg]
    for row, y in roomObjects
      for items, x in row
        for [object, arg] in items
          if object of objectMapping
            if arg?
              ## Auto-quote room names for chests
              if object == 'chest' and arg[0] not in ['"', "'"]
                arg = "\"#{arg.replace '"', '\\"'}\""
              arg = ", #{arg}"
            else
              arg = ""
            for dy in [1...objectHeight[object]]
              for [object2, ...], i in roomObjects[y+dy]?[x] ? []
                if object2 == object
                  roomObjects[y+dy][x].splice i, 1
                  break
            y += objectHeight[object] - 1
            x += 0.5
            spawns.push "  Spawn(\"#{objectMapping[object]}\", #{x}, #{y}#{arg})"
    level.push "  ApplyTiles(wip, 0, 0, [["
    level.push (row.join '' for row in tiles).join '\n'
    level.push "]])"
    level.push spawns...
    level.push "end"
  level.push '' ## final newline
  level.join '\n'

main = ->
  for filename in process.argv[2..]
    filename2 = path.parse filename
    filename2.base = filename2.base[...-filename2.ext.length] + '.lua'
    filename2 = path.format filename2
    sheets = loadXLSX fs.readFileSync filename, encoding: 'binary'
    fs.writeFileSync filename2, buildLevel sheets

main()
