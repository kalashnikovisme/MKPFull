[Statedef 3000]
type    = S
movetype= A
physics = S
anim = 0
ctrl = 0

[State 1001, 10]
type = Changeanim
trigger1 = time = 60
value = 430

[State 9130, SetFatal]
type = Varset
trigger1 = movehit
V = 4
value = 1

[State 1000, 10]
type = HitDef
trigger1 = !movecontact
attr = S, NA
hitflag = M
sparkno = -1
p2stateno = 3001
numhits = 0
fall = 1

[State 1001, 10]
type = Changeanim
trigger1 = AnimTime = 0
trigger1 = Anim = 430
value = 0

[State 1001, 10]
type = Changestate
trigger1 = Time = 190
value = 0
ctrl = 1

[Statedef 3001]
type    = S
movetype= H
physics = S
ctrl = 0

[State 1200, ound]
type = PlaySnd
trigger1 = time = 0
value = F5, 29
volume = 50

[State 9130, SetFatal]
type = posadd
trigger1 = time = 0
x = - 35

[State 1001, 10]
type = selfstate
trigger1 = Time = 1
value = 6004

;---------------------------------------------------
[Statedef 3300]
type    = S
movetype= A
physics = S
anim = 0
ctrl = 0

[State 1001, 10]
type = Changeanim
trigger1 = time = 60
value = 3381

[State 1000, bber]
type = PlaySnd
trigger1 = Time = 1
value = 5, 13
volume = 70

[State 9130, SetFatal]
type = Varset
trigger1 = movehit
V = 4
value = 1

[State 1000, 10]
type = HitDef
trigger1 = !movecontact
attr = S, NA
hitflag = M
sparkno = -1
p2stateno = 3001
numhits = 0
fall = 1

[State 1001, 10]
type = Changeanim
trigger1 = AnimTime = 0
trigger1 = Anim = 3381
value = 0

[State 1001, 10]
type = Changestate
trigger1 = Time = 190
value = 0
ctrl = 1

[Statedef 3001]
type    = S
movetype= H
physics = S
ctrl = 0

[State 1200, ound]
type = PlaySnd
trigger1 = time = 0
value = F5, 29
volume = 50

[State 9130, SetFatal]
type = posadd
trigger1 = time = 0
x = - 35

[State 1001, 10]
type = selfstate
trigger1 = Time = 1
value = 6004

;---------------------------------------------
[Statedef 3400]
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
value = 2244

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
pausetime = 40,10
sparkno = 16
sparkxy = 0,-145
guard.sparkno = -1
hitsound   = 5,0
guardsound = 5,0

[State 200, 7]
type = changestate
trigger1 = AnimTime = 0
trigger1 = anim = 2244;0
value = 0
ctrl = 1