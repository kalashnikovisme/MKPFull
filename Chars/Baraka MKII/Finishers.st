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
trigger1 = movehit
V = 4
value = 1

[State 430, 31sdaa]
type = changeanim
trigger1 = Time = 60
value = 2241

[State 60, 1]
type = PlaySnd
trigger1 = animelem = 2
trigger1 = anim = 2241
value = 4, 6
volume = 80

[State 44, 1]
type = PlaySnd
trigger1 = animelem = 5
trigger1 = anim = 2241
value = 4, 8

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
trigger1 = anim = 2241
value = 0
ctrl = 1