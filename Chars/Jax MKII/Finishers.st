[Statedef 3000]
type    = S
movetype= A
physics = S
anim = 0
ctrl = 0

[State 1001, 10]
type = Changeanim
trigger1 = time = 60
value = 3000

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
trigger1 = Anim = 3000
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
value = 2245

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
trigger1 = Anim = 2245
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