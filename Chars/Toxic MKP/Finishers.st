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
;-------------------------

; --- Hara Kiri ---
; Hace el Hara Kiri y muere
[Statedef 3503]
type    = S
movetype= A
physics = S
anim = 0
ctrl = 0

[State 210, 1]
type = SprPriority
trigger1 = time = 0
value = 2

[State 3105, end]
type = changeanim
trigger1 = time = 60
value = 3500

[State 430, 31sdaa]
type = changestate
trigger1 = anim = 6666
trigger1 = animtime = 0
value = 3504

[State 210, 1]
type = Playsnd
trigger1 = anim = 6666
trigger1 = animelem = 7
value = 4,20

[Statedef 3504]
type    = S
movetype= A
physics = S
anim = 3501

[State 3100, helper]
type = Helper
trigger1 = time = 0
stateno = 3505
postype = p1
pos = 0,0

[State 3100, Pset]
type = varset
trigger1 = time = 0
v = 26
value = 1

[State 3105, end]
type = lifeadd
trigger1 = time = 1
value = -9999

[State 430, 31sdaa]
type = changestate
trigger1 = time = 1
value = 5150

[Statedef 3505]
type    = S
movetype= A
physics = S

[State 210, 1]
type = SprPriority
trigger1 = time = 0
value = 2

[State 430, 31sdaa]
type = changeanim
trigger1 = time = 0
value = 3501
