;====================
;Fatality : The Fire
;====================
[Statedef 3000]
type    = S
movetype= A
physics = S
ctrl = 0
velset = 0,0,0
anim = 0

[State 3000, 1]
type = Varset
trigger1 = time = 1
V = 4
value = 1

[State 3000, 2]
type = changeanim
trigger1 = time = 20
value = 6000

[State 3000, 3]
type = Helper
trigger1 = time = 60
trigger1 = p2name != "shao kahn,"
postype = p1
pos = 43,-100;56,-60
stateno = 3001

[State 3000, 4]
type = Helper
trigger1 = time = 60
trigger1 = p2name = "shao kahn,"
postype = p1
pos = 48,-100
stateno = 30010

[State 3000, 5]
type = playsnd
trigger1 = time = 45
value = 5,14
channel = 4

[State 3000, 6]
type = playsnd
trigger1 = time = 110
value = 6,3
volume = 60

[State 3000, 7]
type = varset
trigger1 = 10
fV = 1
Value = 1

[State 3000, 8]
type = Helper
trigger1 = time = 260
stateno = 30000
name = "skull"
postype = p1
pos = 0,0

[State 3000, 9]
type = varset
trigger1 = time = 260
v = 26
value = 1

[State 3000, 10]
type = changestate
trigger1 = time = 260
value = 0
ctrl = 1

[Statedef 30000]
type    = S
movetype= I
physics = S

[State 30000, 1]
type = Changeanim
trigger1 = time = 0
value = 6004

[Statedef 3001]     ;fuego
type    = S
movetype= A
physics = S
anim = 6003;2

;[State 1200, sound]
;type = playsnd
;trigger1 = time = 0;77
;value = F5,60
;volume = 60

[State 3001, 1]
type = sprpriority
trigger1 = time=0
value = 5

[State 3001, 2]
type = HitDef
trigger1 = !movecontact
attr = S, NA
sparkno = -1
numhits = - 1
p2stateno = 3002

[State 3001, 3]
type = destroyself
trigger1 = animtime = 0
;-------------------------
[Statedef 3002]     ;p2
type    = S
movetype= H
physics = S
anim = 4702

[State 3002, 1]
type = explod
trigger1 = time = 77;80
anim = F11
postype = p1
pos = -10,10
sprpriority = 5

[State 3002, 2]
type = playsnd
trigger1 = time = 46
trigger2 = time = 77
value = F5,60
volume = 60

[State 3002, 3]
type = explod
trigger1 = time = 82;85
anim = F50
postype = p1
pos = 0,0
sprpriority = 4

[State 3002, 4]
type = sprpriority
trigger1 = time=0
value = 1

[State 3002, 5]
type = varset
trigger1 = time = 90
V = 26
value = 1

[State 3002, 6]
type = veladd
trigger1 = Time > 90
trigger1 = time < 120
X = -1.5

[State 3002, 7]
type = LifeSet
trigger1 = time = 120
value = 0

[State 3002, 8]
type = playsnd
;trigger1 = time = 0
trigger1 = time = 80
value = 4,1

[State 3002, 9]
type = Selfstate
trigger1 = time = 121
value = 5150
;---------------------------
[Statedef 30010]
type    = S
movetype= A
physics = S
anim = 6003

[State 30010, 1]
type = playsnd
trigger1 = time = 20
value = 4, 14
volume = 60

[State 30010, 2]
type = sprpriority
trigger1 = time=0
value = 5

[State 30010, 3]
type = HitDef
trigger1 = !movecontact
attr = S, NA
sparkno = -1
numhits = - 1
p2stateno = 30020

[State 30010, 4]
type = destroyself
trigger1 = animtime = 0

[Statedef 30020]     ;The other guy is Shao Kahn
type    = S
movetype= H
physics = S
anim = 4702

[State 30020, 1]
type = explod
trigger1 = time = 82
anim = F50
postype = p1
pos = 0,0
scale = 1.1,1.1
sprpriority = 4

[State 30020, 2]
type = sprpriority
trigger1 = time=0
value = 1

[State 30020, 3]
type = varset
trigger1 = time = 96
V = 26
value = 1

[State 30020, 4]
type = veladd
trigger1 = Time > 90
trigger1 = time < 120
X = -1.5

[State 30020, 5]
type = LifeSet
trigger1 = time = 120
value = 0

[State 30020, 6]
type = playsnd
;trigger1 = time = 0
trigger1 = time = 40
value = 4,1

[State 30020, 7]
type = Selfstate
trigger1 = time = 121
value = 5150

;====================
;Fatality : Toasty
;====================
[Statedef 3200]
type    = S
movetype= A
physics = S
ctrl = 0
velset = 0,0,0
anim = 0

[State 3200, 1]
type = Varset
trigger1 = time = 1
V = 4
value = 1

[State 3200, 2]
type = changeanim
trigger1 = time = 20
value = 6000

[State 3200, 3]
type = Helper
trigger1 = time = 60
trigger1 = p2name != "shao kahn,"
postype = p1
pos = 43,-100;56,-60
stateno = 30012

[State 3200, 4]
type = Helper
trigger1 = time = 60
trigger1 = p2name = "shao kahn,"
postype = p1
pos = 48,-100
stateno = 32010

[State 3200, 5]
type = playsnd
trigger1 = time = 45
value = 1,2

[State 3200, 6]
type = playsnd
trigger1 = time = 107
value = 6,3
volume = 60

[State 3200, 7]
type = explod
trigger1 = time = 150
anim = 3200
postype = p2
pos = 0,0
sprpriority = 4

[State 3200, 8]
type = varset
trigger1 = 10
fV = 1
Value = 1

[State 3200, 9]
type = Helper
trigger1 = time = 260
stateno = 30000
name = "skull"
postype = p1
pos = 0,0

[State 3200, 10]
type = varset
trigger1 = time = 260
v = 26
value = 1

[State 3200, 11]
type = changestate
trigger1 = time = 260
value = 0
ctrl = 1

[Statedef 30012]
type    = S
movetype= A
physics = S
anim = 6003

[State 30012, 1]
type = sprpriority
trigger1 = time=0
value = 5

[State 30012, 2]
type = HitDef
trigger1 = !movecontact
attr = S, NA
sparkno = -1
numhits = - 1
p2stateno = 32022

[State 30012, 3]
type = destroyself
trigger1 = animtime = 0

[Statedef 32022]     ;p2
type    = S
movetype= H
physics = S
anim = 4702

[State 32022, 1]
type = explod
trigger1 = time = 77
anim = F11
postype = p1
pos = -10,10
sprpriority = 5

[State 32022, 2]
type = playsnd
trigger1 = time = 77
value = F5,35
volume = 60

[State 32022, 3]
type = sprpriority
trigger1 = time=0
value = 1

[State 32022, 4]
type = varset
trigger1 = time = 90
V = 26
value = 1

[State 32022, 5]
type = Explod
trigger1 = TimeMod=9,3
triggerall = time >90
anim = F19
name = "smokin'"
pos = 10, -50
postype = p1
sprpriority = 5
bindtime = 1
vel = 0, 0
random = 60, 70
removetime = -1
shadow = -1, -1, -1

[State 32022, 6]
type = veladd
trigger1 = Time > 90
trigger1 = time < 120
X = -1.5

[State 32022, 7]
type = LifeSet
trigger1 = time = 120
value = 0

[State 32022, 8]
type = playsnd
trigger1 = time = 100
value = F5,39

[State 32022, 9]
type = Selfstate
trigger1 = time = 121
value = 5150

[Statedef 32010]
type    = S
movetype= A
physics = S
anim = 6003

[State 32010, 1]
type = sprpriority
trigger1 = time=0
value = 5

[State 32010, 2]
type = HitDef
trigger1 = !movecontact
attr = S, NA
sparkno = -1
numhits = - 1
p2stateno = 32020

[State 32010, 3]
type = destroyself
trigger1 = animtime = 0

[Statedef 32020]     ;The other guy is Shao Kahn
type    = S
movetype= H
physics = S
anim = 4702

[State 32020, 1]
type = explod
trigger1 = time = 77
anim = F11
postype = p1
pos = -10,10
scale = 1.1,1.1
sprpriority = 5

[State 32020, 2]
type = playsnd
trigger1 = time = 77
value = F5,35
volume = 60

[State 32020, 3]
type = sprpriority
trigger1 = time=0
value = 1

[State 32020, 4]
type = varset
trigger1 = time = 90
V = 26
value = 1

[State 32020, 5]
type = Explod
trigger1 = TimeMod = 9,3
triggerall = time > 90
anim = F19
name = "smokin'"
pos = 10,-50
postype = p1
sprpriority = 5
bindtime = 1
vel = 0, 0
random = 60, 70
removetime = -1
shadow = -1, -1, -1

[State 32020, 6]
type = veladd
trigger1 = Time > 90
trigger1 = time < 120
X = -1.5

[State 32020, 7]
type = LifeSet
trigger1 = time = 120
value = 0

[State 32020, 8]
type = playsnd
trigger1 = time = 100
value = F5,39

[State 32020, 9]
type = Selfstate
trigger1 = time = 121
value = 5150

;========================
;Fatality : Decapitation
;========================
[Statedef 3100]
type    = S
movetype= A
physics = S
anim = 0
ctrl = 0

[State 3100, 1]
type = Varset
trigger1 = time = 1
V = 4
value = 1

[State 3100, 2]
type = changeanim
trigger1 = Time = 60
value = 4300

[State 3100, 3]
type = HitDef
trigger1 = anim = 4300
trigger1 = animelem = 6
attr = S, NA
animtype = Light
air.animtype = Back
guardflag = HL
hitflag = MAF
priority = 2, Hit
pausetime = 0,0
sparkno = -1
hitsound   = F20,0
ground.type = High
p2stateno = 31001
ground.slidetime = 15
ground.hittime  = 10
ground.velocity = -10,0
air.velocity = -3,-4
air.fall = 1
fall.recover = 0
air.juggle = 3
yaccel = 0.1
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)
p2facing = 1

[State 3100, 4]
type = Explod
trigger1 = anim = 4300
trigger1 = animelem = 6
anim = F16
pos = 10,-117
postype = p2
sprpriority  >= 4

[State 3100, 5]
type = stopsnd
trigger1 = anim = 4300
trigger1 = animelem = 8
channel = 4

[State 3100, 6]
type = HitDef
trigger1 = anim = 4300
trigger1 = animelem = 8
attr = S, NA
animtype = Light
air.animtype = Back
guardflag = HL
hitflag = MAF
priority = 2, Hit
pausetime = 0,0
sparkno = -1
hitsound   = F5,17
ground.type = High
p2stateno = 6003
ground.slidetime = 15
ground.hittime  = 10
ground.velocity = -10,0
air.velocity = -3,-4
air.fall = 1
fall.recover = 0
air.juggle = 3
yaccel = 0.1
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)
p2facing = 1

[State 3100, 7]
type = Explod
trigger1 = anim = 4300
trigger1 = animelem = 8
anim = F16
pos = 10,-117
postype = p2
sprpriority  >= 4

[State 3100, 8]
type = changestate
trigger1 = Anim = 4300
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 31001]
Type = S
MoveType = H
Physics = N
Velset = -2,0
anim = 21238

[State 31001, 1]
type = playsnd
trigger1 = anim = 21238
trigger1 = animelem = 1
value = 4,1
channel = 4


;==========
; Babality
;==========
[Statedef 3300]
type    = S
movetype= A
physics = S
anim = 0
Velset = 0, 0
ctrl = 0

[State 3300, 1]
type = Varset
trigger1 = movehit
V = 4
value = 2

[State 3300, 2]
type = changeanim
trigger1 = Time = 60
value = 60090

[State 3300, 3]
type = Hitdef
trigger1 = AnimElem = 4
trigger1 = Anim = 60090
velocity = 0, 0
remvelocity = 0, 0
attr = S, NT
animtype = Hard
air.animtype = Back
air.fall = 1
fall.recover = 0
guardflag = HL
pausetime = 0,0
sparkno = 11
sparkxy = 0,0
p2stateno = 6009
guard.sparkno = -1
hitsound   = F5,35
ground.type = High
kill       = (Var(9) = 1)
fall.kill  = (Var(9) = 1)
guard.kill = (Var(9) = 1)

[State 3300, 4]
type = playsnd
trigger1 = time = 100
value = F5,47

[State 3300, 5]
type = changestate
trigger1 = Anim = 60090
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;==========================
; Animality : The Scorpion
;==========================
[Statedef 3800]
type    = S
movetype= A
physics = S
anim = 0
ctrl = 0

[State 3800, 1]
type = changeanim
trigger1 = time = 20
value = 3800

[State 3800, 2]
type = playsnd
trigger1 = time = 60
value = F5,19

[State 3800, 3]
type = Varset
trigger1 = movehit
V = 4
value = 4

[State 3800, 4]
type = Hitdef
trigger1 = anim = 3800
trigger1 = animelem = 14
velocity = 8, 0
remvelocity = 0, 0
attr = S, NT
animtype = Hard
air.animtype = Back
air.fall = 1
fall.recover = 0
damage = 99999
guardflag = HL
pausetime = 30,30
sparkno = -1
sparkxy = 0,0
p2stateno = 3801
guard.sparkno = -1
hitsound = -1
ground.type = High

[State 3800, 5]
type = Explod
trigger1 = anim = 3800
trigger1 = animelem = 14
anim = F0
name = "the sting"
postype = p2
pos = 10,-117
sprpriority = 5

[State 3800, 6]
type = playsnd
trigger1 = anim = 3800
trigger1 = animelem = 14
value = F5,17
volume = 120

[State 3800, 7]
type = playsnd
trigger1 = time = 170
value = F5,19

[State 3800, 8]
type = changestate
trigger1 = anim = 3800
trigger1 = animtime = 0
value = 0
ctrl = 1

[Statedef 3801]
Type = S
MoveType = H
Physics = N
Velset = -.6,0
anim = 21238
ctrl = 0

[State 3801, 1]
type = playsnd
trigger1 = anim = 21238
trigger1 = animelem = 1
value = 3,0
channel = 4

[State 3801, 2]
type = palFX
trigger1 = time = 1
add = 113,0,0
mul = 256,256,256
time = 90

[State 3801, 3]
type = playsnd
trigger1 = time = 90
value = F5,35

[State 3801, 4]
type = changestate
trigger1 = time = 90
value = 2110
ctrl = 0

[Statedef 2110] ; Exploding body code courtesy the MKP team
type    = S
movetype= H
physics = S

[State 45, fff]
type = LifeSet
trigger1 = time = 30
value = 0

[state 3404,play1]
type = playsnd
trigger1 = time = 0
value = F5,(4+random%2);F5,13
channel = 1

[state 3404,play1]
type = playsnd
trigger1 = time = 2
value = 4,1
channel = 2

[State 45, 34fff]
type = Selfstate
trigger1 = time = 30
value = 5150

[State 5, Vel XY]
type = PosSet
trigger1 = Time = 0
Y = 900;-140

[State 235, sss]
type = envshake
trigger1 = time = 0;228
time = 10
freq = 40
ampl = 4

[State 235, sssa]
type = envshake
trigger1 = animelem = 22
time = 15
freq = 150
ampl = 7

[State 9000, 123]
type = Explod
trigger1 = time = 0;228
anim = F16
postype = p1
pos = 0,-990
facing = 1
sprpriority = 2
;ontop = 1
ownpal = 1

[State 9000, 123]
type = Explod
trigger1 = time = 7;235
anim = F16
postype = p1
pos = 10,-1030
facing = 1
sprpriority = 2
;ontop = 1
ownpal = 1

[State 9000, 1]
type = Explod
trigger1 = time = 0;228
anim = F17
postype = p1
pos = 0,-1010
facing = 1
sprpriority = 2
ontop = 1
ownpal = 1

[State 9000, 1]
type = Explod
trigger1 = time = 0;228
anim = F17
postype = p1
pos = 0,-980
facing = 1
sprpriority = 2
;ontop = 1
ownpal = 1

[State 9000, 1]
type = Explod
trigger1 = time = 0;228
anim = F17
postype = p1
pos =0,-960
facing = 1
sprpriority = 2
ontop = 1
ownpal = 1

[State 9000, 123]
type = Explod
trigger1 = time = 3;231
anim = 43051
postype = p1
pos = 0,-1010
vel = -2 , 2
;postype = front
bindtime = 1
facing = 1
sprpriority = 3
ontop = 1
ownpal = 1
removetime = -1

[State 9000, 123]
type = Explod
trigger1 = time = 4;232
anim = 43052
postype = p1
pos = 0,-1050
vel = 9 , -6
;postype = front
bindtime = 1
facing = 1
sprpriority = 3
ontop = 1
ownpal = 1
removetime = -1

[State 9000, 123]
type = Explod
trigger1 = time = 6;234
anim = 43052
postype = p1
facing = -1
pos = 40,-1050
vel = -10 , -8
;postype = front
bindtime = 1
facing = 1
sprpriority = 3
ontop = 1
ownpal = 1
removetime = -1

[State 9000, 123]
type = Explod
trigger1 = time = 4;232
anim = 43053
postype = p1
pos = 0,-990
vel = -7 , -6
;postype = front
bindtime = 1
facing = 1
sprpriority = 3
ontop = 1
ownpal = 1
removetime = -1

[State 9000, 123]
type = Explod
trigger1 = time = 4;232
anim = 43053
postype = p1
pos = 50,-990
vel = 14 , -2
facing = -1
;postype = front
bindtime = 1
facing = 1
sprpriority = 3
ontop = 1
ownpal = 1
removetime = -1

[State 9000, 123]
type = Explod
trigger1 = time = 4;232
anim = 43054
postype = p1
pos = 0,-1030
vel = 1,3
;postype = front
bindtime = 1
facing = 1
sprpriority = 2
ontop = 1
ownpal = 1
removetime = -1

[State 9000, 123]
type = Explod
trigger1 = time = 6;234
anim = F16
postype = p1
pos = 80,-1080
facing = 1
sprpriority = 2
ontop = 1
ownpal = 1

[State 9000, 000]
type = Explod
trigger1 = time = 4;232
anim = 888
ID = 333
postype = p1
pos = -50,-990
facing = 1
sprpriority = 2
removetime = -1
ontop = 1
ownpal = 1

;==========================
; Hara Kiri : Spear Tricks
;==========================
[Statedef 3503]
type    = S
movetype= A
physics = S
anim = 0
ctrl = 0
sprpriority = 5

[State 3503, 3]
type = Playsnd
trigger1 = time = 2
value = 1,0

[State 3503, 1]
type = changeanim
trigger1 = Time = 2
value = 3701
sprpriority = 5

[State 3503, 3]
type = Playsnd
trigger1 = anim = 3701
trigger1 = animelem = 8
value = 88,0

[State 3503, 2]
type = explod
trigger1 = time = 9
anim = 3500
postype = p1
pos = 0,0
sprpriority = -1

[State 3503, 5]
type = changestate
trigger1 = Anim = 3701
trigger1 = AnimTime = 0
value = 6003


;=================================
; Friendship; Toasty Marshmallows
;=================================
[Statedef 3700]
type    = S
movetype= A
physics = S
anim = 0
ctrl = 0

[State 3700, 1]
type = changeanim
trigger1 = time = 60
value = 3700

[State 3700, 2]
type = explod
trigger1 = anim = 3700
trigger1 = animelem = 7
anim = 37000
ID = 3700
postype = p2
facing = -1
pos = 0,0
sprpriority = 4

[State 3700, 3]
type = Playsnd
trigger1 = anim = 3700
trigger1 = animelem = 8
value = F7,0

[State 3700, 4]
type = VarSet
trigger1 = 1
V = 4
value = 3

[State 3700, 5]
type = changeanim
trigger1 = anim = 3700
trigger1 = animelem = 10
value = 6000

[State 3700, 6]
type = playsnd
trigger1 = anim = 6000
trigger1 = animelem = 1
value = 5,14

[State 3700, 7]
type = Helper
trigger1 = time = 180
trigger1 = p2name != "shao kahn,"
postype = p1
pos = 43,-100
stateno = 3001

[State 3700, 8]
type = Helper
trigger1 = time = 180
trigger1 = p2name = "shao kahn,"
postype = p1
pos = 48,-100
stateno = 30010

[State 3700, 9]
type = playsnd
trigger1 = time = 227
value = 6,3
volume = 60

[State 3700, 10]
type = playsnd
trigger1 = time = 250
value = F5,35
volume = 60

[State 3700, 11]
type = explod
trigger1 = time = 256
anim = 37001
postype = p2
facing = -1
pos = 0,0
sprpriority = 4

[State 3700, 12]
type = RemoveExplod
trigger1 = time = 257
ID = 3700

[State 3700, 13]
type = explod
trigger1 = time = 258
anim = F19
postype = p2
facing = -1
pos = 10,-50
sprpriority = 5

[State 3700, 14]
type = varset
trigger1 = 10
fV = 1
Value = 1

[State 3700, 15]
type = Helper
trigger1 = time = 260
stateno = 30000
name = "skull"
postype = p1
pos = 0,0

[State 3700, 16]
type = varset
trigger1 = time = 260
v = 26
value = 1

[State 3700, 17]
type = playsnd
trigger1 = time = 259
value = F5,39
volume = 60

[State 3700, 18]
type = playsnd
trigger1 = time = 260
value = 6,4
volume = 60

[State 3700, 19]
type = changestate
trigger1 = time = 260
value = 0
ctrl = 1

