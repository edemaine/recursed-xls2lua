local wip = { s = "solid", l = "ledge", w = "water", a = "acid", b = "buoy", L = "ledgewet" }
function start()
  ApplyTiles(wip, 0, 0, [[
ssssssssssssssssssss
s..................s
s..................s
s..................s
s..................s
s.sssssssssss....sss
s..................s
s..................s
s..................s
s.ss...sssssssssssss
s..................s
s..................s
s...............l.ls
s..................s
ssssssssssssssssssss
]])
  Spawn("player", 2.5, 2)
  Spawn("box", 2.5, 4)
  Spawn("box", 10.5, 4)
  Spawn("key", 14.5, 4)
  Spawn("record", 2.5, 8, "sounds/drop.wav")
  Spawn("chest", 7.5, 8, "start")
  Spawn("yield", 15.5, 6)
  Spawn("box", 15.5, 8)
  Global("lock", 5.5, 12.5)
  Spawn("crystal", 11.5, 12.5)
  Global("box", 2.5, 13)
  Global("key", 8.5, 13)
end

--tiles = "tiles/city"
pattern = "backgrounds/black"
dark = { 0, 0, 0 }
light = { 0, 0, 0 }
