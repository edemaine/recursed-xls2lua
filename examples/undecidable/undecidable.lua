local wip = { s = "solid", l = "ledge", w = "water", a = "acid", b = "buoy", L = "ledgewet" }
function start()
  ApplyTiles(wip, 0, 0, [[
ssssssssssssssssssss
ssssssssssssssssssss
ssssssssssssssssssss
ssssssssssssssssssss
ssssssss......s....s
ssssssss......s....s
ssssssss......s....s
ssssssss......s....s
s......s...........s
s.......lls........s
s.........s........s
ssssssssssssssssssss
ssssssssssssssssssss
ssssssssssssssssssss
ssssssssssssssssssss
]])
  Spawn("crystal", 16.5, 5.5)
  Spawn("lock", 14.5, 9.5)
  Spawn("player", 2.5, 10)
  Spawn("box", 4.5, 10)
  Spawn("chest", 6.5, 10, "A00")
  Spawn("chest", 12.5, 10, "global_lock")
end
function blank_template()
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
s..................s
ssssssssssssssssssss
]])
  Spawn("player", 2.5, 13)
end
function domino_choice()
  ApplyTiles(wip, 0, 0, [[
ssssssssssssssssssss
sss..s...s..s...s..s
sss......s..s...s..s
sssll..s.sll..s....s
s..ls.........s....s
s...s..s...ssss..s.s
slslsssslllssss..s.s
s.s.ssssssssssslss.s
slssssss......sss..s
s.ssssss...........s
slssssss.s.........s
s........s.........s
sl.......ss........s
s........ss........s
sssssslllsssssssslls
]])
  Spawn("lock", 15.5, 2.5)
  Spawn("record", 7.5, 2, "sounds/voices/d1")
  Spawn("player", 2.5, 5)
  Spawn("chest", 13.5, 4, "VDC")
  Spawn("chest", 16.5, 6, "PAx0")
  Spawn("lock", 2.5, 12.5)
  Spawn("chest", 4.5, 13, "global_lock")
  Spawn("chest", 12.5, 13, "A00")
  Spawn("chest", 14.5, 13, "A10")
  Spawn("chest", 16.5, 13, "stop")
end
function stop()
  ApplyTiles(wip, 0, 0, [[
ssssssssssssssssssss
ssssssssssssssssssss
sss..s...s..s...ss.s
sss......s..s...s..s
sssll..s.sll..s....s
s..ls.........s....s
s...s..s...ssss..s.s
slslsssslllssss..s.s
s.s.ssssssssssslss.s
slssssssssssssssss.s
s..................s
sl.................s
s..................s
ssssssssssssssssssss
ssssssssssssssssssss
]])
  Spawn("record", 7.5, 3, "sounds/voices/d1")
  Spawn("lock", 17.5, 4.5)
  Spawn("player", 2.5, 6)
  Spawn("chest", 16.5, 7, "VAx0")
  Spawn("lock", 2.5, 11.5)
  Spawn("chest", 10.5, 12, "global_lock")
  Spawn("key", 14.5, 12)
end
function Vx()
  ApplyTiles(wip, 0, 0, [[
ssssssssssssssssssss
ssssssssssssssssssss
ssssssssssssssssssss
ssssssssssssssssssss
ss....s............s
ss....s............s
ss.........ss......s
ss.................s
ss.........ss......s
ssllsssllsssssssslls
ssssssssssssssssssss
ssssssssssssssssssss
ssssssssssssssssssss
ssssssssssssssssssss
ssssssssssssssssssss
]])
  Spawn("lock", 6.5, 7.5)
  Spawn("player", 9.5, 8)
  Spawn("key", 4.5, 8)
  Spawn("chest", 15.5, 8, "Kx")
end
function Kx()
  ApplyTiles(wip, 0, 0, [[
ssssssssssssssssssss
ss................ss
ss................ss
ss.....ssssss.....ss
ss.....s....ssslllss
ss.....s....s.....ss
ssssss.s.ssss...ssss
ssssss.s....s...ssss
ssssss......s...ssss
ssssss......s..sssss
ssssss..ss.....sssss
ssssss..ss.....sssss
ssssssssss.....sssss
ssssssssss.....sssss
ssssssssssssssssssss
]])
  Spawn("player", 3.5, 5)
  Spawn("box", 10.5, 5)
  Spawn("key", 16.5, 5)
  Global("box", 12.5, 13)
end
function Px()
  ApplyTiles(wip, 0, 0, [[
ssssssssssssssssssss
ssssssssssssssssssss
ssssssssssssssssssss
ssssssssssssssssssss
ssss...........sssss
ssss...........sssss
ssss...ss......sssss
ssss...ss......sssss
ssss...ss......sssss
ssssssssss.....sssss
ssssssssss.....sssss
ssssssssss.....sssss
ssssssssssssssssssss
ssssssssssssssssssss
ssssssssssssssssssss
]])
  Spawn("player", 5.5, 8)
  Spawn("box", 11.5, 11)
  Spawn("chest", 13.5, 11, "Kx")
end
function KAx0()
  ApplyTiles(wip, 0, 0, [[
ssssssssssssssssssss
ss................ss
ss................ss
ss.....ssssss.....ss
ss.....s....ssslllss
ss.....s....s.....ss
ssssss.s.ssss...ssss
ssssss.s....s...ssss
ssssss......s...ssss
ssssss......s..sssss
ssssss..ss.....sssss
ssssss..ss.....sssss
ssssssssss.....sssss
ssssssssss.....sssss
ssssssssssssssssssss
]])
  Spawn("player", 3.5, 5)
  Spawn("box", 10.5, 5)
  Spawn("key", 16.5, 5)
  Global("box", 8.5, 9)
end
function KA01()
  ApplyTiles(wip, 0, 0, [[
ssssssssssssssssssss
ss................ss
ss................ss
ss.....ssssss.....ss
ss.....s....ssslllss
ss.....s....s.....ss
ssssss.s.ssss...ssss
ssssss.s....s...ssss
ssssss......s...ssss
ssssss......s..sssss
ssssss..ss.....sssss
ssssss..ss.....sssss
ssssssssss.....sssss
ssssssssss.....sssss
ssssssssssssssssssss
]])
  Spawn("player", 3.5, 5)
  Spawn("box", 10.5, 5)
  Spawn("key", 16.5, 5)
  Global("box", 12.5, 13)
end
function KB00()
  ApplyTiles(wip, 0, 0, [[
ssssssssssssssssssss
ss................ss
ss................ss
ss.....ssssss.....ss
ss.....s....ssslllss
ss.....s....s.....ss
ssssss.s.ssss...ssss
ssssss.s....s...ssss
ssssss......s...ssss
ssssss......s..sssss
ssssss..ss.....sssss
ssssss..ss.....sssss
ssssssssss.....sssss
ssssssssss.....sssss
ssssssssssssssssssss
]])
  Spawn("player", 3.5, 5)
  Spawn("box", 10.5, 5)
  Spawn("key", 16.5, 5)
  Global("box", 12.5, 13)
end
function KB10()
  ApplyTiles(wip, 0, 0, [[
ssssssssssssssssssss
ss................ss
ss................ss
ss.....ssssss.....ss
ss.....s....ssslllss
ss.....s....s.....ss
ssssss.s.ssss...ssss
ssssss.s....s...ssss
ssssss......s...ssss
ssssss......s..sssss
ssssss..ss.....sssss
ssssss..ss.....sssss
ssssssssss.....sssss
ssssssssss.....sssss
ssssssssssssssssssss
]])
  Spawn("player", 3.5, 5)
  Spawn("box", 10.5, 5)
  Spawn("key", 16.5, 5)
  Global("box", 12.5, 13)
end
function KB11()
  ApplyTiles(wip, 0, 0, [[
ssssssssssssssssssss
ss................ss
ss................ss
ss.....ssssss.....ss
ss.....s....ssslllss
ss.....s....s.....ss
ssssss.s.ssss...ssss
ssssss.s....s...ssss
ssssss......s...ssss
ssssss......s..sssss
ssssss..ss.....sssss
ssssss..ss.....sssss
ssssssssss.....sssss
ssssssssss.....sssss
ssssssssssssssssssss
]])
  Spawn("player", 3.5, 5)
  Spawn("box", 10.5, 5)
  Spawn("key", 16.5, 5)
  Global("box", 12.5, 13)
end
function KB_local1()
  ApplyTiles(wip, 0, 0, [[
ssssssssssssssssssss
ss................ss
ss................ss
ss.....ssssss.....ss
ss.....s....ssslllss
ss.....s....s.....ss
ssssss.s.ssss...ssss
ssssss.s....s...ssss
ssssss......s...ssss
ssssss......s..sssss
ssssss..ss.....sssss
ssssss..ss.....sssss
ssssssssss.....sssss
ssssssssss.....sssss
ssssssssssssssssssss
]])
  Spawn("player", 3.5, 5)
  Spawn("box", 10.5, 5)
  Spawn("key", 16.5, 5)
  Global("box", 12.5, 13)
end
function KB_local2()
  ApplyTiles(wip, 0, 0, [[
ssssssssssssssssssss
ss................ss
ss................ss
ss.....ssssss.....ss
ss.....s....ssslllss
ss.....s....s.....ss
ssssss.s.ssss...ssss
ssssss.s....s...ssss
ssssss......s...ssss
ssssss......s..sssss
ssssss..ss.....sssss
ssssss..ss.....sssss
ssssssssss.....sssss
ssssssssss.....sssss
ssssssssssssssssssss
]])
  Spawn("player", 3.5, 5)
  Spawn("box", 10.5, 5)
  Spawn("key", 16.5, 5)
  Global("box", 12.5, 13)
end
function KAa()
  ApplyTiles(wip, 0, 0, [[
ssssssssssssssssssss
ss................ss
ss................ss
ss.....ssssss.....ss
ss.....s....ssslllss
ss.....s....s.....ss
ssssss.s.ssss...ssss
ssssss.s....s...ssss
ssssss......s...ssss
ssssss......s..sssss
ssssss..ss.....sssss
ssssss..ss.....sssss
ssssssssss.....sssss
ssssssssss.....sssss
ssssssssssssssssssss
]])
  Spawn("player", 3.5, 5)
  Spawn("box", 10.5, 5)
  Spawn("key", 16.5, 5)
  Global("box", 12.5, 13)
end
function KAb()
  ApplyTiles(wip, 0, 0, [[
ssssssssssssssssssss
ss................ss
ss................ss
ss.....ssssss.....ss
ss.....s....ssslllss
ss.....s....s.....ss
ssssss.s.ssss...ssss
ssssss.s....s...ssss
ssssss......s...ssss
ssssss......s..sssss
ssssss..ss.....sssss
ssssss..ss.....sssss
ssssssssss.....sssss
ssssssssss.....sssss
ssssssssssssssssssss
]])
  Spawn("player", 3.5, 5)
  Spawn("box", 10.5, 5)
  Spawn("key", 16.5, 5)
  Global("box", 12.5, 13)
end
function KBa()
  ApplyTiles(wip, 0, 0, [[
ssssssssssssssssssss
ss................ss
ss................ss
ss.....ssssss.....ss
ss.....s....ssslllss
ss.....s....s.....ss
ssssss.s.ssss...ssss
ssssss.s....s...ssss
ssssss......s...ssss
ssssss......s..sssss
ssssss..ss.....sssss
ssssss..ss.....sssss
ssssssssss.....sssss
ssssssssss.....sssss
ssssssssssssssssssss
]])
  Spawn("player", 3.5, 5)
  Spawn("box", 10.5, 5)
  Spawn("key", 16.5, 5)
  Global("box", 12.5, 13)
end
function KBb()
  ApplyTiles(wip, 0, 0, [[
ssssssssssssssssssss
ss................ss
ss................ss
ss.....ssssss.....ss
ss.....s....ssslllss
ss.....s....s.....ss
ssssss.s.ssss...ssss
ssssss.s....s...ssss
ssssss......s...ssss
ssssss......s..sssss
ssssss..ss.....sssss
ssssss..ss.....sssss
ssssssssss.....sssss
ssssssssss.....sssss
ssssssssssssssssssss
]])
  Spawn("player", 3.5, 5)
  Spawn("box", 10.5, 5)
  Spawn("key", 16.5, 5)
  Global("box", 12.5, 13)
end
function KAB_local()
  ApplyTiles(wip, 0, 0, [[
ssssssssssssssssssss
ss................ss
ss................ss
ss.....ssssss.....ss
ss.....s....ssslllss
ss.....s....s.....ss
ssssss.s.ssss...ssss
ssssss.s....s...ssss
ssssss......s...ssss
ssssss......s..sssss
ssssss..ss.....sssss
ssssss..ss.....sssss
ssssssssss.....sssss
ssssssssss.....sssss
ssssssssssssssssssss
]])
  Spawn("player", 3.5, 5)
  Spawn("box", 10.5, 5)
  Spawn("key", 16.5, 5)
  Global("box", 12.5, 13)
end
function KDC()
  ApplyTiles(wip, 0, 0, [[
ssssssssssssssssssss
ss................ss
ss................ss
ss.....ssssss.....ss
ss.....s....ssslllss
ss.....s....s.....ss
ssssss.s.ssss...ssss
ssssss.s....s...ssss
ssssss......s...ssss
ssssss......s..sssss
ssssss..ss.....sssss
ssssss..ss.....sssss
ssssssssss.....sssss
ssssssssss.....sssss
ssssssssssssssssssss
]])
  Spawn("player", 3.5, 5)
  Spawn("box", 10.5, 5)
  Spawn("key", 16.5, 5)
  Global("box", 12.5, 13)
end
function VAx0()
  ApplyTiles(wip, 0, 0, [[
ssssssssssssssssssss
ssssssssssssssssssss
ssssssssssssssssssss
ssssssssssssssssssss
ss....s............s
ss....s............s
ss.........ss......s
ss.................s
ss.........ss......s
ssllsssllsssssssslls
ssssssssssssssssssss
ssssssssssssssssssss
ssssssssssssssssssss
ssssssssssssssssssss
ssssssssssssssssssss
]])
  Spawn("lock", 6.5, 7.5)
  Spawn("player", 9.5, 8)
  Spawn("key", 4.5, 8)
  Spawn("chest", 15.5, 8, "KAx0")
end
function VA01()
  ApplyTiles(wip, 0, 0, [[
ssssssssssssssssssss
ssssssssssssssssssss
ssssssssssssssssssss
ssssssssssssssssssss
ss....s............s
ss....s............s
ss.........ss......s
ss.................s
ss.........ss......s
ssllsssllsssssssslls
ssssssssssssssssssss
ssssssssssssssssssss
ssssssssssssssssssss
ssssssssssssssssssss
ssssssssssssssssssss
]])
  Spawn("lock", 6.5, 7.5)
  Spawn("player", 9.5, 8)
  Spawn("key", 4.5, 8)
  Spawn("chest", 15.5, 8, "KA01")
end
function VB00()
  ApplyTiles(wip, 0, 0, [[
ssssssssssssssssssss
ssssssssssssssssssss
ssssssssssssssssssss
ssssssssssssssssssss
ss....s............s
ss....s............s
ss.........ss......s
ss.................s
ss.........ss......s
ssllsssllsssssssslls
ssssssssssssssssssss
ssssssssssssssssssss
ssssssssssssssssssss
ssssssssssssssssssss
ssssssssssssssssssss
]])
  Spawn("lock", 6.5, 7.5)
  Spawn("player", 9.5, 8)
  Spawn("key", 4.5, 8)
  Spawn("chest", 15.5, 8, "KB00")
end
function VB10()
  ApplyTiles(wip, 0, 0, [[
ssssssssssssssssssss
ssssssssssssssssssss
ssssssssssssssssssss
ssssssssssssssssssss
ss....s............s
ss....s............s
ss.........ss......s
ss.................s
ss.........ss......s
ssllsssllsssssssslls
ssssssssssssssssssss
ssssssssssssssssssss
ssssssssssssssssssss
ssssssssssssssssssss
ssssssssssssssssssss
]])
  Spawn("lock", 6.5, 7.5)
  Spawn("player", 9.5, 8)
  Spawn("key", 4.5, 8)
  Spawn("chest", 15.5, 8, "KB10")
end
function VB11()
  ApplyTiles(wip, 0, 0, [[
ssssssssssssssssssss
ssssssssssssssssssss
ssssssssssssssssssss
ssssssssssssssssssss
ss....s............s
ss....s............s
ss.........ss......s
ss.................s
ss.........ss......s
ssllsssllsssssssslls
ssssssssssssssssssss
ssssssssssssssssssss
ssssssssssssssssssss
ssssssssssssssssssss
ssssssssssssssssssss
]])
  Spawn("lock", 6.5, 7.5)
  Spawn("player", 9.5, 8)
  Spawn("key", 4.5, 8)
  Spawn("chest", 15.5, 8, "KB11")
end
function VB_local1()
  ApplyTiles(wip, 0, 0, [[
ssssssssssssssssssss
ssssssssssssssssssss
ssssssssssssssssssss
ssssssssssssssssssss
ss....s............s
ss....s............s
ss.........ss......s
ss.................s
ss.........ss......s
ssllsssllsssssssslls
ssssssssssssssssssss
ssssssssssssssssssss
ssssssssssssssssssss
ssssssssssssssssssss
ssssssssssssssssssss
]])
  Spawn("lock", 6.5, 7.5)
  Spawn("player", 9.5, 8)
  Spawn("key", 4.5, 8)
  Spawn("chest", 15.5, 8, "KB_local1")
end
function VB_local2()
  ApplyTiles(wip, 0, 0, [[
ssssssssssssssssssss
ssssssssssssssssssss
ssssssssssssssssssss
ssssssssssssssssssss
ss....s............s
ss....s............s
ss.........ss......s
ss.................s
ss.........ss......s
ssllsssllsssssssslls
ssssssssssssssssssss
ssssssssssssssssssss
ssssssssssssssssssss
ssssssssssssssssssss
ssssssssssssssssssss
]])
  Spawn("lock", 6.5, 7.5)
  Spawn("player", 9.5, 8)
  Spawn("key", 4.5, 8)
  Spawn("chest", 15.5, 8, "KB_local2")
end
function VAa()
  ApplyTiles(wip, 0, 0, [[
ssssssssssssssssssss
ssssssssssssssssssss
ssssssssssssssssssss
ssssssssssssssssssss
ss....s............s
ss....s............s
ss.........ss......s
ss.................s
ss.........ss......s
ssllsssllsssssssslls
ssssssssssssssssssss
ssssssssssssssssssss
ssssssssssssssssssss
ssssssssssssssssssss
ssssssssssssssssssss
]])
  Spawn("lock", 6.5, 7.5)
  Spawn("player", 9.5, 8)
  Spawn("key", 4.5, 8)
  Spawn("chest", 15.5, 8, "KAa")
end
function VAb()
  ApplyTiles(wip, 0, 0, [[
ssssssssssssssssssss
ssssssssssssssssssss
ssssssssssssssssssss
ssssssssssssssssssss
ss....s............s
ss....s............s
ss.........ss......s
ss.................s
ss.........ss......s
ssllsssllsssssssslls
ssssssssssssssssssss
ssssssssssssssssssss
ssssssssssssssssssss
ssssssssssssssssssss
ssssssssssssssssssss
]])
  Spawn("lock", 6.5, 7.5)
  Spawn("player", 9.5, 8)
  Spawn("key", 4.5, 8)
  Spawn("chest", 15.5, 8, "KAb")
end
function VBa()
  ApplyTiles(wip, 0, 0, [[
ssssssssssssssssssss
ssssssssssssssssssss
ssssssssssssssssssss
ssssssssssssssssssss
ss....s............s
ss....s............s
ss.........ss......s
ss.................s
ss.........ss......s
ssllsssllsssssssslls
ssssssssssssssssssss
ssssssssssssssssssss
ssssssssssssssssssss
ssssssssssssssssssss
ssssssssssssssssssss
]])
  Spawn("lock", 6.5, 7.5)
  Spawn("player", 9.5, 8)
  Spawn("key", 4.5, 8)
  Spawn("chest", 15.5, 8, "KBa")
end
function VBb()
  ApplyTiles(wip, 0, 0, [[
ssssssssssssssssssss
ssssssssssssssssssss
ssssssssssssssssssss
ssssssssssssssssssss
ss....s............s
ss....s............s
ss.........ss......s
ss.................s
ss.........ss......s
ssllsssllsssssssslls
ssssssssssssssssssss
ssssssssssssssssssss
ssssssssssssssssssss
ssssssssssssssssssss
ssssssssssssssssssss
]])
  Spawn("lock", 6.5, 7.5)
  Spawn("player", 9.5, 8)
  Spawn("key", 4.5, 8)
  Spawn("chest", 15.5, 8, "KBb")
end
function VAB_local()
  ApplyTiles(wip, 0, 0, [[
ssssssssssssssssssss
ssssssssssssssssssss
ssssssssssssssssssss
ssssssssssssssssssss
ss....s............s
ss....s............s
ss.........ss......s
ss.................s
ss.........ss......s
ssllsssllsssssssslls
ssssssssssssssssssss
ssssssssssssssssssss
ssssssssssssssssssss
ssssssssssssssssssss
ssssssssssssssssssss
]])
  Spawn("lock", 6.5, 7.5)
  Spawn("player", 9.5, 8)
  Spawn("key", 4.5, 8)
  Spawn("chest", 15.5, 8, "KAB_local")
end
function VDC()
  ApplyTiles(wip, 0, 0, [[
ssssssssssssssssssss
ssssssssssssssssssss
ssssssssssssssssssss
ssssssssssssssssssss
ss....s............s
ss....s............s
ss.........ss......s
ss.................s
ss.........ss......s
ssllsssllsssssssslls
ssssssssssssssssssss
ssssssssssssssssssss
ssssssssssssssssssss
ssssssssssssssssssss
ssssssssssssssssssss
]])
  Spawn("lock", 6.5, 7.5)
  Spawn("player", 9.5, 8)
  Spawn("key", 4.5, 8)
  Spawn("chest", 15.5, 8, "KDC")
end
function PAx0()
  ApplyTiles(wip, 0, 0, [[
ssssssssssssssssssss
ssssssssssssssssssss
ssssssssssssssssssss
ssssssssssssssssssss
ssss...........sssss
ssss...........sssss
ssss...ss......sssss
ssss...ss......sssss
ssss...ss......sssss
ssssssssss.....sssss
ssssssssss.....sssss
ssssssssss.....sssss
ssssssssssssssssssss
ssssssssssssssssssss
ssssssssssssssssssss
]])
  Spawn("player", 5.5, 8)
  Spawn("box", 11.5, 11)
  Spawn("chest", 13.5, 11, "KAx0")
end
function PA01()
  ApplyTiles(wip, 0, 0, [[
ssssssssssssssssssss
ssssssssssssssssssss
ssssssssssssssssssss
ssssssssssssssssssss
ssss...........sssss
ssss...........sssss
ssss...ss......sssss
ssss...ss......sssss
ssss...ss......sssss
ssssssssss.....sssss
ssssssssss.....sssss
ssssssssss.....sssss
ssssssssssssssssssss
ssssssssssssssssssss
ssssssssssssssssssss
]])
  Spawn("player", 5.5, 8)
  Spawn("box", 11.5, 11)
  Spawn("chest", 13.5, 11, "KA01")
end
function PB00()
  ApplyTiles(wip, 0, 0, [[
ssssssssssssssssssss
ssssssssssssssssssss
ssssssssssssssssssss
ssssssssssssssssssss
ssss...........sssss
ssss...........sssss
ssss...ss......sssss
ssss...ss......sssss
ssss...ss......sssss
ssssssssss.....sssss
ssssssssss.....sssss
ssssssssss.....sssss
ssssssssssssssssssss
ssssssssssssssssssss
ssssssssssssssssssss
]])
  Spawn("player", 5.5, 8)
  Spawn("box", 11.5, 11)
  Spawn("chest", 13.5, 11, "KB00")
end
function PB10()
  ApplyTiles(wip, 0, 0, [[
ssssssssssssssssssss
ssssssssssssssssssss
ssssssssssssssssssss
ssssssssssssssssssss
ssss...........sssss
ssss...........sssss
ssss...ss......sssss
ssss...ss......sssss
ssss...ss......sssss
ssssssssss.....sssss
ssssssssss.....sssss
ssssssssss.....sssss
ssssssssssssssssssss
ssssssssssssssssssss
ssssssssssssssssssss
]])
  Spawn("player", 5.5, 8)
  Spawn("box", 11.5, 11)
  Spawn("chest", 13.5, 11, "KB10")
end
function PB11()
  ApplyTiles(wip, 0, 0, [[
ssssssssssssssssssss
ssssssssssssssssssss
ssssssssssssssssssss
ssssssssssssssssssss
ssss...........sssss
ssss...........sssss
ssss...ss......sssss
ssss...ss......sssss
ssss...ss......sssss
ssssssssss.....sssss
ssssssssss.....sssss
ssssssssss.....sssss
ssssssssssssssssssss
ssssssssssssssssssss
ssssssssssssssssssss
]])
  Spawn("player", 5.5, 8)
  Spawn("box", 11.5, 11)
  Spawn("chest", 13.5, 11, "KB11")
end
function PB_local1()
  ApplyTiles(wip, 0, 0, [[
ssssssssssssssssssss
ssssssssssssssssssss
ssssssssssssssssssss
ssssssssssssssssssss
ssss...........sssss
ssss...........sssss
ssss...ss......sssss
ssss...ss......sssss
ssss...ss......sssss
ssssssssss.....sssss
ssssssssss.....sssss
ssssssssss.....sssss
ssssssssssssssssssss
ssssssssssssssssssss
ssssssssssssssssssss
]])
  Spawn("player", 5.5, 8)
  Spawn("box", 11.5, 11)
  Spawn("chest", 13.5, 11, "KB_local1")
end
function PB_local2()
  ApplyTiles(wip, 0, 0, [[
ssssssssssssssssssss
ssssssssssssssssssss
ssssssssssssssssssss
ssssssssssssssssssss
ssss...........sssss
ssss...........sssss
ssss...ss......sssss
ssss...ss......sssss
ssss...ss......sssss
ssssssssss.....sssss
ssssssssss.....sssss
ssssssssss.....sssss
ssssssssssssssssssss
ssssssssssssssssssss
ssssssssssssssssssss
]])
  Spawn("player", 5.5, 8)
  Spawn("box", 11.5, 11)
  Spawn("chest", 13.5, 11, "KB_local2")
end
function PAa()
  ApplyTiles(wip, 0, 0, [[
ssssssssssssssssssss
ssssssssssssssssssss
ssssssssssssssssssss
ssssssssssssssssssss
ssss...........sssss
ssss...........sssss
ssss...ss......sssss
ssss...ss......sssss
ssss...ss......sssss
ssssssssss.....sssss
ssssssssss.....sssss
ssssssssss.....sssss
ssssssssssssssssssss
ssssssssssssssssssss
ssssssssssssssssssss
]])
  Spawn("player", 5.5, 8)
  Spawn("box", 11.5, 11)
  Spawn("chest", 13.5, 11, "KAa")
end
function PAb()
  ApplyTiles(wip, 0, 0, [[
ssssssssssssssssssss
ssssssssssssssssssss
ssssssssssssssssssss
ssssssssssssssssssss
ssss...........sssss
ssss...........sssss
ssss...ss......sssss
ssss...ss......sssss
ssss...ss......sssss
ssssssssss.....sssss
ssssssssss.....sssss
ssssssssss.....sssss
ssssssssssssssssssss
ssssssssssssssssssss
ssssssssssssssssssss
]])
  Spawn("player", 5.5, 8)
  Spawn("box", 11.5, 11)
  Spawn("chest", 13.5, 11, "KAb")
end
function PBa()
  ApplyTiles(wip, 0, 0, [[
ssssssssssssssssssss
ssssssssssssssssssss
ssssssssssssssssssss
ssssssssssssssssssss
ssss...........sssss
ssss...........sssss
ssss...ss......sssss
ssss...ss......sssss
ssss...ss......sssss
ssssssssss.....sssss
ssssssssss.....sssss
ssssssssss.....sssss
ssssssssssssssssssss
ssssssssssssssssssss
ssssssssssssssssssss
]])
  Spawn("player", 5.5, 8)
  Spawn("box", 11.5, 11)
  Spawn("chest", 13.5, 11, "KBa")
end
function PBb()
  ApplyTiles(wip, 0, 0, [[
ssssssssssssssssssss
ssssssssssssssssssss
ssssssssssssssssssss
ssssssssssssssssssss
ssss...........sssss
ssss...........sssss
ssss...ss......sssss
ssss...ss......sssss
ssss...ss......sssss
ssssssssss.....sssss
ssssssssss.....sssss
ssssssssss.....sssss
ssssssssssssssssssss
ssssssssssssssssssss
ssssssssssssssssssss
]])
  Spawn("player", 5.5, 8)
  Spawn("box", 11.5, 11)
  Spawn("chest", 13.5, 11, "KBb")
end
function PAB_local()
  ApplyTiles(wip, 0, 0, [[
ssssssssssssssssssss
ssssssssssssssssssss
ssssssssssssssssssss
ssssssssssssssssssss
ssss...........sssss
ssss...........sssss
ssss...ss......sssss
ssss...ss......sssss
ssss...ss......sssss
ssssssssss.....sssss
ssssssssss.....sssss
ssssssssss.....sssss
ssssssssssssssssssss
ssssssssssssssssssss
ssssssssssssssssssss
]])
  Spawn("player", 5.5, 8)
  Spawn("box", 11.5, 11)
  Spawn("chest", 13.5, 11, "KAB_local")
end
function PDC()
  ApplyTiles(wip, 0, 0, [[
ssssssssssssssssssss
ssssssssssssssssssss
ssssssssssssssssssss
ssssssssssssssssssss
ssss...........sssss
ssss...........sssss
ssss...ss......sssss
ssss...ss......sssss
ssss...ss......sssss
ssssssssss.....sssss
ssssssssss.....sssss
ssssssssss.....sssss
ssssssssssssssssssss
ssssssssssssssssssss
ssssssssssssssssssss
]])
  Spawn("player", 5.5, 8)
  Spawn("box", 11.5, 11)
  Spawn("chest", 13.5, 11, "KDC")
end
function A00()
  ApplyTiles(wip, 0, 0, [[
sss..s...s..s...s..s
sss......s..s...s..s
sssll..s.sll..s....s
s..ls.........s....s
s...s..s...ssss..s.s
slslsssslllssss..s.s
s.s.ssssssssssslss.s
slssssssss....ssss.s
s.ssss...s....s....s
slssss...s....s....s
s.sss..s...s....s..s
sl.....s...s....s..s
s......ss..ss...ss.s
ss.....ss..sss..ss.s
ssssssllllllllllllls
]])
  Spawn("lock", 15.5, 1.5)
  Spawn("record", 7.5, 1, "sounds/voices/d1")
  Spawn("player", 2.5, 4)
  Spawn("chest", 13.5, 3, "VAx0")
  Spawn("chest", 16.5, 5, "PA01")
  Spawn("lock", 11.5, 8.5)
  Spawn("lock", 2.5, 12.5)
  Spawn("lock", 4.5, 12.5)
  Spawn("chest", 8.5, 11, "PBa")
  Spawn("chest", 12.5, 11, "PAB_local")
  Spawn("chest", 17.5, 11, "A01")
  Spawn("chest", 13.5, 12, "global_lock")
  Spawn("chest", 3.5, 13, "VBa")
  Spawn("chest", 5.5, 13, "VAa")
end
function A01()
  ApplyTiles(wip, 0, 0, [[
sss..s...s..s...s..s
sss......s..s...s..s
sssll..s.sll..s....s
s..ls.........s....s
s...s..s...ssss..s.s
slslsssslllssss..s.s
s.s.ssssssssssslss.s
slssssssss....ssss.s
s.ssss...s....s....s
slssss...s....s....s
s.sss..s...s....s..s
sl.....s...s....s..s
s......ss..ss...ss.s
ss.....ss..sss..ss.s
ssssssllllllllllllls
]])
  Spawn("lock", 15.5, 1.5)
  Spawn("record", 7.5, 1, "sounds/voices/d1")
  Spawn("player", 2.5, 4)
  Spawn("chest", 13.5, 3, "VA01")
  Spawn("chest", 16.5, 5, "PB00")
  Spawn("lock", 11.5, 8.5)
  Spawn("lock", 2.5, 12.5)
  Spawn("lock", 4.5, 12.5)
  Spawn("chest", 8.5, 11, "PBb")
  Spawn("chest", 12.5, 11, "PAB_local")
  Spawn("chest", 17.5, 11, "BC00")
  Spawn("chest", 13.5, 12, "global_lock")
  Spawn("chest", 3.5, 13, "VBb")
  Spawn("chest", 5.5, 13, "VAb")
end
function A10()
  ApplyTiles(wip, 0, 0, [[
sss..s...s..s...s..s
sss......s..s...s..s
sssll..s.sll..s....s
s..ls.........s....s
s...s..s...ssss..s.s
slslsssslllssss..s.s
s.s.ssssssssssslss.s
slssssssss....ssss.s
s.ssss...s....s....s
slssss...s....s....s
s.sss..s...s....s..s
sl.....s...s....s..s
s......ss..ss...ss.s
ss.....ss..sss..ss.s
ssssssllllllllllllls
]])
  Spawn("lock", 15.5, 1.5)
  Spawn("record", 7.5, 1, "sounds/voices/d1")
  Spawn("player", 2.5, 4)
  Spawn("chest", 13.5, 3, "VAx0")
  Spawn("chest", 16.5, 5, "PB10")
  Spawn("lock", 11.5, 8.5)
  Spawn("lock", 2.5, 12.5)
  Spawn("lock", 4.5, 12.5)
  Spawn("chest", 8.5, 11, "PBa")
  Spawn("chest", 12.5, 11, "PAB_local")
  Spawn("chest", 17.5, 11, "BC10")
  Spawn("chest", 13.5, 12, "global_lock")
  Spawn("chest", 3.5, 13, "VBa")
  Spawn("chest", 5.5, 13, "VAa")
end
function BC00()
  ApplyTiles(wip, 0, 0, [[
sss..s...s..s...s..s
sss......s..s...s..s
sssll..s.sll..s....s
s..ls.........s....s
s...s..s...ssss..s.s
slslsssslllssss..s.s
s.s.ssssssssssslss.s
slssssssss....ssss.s
s.ssss...s....s....s
slssss...s....s....s
s.ssss.s...s....s..s
sl.....s...s....s..s
s......ss..ss...ss.s
ss.....ss..sss..ss.s
ssssslllllllllllllls
]])
  Spawn("lock", 15.5, 1.5)
  Spawn("record", 7.5, 1, "sounds/voices/d1")
  Spawn("player", 2.5, 4)
  Spawn("chest", 13.5, 3, "VB00")
  Spawn("chest", 16.5, 5, "PB_local1")
  Spawn("lock", 11.5, 8.5)
  Spawn("lock", 2.5, 12.5)
  Spawn("chest", 8.5, 11, "domino_choice")
  Spawn("chest", 12.5, 11, "VB_local2")
  Spawn("chest", 17.5, 11, "BJ00")
  Spawn("chest", 13.5, 12, "PDC")
  Spawn("chest", 3.5, 13, "global_lock")
end
function BC10()
  ApplyTiles(wip, 0, 0, [[
sss..s...s..s...s..s
sss......s..s...s..s
sssll..s.sll..s....s
s..ls.........s....s
s...s..s...ssss..s.s
slslsssslllssss..s.s
s.s.ssssssssssslss.s
slssssssss....ssss.s
s.ssss...s....s....s
slssss...s....s....s
s.ssss.s...s....s..s
sl.....s...s....s..s
s......ss..ss...ss.s
ss.....ss..sss..ss.s
ssssslllllllllllllls
]])
  Spawn("lock", 15.5, 1.5)
  Spawn("record", 7.5, 1, "sounds/voices/d1")
  Spawn("player", 2.5, 4)
  Spawn("chest", 13.5, 3, "VB10")
  Spawn("chest", 16.5, 5, "PB_local1")
  Spawn("lock", 11.5, 8.5)
  Spawn("lock", 2.5, 12.5)
  Spawn("chest", 8.5, 11, "BC11")
  Spawn("chest", 12.5, 11, "VB_local2")
  Spawn("chest", 17.5, 11, "BJ10")
  Spawn("chest", 13.5, 12, "PB11")
  Spawn("chest", 3.5, 13, "global_lock")
end
function BC11()
  ApplyTiles(wip, 0, 0, [[
sss..s...s..s...s..s
sss......s..s...s..s
sssll..s.sll..s....s
s..ls.........s....s
s...s..s...ssss..s.s
slslsssslllssss..s.s
s.s.ssssssssssslss.s
slssssssss....ssss.s
s.ssss...s....s....s
slssss...s....s....s
s.ssss.s...s....s..s
sl.....s...s....s..s
s......ss..ss...ss.s
ss.....ss..sss..ss.s
ssssslllllllllllllls
]])
  Spawn("lock", 15.5, 1.5)
  Spawn("record", 7.5, 1, "sounds/voices/d1")
  Spawn("player", 2.5, 4)
  Spawn("chest", 13.5, 3, "VB11")
  Spawn("chest", 16.5, 5, "PB_local1")
  Spawn("lock", 11.5, 8.5)
  Spawn("lock", 2.5, 12.5)
  Spawn("chest", 8.5, 11, "domino_choice")
  Spawn("chest", 12.5, 11, "VB_local2")
  Spawn("chest", 17.5, 11, "BJ11")
  Spawn("chest", 13.5, 12, "PDC")
  Spawn("chest", 3.5, 13, "global_lock")
end
function BJ00()
  ApplyTiles(wip, 0, 0, [[
sss..s...s..s...s..s
sss......s..s...s..s
sssll..s.sll..s....s
s..ls.........s....s
s...s..s...ssss..s.s
slslsssslllssss..s.s
s.s.ssssssssssslss.s
slssss...s...sssss.s
s.ssss...s...s.....s
slssss...s...s.....s
s.ssss.s...s...s...s
sl.....s...s...s...s
s......ss..ss..sss.s
ss.....ss..ss..sss.s
ssssssllllllllllllls
]])
  Spawn("lock", 15.5, 1.5)
  Spawn("record", 7.5, 1, "sounds/voices/d1")
  Spawn("player", 2.5, 4)
  Spawn("chest", 13.5, 3, "VB_local1")
  Spawn("chest", 16.5, 5, "PB_local2")
  Spawn("lock", 7.5, 8.5)
  Spawn("lock", 11.5, 8.5)
  Spawn("lock", 2.5, 12.5)
  Spawn("chest", 8.5, 11, "VBa")
  Spawn("chest", 12.5, 11, "global_lock")
  Spawn("yield", 17.5, 11)
  Spawn("chest", 3.5, 13, "VAB_local")
  Spawn("chest", 4.5, 13, "PAa")
end
function BJ10()
  ApplyTiles(wip, 0, 0, [[
sss..s...s..s...s..s
sss......s..s...s..s
sssll..s.sll..s....s
s..ls.........s....s
s...s..s...ssss..s.s
slslsssslllssss..s.s
s.s.ssssssssssslss.s
slssss...s...sssss.s
s.ssss...s...s.....s
slssss...s...s.....s
s.ssss.s...s...s...s
sl.....s...s...s...s
s......ss..ss..sss.s
ss.....ss..ss..sss.s
ssssssllllllllllllls
]])
  Spawn("lock", 15.5, 1.5)
  Spawn("record", 7.5, 1, "sounds/voices/d1")
  Spawn("player", 2.5, 4)
  Spawn("chest", 13.5, 3, "VB_local1")
  Spawn("chest", 16.5, 5, "PB_local2")
  Spawn("lock", 7.5, 8.5)
  Spawn("lock", 11.5, 8.5)
  Spawn("lock", 2.5, 12.5)
  Spawn("chest", 8.5, 11, "VBb")
  Spawn("chest", 12.5, 11, "global_lock")
  Spawn("yield", 17.5, 11)
  Spawn("chest", 3.5, 13, "VAB_local")
  Spawn("chest", 4.5, 13, "PAb")
end
function BJ11()
  ApplyTiles(wip, 0, 0, [[
sss..s...s..s...s..s
sss......s..s...s..s
sssll..s.sll..s....s
s..ls.........s....s
s...s..s...ssss..s.s
slslsssslllssss..s.s
s.s.ssssssssssslss.s
slssss...s...sssss.s
s.ssss...s...s.....s
slssss...s...s.....s
s.ssss.s...s...s...s
sl.....s...s...s...s
s......ss..ss..sss.s
ss.....ss..ss..sss.s
ssssssllllllllllllls
]])
  Spawn("lock", 15.5, 1.5)
  Spawn("record", 7.5, 1, "sounds/voices/d1")
  Spawn("player", 2.5, 4)
  Spawn("chest", 13.5, 3, "VB_local1")
  Spawn("chest", 16.5, 5, "PB_local2")
  Spawn("lock", 7.5, 8.5)
  Spawn("lock", 11.5, 8.5)
  Spawn("lock", 2.5, 12.5)
  Spawn("chest", 8.5, 11, "VBa")
  Spawn("chest", 12.5, 11, "global_lock")
  Spawn("yield", 17.5, 11)
  Spawn("chest", 3.5, 13, "VAB_local")
  Spawn("chest", 4.5, 13, "PAa")
end
function global_lock()
  ApplyTiles(wip, 0, 0, [[
ssssssssssssssssssss
ssssssssssssssssssss
ssssssssssssssssssss
ssssssssssssssssssss
ssssssssssssssssssss
ssssssssssssssssssss
ssssss........ssssss
ssssss........ssssss
ssssss........ssssss
ssssssssssssssssssss
ssssssssssssssssssss
ssssssssssssssssssss
ssssssssssssssssssss
ssssssssssssssssssss
ssssssssssssssssssss
]])
  Global("lock", 10.5, 7.5)
  Spawn("player", 7.5, 8)
  Spawn("key", 12.5, 8)
end
