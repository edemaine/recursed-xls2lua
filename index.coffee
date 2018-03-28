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
    for row, y in room
      for cell, x in row
        items = cell.split /[\s,]+/
        for item in items
          if item of tileMapping
            tiles[y][x] = tileMapping[cell][0]
          else
            [item, arg] = item.split ':'
            if item of objectMapping
              if arg?
                arg = ", \"#{arg.replace '"', '\\"'}\""
              else
                arg = ""
              spawns.push "  Spawn(\"#{objectMapping[item]}\", #{x}, #{y}#{arg})"
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
