[Statedef 3000]
type    = S
movetype= A
physics = S
juggle  = 1
anim = 0
Velset = 0, 0
ctrl = 0

[State 9130, SetFatal]
type = Varset
trigger1 = time = 1
V = 4
value = 1



[State 430, 31sdaa]
type = changeanim
trigger1 = Time = 20
value = 3333

[State 1200, play]
type = playsnd
trigger1 = time = 45
value = 10,10
channel = 4





[State 1200, BoltFat]
type = HitDef
trigger1 = !movecontact
attr = S, NT
damage    = 0, 0
animtype = Light
air.animtype = Back
p2stateno = 6003;661
air.fall = 1
numhits = -1
fall.recover = 0
guardflag = HL
pausetime = 0,10
sparkno = 16
sparkxy = 0,-145
guard.sparkno = -1
hitsound   = 5,0
guardsound = 5,0

[State 430, 31]
type = changestate
trigger1 = animTime = 0
trigger1 = anim = 3333
value = 0
ctrl = 1