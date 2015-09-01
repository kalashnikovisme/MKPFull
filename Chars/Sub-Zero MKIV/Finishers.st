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
trigger1 = Time = 45
value = 660

[State 200, Plaay]
type = PlaySnd
trigger1 = animelem = 1
triggerall = anim = 660
trigger2 = Animelem = 18
value = F5, 20

[State 200, Plaayd]
type = PlaySnd
trigger1 = animelem = 21
trigger1 = anim = 660
value = F5, 0

[State 22, round hit]
type = EnvShake
trigger1 = animelem = 22
freq = 78
time = 10
ampl = 6

[State 810, Bind 7]
type = TargetBind
trigger1 = movehit
pos = 65, 0

[State 430, 1]
type = PlaySnd
trigger1 = animelem = 18
value = F5, 15

[State 430, 14]
type = PlaySnd
trigger1 = animelem = 23
value = F5, 16

[State 430, 13]
type = PlaySnd
trigger1 = animelem = 22
value = F5, 17

[State 430, 12]
type = PlaySnd
trigger1 = animelem = 23
value = F5, 18

[State 181, 6]
type = Explod
trigger1 = animelem = 5
trigger1 = anim = 660
anim = 665
pos = 0,0
postype = p1
;facing = 1
sprpriority = 2
ownpal = 1

[State 181, 62]
type = Explod
trigger1 = animelem = 23
trigger1 = anim = 660
anim = F16
pos = 79,-135
postype = p1
facing = 1
sprpriority = 2
ownpal = 1

[State 181, 623]
type = Explod
trigger1 = animelem = 23
trigger1 = anim = 660
anim = F16
pos = 70,-120
postype = p1
facing = -1
ontop  =1
ownpal = 1


[State 1200, BoltFat]
type = Hitdef
trigger1 = AnimElem = 5
velocity = 8, 0 
attr = S, NT
animtype = Hard
air.animtype = Back
air.fall = 1
fall.recover = 0
guardflag = HL
pausetime = 0,0
sparkno = -1
p2stateno = 3001;6006;6614
guard.sparkno = -1
hitsound   = 5,0
guardsound = s4,17
ground.type = High
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 200, 7]
type = changestate;Selfstate
trigger1 = AnimTime = 0
trigger1 = anim = 660
value = 0
ctrl = 1

[Statedef 3001];6614
type    = S
movetype= H
physics = S
ctrl = 0
velset = 0,0,0
anim = 661

[State 210, 1]
type = Playsnd
trigger1 = time = 0
value = F5,17
volume = 100

[State 210, 12]
type = Playsnd
trigger1 = time = 0
value = F5,16
volume = 100

[State 210, 21]
type = Playsnd
trigger1 = time = 0
value = F5,18
volume = 100

[State 181, 6]
type = Explod
trigger1 = time = 0
anim = 664
pos = 0,0
postype = p2
facing = 1
sprpriority = 3
ownpal = 1

[State 1200, 2at]
type = Explod
trigger1 = time = 0
anim = F16
pos = 10,-117
postype = p1
sprpriority  >= 4

[State 1200, at]
type = Explod
trigger1 = time = 5
trigger2 = time = 12
trigger3 = time = 22
trigger4 = time = 28
trigger5 = time = 34
trigger6 = time = 40
trigger7 = time = 45
trigger8 = time = 50
trigger9 = time = 55
anim = F1
pos = 0,-105
postype = p1
;facing = 1
sprpriority  >= 3

[State 1200, at]
type = Explod
trigger1 = time = 8
trigger2 = time = 14
trigger3 = time = 22
trigger4 = time = 28
trigger5 = time = 34
trigger6 = time = 40
trigger7 = time = 45
trigger8 = time = 50
trigger9 = time = 55
anim = F1
pos = 0,-105
postype = p1
facing = -1
sprpriority  >= 3

[State 1200, 45ound]
type = PlaySnd
trigger1 = time = 8
trigger2 = time = 14
trigger3 = time = 22
trigger4 = time = 28
trigger5 = time = 34
trigger6 = time = 40
trigger7 = time = 45
trigger8 = time = 50
trigger9 = time = 55
value = F5, 19

[State 9010, 0.1]
type = Sprpriority
trigger1 = time = 50
value  >= 4

[State 9399, 2]
type = Selfstate
trigger1 = Animtime = 0
value = 6006

[State 9399, 3]
type = Lifeadd
trigger1 = Time = 30
Value = -9999

[State 5150, 8]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1
ctrl = 1

;======================
[Statedef 3100]
type    = S
movetype= A
physics = S
anim = 0
ctrl = 0

[State 3100, 1]
type = ScreenBound
trigger1 = time = [0, 1000]
value = 0
movecamera = 0,0

[State 3100, 2]
type = changeanim
trigger1 = Time = 60
value = 430

[State 3100, 3]
type = Helper
trigger1 = movehit
ID = 28
stateno = 28
pos = 0, 0
postype = p1
persistent = 0
ignorehitpause = 1

[State 3100, 4]
type = HitDef
trigger1 = !MoveContact
attr = S, NA
animtype  = Back
hitflag = H
sparkno = -1
sparkxy = -18,-100
guard.sparkno = -1
hitsound   = 5,0
ground.type = High
ground.velocity = -.8,-16
envshake.time = 15
envshake.freq = 70
envshake.ampl = 7
numhits = 0
p2facing = 1

[State 3100, 5]
type = changestate
trigger1 = Anim = 430
trigger1 = AnimTime = 0
value = 3101

[Statedef 3101]
type    = S
movetype= A
physics = S
anim = 13000

[State 3101, 1]
type = playsnd
trigger1 = anim = 13000
trigger1 = animelem = 4
value = 4,14
volume = 60

[State 3101, 2]
type = sprpriority
trigger1 = time=0
value = 2

[State 3101, 3]
type = ScreenBound
trigger1 = time = [0, 1000]
value = 1
movecamera = 0,0

[State 3101, 4]
type = Explod
trigger1 = anim = 13000
trigger1 = animelem = 9
anim = 13001
name = "the ice spike"
postype = p1
pos = 0,0
sprpriority = 3

[State 3101, 5]
type = Varset
trigger1 = movehit
V = 4
value = 1

[State 3101, 6]
type = playsnd
trigger1 = movehit
value = F5,17
volume = 60

[State 3101, 7]
type = HitDef
trigger1 = !MoveContact
attr = S, NA
animtype  = Back
hitflag = MAFD
guardflag = L
sparkno = -1
sparkxy = -18,-100
guard.sparkno = -1
envshake.time = 15
envshake.freq = 70
envshake.ampl = 7
numhits = 0
p2stateno = 3003

[State 3101, 8]
type = Helper
trigger1 = movehit
stateno = 3011
name = "subwin"
postype = p1
pos = 0,0

[State 3101, 9]
type = changestate
trigger1 = movehit
value = 0
ctrl = 1

[Statedef 3011]
type    = S
movetype= A
physics = S
anim = 13002

[State 3011, 1]
type = sprpriority
trigger1 = time=0
value = 2

[State 3011, 2]
type = playsnd
trigger1 = time = 2
value = F5,60
volume = 60

[Statedef 3003]
type    = S
movetype= H
physics = S

[State 3003, 1]
type = changeanim
trigger1 = Time = 0
value = 6001

[State 3003, 2]
type = sprpriority
trigger1 = time=0
value = 5

[State 3003, 3]
type = velset
trigger1 = Time = 0
Y = 0

[State 3003, 4]
type = varset
trigger1 = time = 1
v = 45
value = anim

[State 3003, 5]
type = selfstate
trigger1 = Time = 1
value = 6001


;=====================
; Animality : Penguin
;=====================
[Statedef 3800]
type    = S
movetype= A
physics = S
juggle  = 1
anim = 0
Velset = 0, 0
ctrl = 0

[State 3800, 1]
type = changeanim
trigger1 = Time = 60
value = 3701

[State 3800, 2]
type = explod
trigger1 = time = 60
anim = 3803
postype = p1
pos = 0,0
sprpriority = 4

[State 3800, 3]
type = Playsnd
trigger1 = time = 75
value = 5,13

[State 3800, 4]
type = changestate
trigger1 = Anim = 3701
trigger1 = AnimTime = 0
value = 3801

[Statedef 3801]
type    = S
movetype= A
physics = S
anim = 3800

[State 3801, 1]
type = Playsnd
trigger1 = anim = 3800
trigger1 = animelem = 1
value = 15,1
volume = 1000

[State 3801, 2]
type = helper
trigger1 = anim = 3800
trigger1 = animelem = 15
stateno = 3805
name = "the egg"
postype = p1
pos = 0,0
sprpriority = 4

[State 3801, 3]
type = Varset
trigger1 = movehit
V = 4
value = 4

[State 3801, 4]
type = Hitdef
trigger1 = anim = 3800
trigger1 = animelem = 19
attr = S, NT
animtype = Hard
air.animtype = Back
air.fall = 1
fall.recover = 0
guardflag = HL
pausetime = 0,0
sparkno = 11
sparkxy = 0,0
p2stateno = 2110
guard.sparkno = -1
hitsound = S4,22
ground.type = High
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 3801, 5]
type = changestate
trigger1 = anim = 3800
trigger1 = animtime = 0
value = 3804

[Statedef 3804]
type    = S
movetype= A
physics = S
anim = 3801

[State 3804, 1]
type = velset
trigger1 = 1
x = -3

[State 3804, 2]
type = veladd
trigger1 = time = 30
x = 18

[State 3804, 3]
type = Playsnd
trigger1 = time = 80
value = 5,13

[State 3804, 4]
type = explod
trigger1 = time = 80
anim = 3803
postype = p1
pos = 0,0
sprpriority = 5

[State 3804, 5]
type = changestate
trigger1 = time = 83
value = 151

[Statedef 3805]
type    = S
movetype= A
physics = S
anim = 3802

[State 3805, 1]
type = sprpriority
trigger1 = time = 0
value = 2

[State 3805, 2]
type = destroyself
trigger1 = time = 45

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

[State 181, DerI]
type = Helper
trigger1 = time = 0
stateno = 6900
postype = p2
pos = 30, -125

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

;===========================
; Friendship; Ice Cream Man
;===========================
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
type = Playsnd
trigger1 = time = 60
value = 4,25
volume = 5000

[State 3700, 3]
type = HitDef
trigger1 = anim = 3700
trigger1 = animelem = 5
attr = S, NA
sparkno = -1
guard.sparkno = -1
p2stateno = 6002

[State 3700, 4]
type = VarSet
trigger1 = movehit
V = 4
value = 3

[State 3700, 5]
type = explod
trigger1 = anim = 3700
trigger1 = animelem = 5
anim = 3804
postype = p2
facing = -1
pos = 0,0
sprpriority = 5

[State 3700, 6]
type = envshake
trigger1 = time = 88
freq = 78
time = 10
ampl = 6

[State 3700, 7]
type = changeanim
trigger1 = anim = 3700
trigger1 = animtime = 0
value = 0
ctrl = 0

[State 3700, 8]
type = changestate
trigger1 = time = 800
value = 151
ctrl = 0


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
value = 3381

[State 3300, 3]
type = Hitdef
trigger1 = AnimElem = 4
trigger1 = Anim = 3381
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
trigger1 = Anim = 3381
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;=========================
; Hara Kiri : Frozen Fall
;=========================
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
value = 66699

[State 430, 31sdaa]
type = changestate
trigger1 = anim = 66699
trigger1 = animtime = 0
value = 3504

[State 210, 1]
type = Playsnd
trigger1 = anim = 66699
trigger1 = animelem = 7
value = 4,14

[State 210, 1]
type = Playsnd
trigger1 = anim = 66699
trigger1 = animelem = 31
value = 4,17

[State 201, 347]
type = EnvShake
trigger1 = anim = 66699
trigger1 = animelem = 44
time = 15
freq = 70
ampl = 7

[State 210, 1]
type = Playsnd
trigger1 = anim = 66699
trigger1 = animelem = 44
value = 4,21

[Statedef 3504]
type    = S
movetype= A
physics = S
anim = 66700

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
value = 66700

; --- Brutality ---
[Statedef 2100]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 1                      ;Number of air juggle points move takes
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0
anim = 2100          ;Change animation (Def: no change)

[State 0, StopSnd]
type = StopSnd
trigger1 = time = 0
channel = -1

[State 0]
type = Helper
trigger1 = animelem = 48
stateno = 2102

[State 200, Play]
type = PlaySnd
trigger1 = time = 1
trigger1 = 1
value = F5, 15

[State 442, 3.3]
type = hitAdd
trigger1 = movehit = 1
;trigger1 = p2statetype != S
Value = -1

[State 201, 1]
type = HitDef
trigger1 = animelem = 3
trigger2 = animelem = 7
trigger3 = animelem = 12
trigger4 = animelem = 17
trigger5 = animelem = 22
trigger6 = animelem = 27
trigger7 = animelem = 32
trigger8 = animelem = 35
trigger9 = animelem = 40
trigger10 = animelem = 44
trigger11 = animelem = 48
trigger12 = animelem = 52
trigger13 = animelem = 55
trigger14 = animelem = 60
trigger15 = animelem = 63
trigger16 = animelem = 68
trigger17 = animelem = 73
trigger18 = animelem = 79
trigger19 = animelem = 82
trigger20 = animelem = 86
trigger21 = animelem = 91
trigger22 = animelem = 96
trigger23 = animelem = 101
attr = S, NA                     ;Attribute: Standing, Normal Attack
animtype = Light                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 2, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default
sparkno = 1
sparkxy = -20,-105
hitsound = 5,21
ground.velocity = -1,0
ground.type = High                 ;Type: High, Low, Trip (def: Normal)
p2facing = 1
ground.hittime  = 20
envshake.time = 10
envshake.freq = 30
envshake.ampl = 5

[State 201, 1]
type = HitDef
trigger1 = AnimElem = 101
attr = S, NA
hitflag = MAF ;HAF
sparkno = -1
sparkxy = -18,-100
hitsound   = 5,0
envshake.time = 15
envshake.freq = 70
envshake.ampl = 7
numhits = 0
p2stateno = 2101

[State 9130, Setbrutal]
type = Varset
trigger1 = animelem = 101
V = 4
value = 5

[State 201, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-------
[Statedef 2101]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= H                      ;Move-type: A-attack, I-idle, H-gethit
physics = S

[State 45, fff]
type = LifeSet
trigger1 = time = 30
value = 0

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

[Statedef 2102]
type = S
movetype = A
anim = 888

[State 0, StopSnd]
type = StopSnd
trigger1 = time = 0
channel = -1

[State 210, 1]
type = Playsnd
trigger1 = time = 1
value = F5,11
volume = 60
channel = 1

[State 8000, sad]
type = BGPalFX
trigger1 = time = 0
time = 9999
add = -20, -20, -20

[State 8000, sadsd]
type = BGPalFX
trigger1 = time = 2
time = 9999
add = -50, -50, -50

[State 0]
type = DestroySelf
trigger1 = time = 2
