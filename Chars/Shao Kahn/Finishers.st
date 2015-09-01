;======================
;Fatality : The Hammer
;======================
[Statedef 3000]
type    = S
movetype= A
physics = S
anim = 0
ctrl = 0

[State 3000, 2]
type = changeanim
trigger1 = Time = 60
value = 3000

[State 3001, 1]
type = playsnd
trigger1 = time = 69
value = 4,10

[State 3001, 1]
type = playsnd
trigger1 = anim = 3000
trigger1 = animelem = 5
value = F5,15

[State 3000, 4]
type = HitDef
trigger1 = anim = 3000
trigger1 = animelem = 8
attr = S, NA
animtype  = Back
hitflag = MAFD
guardflag = L
sparkno = -1
hitsound = F5,17
sparkxy = -18,-100
guard.sparkno = -1
envshake.time = 15
envshake.freq = 70
envshake.ampl = 7
numhits = 0
p2stateno = 6004

[State 3001, 4]
type = Varset
trigger1 = movehit
V = 4
value = 1

[State 3001, 1]
type = playsnd
trigger1 = anim = 3000
trigger1 = animelem = 9
value = F5,4

[State 3000, 5]
type = changestate
trigger1 = Anim = 3000
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;========================
; Hara Kiri: Hammer Toss
;========================
[Statedef 3503]
type    = S
movetype= A
physics = S
anim = 0
ctrl = 0

[State 3503, 2]
type = changeanim
trigger1 = time = 10
value = 3500
sprpriority = 2

[State 3001, 1]
type = playsnd
trigger1 = time = 33
value = F5,4
channel = 1

[State 3503, 3]
type = Explod
trigger1 = time = 37
anim = 3506
postype = p1
pos = 0,0
sprpriority = 0

[State 3503, 6]
type = Playsnd
trigger1 = time = 22
trigger2 = time = 39
trigger3 = time = 51
trigger4 = time = 60
value = F5,15

[State 3001, 1]
type = stopsnd
trigger1 = time = 73
value = F5,4
channel = 1

[State 3503, 6]
type = Playsnd
trigger1 = time = 73
value = F5,17

[State 3503, 2]
type = changeanim
trigger1 = time = 73
value = 661

[State 1200, 2at]
type = Explod
trigger1 = time = 73
anim = F16
pos = 10,-117
postype = p1
sprpriority  >= 4

[State 3503, 6]
type = Playsnd
trigger1 = time = 98
value = F5,32

[State 1200, at]
type = Explod
trigger1 = time = 78
trigger2 = time = 85
trigger3 = time = 95
trigger4 = time = 101
trigger5 = time = 107
trigger6 = time = 113
trigger7 = time = 118
trigger8 = time = 123
trigger9 = time = 128
anim = F1
pos = 0,-105
postype = p1
sprpriority  >= 3

[State 1200, at]
type = Explod
trigger1 = time = 81
trigger2 = time = 87
trigger3 = time = 95
trigger4 = time = 103
trigger5 = time = 110
trigger6 = time = 116
trigger7 = time = 121
trigger8 = time = 126
trigger9 = time = 131
anim = F1
pos = 0,-105
postype = p1
facing = -1
sprpriority  >= 3

[State 1200, 45ound]
type = PlaySnd
trigger1 = time = 81
trigger2 = time = 87
trigger3 = time = 95
trigger4 = time = 101
trigger5 = time = 107
trigger6 = time = 113
trigger7 = time = 118
trigger8 = time = 123
trigger9 = time = 128
value = F5, 19

[State 3700, 6]
type = envshake
triggerall = anim = 661
trigger1 = animelem = 8
trigger2 = animelem = 11
freq = 78
time = 10
ampl = 6

[State 3503, 7]
type = Helper
trigger1 = anim = 661
trigger1 = animelem = 11
stateno = 60040
postype = p1
pos = 0,0

[State 3100, Pset]
type = varset
trigger1 = time = 194
v = 26
value = 1

[State 9399, 3]
type = Lifeadd
trigger1 = time = 195
Value = -9999

[State 9399, 2]
type = changestate
trigger1 = time = 195
value = 5150

[Statedef 60040];6612
type    = S
movetype= H
physics = S
ctrl = 0

[State 30020, 1]
type = Changeanim
trigger1 = time = 0
value = 6611

