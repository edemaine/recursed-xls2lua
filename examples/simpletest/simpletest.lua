local wip = { s = "solid", l = "ledge", w = "water", a = "acid", b = "buoy", L = "ledgewet" }
function start()
  ApplyTiles(wip, 0, 0, [[
ssssssssssssssssssss
s...........s......s
s...........s......s
s...........s......s
s...........s......s
s...........s......s
s...........s......s
s...........s......s
s...........s......s
s...........s......s
s..................s
s..................s
s..................s
ssssssssssssssssssss
ssssssssssssssssssss
]])
  Spawn("lock", 12.5, 11.5)
  Spawn("player", 2.5, 12)
  Spawn("chest", 8.5, 12, "key")
  Spawn("crystal", 16.5, 12)
end
function key()
  ApplyTiles(wip, 0, 0, [[
ssssssssssssssssssss
s..................s
s..................s
s..................s
s..................s
s..................s
s..................s
s..................s
s..................s
s..................s
s..................s
s..................s
s..................s
ssssssssssssssssssss
ssssssssssssssssssss
]])
  Spawn("player", 2.5, 12)
  Spawn("key", 4.5, 12)
end
