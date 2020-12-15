# Mapping of internal room names to LaTeX label.
# I'm guessing that A_01 and B_10 will be the reference "room i,j"
#
# In order of appearance
nameMap =
  # start room
  "A00" : "A_{0,0}"
  "global_lock"  : "\\text{GL}" # "\\gl{}" # too big

  # DC gadget needs to be re-done in small_examples to match binary tree version
  "VDCi" : "V_{DC_i}"
  "PDCi+1" : "P_{DC_{i+1}}"
  "DCi+1,2j" : "DC_{i+1,2j}"
  "DCi+1,2j+1" : "DC_{i+1,2j+1}"

  # Aij rooms
  "VA01" : "V_{A_{i,j}}"
  "PB00" : "P_{A_{i,j+1}}"
  "BC00" : "A_{i,j+1}"
  "PAB_local" : "\\phs{}"
  "PBb" : "P_{s(A_{i,j}),b}"
  "VAb" : "V_{s(A_{i,j}),a}"
  "VBb" : "V_{s(A_{i,j}),b}"

  # Bij^C
  "VB10" : "V_{B_{i,j}}"
  "PB_local1" : "P_{B^{(J)}}"
  "BJ10" : "B^{(J)}_{i,j}"
  "PB11" : "P_{B_{i,j+1}}"
  "VB_local2" : "V_{B^{(C)}}"
  "BC11" : "B^{(C)}_{i,j+1}"

  # Bij^J
  "VB_local1" : "V_{B^{(J)}}"
  "PB_local2" : "P_{B^{(C)}}"

  "VBsb" : "V_{s(B_{i,j}),b}"
  "PAb"  : "P_{s(B_{i,j}),a}"
  "VAB_local" : "\\vhs{}"

  # stop
  "VAx0" : "V_{A_{x,0}}"

  "A10" : "A_{1,0}"
  "Mx" : "M_x"

sprite = (x) -> "../sprites/#{x}.png"
area = 'city'

blank =
  <rect width="16" height="16" fill="black" stroke="black" stroke-width="0.01"/>
#blank = <>
#  <rect width="16" height="16" fill="black"/>
#  <line x1="16" x2="16" y2="16" stroke="black" stroke-width="0.1"/>
#  <line y1="16" y2="16" x2="16" stroke="black" stroke-width="0.1"/>
#</>

# Based on svgtiler's Symbol.imageRendering
rendering =
  "image-rendering": "optimizeSpeed"
  style: "image-rendering:pixelated"

mapping =
  '':
    <symbol viewBox="0 0 16 16" style="overflow: visible" z-index="-1">
      {blank}
    </symbol>
  ">":
    <symbol viewBox="0 0 16 16" style="overflow: visible">
      {blank}
      <line x1="3" x2="9.5" y1="8" y2="8" stroke="white" stroke-width="2"/>
      <path d="M 9,5 L 13,8 L 9,11 Z" fill="white"/>
    </symbol>
  solid: solid =
    <symbol viewBox="0 0 16 16" style="overflow: visible">
      <image {...rendering} xlink:href={sprite "solid_#{area}"} width="16" height="16"/>
    </symbol>
  s: solid
  ledge: ledge =
    <symbol viewBox="0 0 16 16" style="overflow: visible">
      {blank}
      <image {...rendering} xlink:href={sprite "ledge_#{area}"} width="16" height="16"/>
    </symbol>
  "-": ledge
  crystal: crystal =
    <symbol viewBox="0 0 16 16" overflowBox="-16 -24 48 64" style="overflow: visible">
      {blank}
      <image {...rendering} xlink:href={sprite "crystal"} x="-16" y="-24" width="48" height="64"/>
    </symbol>
  goal: crystal
  ring: ring =
    <symbol viewBox="0 0 16 16" style="overflow: visible">
      {blank}
      <image {...rendering} xlink:href={sprite "ring"} width="16" height="16"/>
    </symbol>
  r: ring
  block: block =
    <symbol viewBox="0 0 16 16" overflowBox="-2 0 22 16" style="overflow: visible; z-index: 10">
      {blank}
      <image {...rendering} xlink:href={sprite "block"} x="-2" width="20" height="16"/>
    </symbol>
  b: block
  "!b": green_block =
    <symbol viewBox="0 0 16 16" overflowBox="-16 -22 45 38" style="overflow: visible; z-index: 20">
      {blank}
      <image {...rendering} xlink:href={sprite "green_block"} x="-16" y="-22" width="45" height="38"/>
    </symbol>
  "!block": green_block
  key: key =
    <symbol viewBox="0 0 16 16" overflowBox="-2 0 22 16" style="overflow: visible; z-index: 10">
      {blank}
      <image {...rendering} xlink:href={sprite "key"} x="-2" width="22" height="16"/>
    </symbol>
  k: key
  "!key": green_key =
    <symbol viewBox="0 0 16 16" overflowBox="-17 -12 41 28" style="overflow: visible; z-index: 20">
      {blank}
      <image {...rendering} xlink:href={sprite "green_key"} x="-17" y="-12" width="41" height="28"/>
    </symbol>
  "!k": green_key
  chest: chest =
    <symbol viewBox="0 0 16 16" overflowBox="-2 -11 24 27" style="overflow: visible; z-index: 12">
      {blank}
      <image {...rendering} xlink:href={sprite 'chest'} x="-2" y="-11" width="24" height="27"/>
    </symbol>
  c: chest
  yield: y =
    <symbol viewBox="0 0 16 16" overflowBox="-16 -16 48 48" style="overflow: visible; z-index: 30">
      {blank}
      <image {...rendering} xlink:href={sprite 'green_flame'} x="-16" y="-16" width="48" height="48"/>
    </symbol>
  y: y
  jar: jar =
    <symbol viewBox="0 0 16 16" overflowBox="-3 3 23 13" style="overflow: visible; z-index: 10">
      {blank}
      <image {...rendering} xlink:href={sprite 'jar'} x="-3" y="3" width="23" height="13"/>
    </symbol>
  j: jar
  door: door = ->
    if @neighbor(0,1).key in ['d', '!d', 'door', '!door']
      blank
    else
      <symbol viewBox="0 0 16 16" overflowBox="0 -32 16 48" style="overflow: visible; z-index: 10">
        <image {...rendering} xlink:href={sprite 'lock'} y="-32" width="16" height="48"/>
      </symbol>
  d: door
  "!door": green_door = ->
    if @neighbor(0,1).key in ['d', '!d', 'door', '!door']
      blank
    else
      <symbol viewBox="0 0 16 16" overflowBox="-16 -54 47 70" style="overflow: visible; z-index: 20">
        <image {...rendering} xlink:href={sprite 'green_lock'} x="-16" y="-54" width="47" height="70"/>
      </symbol>
  "!d": green_door
  player: player = ->
    if @neighbor(0,1).key in ['p', 'player']
      blank
    else
      <symbol viewBox="0 0 16 16" overflowBox="-16 -20 48 52" style="overflow: visible; z-index: 30">
        {blank}
        <image {...rendering} xlink:href={sprite 'red_flame'} x="-16" y="-20" width="48" height="52"/>
      </symbol>
  p: player
  rico: ->
    if @neighbor(0,1).key == 'rico'
      blank
    else
      <symbol viewBox="0 0 16 16" overflowBox="0 -8 16 24" style="overflow: visible; z-index: 10">
        {blank}
        <image {...rendering} xlink:href={sprite 'player'} y="-8" width="16" height="24"/>
      </symbol>

addText = (container, label) -> ->
  if typeof container == 'function'
    container = container.call @
  offsetX = offsetY = 0
  if label == 'DCi+1,2j' and @neighbor(+4,0).key == 'c:DCi+1,2j+1'
    offsetX = -10
  else if label == 'DCi+1,2j+1' and @neighbor(-4,0).key == 'c:DCi+1,2j'
    offsetX = +10
  else if label in ['VBa','VBb'] and @neighbor(+2,0).key in ['c:VAa','c:VAb']
    offsetX = -18
  else if label in ['VAa','VAb'] and @neighbor(-2,0).key in ['c:VBa','c:VBb']
    offsetX = +18
  else if label in ['PDC', 'PB11'] and @neighbor(-1,-1).key == 'c:VB_local2'
    offsetX = +20
    offsetY = +3
  else if label in ['VAB_local'] and @neighbor(+1,0).key in ['c:PAa', 'c:PAb']
    offsetX = -10
  else if label in ['PAa', 'PAb'] and @neighbor(-1,0).key == 'c:VAB_local'
    offsetX = +27
  text = label
  if text of nameMap
    text = nameMap[text]
    text = "$#{text}$" # math mode
  text = "\\bf\\boldmath\\contour{black}{#{text}}" # readable
  text = <text x={8 + offsetX} y={-1 + offsetY} text-anchor="middle" fill="white">{text}</text>
  if container.type != 'symbol'
    <symbol viewBox="0 0 16 16" style="overflow: visible">
      {container}
      {text}
    </symbol>
  else
    preact.cloneElement container, {},
      preact.toChildArray(container.props.children).concat [text]

(key) ->
  key = key.replace /:sounds\/[^]*/, '' # ignore sound files as labels
  if key of mapping
    mapping[key]
  else
    [before, after] = key.split ':'
    if before of mapping
      addText mapping[before], after
