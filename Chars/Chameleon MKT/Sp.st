; Spear Toss!!!
[Statedef 1000]
type    = S
movetype= A
physics = S
juggle  = 10
poweradd= 200
velset = 0,0
anim = 1000
ctrl = 0

[State 1000, 0.1]
type = Posset
trigger1 = Pos Y != 0
trigger1 = time = 0
Y = 0

[State 1000, 1]
type = Helper
trigger1 = animelem = 4
stateno = 1010
name = "spear"
id = 1010
postype = p1
pos = 75,-43
pos = 65, -104
helpertype = normal
sprpriority = -1
keyctrl = 0
ownpal = 0
under = 1

[State 1030, 1.54]
type = Destroyself
trigger1 = time = 150

[State 1000, 7]
type = ChangeState
triggerall = Time >= 50
trigger1 = p2stateno != 1020
trigger1 = p2stateno != 1021
value = 0
ctrl = 1

[State 1000, 8]
type = Changestate
trigger1 = p2stateno = 1020
trigger2 = p2stateno = 1021
value = 1001
;---------------------------------------------------------------------------
;PULL EM IN
[Statedef 1001]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 1004
ctrl = 0

[State -2, 3.3]
type = VarRandom
trigger1 = 1
v = 2
range = 0, 50

[State 200, Play]
type = PlaySnd
trigger1 = animelem = 2
triggerall = Var(2) = [25, 50]
trigger1 = 1
value = 4, 12
volume = 50

[State 200, Plaay]
type = PlaySnd
trigger1 = animelem = 2
triggerall = Var(2) = [0, 24]
trigger1 = 1
value = 4, 13
volume = 50

[State 1001, 7]
type = ChangeState
trigger1 = p2stateno = 1021
trigger1 = time > 12
value = 0
ctrl = 1

[State 1030, 1.54]
type = Destroyself
trigger1 = time = 150

[State 1001, 8]
type = Changestate
trigger1 = time > 93
value = 0
ctrl = 1
;---------------------------------------------------------------------------
; The flying spear
[Statedef 1010]
type    = S
movetype= A
physics = N
velset = 8,0
anim = 1001
ctrl = 0

[State 181, selFre]
type = VarRandom
trigger1 = time = 0
v = 11
range = 0, 3

[State -3]
type = Explod
trigger1 = anim = 1001
trigger1 = Var(11) = 3
trigger1 = TimeMod=2,1
anim = 1007
name = "humoarriba"
pos = 20,-57
postype = p1
bindtime = 1
vel = 1, -0.3
removetime = -2
sprpriority = -1

[State 1030, 1.54]
type = Destroyself
trigger1 = time = 150

[State 1010, 1]
type = Playsnd
trigger1 = time = 0
value = 88,1

[State 1010, 1.2]
type = Helper
trigger1 = time = 0
stateno = 1011
name = "Rope"
pos = -22, 0
helpertype = normal
sprpriority = -2
keyctrl = 0
ownpal = 0
under = 1

[State 1010, 1.55]
type = Helper
trigger1 = timemod = 2,1
trigger1 = time = [0, 60]
trigger1 = Pos X > -190
trigger1 = Pos X < 190
;trigger1 = p2stateno != 9010
stateno = 1011
name = "Rope"
pos = 0, 0
helpertype = normal
sprpriority = -2
keyctrl = 0
ownpal = 0
under = 1

[State 1010, 2]
type = HitDef
trigger1 = time > 0
trigger1 = Var(11) != 3
trigger1 = p2stateno != 9010
trigger1 = p2stateno != 5120
attr = SA, SP
damage    = 80,20
p2facing = 1
priority  = 6
hitflag = MAF
guardflag = M
forcestand = 1
sparkno = -1
hitonce = 1
sparkxy = 30, 20
pausetime = 0,2
hitsound   = S88,0
guardsound = 5,14
animtype = Light
;kill = 0
Fall = 0
;Air.fall = 0
fall.recover = 0
guard.slidetime = 5
guard.ctrltime = 20
snap = 0,0
p1stateno = 1030
p2stateno = 1020
envshake.time = 10
envshake.freq = 30
envshake.ampl = 3
kill       = root, Var(9) = 0
fall.kill  = root, Var(9) = 0
guard.kill = root, Var(9) = 0

[State 1010, 2]
type = HitDef
trigger1 = time > 0
trigger1 = Var(11) = 3
trigger1 = p2stateno != 9010
trigger1 = p2stateno != 5120
attr = SA, SP
damage    = 110,40
p2facing = 1
priority  = 6
hitflag = MAF
guardflag = M
forcestand = 1
sparkno = -1
hitonce = 1
sparkxy = 30, 20
pausetime = 0,2
hitsound   = S88,0
guardsound = 5,14
animtype = Light
;kill = 0
Fall = 0
;Air.fall = 0
fall.recover = 0
guard.slidetime = 5
guard.ctrltime = 20
snap = 0,0
p1stateno = 1030
p2stateno = 1020
envshake.time = 10
envshake.freq = 30
envshake.ampl = 3
kill       = root, Var(9) = 0
fall.kill  = root, Var(9) = 0
guard.kill = root, Var(9) = 0

[State 1010, 4]
type = Changestate
trigger1 = MoveGuarded = 1
trigger2 = root,stateno != [1000,1001]
value = 1013

[State 1030, 1.54]
type = Destroyself
trigger1 = time = 250

;---------------------------------------------------------------------------
;The hidden rope
[Statedef 1011]
type    = S
movetype= I
physics = N
anim = 1015
ctrl = 0

[State 1030, 1.54]
type = Destroyself
trigger1 = time = 150

[State 1011, 1]
type = Changestate
trigger1 = p2stateno = 1020
value = 1012

[State 1011, 2]
type = Destroyself
trigger1 = root, stateno != [1000, 1001]
;------------------------------------------------------------------------
;The rope Becomes visible
[Statedef 1012]
type    = S
movetype= I
physics = N
anim = 1002
ctrl = 0

[State 1030, 1.54]
type = Destroyself
trigger1 = time = 150

[State 1011, 1]
type = Destroyself
trigger1 = p2stateno = 1021
trigger2 = Parentdist X = [-10, 10]
trigger2 = Parent, Vel X = -8
trigger3 = root, stateno != [1000, 1001]
;------------------------------------------------------------------------
; CCrap!! The spear was guarded!!
[Statedef 1013]
type    = S
movetype= I
physics = N
anim = 10151
Velset = 0,0
ctrl = 0
sprpriority = -1

[State 1013, 1]
type = Destroyself
trigger1 = animtime = 0
;---------------------------------------------------------------------------
[Statedef 1020]; P2's hit by spear state
type    = S
movetype= H
physics = S
ctrl = 0
Velset = 0,0,0

[State 1030, 1.54]
type = Destroyself
trigger1 = time = 150

[State 1020, bugfix]
type = varset
triggerall = var(17) = 1
trigger1 = name = "reptile"
trigger2 = name = "smoke"
trigger3 = name = "hsmoke"
v= 17
value = 0

[State 1020, .5]
type = Changeanim2
trigger1 = time = 0
value = 1012

[State 1020, .75]
type = PlayerPush
trigger1 = time >= 0
value = 0

[State 1010, 2331]
type = Nothitby
trigger1 = 1
value = CSA

[State 1020, 1]
type = PosAdd
trigger1 = timemod = 10,0
trigger1 = time = [0, 50]
X = -1

[State 1010, 231]
type = Playerpush
trigger1 = 1
value = 0

[State 1020, 1.1]
type = Posadd
trigger1 = timemod = 10,4
trigger1 = time = [0, 50]
X = 1

[State 1020, 1.123]
type = Posadd
trigger1 = time = 1
Y = 0

[State 1020, 2]
type = Changestate
trigger1 = P2dist X = [30, 40]
trigger1 = p2name = "chameleon"
trigger1 = p2statetype != A
value = 1021

[State 1030, 1.54]
type = Destroyself
trigger1 = time = 150

[State 1020, 3]
type = Selfstate
trigger1 = time = 400
value = 0
ctrl = 1
;-------------------------------------------------------------------------------
;P2  stunned by spear
[Statedef 1021]
type    = S
movetype= H
physics = N
velset = 0,0,0
ctrl = 0

[State 1021, 1]
type = Changeanim
trigger1 = animexist(5300)
trigger1 = anim != 5300
trigger1 = time = 0
value = 5300

[State 1020, 1.123]
type = PosSET
trigger1 = time = 1
Y = 0

[State 1020, 1.12353]
type = VelSET
trigger1 = 1
X = 0
Y = 0

[State 1021, 1]
type = Changeanim2
trigger1 = !animexist(5300)
trigger1 = anim != 9010
trigger1 = time = 0
value = 9010

[State 1021, 3]
type = Selfstate
triggerall = p2stateno != [1100,1101]
trigger1 = time = 70
trigger2 = p2statetype = A
value = 0
ctrl = 1

[State 1021, 33]
type = Selfstate
trigger1 = Lose
trigger2 = Win
triggerall = time = 10
value = 5050
ctrl = 1
;--------------------------------------------------------------------------
[Statedef 1030];spear is stunt in the target
type    = S
movetype= A
physics = N
anim = 1013
Velset = 0, 0
ctrl = 0

[State -3]
type = Explod
trigger1 = anim = 1013
trigger1 = Var(11) = 3
trigger1 = TimeMod=2,1
anim = 1007
name = "humoarriba"
pos = 20,-57
postype = p1
bindtime = 1
vel = 1, -0.3
removetime = -2
sprpriority = -1

[State 2, blood111]
type = Helper
trigger1 = time = 10
trigger1 = numhelper(27) < 1
ID = 27
stateno = 27
pos = 70, 61
postype = p1
persistent = 0
ignorehitpause = 1
facing = -1

[State 2, blood1111]
type = Helper
trigger1 = time = 5
trigger1 = numhelper(30) < 1
ID = 30
stateno = 30
pos = 70, 61
postype = p1
persistent = 0
ignorehitpause = 1
facing = -1

[State 2, blood1111]
type = Helper
trigger1 = time = 0
trigger1 = numhelper(31) < 1
ID = 31
stateno = 30
pos = 70, 61
postype = p1
persistent = 0
vel = 2,0
ignorehitpause = 1
facing = -1

[State 1030, 1]
type = targetbind
trigger1 = p2stateno = 1020
pos = 0,38

[State 1030, 1.01]
type = changeanim
trigger1 = time = 26+3+3+1
value = 1013

[State 1030, 1.01]
type = Velset
trigger1 = time = 26+3+3+1
X = -8

[State 1030, 1.1]
type = Velset
trigger1 = ParentDist X = [-40, 60]
X = 0

[State 1030, 1.4]
type = Changeanim
trigger1 = p2stateno = 1021
trigger1 = anim != 1015
value = 1015

[State 1030, 1.5]
type = Destroyself
trigger1 = p2stateno != 1021
trigger2 = p2stateno = 5000
trigger3 = p2stateno = 5030
trigger4 = p2stateno = 0
trigger5 = time = 200
trigger1 = anim = 1015
trigger6 = p2stateno != 1021
trigger6 = Parent, stateno != [1000, 1001]

;-------------------------------------------------------
[Statedef 1300]
type    = A
movetype= A
physics = S
juggle  = 14
velset = 0,0
ctrl = 0
anim = 1300

[State 610, 1.5]
type = turn
trigger1 = time = 0 & P2Dist X < -30

[State 2000, 0.5]
type = Playsnd
trigger1 = animelem = 3
value = 88,1

[State 3010, Fire]
type = explod
trigger1 = animelem = 3
anim = 1301
ID = 1301
pos = 55*const(size.xscale), -55*const(size.xscale)
vel = 6,6
sprpriority = 1
removetime = -1

[State 1200, BoltFat]
type = Projectile
trigger1 = AnimElem = 3
projanim = 1302
offset = 50*const(size.xscale), -60*const(size.xscale)
velocity = 6,6
attr = S, SP
damage    = 80,20
guardflag = M
sparkno = -1
guard.sparkno = -1
hitsound   = S88,0
guardsound = 5,14
p2facing = -1
p1stateno = 1301
p2stateno = 1302
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 800, 2]
type = ChangeState
trigger1 = NumProj = 0 & time >10 & p2stateno != 1302
value = 1399
;-------------

[Statedef 1301]
type    = A
movetype= A
physics = N
anim = 1303

[State 181, DI]
type = Explod
trigger1 = time = 1
anim = 888
id = 79
pos = 168,100
postype = left
facing = 1
sprpriority = 1
ownpal = 1
removetime = 200

[State 3010, Fire]
type = removeexplod
trigger1 = time = 0
ID = 1301

[State 3010, Fe]
type = PosAdd
trigger1 = time = 0
Y = -20

[State 820, 1]
type = Sprpriority
Trigger1 = Time = 0
value = -2

[State 810, Bind 7]
type = TargetBind
trigger1 = time <= 30 | animtime = 0
pos = -10*(time <= 30)+87*(animtime = 0), 10+90*(animtime = 0)

[State 2000, 0.6]
type = ScreenBound
trigger1 = time = [1, 1000]
value = 0
movecamera = 0,0

[State 2000, 0.5]
type = Playsnd
trigger1 = animelem = 1
value = 5,11

[State 800, 2]
type = ChangeState
trigger1 = animtime = 0
value = 1399

;-------------

[Statedef 1302]
type    = A
movetype= H
physics = N
velset = 0,0
Sprpriority = 5

[State 820, 1]
type = ChangeAnim2
Trigger1 = time = 0
value = 1304

[State 2000, 0.6]
type = ScreenBound
trigger1 = time = [1, 1000]
value = 0
movecamera = 0,0

[State 810, nd]
type = TURN
trigger1 = Animtime =  0

[State 821, 4] ;Hit ground
type = ChangeState
trigger1 = animtime =  0
value = 1303

[Statedef 1303]
type    = A
movetype= H
physics = N
velset = 0,0
anim = 5170

[State 820, 4351]
type = VelAdd
Trigger1 = 1
x = -.3
y = 2

[State 821, 4] ;Hit ground
type = ChangeState
trigger1 = pos Y >= var(57)
value = 1304

;------------------
[Statedef 1304]
type    = A
movetype= H
physics = N
anim = 5110
velset = 0,0

[State 810, Bind 7]
type = posset
trigger1 = time = 0
Y = var(57)

[State 1027, Sound]
type = PlaySnd
trigger1 = Time = 0
value = F5,21
volume = 100

[State 235, sssa]
type = envshake
trigger1 = time = 0
time = 10
freq = 150
ampl = 7

[State 1027, No scroll]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,1

[State 1027, State]
type = ChangeState
trigger1 = Time = 10
value = 1305
;------------------
[Statedef 1305]
type    = A
movetype= H
physics = N

[State 1028, Vel Y]
type = VelSet
trigger1 = Time = 0
y = -7

[State 1028, Gravity]
type = VelAdd
trigger1 = 1
y = .35

[State 1028, Anim 5050] ;Self falling animation
type = ChangeAnim
trigger1 = Time = 0
value = 5050

[State 1028, Hit ground]
type = SelfState
trigger1 = (Vel y > 0) & (Pos y >= var(57))
value = 5110

;cae vulnerable
[Statedef 1399]
type    = A
movetype= I
physics = A
velset = 0,0
anim = 1305

[State 810, nd]
type = VelAdd
trigger1 = time = 0
Y = 2

[State 52, 4]
type = ChangeState
trigger1 = pos Y >= var(57)
value = 52

;---fin spear
;------------------------------------------------------------------------
; Smoke's Invisibilty
;------------------------------------------------------------------------
[Statedef 1400];invisible
type = S
movetype = I
physics = S
anim = 1400
ctrl = 0
velset = 0,0

[State -3]
type = Explod
trigger1 = TimeMod=12,3
triggerall = var(26) = 0
anim = 493
name = "humoarriba"
pos = -4,-107
postype = p1
bindtime = 1
vel = 0, -3
removetime = 23
sprpriority = 1

[State -2, Steam1]
type = Explod
trigger1 = TimeMod=8,3
triggerall = var(26) = 0
anim = 493
name = "humomedio"
pos = -11, -107
postype = p1
bindtime = 1
vel = -3, -3
removetime = 23
sprpriority = 1

[State -3]
type = Explod
trigger1 = TimeMod=12,3
triggerall = var(26) = 0
anim = 493
name = "humoarriba"
pos = 4,-107
postype = p1
bindtime = 1
vel = 3, -3
removetime = 23
sprpriority = 1

[State -2, Steam1]
type = Explod
trigger1 = TimeMod=8,3
triggerall = var(26) = 0
anim = 493
name = "humomedio"
pos = -10, -70
postype = p1
bindtime = 1
vel = -4, 0
removetime = 23
sprpriority = 1

[State -3]
type = Explod
trigger1 = TimeMod=12,3
triggerall = var(26) = 0
anim = 493
name = "humoarriba"
pos = -10, -70
postype = p1
bindtime = 1
vel = 4, 0
removetime = 23
sprpriority = 1

[State -2, Steam1]
type = Explod
trigger1 = TimeMod=8,3
triggerall = var(26) = 0
anim = 493
name = "humomedio"
pos = -15, -50
postype = p1
bindtime = 1
vel = -2, 4
removetime = 23
sprpriority = 1

[State -3]
type = Explod
trigger1 = TimeMod=12,3
triggerall = var(26) = 0
anim = 493
name = "humoarriba"
pos = 0,-50
postype = p1
bindtime = 1
vel = 2, 4
removetime = 23
sprpriority = 1

[State -2, Steam1]
type = Explod
trigger1 = TimeMod=8,3
triggerall = var(26) = 0
anim = 493
name = "humomedio"
pos = 0, -90
postype = p1
bindtime = 1
vel = 0, 0
random = 30, 70
removetime = 23
sprpriority = 1

[State -3]
type = Explod
trigger1 = TimeMod=12,3
triggerall = var(26) = 0
anim = 493
name = "humoarriba"
pos = -20,-110;0, -90
postype = p1
bindtime = 1
vel = 0, 0
random = 30, 70
removetime = 23
sprpriority = 1

[State -2, Steam1]
type = Explod
trigger1 = TimeMod=8,3
triggerall = var(26) = 0
anim = 493
name = "humomedio"
pos = 0, -60
postype = p1
bindtime = 1
vel = 0, 0
random = 30, 70
removetime = 23
sprpriority = 1

[State 3011, Boom]
type = PlaySnd
trigger1 = time = 1
value = 4, 18

[State 3010, Var]
type = VarSet
trigger1 = animelem = 5
var(17) = 1

[State 3010, CS]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;-----------------------
[Statedef 1401];desinvisible ;)
type = S
movetype = I
physics = S
anim = 1401 + var(0)
ctrl = 0
velset = 0,0

[State -3]
type = Explod
trigger1 = TimeMod=12,3
triggerall = var(26) = 0
anim = 493
name = "humoarriba"
pos = -4,-107
postype = p1
bindtime = 1
vel = 0, -3
removetime = 23
sprpriority = 1

[State -2, Steam1]
type = Explod
trigger1 = TimeMod=8,3
triggerall = var(26) = 0
anim = 493
name = "humomedio"
pos = -11, -107
postype = p1
bindtime = 1
vel = -3, -3
removetime = 23
sprpriority = 1

[State -3]
type = Explod
trigger1 = TimeMod=12,3
triggerall = var(26) = 0
anim = 493
name = "humoarriba"
pos = 4,-107
postype = p1
bindtime = 1
vel = 3, -3
removetime = 23
sprpriority = 1

[State -2, Steam1]
type = Explod
trigger1 = TimeMod=8,3
triggerall = var(26) = 0
anim = 493
name = "humomedio"
pos = -10, -70
postype = p1
bindtime = 1
vel = -4, 0
removetime = 23
sprpriority = 1

[State -3]
type = Explod
trigger1 = TimeMod=12,3
triggerall = var(26) = 0
anim = 493
name = "humoarriba"
pos = -10, -70
postype = p1
bindtime = 1
vel = 4, 0
removetime = 23
sprpriority = 1

[State -2, Steam1]
type = Explod
trigger1 = TimeMod=8,3
triggerall = var(26) = 0
anim = 493
name = "humomedio"
pos = -15, -50
postype = p1
bindtime = 1
vel = -2, 4
removetime = 23
sprpriority = 1

[State -3]
type = Explod
trigger1 = TimeMod=12,3
triggerall = var(26) = 0
anim = 493
name = "humoarriba"
pos = 0,-50
postype = p1
bindtime = 1
vel = 2, 4
removetime = 23
sprpriority = 1

[State -2, Steam1]
type = Explod
trigger1 = TimeMod=8,3
triggerall = var(26) = 0
anim = 493
name = "humomedio"
pos = 0, -90
postype = p1
bindtime = 1
vel = 0, 0
random = 30, 70
removetime = 23
sprpriority = 1

[State -3]
type = Explod
trigger1 = TimeMod=12,3
triggerall = var(26) = 0
anim = 493
name = "humoarriba"
pos = -20,-110;0, -90
postype = p1
bindtime = 1
vel = 0, 0
random = 30, 70
removetime = 23
sprpriority = 1

[State -2, Steam1]
type = Explod
trigger1 = TimeMod=8,3
triggerall = var(26) = 0
anim = 493
name = "humomedio"
pos = 0, -60
postype = p1
bindtime = 1
vel = 0, 0
random = 30, 70
removetime = 23
sprpriority = 1

[State 3011, Var]
type = VarSet
trigger1 = Animelem = 1
trigger2 = roundstate = 3
trigger3 = roundstate = 4
var(17) = 0 ;ifelse(var(17) = 0, 1, 0)

[State 3011, Boom]
type = PlaySnd
trigger1 = time = 1
trigger1 = stateno != 3010
value = 4, 18

[State 3011, CS]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;------------------------------------------------------------------------
; Teleport
;------------------------------------------------------------------------
[Statedef 1200]
type    = S
movetype= I
physics = N
juggle  = 1
Velset = 0, 0
ctrl = 0

[State 3100, Pset]
type = nothitby
trigger1 = 1
value = SCA

;-invisible
[State 3100, Pset]
type = varset
trigger1 = time = 0
v = 26
value = 1
;--------------------------------------------
; Green Explosion
;--------------------------------------------
[State 3010, Fire]
type = explod
trigger1 = Time = 0
trigger1 = Pos Y = 0
trigger1 = var(17) = 0
postype = p1
ontop = 1
;anim = F11
;pos = 0,8
;removetime = 56
anim = 1600
ownpal = 1
;--------------------------------------------
; pelotitas de energia (6)
;--------------------------------------------
[State 3010, U]
type = explod
trigger1 = Time = 0
trigger1 = Pos Y != 0
trigger1 = var(17) = 0
anim = 1601
pos = 0,-100
postype = p1
ontop = 1
velocity = 0,-3

[State 3010, B]
type = explod
trigger1 = Time = 0
trigger1 = Pos Y != 0
trigger1 = var(17) = 0
anim = 1601
pos = 0,-100
postype = p1
ontop = 1
velocity = -3,0

[State 3010, F]
type = explod
trigger1 = Time = 0
trigger1 = Pos Y != 0
trigger1 = var(17) = 0
anim = 1601
pos = 0,-100
postype = p1
ontop = 1
velocity = 3,0

[State 3010, BD]
type = explod
trigger1 = Time = 0
trigger1 = Pos Y != 0
trigger1 = var(17) = 0
anim = 1601
pos = 0,-100
postype = p1
ontop = 1
velocity = -3,3

[State 3010, BD]
type = explod
trigger1 = Time = 0
trigger1 = Pos Y != 0
trigger1 = var(17) = 0
anim = 1601
pos = 0,-100
postype = p1
ontop = 1
velocity = 3,3
;--------------------------------------------
[State 2000, 0.5]
type = Playsnd
trigger1 = time = 1
value = 5,9

;Sonido, Boom Verde - S only
[State 2000, 0.5]
type = Playsnd
trigger1 = time = 0
trigger1 = Pos Y = 0
trigger1 = var(17) = 0
value = 5,8

[State 235, sssa]
type = envshake
trigger1 = time = 0
trigger1 = pos Y = 0
time = 10
freq = 100
ampl = 7

[State 2000, 55]
type = changeanim
trigger1 = time = 1
value = 1044

[State 2000, 0.6]
type = ScreenBound
trigger1 = time = [1, 1000]
value = 0
movecamera = 0,0

[State 2000, 0.7];va bajando
type = Veladd
trigger1 = Pos Y < 0
Y = .65

[State 2000, 1];da vuelta
type = turn
trigger1 = animelem = 1
trigger1 = anim = 1044

[State 2000, 2]
type = Velset
trigger1 = animelem = 1
trigger1 = anim = 1044
X = 8.5

[State 1050, 5]
type = VelAdd
trigger1 = Time < 4
trigger1 = Vel Y > -3
Y = -3.3

[State 2000, 4]
type = Changestate
triggerall = time > 9
trigger1 = Pos X > 140
trigger2 = Pos X < -140
value = 1202

[State 2000, 6.1]
type = Changestate
trigger1 = time > 22
trigger1 = Pos Y = 0
trigger2 = Pos Y > 0
value = 0
ctrl = 1
;--------------------------------------------
[Statedef 1202]
type    = S
movetype= A
physics = N
juggle = 6
anim = 1050
Velset = 0, 0
ctrl = 0

[State 1044, 0.6]
type = ScreenBound
trigger1 = time = [1, 1000]
value = 0
movecamera = 0,0

[State 1050, 2]
type = Posset
triggerall = Time = 1
trigger1 = Pos X > 140
trigger1 = Pos X != 150
X = -150

[State 1050, 2]
type = Posset
triggerall = Time = 1
trigger1 = Pos X < -140
trigger1 = Pos X != -150
X = 150

[State 1050, 2.5]
type = Turn
trigger1 = Time = 2
trigger1 = Pos X = 150
trigger1 = Facing = 1

[State 1050, 2.8]
type = Turn
trigger1 = Time = 2
trigger1 = Pos X = -150
trigger1 = Facing = -1

[State 1050, 3]
type = Changeanim
triggerall = time = 3
trigger1 = Pos X = 150
trigger2 = Pos X = -150
value = 1050

[State 1050, 3]
type = Velset
trigger1 = time = 1
X = 4.6

[State 1044, 0.7]
type = Veladd
trigger1 = Pos Y < 0
Y = .65

[State 1050, 4]
type = HitDef
trigger1 = time > 0
trigger1 = !movecontact
trigger1 = p2statetype = A
attr = A, SA
damage    = 70,10
animtype  = Light
air.animtype  = Back
getpower = 149,78
guardflag = HA
priority = 7
pausetime = 7, 2
sparkno = -1
guard.sparkno = -1
sparkxy = 18,-60
hitsound   = 5,1
guardsound = 5,14
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -10,0
air.velocity = -2.8,-6.3
guard.slidetime = 10
guard.ctrltime = 5
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)
p2facing = 1

[State 1050, 4]
type = HitDef
trigger1 = time > 0
trigger1 = !movecontact
trigger1 = p2statetype != A
attr = A, SA
damage    = 149,78
animtype  = Light
air.animtype  = Back
getpower = 70,10
guardflag = HA
priority = 7
pausetime = 7, 2
sparkno = -1
guard.sparkno = -1
sparkxy = 18,-60
hitsound   = 5,1
guardsound = 5,14
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -10,0
air.velocity = -2.8,-6.3
guard.slidetime = 10
guard.ctrltime = 5
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)
p2stateno = 1274

[State 1050, 5]
type = PosSet
trigger1 = MoveGuarded = 1
Y = -5

[State 1050, 6]
type = Changestate
trigger1 = MoveGuarded = 1
value = 1203

[State 181, DIED]
type = Explod
trigger1 = time = 7
anim = 888
ID = 7089
pos = 168,100
postype = left
facing = 1
sprpriority = 1
ownpal = 1
removetime = 1820

[State 1050, 6.9]
type = Velset
trigger1 = Pos Y > 0
Y = 0

[State 1044, 0.7f]
type = Veladd
trigger1 = movehit
Y = .5

[State 1044, 0.erf7]
type = VelSet
trigger1 = movehit
trigger1 = time >= 1
X = 0

[State 1050, 7]
type= Changestate
trigger1 = time > 18
trigger1 = Pos Y >= -6
trigger2 = movehit
trigger2 = time > 8
trigger2 = Pos Y >= -6
value = 52
ctrl = 1
;-------------
[StateDef 1274]; p2stateno en el suelo
type    = S
movetype= H
physics = S
ctrl = 0

[State 1001, 10]
type = turn
;triggerall = time = 0
trigger1 = p2bodydist X < 0

[State 1050, 7]
type= changestate
trigger1 = time = 3
value = 21238
;--------------------------------------------
; Blocked
;--------------------------------------------
[StateDef 1203]
type    = A
movetype= I
physics = A
ctrl = 0
velset = 0,-7
anim = 1055

[State 1001, 10]
type = VelAdd
trigger1 = Time <24
x = -0.05

[State 1001, 10]
type = PosAdd
trigger1 = Time = 0
y = -45
x = 25

[State 1050, 7]
type= Changestate
trigger1 = Animtime = 0
trigger1 = Pos Y = 0
value = 0
ctrl = 1
;-------------------------
[StateDef 1500]
type    = S
physics = S

[State 0, Snd]
type = PlaySnd
trigger1 = time = 0
value = 7,var(10)
volume = 100

[State 0]
type = VarSet
trigger1 = var(10) != 8
v = 10
value = var(10)+1

[State 0]
type = VarSet
trigger1 = var(10) = 8
v = 10
value = 1

[State 0]
type = ChangeState
trigger1 = time = 0
value = prevstateno

;---------------------
; invisible
;---------------------

[Statedef 1910]
type = S
movetype = I
physics = S
anim = 777 + var(17)
ctrl = 0
velset = 0,0

[State 11, 1]
type = ChangeAnim
triggerall = Var(10) = 7
trigger1 = time = 0
value = 60777 + var(17)

[State 3010, Var]
type = VarSet
trigger1 = Animelem = 6
var(17) = 1

[State 3010, CS]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-----------------------

[Statedef 1911] ;desinvisible
type = S
movetype = I
physics = S
anim = 778 + var(0)
ctrl = 0
velset = 0,0

[State 11, 1]
type = ChangeAnim
triggerall = Var(10) = 7
trigger1 = time = 0
value = 60778 + var(0)

[State 3011, Var]
type = VarSet
trigger1 = Animelem = 1
trigger2 = roundstate = 3
trigger3 = roundstate = 4
var(17) = 0

[State 3011, CS]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;###################################
;Hado-Energy
;###################################
[StateDef 1600]
type    = S
movetype= A
physics = S
juggle  = 4
ctrl = 0
velset = 0,0,0
anim = 1220

;Flash Energy
[State 1000]
type = explod
trigger1 = AnimElem = 3
anim = 1606
postype= p1
ontop = 1
ownpal = 1

;Sombra Verde
[State 1000]
type = explod
trigger1 = AnimElem = 3
trigger1 = var(17) = 0
anim = 1607
postype = p1
ontop = 1
ownpal = 1

[State 1200, ZappySound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 4, 19
channel = 3
volume = 70

[State 1200, Za]
type = VelSet
trigger1 = time = 1
trigger2 = Vel Y != 0
y = 0

;hadokill
[State ]
type = Helper
trigger1 = AnimElem = 3
trigger1 = var(9) = 0
helpertype = Normal
ID = 1602
name = "Hado-Energy"
postype = p1
pos = ceil(55*const(size.xscale)),ceil(-75*const(size.yscale))
stateno = 1602
ownpal = 1

;Hado no kill
[State ]
type = Helper
trigger1 = AnimElem = 3
trigger1 = var(9) = 1
helpertype = Normal
ID = 1602
name = "Hado-EnergyNK"
postype = p1
pos = ceil(55*const(size.xscale)),ceil(-75*const(size.yscale))
stateno = 1605
ownpal = 1

[State 1200, 10]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0
;###################################
;Hado-Energy Helper Kill
;###################################
[Statedef 1602]
type    = A
movetype= A
physics = N
poweradd= 0
anim = 7003
velset = 9,0
ctrl = 0
sprpriority = 3

[State ]
type = Helper
trigger1 = time = 0
helpertype = Normal
ID = 1603
name = "Hado-Energy"
postype = p1
pos = 0,0
stateno = 1603
ownpal = 1

[State ]
type = Hitdef
trigger1 = time = 1
damage    = 195, 98
getpower = 0,0
givepower = 0,0
pausetime = 2,3
attr = S, SP
guardflag = M
animtype = heavy
air.animtype = back
priority = 4, hit
sparkno = -1
guard.sparkno = -1
sparkxy = 0, 0
hitsound = 4,3
guardsound = S0,7
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -15,0
air.velocity = -4,-6
air.fall = 1
fall.recover = 0
air.juggle =3
yaccel = .5
fall.recover = 0
fall.xvelocity = 0
fall.yvelocity = 0
p2facing = 1
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)
p2stateno = 21238

[State end]
type = changestate
trigger1 = movecontact
ignorehitpause = 1
value = 1604

[State end]
type = destroyself
trigger1 = frontedgedist <= -150 || parent,movetype = H
;###################################
;Hado-Energy Helper Not Kill
;###################################
[Statedef 1605]
type    = A
movetype= A
physics = N
poweradd= 0
anim = 7003
velset = 9,0
ctrl = 0
sprpriority = 3

[State ]
type = Helper
trigger1 = time = 0
helpertype = Normal
ID = 1603
name = "Hado-Energy"
postype = p1
pos = 0,0
stateno = 1603
ownpal = 1

[State ]
type = Hitdef
trigger1 = time = 1
damage    = 195, 98
getpower = 0,0
givepower = 0,0
pausetime = 2,3
attr = S, SP
guardflag = M
animtype = heavy
air.animtype = back
priority = 4, hit
sparkno = -1
guard.sparkno = -1
sparkxy = 0, 0
hitsound = 4,3
guardsound = S0,7
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -15,0
air.velocity = -4,-6
air.fall = 1
fall.recover = 0
air.juggle =3
yaccel = .5
fall.recover = 0
fall.xvelocity = 0
fall.yvelocity = 0
p2facing = 1
kill       = 0
fall.kill  = 0
guard.kill = 0
p2stateno = 21238

[State end]
type = changestate
trigger1 = movecontact
ignorehitpause = 1
value = 1604
[State end]
type = destroyself
trigger1 = frontedgedist <= -150 || parent,movetype = H
;###################################
;Estela Hado-Energy
;###################################
[Statedef 1603]
type    = A
movetype= A
physics = N
poweradd= 0
anim = 210210
velset = 9,-5
ctrl = 0
sprpriority = 3

[State what?]
type = veladd
trigger1 = time >= 1
y = ifelse(parentdist y <= -10,-3,ifelse(parentdist y >= 10,3,0))

[State ò_ó]
type = Explod
trigger1 = 1
anim = 1602
id = 1602
Postype = p1
pos = 0,0
scale = parent,const(size.xscale),parent,const(size.yscale)
sprpriority = 3
ownpal = 1

[State end]
type = destroyself
trigger1 = frontedgedist <= -150 || parent,stateno != 1602
trigger1 = frontedgedist <= -150 || parent,stateno != 1605
;###################################
;Fin Hado-Energy
;###################################
[Statedef 1604]
type    = A
movetype= I
physics = N
anim = 1604
velset = 0,0
ctrl = 0
sprpriority = 3
bindtime = -1

[State ]
type = assertspecial
trigger1 = 1
flag = noshadow

[State ò_ó]
type = Explod
trigger1 = !time
anim = 7001
id = 7003
Postype = p1
pos = 0,0
random = 0,0
ontop = 1
velocity = 6,6
ownpal = 1

[State ò_ó]
type = Explod
trigger1 = !time
anim = 7001
id = 7003
Postype = p1
pos = 0,0
random = 0,0
ontop = 1
velocity = 1,-4
ownpal = 1
[State ò_ó]
type = Explod
trigger1 = !time
anim = 7001
id = 7003
Postype = p1
pos = 0,0
random = 0,0
ontop = 1
velocity = -6,-5
ownpal = 1
[State ò_ó]
type = Explod
trigger1 = !time
anim = 7001
id = 7003
Postype = p1
pos = 0,0
random = 0,0
ontop = 1
velocity = 5,-4
ownpal = 1
[State ò_ó]
type = Explod
trigger1 = !time
anim = 7001
id = 7003
Postype = p1
pos = 0,0
random = 0,0
ontop = 1
velocity = 5,-3
ownpal = 1
[State ò_ó]
type = Explod
trigger1 = !time
anim = 7001
id = 7003
Postype = p1
pos = 0,0
random = 0,0
ontop = 1
velocity = 2,5
ownpal = 1
[State ò_ó]
type = Explod
trigger1 = !time
anim = 7001
id = 7003
Postype = p1
pos = 0,0
random = 0,0
ontop = 1
velocity = -2,-2
ownpal = 1
[State ò_ó]
type = Explod
trigger1 = !time
anim = 7001
id = 7003
Postype = p1
pos = 0,0
random = 0,0
ontop = 1
velocity = -5,-4
ownpal = 1
[State ò_ó]
type = Explod
trigger1 = !time
anim = 7001
id = 7003
Postype = p1
pos = 0,0
random = 0,0
ontop = 1
velocity = -7,0
ownpal = 1
[State ò_ó]
type = Explod
trigger1 = !time
anim = 7001
id = 7003
Postype = p1
pos = 0,0
random = 0,0
ontop = 1
velocity = 1,-1
ownpal = 1

[State end]
type = destroyself
trigger1 = !animtime
;###################################
;Air Hado-Energy
;###################################
[StateDef 1610]
type    = A
movetype= A
physics = S
juggle  = 6
ctrl = 0
velset = 0,0,0
anim = 1028
sprpriority = 9

[state 1000]
type = explod
trigger1 = animelem = 3
anim = 2864
ownpal = 1
ontop = 1
postype = p1
trigger1 = var(17) = 0

;Flash Energy
[State 1000]
type = explod
trigger1 = AnimElem = 3
anim = 1606
postype= p1
ontop = 1
ownpal = 1
pos = 0, -20

[State 1200, ZappySound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 4, 19
channel = 3
volume = 70

[State 88500, huck]
type = VelAdd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 4
X = -10

[State ]
type = Helper
trigger1 = AnimElem = 3
trigger1 = var(9) = 0
helpertype = Normal
ID = 1602
name = "Hado-Energy"
postype = p1
pos = ceil(55*const(size.xscale)),ceil(-90*const(size.yscale))
stateno = 1602
ownpal = 1

[State ]
type = Helper
trigger1 = AnimElem = 3
trigger1 = var(9) = 1
helpertype = Normal
ID = 1602
name = "Hado-EnergyNK"
postype = p1
pos = ceil(55*const(size.xscale)),ceil(-90*const(size.yscale))
stateno = 1605
ownpal = 1

[State 88500, NotFreindly]
type = VarSet
trigger1 = AnimElem = 4
v = 5
value = 1

[State 88500, Fall]
type = ChangeState
trigger1 = AnimTime = 0
value = 1611
;--------------------
[Statedef 1611]; Drop
type    = A
movetype= I
physics = A
juggle  = 4
velset = 0,0
anim = 677
ctrl = 0

[State 1101]
type = Veladd
trigger1 = time > 0
y = .3
; ------------------------
; Freeze Ball
; ------------------------

[StateDef 1230]
type    = S
movetype= A
physics = S
juggle  = 2
ctrl = 0
velset = 0,0,0
anim = 1220

[State 1200, ZappySound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 4, 14

[State 1200, Za]
type = VelSet
trigger1 = time = 1
trigger2 = Vel Y != 0
y = 0

[State 1200, BoltFat]
type = Projectile
triggerall = animelem = 4
trigger1 = p2stateno != 12001
trigger1 = p2stateno != 1009
projanim = 1230
projhitanim = 1232
projremanim = 1232
offset = 20*const(size.xscale), -90*const(size.xscale)
velocity = 9, 0
remvelocity = 0, 0
; HitDef part of projectile info
attr = S, SP
animtype = Hard
air.animtype = Back
air.fall = 1
guardflag = HL
pausetime = 0,2
sparkno = -1
numhits = 0
air.juggle = 3
p2stateno = 12001
guard.sparkno = -1
hitsound   = s4,17
guardsound = s4,17
ground.type = High
ground.slidetime = 14
ground.hittime  = 16
air.juggle = 3
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 1200, BoltFat]
type = Projectile
triggerall = AnimElem = 4
trigger1 = p2stateno = 12001
trigger2 = p2stateno = 1039
projanim = 1230
projhitanim = 1232
projremanim = 1232
offset = 30*const(size.xscale), -85*const(size.xscale)
velocity = 9, 0
remvelocity = 0, 0
attr = S, NT
animtype = Hard
air.animtype = Back
air.fall = 1
guardflag = HL
pausetime = 0,2
sparkno = -1
p2stateno = 1237
p1stateno = 1239
numhits = -1
guard.sparkno = -1
ground.type = High
ground.slidetime = 14
ground.hittime  = 16
air.juggle = 3
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 1200, 10]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0

; ------------------------

[StateDef 12001]
type = U
movetype= H
physics = N
velset = 0,0

[State 433, INVOFF]  ; reverse invisible
type = VarSet
triggerall = 1
trigger1 = p1name = "smoke"
trigger2 = p1name = "reptile"
trigger3 = p1name = "scorpion"
trigger4 = p1name = "chameleon"
V = 17
value = 0

[State 1005, CSZ4]
type = LifeAdd
trigger1 = Life < 2
value = -10

[State 120, 2]
type = StateTypeSet
trigger1 = 1
trigger1 =  Pos Y = 0
type = S
physics = S

[State 120, 3]
type = StateTypeSet
trigger1 = 1
trigger1 =  Pos Y != 0
type = A
physics = N

[State 1005, CS3]
type = SelfState
trigger1 = time = 100
trigger1 = Life < 2
value = 5050

[State 1005, attempt]
type = Varset
trigger1 = time = 0
V = 23
Value = Anim

[State 1005, FREEZE]
type = Changeanim
trigger1 = time != 0
value = Var(23)
elem = animelemno(0)

[State 1005, Frosty color]
type = palFX
trigger1 = time != 0
add = 100,150,250
mul = 200,200,200
time = 2

[State 1005, VELSET]
type = velset
trigger1 = 1
X = 0
Y = 0

[State 1005, VEL1]
type = posadd
trigger1 = time = 0
trigger2 = time = 10
trigger3 = time = 20
X = 2.5

[State 1005, VEL2]
type = posadd
trigger1 = time = 5
trigger2 = time = 15
trigger3 = time = 25
X = - 2.5

[State 1005, CS]
type = SelfState
trigger1 = time = 150
trigger1 = Pos Y > -1
value = 0
ctrl = 1

[State 1005, CSZ]
type = Changestate
trigger1 = time = 150
trigger1 = Pos Y < 0
value = 1236

; -----------------------

[Statedef 1236]
type    = S
movetype= H
physics = N
velset = 0,4
ctrl = 0
anim = 0

[State 1006, VELADD]
type = Veladd
trigger1 = Pos Y < 0
Y = .75

[State 1006, Hit ground A]
type = Velset
trigger1 = Pos Y > 0
Y = 0

[State 1006, Hit ground A]
type = Posset
trigger1 = Pos Y > 0
trigger1 = Vel Y = 0
Y = 0

[State 1006, Hit Ground C]
type = SelfState
trigger1 = vel Y = 0
trigger1 = Pos Y = 0
value = 5100 ;Hit ground

; --------------------------

[Statedef 1237]
type = S
movetype= H
physics = N
velset = 0,0

[State 1005, CS]
type = SelfState
trigger1 = time = 0
trigger1 = Pos Y > -1
value = 0
ctrl = 1

[State 1005, CSZ]
type = Changestate
trigger1 = time = 0
trigger1 = Pos Y < 0
value = 1006

; ------------------------

[Statedef 1006]
type    = S
movetype= H
physics = N
velset = 0,4
ctrl = 0
anim = 5070

[State 1006, VELADD]
type = Veladd
trigger1 = Pos Y < 0
Y = .75

[State 1006, Hit ground A]
type = Velset
trigger1 = Pos Y > 0
Y = 0

[State 1006, Hit ground A]
type = Posset
trigger1 = Pos Y > 0
trigger1 = Vel Y = 0
Y = 0

[State 1006, Hit Ground C]
type = SelfState
trigger1 = vel Y = 0
trigger1 = Pos Y = 0
value = 5100 ;Hit ground
;------------------------

[Statedef 1239]
type    = S
movetype= H
physics = N
juggle  = 0
velset = 0,0
ctrl = 0
anim = 1231

[State 1009, Frosty color]
type = palFX
trigger1 = time != 0
add = 100,150,250
mul = 200,200,200
time = 2

[State 1009, VELSET]
type = velset
trigger1 = time = 0
X = 0
Y = 0

[State 1009, VELSET]
type = PosSet
trigger1 = time = 0
Y = 0

[State 1005, VEL1]
type = posadd
trigger1 = time = 0
trigger2 = time = 10
trigger3 = time = 20
X = 2.5

[State 1005, VEL2]
type = posadd
trigger1 = time = 5
trigger2 = time = 15
trigger3 = time = 25
X = - 2.5

[State 1005, CS]
type = SelfState
trigger1 = time = 200
trigger1 = Pos Y > -1
value = 0
ctrl = 1

[State 1005, CSZ]
type = Changestate
trigger1 = time = 200
trigger1 = Pos Y < 0
value = 1036
;--------------------------------------------
; ----- Freeze in air
;--------------------------------------------

[StateDef 1130]
type    = S
movetype= A
physics = S
juggle  = 2
ctrl = 0
velset = 0,0,0
anim = 1028

[State 1200, ZappySound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 4, 29
channel = 3
volume = 70

[State 88500, huck]
type = VelAdd
trigger1 = AnimElem = 1
trigger2 = AnimElem = 2
X = -10

[State 1200, BoltFat]
type = Projectile
triggerall = animelem = 3
trigger1 = p2stateno != 12001
trigger1 = p2stateno != 1009
projanim = 1230
projhitanim = 1232
projremanim = 1232
offset = 20*const(size.xscale), -105*const(size.xscale)
velocity = 9, 0
remvelocity = 0, 0
attr = S, SP
animtype = Hard
air.animtype = Back
air.fall = 1
guardflag = HL
pausetime = 0,2
sparkno = -1
numhits = 0
air.juggle = 3
p2stateno = 12001
guard.sparkno = -1
hitsound   = s4,17
guardsound = s4,17
ground.type = High
ground.slidetime = 14
ground.hittime  = 16
air.juggle = 3
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 1200, BoltFat]
type = Projectile
triggerall = AnimElem = 6
trigger1 = p2stateno = 12001
trigger2 = p2stateno = 1239
projanim = 1230
projhitanim = 1232
projremanim = 1232
offset = 30*const(size.xscale), -85*const(size.xscale)
velocity = 9, 0
remvelocity = 0, 0
attr = S, NT
animtype = Hard
air.animtype = Back
air.fall = 1
guardflag = HL
pausetime = 0,2
sparkno = -1
p2stateno = 1237
p1stateno = 1132
numhits = -1
guard.sparkno = -1
ground.type = High
ground.slidetime = 14
ground.hittime  = 16
air.juggle = 3
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 88500, NotFreindly]
type = VarSet
trigger1 = AnimElem = 5
v = 5
value = 1

[State 88500, Fall]
type = ChangeState
trigger1 = AnimTime = 0
value = 1611

; ---------------------------

[Statedef 1132]
type    = S
movetype= H
physics = N
juggle  = 0
velset = 0,0
ctrl = 0
anim = 1132

[State 1009, Frosty color]
type = palFX
trigger1 = time != 0
add = 100,150,250
mul = 200,200,200
time = 2

[State 1009, VELSET]
type = velset
trigger1 = time = 0
X = 0
Y = 0

[State 1009, VELSET]
type = PosSet
trigger1 = time = 0
Y = 0

[State 1005, VEL1]
type = posadd
trigger1 = time = 0
trigger2 = time = 10
trigger3 = time = 20
X = 2.5

[State 1005, VEL2]
type = posadd
trigger1 = time = 5
trigger2 = time = 15
trigger3 = time = 25
X = - 2.5

[State 1005, CS]
type = SelfState
trigger1 = time = 200
trigger1 = Pos Y > -1
value = 0
ctrl = 1

[State 1005, CSZ]
type = Changestate
trigger1 = time = 200
trigger1 = Pos Y < 0
value = 1036

;------------------------telekinetik
[StateDef 1100]
type    = S
movetype= A
physics = S
juggle  = 20
ctrl = 0
velset = 0,0,0
anim = 1100

[State 1200]
type = explod
trigger1 = time = 0
trigger1 = var(17) = 0
anim = 2865
postype = p1
ownpal = 1
removeongethit = 1

[State 1200, Za]
type = VelSet
trigger1 = time = 1
trigger2 = Vel Y != 0
y = 0

[State 1200, snd]
type = playsnd
trigger1 = time = 4
value = 4,21

[State 1200, exp]
type = explod
trigger1 = time = 0
anim = 888
id = 1100
removetime = 130

[State 1200, BoltFat]
type = HitDef
trigger1 = Animelem = 5
attr = S, ST;SA
animtype  = Light
damage = 150,0
guardflag = MA
hitflag = MAF
pausetime = 8, 8
sparkno = -1
p2facing = 1
ground.type = high
guardsound = 5, 14
guard.velocity = -8
guard.slidetime = 100
guard.ctrltime = 20
p2stateno = 1110
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)
envshake.time = 20
envshake.freq = 100
envshake.ampl = 4

[State 235, sssf]
type = envshake
trigger1 = AnimElem = 4
time = 30
freq = 25
ampl = 3

[State 1200, 1340]
type = ChangeState
trigger1 = Movehit
value = 1101

[State 1200, 1340]
type = targetstate
trigger1 = moveguarded
value = 1120

[State 1200, 10]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;-----------------------
[StateDef 1101]
type    = S
movetype= I
physics = S
ctrl = 0
velset = 0,0,0
anim = 1101

[State 1200, 10]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0
;-------------------------
[StateDef 1110]
type    = A
movetype = H
physics = N
VelSet = 0,0,0
ctrl = 0

[State 3110, chae]
type = changeanim2
trigger1 = time = 0
value = 1102

[State 3110, stop vel]
type = Veladd
trigger1 = animelem = 15
y = -9

[State 3110, chae]
type = changestate
trigger1 = pos Y < -140
value = 1111
;-----------------------
[StateDef 1111]
type    = A
movetype = H
physics = N
VelSet = 0,0,0
anim = 5170

[State 3110, stop vel]
type = Veladd
trigger1 = 1
y = 1.5

[State 3110, chae]
type = changestate
trigger1 = pos Y >= 0
value = 1112
;---------------------
[StateDef 1112]
type    = A
movetype = H
physics = N
VelSet = 0,0,0

[State 3110, chae]
type = changeanim2
trigger1 = time = 0
value = 1103

[State 3110, initial velll]
type = Velset
trigger1 = time = 5
y = -8

[State 3110, stop vel]
type = Veladd
trigger1 = time > 5
trigger1 = time < 38
y = 0.4
x = 0.2

[State 3110, stop vel]
type = Veladd
trigger1 = time > 37
y = 0.4
x = -0.2

[State 235, sssf]
type = envshake
trigger1 = time = 0
time = 20
freq = 100
ampl = 4

[State 3110, chae]
type = selfstate
trigger1 = pos Y > -5
trigger1 = alive = 1
trigger1 = time > 20
value = 5080

[State 1200, sound]
type = PlaySnd
trigger1 = time > 20
trigger1 = pos Y > -10
trigger1 = alive = 1
value = F7,0

[State 235, sssf]
type = envshake
trigger1 = time > 20
trigger1 = pos Y > -10
trigger1 = alive = 1
time = 10
freq = 100
ampl = 4

[State 1001, 1]
type = Selfstate
trigger1 = time > 10
trigger1 = pos Y > 0
trigger1 = alive = 0
value = 5100;050
;--------------
[Statedef 1113]
type    = S
movetype= I
physics = N
velset = 0,0
anim = 5100

[State 1200, sound]
type = PlaySnd
trigger1 = time = 0
trigger1 = alive = 1
value = F7,0

[State 3120, change]
type = changeanim
trigger1 = animtime =0
trigger1 = alive = 1
trigger1 = time < 10
value = 5120

[State 235, sssf]
type = envshake
trigger1 = time = 0
time = 10
freq = 100
ampl = 4

[State 3120, not]
type = nothitby
trigger1 = 1
value = SCA

[State 1001, 1]
type = Selfstate
trigger1 = animtime =0
trigger1 = alive = 0
value = 5100

[State 3110, chae]
type = Selfstate
trigger1 = animtime = 0
trigger1 = time > 10
trigger1 = alive = 1
value = 0
ctrl = 1
;-------------------
[StateDef 1120]
type    = S
movetype = I
physics = N
VelSet = 0,0,0
anim = 130
ctrl = 1

[State 3110, vel]
type = Veladd
trigger1 = time <4
X = -2

[State 3110, chae]
type = Selfstate
trigger1 = time > 3
value = 130
ctrl = 1

; ------------------
; -----  Slide -----
; ------------------

[StateDef 1060]
type    = S
movetype= A
physics = S
juggle  = 2
ctrl = 0
anim = 1060

[State 1100, aAccell]
type = VelAdd
trigger1 = Time < 22
x = 12

[State 0, Explod]
type = Explod
trigger1 = timemod = 2,1
trigger1 = var(17) = 0
anim = 1061
pos = 0,0
postype = p1  ;p2,front,back,left,right
removetime = 20

[State 1000, gibber]
type = PlaySnd
trigger1 = animelem = 1
value = 14, 0

[State 1000, 10]
type = HitDef
trigger1 = AnimElem = 3
attr = S, SA
animtype  = back
air.animtype  = Back
air.hittime  = 17
air.velocity = -3, -7
yaccel = 0.5
damage    = 132, 68
guardflag = L
hitflag = AHLMF
pausetime = 10,2
sparkno = -1
guard.sparkno = -1
hitsound   = -1
p1stateno = 1061
guardsound = 5,14
ground.type = High
ground.slidetime = 0
ground.hittime  = 0
ground.velocity = -3,-5
fall = 1
fall.recover = 0
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 1000, Bouncf]
type = ChangeState
trigger1 = movecontact
value = 1061

[State 1000, BounceOff]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0
;--------------------------------------------
[StateDef 1061]
type    = S
movetype= I
physics = S
ctrl = 0

[State 1000, Accellw]
type = VelSet
trigger1 = time = 0
x = 0

[State 1001, 10]
type = Changestate
trigger1 = AnimTime = 0
value = 0
ctrl = 1

; --------------------------
; -----  Teleport Back -----
; --------------------------

[Statedef 1070]
type    = S
movetype= I
physics = N
juggle  = 1
anim = 1070
Velset = 0, 0
ctrl = 0

[State -3]
type = Explod
triggerall = Var(10) = 7
trigger1 = anim = 1070
trigger1 = TimeMod=2,1
anim = 493
name = "humoarriba"
pos = -0,-90;0, -90
postype = p1
bindtime = 1
vel = 1, -1
random = 30, 70
removetime = -2
sprpriority = -1

[State -3]
type = Explod
triggerall = Var(10) = 7
trigger1 = anim = 1070
trigger1 = TimeMod=2,1
anim = 493
name = "humoarriba"
pos = -0,-90;0, -90
postype = p1
bindtime = 1
vel = -1, -1
random = 30, 70
removetime = -2
sprpriority = 3

[State -3]
type = Explod
triggerall = Var(10) = 7
trigger1 = anim = 1070
trigger1 = TimeMod=2,1
anim = 493
name = "humoarriba"
pos = -0,-90;0, -90
postype = p1
bindtime = 1
vel = -0.7, -1.3
random = 30, 70
removetime = -2
sprpriority = -1

[State -3]
type = Explod
triggerall = Var(10) = 7
trigger1 = anim = 1070
trigger1 = TimeMod=2,1
anim = 493
name = "humoarriba"
pos = -0,-90;0, -90
postype = p1
bindtime = 1
vel = 0.6, -1.6
random = 30, 70
removetime = -2
sprpriority = 3

[State -3]
type = Explod
triggerall = Var(10) = 5
trigger1 = anim = 1070
trigger1 = TimeMod=2,1
anim = 1007
name = "humoarriba"
pos = -0,-90;0, -90
postype = p1
bindtime = 1
vel = 1, -1
random = 30, 70
removetime = -2
sprpriority = -1

[State -3]
type = Explod
triggerall = Var(10) = 5
trigger1 = anim = 1070
trigger1 = TimeMod=2,1
anim = 1007
name = "humoarriba"
pos = -0,-90;0, -90
postype = p1
bindtime = 1
vel = -1, -1
random = 30, 70
removetime = -2
sprpriority = -1

[State -3]
type = Explod
triggerall = Var(10) = 5
trigger1 = anim = 1070
trigger1 = TimeMod=2,1
anim = 1007
name = "humoarriba"
pos = -0,-90;0, -90
postype = p1
bindtime = 1
vel = -0.7, -1.3
random = 30, 70
removetime = -2
sprpriority = -1

[State -3]
type = Explod
triggerall = Var(10) = 5
trigger1 = anim = 1070
trigger1 = TimeMod=2,1
anim = 1007
name = "humoarriba"
pos = -0,-90;0, -90
postype = p1
bindtime = 1
vel = 0.6, -1.6
random = 30, 70
removetime = -2
sprpriority = -1

[State 2000, 0.5]
type = Playsnd
trigger1 = time = 1
value = 0,4

[State 2000, 0.6]
type = ScreenBound
trigger1 = time = [1, 1000]
value = 0
movecamera = 0,0

[State 2000, 0.7]
type = Veladd
trigger1 = Pos Y < 0
Y = .65

[State 2000, 1]
type = turn
trigger1 = animelem = 1

[State 2000, 2]
type = Velset
trigger1 = animelem = 1
X = 8.5

[State 1050, 5]
type = VelAdd
trigger1 = Time < 4
trigger1 = Vel Y > -3
Y = -3.3

[State 2000, 4]
type = Changestate
triggerall = time > 9
trigger1 = Pos X > 140
trigger2 = Pos X < -140
value = 1072

[State 2000, 6.1]
type = Changestate
trigger1 = time > 22
trigger1 = Pos Y = 0
trigger2 = Pos Y > 0
value = 0
ctrl = 1
;------------------------------------------------------------------------------------------
[Statedef 1072]
type    = S
movetype= A
physics = N
juggle = 6
anim = 1071
Velset = 0, 0
ctrl = 0

[State -3]
type = Explod
triggerall = Var(10) = 7
trigger1 = anim = 1071
trigger1 = TimeMod=2,1
anim = 493
name = "humoarriba"
pos = -0,-90;0, -90
postype = p1
bindtime = 1
vel = 1, -1
random = 30, 70
removetime = -2
sprpriority = -1

[State -3]
type = Explod
triggerall = Var(10) = 7
trigger1 = anim = 1071
trigger1 = TimeMod=2,1
anim = 493
name = "humoarriba"
pos = -0,-90;0, -90
postype = p1
bindtime = 1
vel = -1, -1
random = 30, 70
removetime = -2
sprpriority = 3

[State -3]
type = Explod
triggerall = Var(10) = 7
trigger1 = anim = 1071
trigger1 = TimeMod=2,1
anim = 493
name = "humoarriba"
pos = -0,-90;0, -90
postype = p1
bindtime = 1
vel = -0.7, -1.3
random = 30, 70
removetime = -2
sprpriority = -1

[State -3]
type = Explod
triggerall = Var(10) = 7
trigger1 = anim = 1071
trigger1 = TimeMod=2,1
anim = 493
name = "humoarriba"
pos = -0,-90;0, -90
postype = p1
bindtime = 1
vel = 0.6, -1.6
random = 30, 70
removetime = -2
sprpriority = 3

[State -3]
type = Explod
triggerall = Var(10) = 5
trigger1 = anim = 1071
trigger1 = TimeMod=2,1
anim = 1007
name = "humoarriba"
pos = -0,-90;0, -90
postype = p1
bindtime = 1
vel = 1, -1
random = 30, 70
removetime = -2
sprpriority = -1

[State -3]
type = Explod
triggerall = Var(10) = 5
trigger1 = anim = 1071
trigger1 = TimeMod=2,1
anim = 1007
name = "humoarriba"
pos = -0,-90;0, -90
postype = p1
bindtime = 1
vel = -1, -1
random = 30, 70
removetime = -2
sprpriority = -1

[State -3]
type = Explod
triggerall = Var(10) = 5
trigger1 = anim = 1071
trigger1 = TimeMod=2,1
anim = 1007
name = "humoarriba"
pos = -0,-90;0, -90
postype = p1
bindtime = 1
vel = -0.7, -1.3
random = 30, 70
removetime = -2
sprpriority = -1

[State -3]
type = Explod
triggerall = Var(10) = 5
trigger1 = anim = 1071
trigger1 = TimeMod=2,1
anim = 1007
name = "humoarriba"
pos = -0,-90;0, -90
postype = p1
bindtime = 1
vel = 0.6, -1.6
random = 30, 70
removetime = -2
sprpriority = -1

[State 1040, 0.6]
type = ScreenBound
trigger1 = time = [1, 1000]
value = 0
movecamera = 0,0

[State 1050, 2]
type = Posset
triggerall = Time = 1
trigger1 = Pos X > 140
trigger1 = Pos X != 150
X = -150

[State 1050, 2]
type = Posset
triggerall = Time = 1
trigger1 = Pos X < -140
trigger1 = Pos X != -150
X = 150

[State 1050, 2.5]
type = Turn
trigger1 = Time = 2
trigger1 = Pos X = 150
trigger1 = Facing = 1

[State 1050, 2.8]
type = Turn
trigger1 = Time = 2
trigger1 = Pos X = -150
trigger1 = Facing = -1

[State 1050, 3]
type = Changeanim
triggerall = time = 3
trigger1 = Pos X = 150
trigger2 = Pos X = -150
value = 1071

[State 1050, 3]
type = Velset
trigger1 = time = 1
X = 4.6

[State 1040, 0.7]
type = Veladd
trigger1 = Pos Y < 0
Y = .65

[State 1050, 4]
type = HitDef
trigger1 = time > 0
trigger1 = !movecontact
trigger1 = p2statetype = A
attr = A, SA
damage    = 70,10
p2facing = 1
animtype  = Light
air.animtype  = Back
getpower = 149,78
guardflag = HA
priority = 7
pausetime = 7, 2
sparkno = -1
guard.sparkno = -1
sparkxy = 18,-60
hitsound   = 5,1
guardsound = 5,14
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -10,0
air.velocity = -2.8,-6.3
guard.slidetime = 10              ;Values for guarded attack (def: ground.slidetime)
guard.ctrltime = 5               ;Time to regain control after guard (def: guard.slidetime)
envshake.time = 15
envshake.freq = 30
envshake.ampl = 3
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 1050, 4]
type = HitDef
trigger1 = time > 0
trigger1 = !movecontact
trigger1 = p2statetype != A
attr = A, SA
damage    = 149,78
animtype  = Light
air.animtype  = Back
getpower = 70,10
guardflag = HA
priority = 7
pausetime = 7, 2
sparkno = -1
guard.sparkno = -1
sparkxy = 18,-60
hitsound   = 5,1
guardsound = 5,14
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -10,0
air.velocity = -2.8,-6.3
guard.slidetime = 10              ;Values for guarded attack (def: ground.slidetime)
guard.ctrltime = 5               ;Time to regain control after guard (def: guard.slidetime)
envshake.time = 15
envshake.freq = 30
envshake.ampl = 3
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)
p2stateno = 1074

[State 1050, 5]
type = PosSet
trigger1 = MoveGuarded = 1
Y = -5

[State 1050, 6]
type = Changestate
trigger1 = MoveGuarded = 1
value = 1073

[State 181, DIED]
type = Explod
trigger1 = time = 7
anim = 888
ID = 7089
pos = 168,100
postype = left
facing = 1
sprpriority = 1
ownpal = 1
removetime = 1820

[State 1050, 6.9]
type = Velset
trigger1 = Pos Y > 0
Y = 0

[State 1050, 6.6]
type = Posset
trigger1 = Pos Y > 0
trigger1 = time = 20
Y = 0

[State 1040, 0.7f]
type = Veladd
trigger1 = movehit
Y = .5

[State 1040, 0.erf7]
type = VelSet
trigger1 = movehit
trigger1 = time >= 1
X = 0

[State 1050, 7]
type= Changestate
trigger1 = time > 18
trigger1 = Pos Y >= -6
trigger2 = movehit
trigger2 = time > 8
trigger2 = Pos Y >= -6
value = 52
ctrl = 1
;-------------
[Statedef 1074]
type    = S
movetype= H
physics = S
ctrl = 0

[State 1001, 10]
type = turn
trigger1 = p2bodydist X < 0

[State 1050, 7]
type= changestate
trigger1 = time = 3
value = 21238

[StateDef 1073]
type    = A
movetype= I
physics = A
ctrl = 0
velset = 0,-7
anim = 1072

[State 1001, 10]
type = VelAdd
trigger1 = Time <24
x = -0.05

[State 1001, 10]
type = PosAdd
trigger1 = Time = 0
y = -45
x = 25

[State 1050, 7]
type= Changestate
trigger1 = Animtime = 0
trigger1 = Pos Y = 0
value = 0
ctrl = 1

; ---------------------------
; -----  Teleport Front -----
; ---------------------------

[Statedef 1080]
type    = A
movetype= A
physics = A
anim = 1071
Velset = 0, -6
juggle = 6
ctrl = 0

[State -3]
type = Explod
triggerall = Var(10) = 5
trigger1 = anim = 1071
trigger1 = TimeMod=2,1
anim = 1007
name = "humoarriba"
pos = -0,-90;0, -90
postype = p1
bindtime = 1
vel = 1, -1
random = 30, 70
removetime = -2
sprpriority = -1

[State -3]
type = Explod
triggerall = Var(10) = 5
trigger1 = anim = 1071
trigger1 = TimeMod=2,1
anim = 1007
name = "humoarriba"
pos = -0,-90;0, -90
postype = p1
bindtime = 1
vel = -1, -1
random = 30, 70
removetime = -2
sprpriority = -1

[State -3]
type = Explod
triggerall = Var(10) = 5
trigger1 = anim = 1071
trigger1 = TimeMod=2,1
anim = 1007
name = "humoarriba"
pos = -0,-90;0, -90
postype = p1
bindtime = 1
vel = -0.7, -1.3
random = 30, 70
removetime = -2
sprpriority = -1

[State -3]
type = Explod
triggerall = Var(10) = 5
trigger1 = anim = 1071
trigger1 = TimeMod=2,1
anim = 1007
name = "humoarriba"
pos = -0,-90;0, -90
postype = p1
bindtime = 1
vel = 0.6, -1.6
random = 30, 70
removetime = -2
sprpriority = -1

[State 181, DIED]
type = Explod
trigger1 = movehit
trigger1 = numexplod(7089) = 0
anim = 888
ID = 7089
pos = 168,100
postype = left
facing = 1
sprpriority = 1
ownpal = 1
removetime = 1820

[State 2000, 0.5]
type = Playsnd
trigger1 = time = 1
value = 0,4

[State 1050, 3]
type = Velset
trigger1 = time = 0
X = 9.5

[State 1040, 0.7]
type = Veladd
trigger1 = Pos Y < 0
trigger1 = time >= 10
Y = .95

[State 1050, 4]
type = HitDef
trigger1 = time > 0
trigger1 = movecontact = 0
trigger1 = p2statetype = A
attr = S, SA
damage    = 120,10
animtype  = Light
air.animtype  = Back
guardflag = H
pausetime = 7,2
sparkno = -1
guard.sparkno = -1
sparkxy = 18,-60
hitsound   = 5,1
guardsound = 5,14
ground.type = High
ground.slidetime = 95
ground.hittime  = 20
ground.velocity = -10,0
air.velocity = -2.8,-6.3
guard.slidetime = 10              ;Values for guarded attack (def: ground.slidetime)
guard.ctrltime = 5               ;Time to regain control after guard (def: guard.slidetime)
envshake.time = 15
envshake.freq = 30
envshake.ampl = 3
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)
p2facing = 1
fall.recover = 0

[State 1050, 4]
type = HitDef
trigger1 = time > 0
trigger1 = movecontact = 0
trigger1 = p2statetype != A
attr = S, SA
damage    = 120,10
animtype  = Light
air.animtype  = Back
guardflag = H
pausetime = 7,2
sparkno = -1
guard.sparkno = -1
sparkxy = 18,-60
hitsound   = 5,1
guardsound = 5,14
ground.type = High
ground.slidetime = 95
ground.hittime  = 20
ground.velocity = -10,0
air.velocity = -2.8,-6.3
guard.slidetime = 10              ;Values for guarded attack (def: ground.slidetime)
guard.ctrltime = 5               ;Time to regain control after guard (def: guard.slidetime)
p2stateno = 21238
envshake.time = 15
envshake.freq = 30
envshake.ampl = 3
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)
p2facing = 1
fall.recover = 0

[State 1050, 5]
type = PosSet
trigger1 = MoveGuarded = 1
Y = -5

[State 1050, 6]
type = Changestate
trigger1 = MoveGuarded = 1
value = 1073

[State 1050, 6.9]
type = Velset
trigger1 = Pos Y > 0
Y = 0

[State 1050, 6.6]
type = Posset
trigger1 = Pos Y > 0
trigger1 = time = 20
Y = 0

[State 1040, 0.7f]
type = Veladd
trigger1 = movehit = 1
Y = .5

[State 1040, 0.erf7]
type = VelSet
trigger1 = movehit = 1
X = 2

[State 1050, 7]
type= Changestate
trigger1 = time > 15
trigger1 = Pos Y = -8
trigger2 = movehit = 1
trigger2 = Pos Y = -8
value = 52
ctrl = 1

[StateDef 2000]
type    = S
movetype= A
physics = S
juggle  = 2
ctrl = 0
anim = 700
sprpriority = 5

[State 1100, aAccell]
type = VelAdd
trigger1 = time <= 35
Y = -2.5

[State 1100, aAcXceDFll]
type = VelAdd
trigger1 = time >= 57
Y = 1

[State 1100, aAccellas]
type = VelsET
trigger1 = time >= 19
trigger1 = time <= 24
TRIGGER2 = TIME >= 43
TRIGGER2 = TIME <= 55
Y = 0

[State 1100, aAccellasSD]
type = pOSsET
trigger1 = time = 20
Y = 300

[State 1100, aAccXCellasSDS]
type = TURN
trigger1 = time = 20

[State 1000, gibber]
type = PlaySnd
trigger1 = Time = 1
value = 4, 18

[State 1000]
type = AfterImage
trigger1 = time = 0
PalBright   = 0,0,0
PalContrast = 40,40,40
Trans = none
time = 30

[State 1000, 10]
type = HitDef
trigger1 = !movecontact
attr = S, ST          ;Attributes: Standing, Normal Throw
hitflag = H          ;Affect only ground people who are not being hit
guardflag = CMH          ;Affect only ground people who are not being hit
priority = 1, Miss    ;Throw has low priority, must be miss or dodge type.
damage = 215,107
hitsound = 5,14
guardsound = 5,14
sparkno = -1          ;No spark
sprpriority = -1      ;Draw in front of p2
p2facing = -1       ;Force p2 to face KFM
p1stateno = 2001       ;On success, KFM changes to state 810
p2stateno = 20011       ;If hit, p2 changes to state 820 in KFM's cns
guard.dist = 0        ;This prevents p2 from going into a guard state if close
fall.recover = 0
yaccel = 0.5
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 1050, 6]
type = Changestate
trigger1 = MoveGuarded = 1
value = 1073

[State 700, 2]
type = PosAdd
trigger1 = TIME = 20
X = (P2Dist X) - 20

[State 1000, BounceOffsd]
type = Changeanim
trigger1 = Time = 18
value = 900

[State 2020]
type = Changestate
trigger1 = Pos Y >= -6
trigger1 = time >= 45
value = 52
ctrl = 1

;--------------------------------------------
; Torpedo Bounce away
[StateDef 2001]
type    = S
movetype= I
physics = S
ctrl = 0
anim = 910
sprpriority = 5

[State 1000, Accellw]
type = VelSet
trigger1 = time = 5
trigger2 = time = 22
Y = 0

[State 1000, Accw]
type = playsnd
trigger1 = time = 17
value = F5,0
volume = 100

[State 1100, aAcXceDFll]
type = VelAdd
trigger1 = time = 5
Y = 9

[State 1001, 10]
type = Changestate
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[StateDef 20011]
type    = S
movetype= H
physics = S
ctrl = 0
sprpriority = 4

[State 1001, 1034]
type = Changeanim2
trigger1 = Time = 0
value = 9998

[State 1100, aAcXceDFll]
type = VelAdd
trigger1 = time <= 5
Y = -8.5

[State 1100, aAcXceDFll]
type = VelAdd
trigger1 = time = 6
Y = 9.5

[State 1100, aAcXc]
type = VelAdd
trigger1 = time >= 23
X = 1.5
Y = -4.5

[State 22, round hit]
type = EnvShake
trigger1 = time = 20
freq = 140
time = 10
ampl = 10

[State 1100, aAcXll]
type = playsnd
trigger1 = time = 20
value = 3,2

[State 1100, aAc]
type = Turn
trigger1 = time = 24

[State 1000, Accellw]
type = VelSet
trigger1 = time = 5
trigger2 = time = 22
Y = 0

[State 1001, 10]
type = Selfstate
trigger1 = Time = 24
value = 5050

;--------------------------------------------

[StateDef 2002]
type    = S
movetype= I
physics = N
juggle  = 2
anim = 1045
Velset = 0, 0
ctrl = 0

[State 181, DIED]
type = Explod
trigger1 = time = 1
anim = 888
id = 7089
pos = 168,100
postype = left
facing = 1
sprpriority = 1
ownpal = 1
removetime = 220

[State 3010, Fire]
type = explod
trigger1 = Time = 0
trigger1 = Pos Y = 0
anim = F11
ID = 36
pos = -20,8
shadow = -1,250,250
postype = p1
ontop = 1

[State 2000, 55]
type = Helper
trigger1 = time = 0
trigger1 = Pos Y = 0
stateno = 1046
name = "AfterImage"
pos = 0, 0
postype = P1
helpertype = normal
sprpriority = 1
keyctrl = 0
ownpal = 0
under = 1

[State 2000, 0.6]
type = ScreenBound
trigger1 = time = [1, 1000]
value = 0
movecamera = 0,0

;---------------------------------
[State 2000, 0.7]
type = Veladd
trigger1 = Pos Y < 0
Y = .65

[State 2000, 1]
type = turn
trigger1 = animelem = 1

[State 2000, 2]
type = Velset
trigger1 = animelem = 1
X = 10.5

[State 1050, 5]
type = VelAdd
trigger1 = Time < 4
trigger1 = Vel Y > -3
Y = -2

[State 2000, 4]
type = Changestate
triggerall = time > 9
trigger1 = Pos X > 140
value = 1050

[State 2000, 5]
type = Changestate
triggerall = time > 9
trigger1 = Pos X < -140
value = 1050

[State 2000, 6.1]
type = Changestate
trigger1 = Pos Y > 0
value = 0
ctrl = 1

[State 2000, 7]
type= Changestate
trigger1 = time > 22
trigger1 = Pos Y = 0
value = 0
ctrl = 1

[Statedef 1045]
type    = S
movetype= I
physics = N
anim = 1045
Velset = 0, 0
ctrl = 0

[State 1045, 1]
type = turn
trigger1 = time = 0

[State 1045, 3]
type = Destroyself
trigger1 = animtime = 0
;-------------------------------

[StateDef 2202]
type    = S
movetype= A
physics = S
juggle  = 2
ctrl = 0
anim = 1444

[State 1000, 1]
type = Helper
trigger1 = animelem = 3
triggerall = numexplod(89) != 1
triggerall = numexplod(89) = 0
stateno = 22222
name = "storm"
id = 1010
postype = p1
pos = 0, 0
helpertype = normal
sprpriority = -1
keyctrl = 0
ownpal = 0
under = 1

[State 181, DID]
type = Explod
trigger1 = animelem = 6
anim = 888
ID = 89
pos = 18,10
postype = p1
facing = 1
sprpriority = 1
ownpal = 1
removetime = 400

[State 2202, BounceOff]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0

;------------------
[Statedef 22222]
type    = S
movetype= A
physics = N
velset = 0,0
anim = 9910
ctrl = 0

[State 700, 2]
type = PosAdd
trigger1 = Time = 0
X = (P2Dist X) + 1

[State 2220, 1]
type = Playsnd
trigger1 = time = 0
value = 4,4

[State 201, 347]
type = EnvShake
trigger1 = animelem = 4
time = 15
freq = 30
ampl = 7

[State 2220, 2]
type = HitDef
trigger1 = animelem = 4
attr = S, NA
damage    = 174, 86
animtype  = Back
hitflag = MAF
guardflag = HL
pausetime = 0,2
sparkno = -1
sparkxy = -15,-95
guard.sparkno = -1
hitsound   = 5,0
p2facing = 1
guardsound = 5,14
ground.type = High
guard.ctrltime = 20
guard.velocity = 0
guard.slidetime = 20
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = 0,-12
air.velocity = 0,-11
yaccel = 0.38
envshake.time = 20
envshake.freq = 30
envshake.ampl = 15
;fall = 1
fall.recover = 0
kill       = root, Var(9) = 0
fall.kill  = root, Var(9) = 0
guard.kill = root, Var(9) = 0

[State -3]
type = Explod
trigger1 = TimeMod=12,3
triggerall = var(26) = 0
triggerall = p2statetype != S
triggerall = p2statetype != C
anim = 493
name = "humoarriba"
pos = -10,-110
postype = p2
bindtime = 1
vel = 0, 0
random = 30, 70
removetime = -2
sprpriority = 1

[State -2, Steam1]
type = Explod
trigger1 = TimeMod=8,3
triggerall = var(26) = 0
triggerall = p2statetype != S
triggerall = p2statetype != C
anim = 493
name = "humomedio"
pos = 0, -70
postype = p2
bindtime = 1
vel = 0, 0
random = 20, 50
removetime = -2
sprpriority = 1

[State 2230, 1.54]
type = Destroyself
trigger1 = time = 36

;--------------------
[Statedef 12000]
type    = S
movetype= I
physics = N
juggle  = 2
anim = 1040
Velset = 0, 0
ctrl = 0

[State 181, DIED]
type = Explod
trigger1 = time = 1
anim = 888
id = 7089
pos = 168,100
postype = left
facing = 1
sprpriority = 1
ownpal = 1
removetime = 220

[State 2000, 0.5]
type = Playsnd
trigger1 = time = 1
value = 0,4

[State 2000, 55]
type = Helper
trigger1 = time = 0
trigger1 = Pos Y = 0
stateno = 1046
name = "AfterImage"
pos = 0, 0
postype = P1
helpertype = normal
sprpriority = 1
keyctrl = 0
ownpal = 0
under = 1

[State 2000, 0.6]
type = ScreenBound
trigger1 = time = [1, 1000]
value = 0
movecamera = 0,0

[State 2000, 0.7]
type = Veladd
trigger1 = Pos Y < 0
Y = .65

[State 2000, 1]
type = turn
trigger1 = animelem = 1

[State 2000, 2]
type = Velset
trigger1 = animelem = 1
X = 10.5

[State 1050, 5]
type = VelAdd
trigger1 = Time < 4
trigger1 = Vel Y > -3
Y = -2

[State 2000, 4]
type = Changestate
triggerall = time > 9
trigger1 = Pos X > 140
value = 1050

[State 2000, 5]
type = Changestate
triggerall = time > 9
trigger1 = Pos X < -140
value = 1050

[State 2000, 6.1]
type = Changestate
trigger1 = Pos Y > 0
value = 0
ctrl = 1

[State 2000, 7]
type= Changestate
trigger1 = time > 22
trigger1 = Pos Y = 0
value = 0
ctrl = 1

[Statedef 1045]
type    = S
movetype= I
physics = N
anim = 1045
Velset = 0, 0
ctrl = 0

[State 1045, 1]
type = turn
trigger1 = time = 0

[State 1045, 3]
type = Destroyself
trigger1 = animtime = 0

;============================================================

[StateDef 1800]
type    = S
movetype= A
physics = S
juggle  = 4
ctrl = 0
velset = 0,0,0
anim = 1003

[State 1200, ZappySound]
type = PlaySnd
trigger1 = AnimElem = 5
value = 4, 3
channel = 3
volume = 20

[State 1200, Za]
type = VelSet
trigger1 = 1
trigger2 = Vel Y != 0
y = 0

[State 1200, Zadf]
type = nothitby
trigger1 = animelem >= 6
value = CSA

[State 201, 347]
type = EnvShake
trigger1 = projcontact = 1
time = 13
freq = 30
ampl = 5

[State 1200, BoltFat]
type = Projectile
trigger1 = AnimElem = 6
triggerall = p2stateno != 9010
projanim = 1240
projhitanim = 1241
projremanim = 1241
offset = 60*const(size.xscale), -75*const(size.xscale)
ID = 997
velocity = 8, 0
remvelocity = 0, 0
; HitDef part of projectile info
attr = S, NP
animtype  = Back
damage    = 174, 86
guardflag = ML
hitflag = MAF
pausetime = 0, 2
sparkno = -1
guard.sparkno = -1
hitsound = S4,32
p1stateno = 1801
p2stateno = 1802
guardsound = S4,32
ground.type = High
ground.slidetime = 30
p2facing = 1
guard.ctrltime = 20
guard.velocity = -5
guard.slidetime = 20
ground.hittime  = 30
air.hittime = 17
fall = 1
fall.recover = 0
yaccel = 0.45
envshake.time = 13
envshake.freq = 30
envshake.ampl = 5
kill       = Var(9) = 0
fall.kill  = Var(9) = 0
guard.kill = Var(9) = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = projcontact = 1
value = 1810
ctrl = 0

[State 1200, Zadf]
type = nothitby
trigger1 = movehit
value = CSA

[State 1200, 10]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0
;----------
[StateDef 1801]
type    = S
movetype= A
physics = S
ctrl = 0
velset = 0,0,0
anim = 1231

[State 1200, ZappySound]
type = PlaySnd
trigger1 = time = 0
trigger2 = time = 37
trigger3 = time = 74
trigger4 = time = 111
trigger5 = time = 148
value = 4,34

[State 1200, Zadf]
type = nothitby
trigger1 = 1
value = CSA

[State 1200, Za]
type = VelSet
trigger1 = 1
trigger2 = Vel Y != 0
y = 0

[State 1200, Zasd]
type = PosSet
trigger1 = 1
y = 0

[State 1200, 2at]
type = Explod
trigger1 = time = 1
anim = 888
pos = 35,-75
postype = p1
ID = 1990
sprpriority  >= 2
removetime = 400

[State 88500, hu]
type = targetVelAdd
trigger1 = time <= 140
trigger1 = command = "holdup"
Y = -.1

[State 88500, hud]
type = targetVelAdd
trigger1 = command = "holdback"
X = 1.8

[State 88500, hudd]
type = targetVelAdd
trigger1 = command = "holdfwd"
X = -1.8

[State 1200, 2at]
type = helper
trigger1 = time = 7
helpertype = normal ;player
name = "water"
ID = 1811
stateno = 1811
pos = 15,-112
postype = p2    ;p2,front,back,left,right
ontop = 1
facing = -1

[State 1200, 2at]
type = helper
trigger1 = time = 6
helpertype = normal ;player
name = "water"
ID = 1811
stateno = 1811
pos = 17,-118
postype = p2    ;p2,front,back,left,right
ontop = 1
facing = -1

[State 1200, 2at]
type = helper
trigger1 = time = 2
pos = 14,-108
helpertype = normal ;player
name = "water"
ID = 1811
stateno = 1811
postype = p2    ;p2,front,back,left,right
ontop = 1
facing = -1

[State 1200, 2at]
type = helper
trigger1 = time = 2
pos = 15,-103
helpertype = normal ;player
name = "water"
ID = 1811
stateno = 1811
postype = p2    ;p2,front,back,left,right
ontop = 1
facing = -1

[State 1200, 2at]
type = helper
trigger1 = time = 3
pos = 7,-114
helpertype = normal ;player
name = "water"
ID = 1811
stateno = 1811
postype = p2    ;p2,front,back,left,right
ontop = 1
facing = -1

[State 1200, 2at]
type = helper
trigger1 = time = 2
pos = 5,-110
helpertype = normal ;player
name = "water"
ID = 1811
stateno = 1811
postype = p2    ;p2,front,back,left,right
ontop = 1
facing = 1

[State 1200, 2at]
type = helper
trigger1 = time = 0
pos = 10,-100
helpertype = normal ;player
name = "water"
ID = 1811
stateno = 1811
postype = p2    ;p2,front,back,left,right
ontop = 1
facing = -1

[State 1200, 2at]
type = helper
trigger1 = time = 0
pos = 5,-90
helpertype = normal ;player
name = "water"
ID = 1811
stateno = 1811
postype = p2    ;p2,front,back,left,right
ontop = 1
facing = -1

[State 1200, 2at]
type = helper
trigger1 = time = 2
pos = 12,-100
helpertype = normal ;player
name = "water"
ID = 1811
stateno = 1811
postype = p2    ;p2,front,back,left,right
ontop = 1
facing = 1

[State 1200, 2at]
type = helper
trigger1 = time = 0
pos = 10,-105
helpertype = normal ;player
name = "water"
ID = 1811
stateno = 1811
postype = p2    ;p2,front,back,left,right
ontop = 1
facing = 1

[State 1200, 2at]
type = helper
trigger1 = time = 8
pos = 15,-110
helpertype = normal ;player
name = "water"
ID = 1811
stateno = 1811
postype = p2    ;p2,front,back,left,right
ontop = 1
facing = 1

[State 1200, 103]
type = ChangeState
trigger1 = animTime = 0
trigger1 = moveguarded
ctrl = 1
value = 0

[State 1200, 10]
type = ChangeState
trigger1 = Time = 180
trigger1 = p2stateno = 1802
trigger2 = roundstate = 3
trigger2 = time >= 30
ctrl = 1
value = 1803

[State 1200, 10sd]
type = ChangeState
trigger1 = p2bodydist X <= 20
trigger1 = p2stateno = 1802
trigger2 = p2stateno = [5000,5300]
ctrl = 1
value = 1803
;--------
[StateDef 1803]
type    = S
movetype= I
physics = S
ctrl = 0
velset = 0,0,0
anim = 1343
;sprpriority = 9

[State 1200, 10]
type = ChangeState
trigger1 = animTime = 0
trigger2 = p2stateno = [5000,5300]
ctrl = 1
value = 0

;---------
[StateDef 1802]
type    = A
movetype= H
physics = S
juggle  = 6
ctrl = 0
velset = 0,0,0
anim = 8881

[State 88500, huck]
type = VelAdd
trigger1 = time > 200
Y = 1

[State 88500, huck]
type = VelSet
trigger1 = Pos Y <= -90
trigger1 = time  <= 160
Y = 0

[State 88500, Fa]
type = SelfState
trigger1 = Time = 200
trigger1 = Pos Y <= -100
value = 5050

[State 88500, Fall]
type = SelfState
trigger1 = Time = 210
value = 5100

[StateDef 90191]
type    = A
movetype= H
physics = S
juggle  = 6
ctrl = 0
velset = 0,0,0

[State 88500, huck]
type = VelAdd
trigger1 = time <= 30
Y = -.2

[State 88500, huck]
type = VelAdd
trigger1 = time > 160
Y = .1

[State 88500, huck]
type = VelSet
trigger1 = Pos Y <= -100
trigger1 = time  <= 160
Y = 0

[State 88500, Fall]
type = SelfState
trigger1 = Time = 200
value = 5100

[StateDef 1810]
type    = S
movetype= A
physics = S
juggle  = 2
ctrl = 0
velset = 0,0,0

[State 1200, Za]
type = VelSet
trigger1 = time = 1
trigger2 = Vel Y != 0
y = 0

[State 1200, 2at]
type = helper
trigger1 = time = 7
helpertype = normal
name = "water"
ID = 1811
stateno = 1811
pos = 15,-112
postype = p2
ontop = 1
facing = -1

[State 1200, 2at]
type = helper
trigger1 = time = 6
helpertype = normal
name = "water"
ID = 1811
stateno = 1811
pos = 17,-118
postype = p2
ontop = 1
facing = -1

[State 1200, 2at]
type = helper
trigger1 = time = 2
pos = 14,-108
helpertype = normal
name = "water"
ID = 1811
stateno = 1811
postype = p2
ontop = 1
facing = -1

[State 1200, 2at]
type = helper
trigger1 = time = 2
pos = 15,-103
helpertype = normal
name = "water"
ID = 1811
stateno = 1811
postype = p2
ontop = 1
facing = -1

[State 1200, 2at]
type = helper
trigger1 = time = 3
pos = 7,-114
helpertype = normal
name = "water"
ID = 1811
stateno = 1811
postype = p2
ontop = 1
facing = -1

[State 1200, 2at]
type = helper
trigger1 = time = 2
pos = 5,-110
helpertype = normal
name = "water"
ID = 1811
stateno = 1811
postype = p2
ontop = 1
facing = 1

[State 1200, 2at]
type = helper
trigger1 = time = 0
pos = 10,-100
helpertype = normal
name = "water"
ID = 1811
stateno = 1811
postype = p2
ontop = 1
facing = -1

[State 1200, 2at]
type = helper
trigger1 = time = 0
pos = 5,-90
helpertype = normal
name = "water"
ID = 1811
stateno = 1811
postype = p2
ontop = 1
facing = -1

[State 1200, 2at]
type = helper
trigger1 = time = 2
pos = 12,-100
helpertype = normal
name = "water"
ID = 1811
stateno = 1811
postype = p2
ontop = 1
facing = 1

[State 1200, 2at]
type = helper
trigger1 = time = 0
pos = 10,-105
helpertype = normal
name = "water"
ID = 1811
stateno = 1811
postype = p2
ontop = 1
facing = 1

[State 1200, 2at]
type = helper
trigger1 = time = 8
pos = 15,-110
helpertype = normal
name = "water"
ID = 1811
stateno = 1811
postype = p2
ontop = 1
facing = 1

[State 1200, 10]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0
;-------------------------

[Statedef 1811]
type    = S
movetype= I
juggle  = 0
anim = 1242
velset = 0, 0
ctrl = 0

[State 7200, velset]
type = velset
trigger1  = time = 0
X = -1-(random%30)/10.0

[State 7200, velset]
type = velset
trigger1  = time = 0
Y = -6-(random%40)/10.0

[State 7200, vel]
type = veladd
trigger1 = time > 1
trigger1  = pos Y < root,var(57)
Y = .5

[State 6000, 5]
type = Changestate
trigger1 = Pos Y > 0
value = 1812
;------------------------------------------------------------------------
;Nice Blood splat A lands
[Statedef 1812]
type    = S
movetype= I
juggle  = 0
anim = 1243
velset = 0,0
ctrl = 0

[State 6001, 1]
type = Destroyself
trigger1 = animtime = 0

;-----------------------------------------
[Statedef 3003]
type    = S
movetype= A
physics = S
juggle  = 2
velset = 0,0
anim = 3000
ctrl = 0

[State 10000, open]
type = PlaySnd
trigger1 = AnimElem = 2
value = 4,6

[State 1000, 0.1]
type = Posset
trigger1 = Pos Y != 0
trigger1 = time = 0
Y = 0

[State 1000, nonkilling helper]
type = helper
trigger1 = AnimElem = 2
stateno = 3012
name = "Shot1"
id = 1001
pos = -10*const(size.xscale), -105*const(size.xscale)
postype = p1

[State 1000, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;-------------------------------------
; Projectile
[Statedef 3012]
type    = S
movetype= A
physics = N
poweradd= 120
velset = 11,0
anim = 3001
ctrl = 0

[State 2002]
type = AfterImage
trigger1 = time = 0
PalBright   =   0,  0,  0
PalContrast = 111,219,255
Trans = Add1
time = 40

[State 1200, BoltFat]
type = HitDef
trigger1 = time = 0
attr = S, SP
damage    = 192, 96
animtype = Light
air.animtype = Back
guardflag = HL
pausetime = 0,2
sparkno = 16
sparkxy = 20,0
guard.sparkno = -1
hitsound   = S4,19
guardsound = S3,9
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -5,0
air.velocity = -3,-4
air.fall = 1
fall.recover = 0
air.juggle = 3
p2stateno = 21238
kill       = root, Var(9) = 0
fall.kill  = root, Var(9) = 0
guard.kill = root, Var(9) = 0

[State 1001, gone]
type = Destroyself
trigger1 = time = 90
;==========================

[Statedef 3004]
type    = S
movetype= A
physics = S
juggle  = 2
velset = 0,0
anim = 3000
ctrl = 0

[State 10000, open]
type = PlaySnd
trigger1 = AnimElem = 3
value = 4, 6

[State 1000, 0.1]
type = Posset
trigger1 = Pos Y != 0
trigger1 = time = 0
Y = 0

[State 1000, nonkilling helper]
type = helper
trigger1 = AnimElem = 2
stateno = 3005
name = "Shot1"
id = 1001
pos = -10*const(size.xscale), -105*const(size.xscale)
postype = p1

[State 1000, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;-------------------------------------
; Projectile
[Statedef 3005]
type    = S
movetype= A
physics = N
poweradd= 120
velset = 11,0
anim = 3001
ctrl = 0

[State 10000, open]
type = PlaySnd
trigger1 = time = 0
value = 4, 19
volume = 50

[State 2002]
type = AfterImage
trigger1 = time = 0
PalBright   =   0,  0,  0
PalContrast = 111,219,255
Trans = Add1
time = -1

[State 1200, BoltFat]
type = HitDef
trigger1 = time = 0
attr = S, SP
damage    = 192, 96
animtype = Light
air.animtype = Back
guardflag = HL
pausetime = 0,2
sparkno = 16
sparkxy = 20,0
guard.sparkno = -1
hitsound   = S4,19
guardsound = S3,9
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -5,0
air.velocity = -4,-5
air.fall = 1
fall.recover = 0
air.juggle = 3
yaccel = 0.5
p2stateno = 21238
kill       = root, Var(9) = 0
fall.kill  = root, Var(9) = 0
guard.kill = root, Var(9) = 0

[State 1001, gone]
type = changestate
trigger1 = FrontEdgeDist < -40
trigger1 = !movecontact
value = 3006

[State 1001, gone]
type = destroyself
trigger1 = time = 200

;----------------------------------------------------------
;- Move Bola Aire -----------------------------------------
;----------------------------------------------------------

[StateDef 3007]
type    = A
movetype= A
physics = S
juggle  = 6
ctrl = 0
velset = 0,0,0
anim = 3002
sprpriority = 9

[State 10000, open]
type = PlaySnd
trigger1 = AnimElem = 3
value = 4, 6

[State 1000, nonkilling helper]
type = helper
trigger1 = AnimElem = 3
stateno = 3005
name = "Shot1"
id = 1001
pos = 12*const(size.xscale), -95*const(size.xscale)
postype = p1

[State 88500, Fall]
type = ChangeState
trigger1 = AnimTime = 0
value = 3008

;- Drop ---------------------------------------------------

[Statedef 3008]
type    = A
movetype= I
physics = A
juggle  = 4
velset = 0,0
anim = 3005
ctrl = 0

[State 1101]
type = Veladd
trigger1 = time > 0
y = .3
;=================

[Statedef 3006]
type    = S
movetype= A
physics = N
poweradd= 120
velset = -11,0
anim = 3001
ctrl = 0

[State 2002]
type = AfterImage
trigger1 = time = 0
PalBright   =   0,  0,  0
PalContrast = 111,219,255
Trans = Add1
time = -1

[State 1200, BoltFat]
type = HitDef
trigger1 = time = 0
attr = S, SP
damage    = 192, 96
animtype = Light
air.animtype = Back
guardflag = HL
pausetime = 0,2
sparkno = 16
sparkxy = 20,0
guard.sparkno = -1
hitsound   = S4,19
guardsound = S3,9
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -5,0
air.velocity = -3,-4
air.fall = 1
fall.recover = 0
air.juggle = 3
p2stateno = 21242
kill       = root, Var(9) = 0
fall.kill  = root, Var(9) = 0
guard.kill = root, Var(9) = 0

[State 1001, gone]
type = destroyself
trigger1 = time = 200
;---------------------------------

[StateDef 777]
type    = S
movetype= I
physics = S
ctrl = 0
velset = 0,0,0
anim = 2202

[State 700, 1]
type = PlaySnd
trigger1 = Time = 10
trigger2 = Time = 30
value = 4, 22

[State 700, 134]
type = changeanim
trigger1 = animTime = 0
trigger1 = anim = 2202
value = 2203

[State 700, 2]
type = PosAdd
trigger1 = animelem = 1
trigger1 = anim = 2203
X = (P2Dist X) + 30

[State 700, 2234]
type = Turn
trigger1 = animelem = 1
trigger1 = anim = 2203

[State 700, 4]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0
;------------------------------

[Statedef 2443]
type    = S
movetype= A
physics = S
juggle  = 5
ctrl = 0
anim = 349
sprpriority = 2

[State 3443]
type = VelSet
trigger1 = time > 12
y = 0
X = 1

[State 3443, 1]
type = PlaySnd
trigger1 = Time = 12
value = F5, 15

[State 3443, 2]
type = HitDef
trigger1 = AnimElem = 10
trigger2 = AnimElem = 11
triggerall = NumHelper(711) = 0
trigger2 = p2stateno = 12001
attr = C, NA
damage    = 360, 90
animtype  = Back
hitflag = MAF
guardflag = HL
pausetime = 0,2
sparkno = -1
sparkxy = -18,-100
guard.sparkno = -1
hitsound   = 5,0
p2facing = 1
guardsound = 5,14
ground.cornerpush.veloff = -30
ground.type = High
guard.ctrltime = 20
guard.slidetime = 20
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -1.8,-11
air.velocity = -1.8,-12
yaccel = 0.38
envshake.time = 15
envshake.freq = 70
envshake.ampl = 7
fall.recover = 0
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)
priority = 1, Miss

[State 3443, 3]
type = HitDef
trigger1 = AnimElem = 15
attr = S, NA
animtype  = Back
damage    = 290, 40
guardflag = HL
hitflag = MAF
pausetime = 5,2
sparkno = -1
guard.sparkno = -1
hitsound = 5,0
guardsound = 5,14
ground.type = High
ground.slidetime = 30
p2facing = 1
guard.ctrltime = 20
guard.slidetime = 20
ground.hittime  = 30
ground.velocity = 5,-6
air.velocity = 5,-6
air.hittime = 17
ground.cornerpush.veloff = -35
fall.recover = 0
envshake.time = 15
envshake.freq = 70
envshake.ampl = 7
yaccel = 0.45
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)
priority = 1, Miss

[State 3443, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1
;-------------------------
[Statedef 2445]
type    = S
movetype= A
physics = S
juggle  = 5
ctrl = 0
velset = 0,0,0
anim = 3444

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 3443
pos = 0,0
postype = p1
ontop = 1

[State 240, 1.5]
type = Playsnd
trigger1 = animelem = 7
value = 5,4

[State 3,33]
type = Explod
trigger1 = p2stateno = 21238
trigger1 = var(50) = 0
anim = 3446
name = "Smoke"
pos = 0, -50
postype = p2
bindtime = -2
vel = 1, -1
removetime = -2
ontop = 1
removeongethit = 0

[State -3]
type = Explod
trigger1 = movecontact
trigger1 = TimeMod=2,1
anim = 3445
name = "humoarriba"
pos = -0,-70;0, -90
postype = p2
bindtime = 1
vel = 1, -1
random = 30, 70
removetime = -2
sprpriority = 1

[State -3]
type = Explod
trigger1 = movecontact
trigger1 = TimeMod=2,1
anim = 3445
name = "humoarriba"
pos = -0,-70;0, -90
postype = p2
bindtime = 1
vel = -1, -1
random = 30, 70
removetime = -2
sprpriority = 1

[State -3]
type = Explod
trigger1 = movecontact
trigger1 = TimeMod=2,1
anim = 3445
name = "humoarriba"
pos = -0,-70;0, -90
postype = p2
bindtime = 1
vel = -0.7, -1.3
random = 30, 70
removetime = -2
sprpriority = 1

[State -3]
type = Explod
trigger1 = movecontact
trigger1 = TimeMod=2,1
anim = 3445
name = "humoarriba"
pos = -0,-70;0, -90
postype = p2
bindtime = 1
vel = 0.6, -1.6
random = 30, 70
removetime = -2
sprpriority = 1

[State -3]
type = Explod
trigger1 = p2stateno = 21238
triggerall = var(50) = 0
anim = 3445
name = "humoarriba"
pos = -0,-70
postype = p2
bindtime = 1
vel = -0.7, -1.3
random = 30, 70
removetime = -2
sprpriority = 1

[State -3]
type = Explod
trigger1 = p2stateno = 21238
triggerall = var(50) = 0
anim = 3445
name = "humoarriba"
pos = -0,-70
postype = p2
bindtime = 1
vel = 0.6, -1.6
random = 30, 70
removetime = -2
sprpriority = 1

[State 201, 1]
type = HitDef
trigger1 = !movecontact
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage    = 300, 150                   ;Damage that move inflicts
animtype = Medium                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
air.animtype = Back
guardflag = HL
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 2, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default
pausetime = 0,2                  ;Time attacker pauses, time victim shakes
sparkno = -1
sparkxy = -10,-105
guard.sparkno = -1
ground.cornerpush.veloff = -30
guardsound = 5,14
ground.type = High                 ;Type: High, Low, Trip (def: Normal)
p2facing = 1
guard.velocity = 0
guard.slidetime = 20
guard.ctrltime = 20
ground.hittime  = 30
air.velocity = -2, 1
air.hittime = 17
ground.cornerpush.veloff = -25
p2stateno = 21238
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 240, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;-----------------------------------

[StateDef 2600]
type    = S
movetype= A
physics = S
juggle  = 2
ctrl = 0
anim = 2600

[State 9999, aAccell]
type = VelAdd
trigger1 = time <= 12
trigger1 = Time > 4
x = 4

[State 9999, aAccellsd]
type = VelSet
trigger1 = time >= 13
x = 0

[State 1000, bber]
type = PlaySnd
trigger1 = Time = 1
value = F5,20

[State 1000, 10]
type = HitDef
trigger1 = !movecontact
attr = S, SA
animtype  = back
damage    = 250, 70
guardflag = M
hitflag = MAF
pausetime = 0,2
sparkno = 15
sparkxy = 0,-95
guard.sparkno = -1
hitsound   = s88,0
guardsound = 5,14
air.velocity = -4,-4
air.hittime = 17
fall.recover = 0
p1stateno = 2601
yaccel = 0.5
p2stateno = 21238
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 1000, BounceOff]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0

[StateDef 2601]
type    = S
movetype= I
physics = S
juggle  = 2
;velset = 0,0
ctrl = 0

[State 1000, BounceOff]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0

;-------------------------

[StateDef 2500]
type    = S
movetype= A
physics = S
juggle  = 2
velset = 0,0
anim = 2500
ctrl = 0

[State 10000, open]
type = PlaySnd
trigger1 = Animelem = 5
value = 9, 0

[State 1000, nonkilling helper]
type = helper
trigger1 = Animelem = 5
stateno = 2501
name = "estrella1"
id = 131302
pos = 0*const(size.xscale), -122*const(size.xscale)
postype = p1

[State 1000, nonkilling helper]
type = helper
trigger1 = AnimElem = 6
stateno = 2502
name = "estrella2"
id = 131302
pos = 0*const(size.xscale), -105*const(size.xscale)
postype = p1

[State 1000, nonkilling helper]
type = helper
trigger1 = AnimElem = 7
stateno = 2503
name = "estrella3"
id = 131302
pos = 0*const(size.xscale), -83*const(size.xscale)
postype = p1

[State 1000, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;
; Projectile
[Statedef 2501]
type    = S
movetype= A
physics = N
velset = 8,5.5
anim = 2501
ctrl = 0
sprpriority = 2

[State 0, VelSet]
type = VelSet
trigger1 =  time = 22
x = 8
y = -6

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 22
value = 5,5

[State 2002]
type = AfterImage
trigger1 = time = 0
PalBright   =   0,  0,  0
PalContrast = 0, 0, 0
Trans = Add1
time = -1

[State 1200, BoltFat]
type = HitDef
trigger1 = time = 0
attr = S, SP
damage    = 100, 30
animtype = Light
air.animtype = Back
hitflag = MAFD
guardflag = HL
pausetime = 0,2
sparkno = 3
sparkxy = -30,0
guard.sparkno = -1
hitsound   = S88,0
guardsound = 5,14
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -5,0
air.velocity = -4,-5
yaccel = 0.5
air.fall = 1
fall.recover = 0
air.juggle = 3
p2stateno = 21238
kill       = root, Var(9) = 0
fall.kill  = root, Var(9) = 0
guard.kill = root, Var(9) = 0

[State 1001, gone]
type = Destroyself
trigger1 = movecontact
trigger2 = time = 90
;----------------------

[Statedef 2502]
type    = S
movetype= A
physics = N
velset = 8,7
anim = 2501
ctrl = 0
sprpriority = 2

[State 0, VelSet]
type = VelSet
trigger1 =  time = 15
x = 8
y = -7

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 15
value = 5,6

[State 2002]
type = AfterImage
trigger1 = time = 0
PalBright   =   0,  0,  0
PalContrast = 0, 0, 0
Trans = Add1
time = -1

[State 1200, BoltFat]
type = HitDef
trigger1 = time = 0
attr = S, SP
damage    = 100, 30
animtype = Light
air.animtype = Back
hitflag = MAFD
guardflag = HL
pausetime = 0,2
sparkno = 3
sparkxy = -30,0
guard.sparkno = -1
hitsound   = S88,0
guardsound = 5,14
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -5,0
air.velocity = -4,-5
yaccel = 0.5
air.fall = 1
fall.recover = 0
air.juggle = 3
p2stateno = 21238
kill       = root, Var(9) = 0
fall.kill  = root, Var(9) = 0
guard.kill = root, Var(9) = 0

[State 1001, gone]
type = Destroyself
trigger1 = movecontact
trigger2 = time = 90
;-----------------------

[Statedef 2503]
type    = S
movetype= A
physics = N
velset = 8,9
anim = 2501
ctrl = 0
sprpriority = 2

[State 0, VelSet]
type = VelSet
trigger1 =  time = 9
x = 8
y = -8

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 9
value = 5,7

[State 2002]
type = AfterImage
trigger1 = time = 0
PalBright   =   0,  0,  0
PalContrast = 0, 0, 0
Trans = Add1
time = -1

[State 1200, BoltFat]
type = HitDef
trigger1 = time = 0
attr = S, SP
damage    = 100, 30
animtype = Light
air.animtype = Back
hitflag = MAFD
guardflag = HL
pausetime = 0,2
sparkno = 3
sparkxy = -30,0
guard.sparkno = -1
hitsound   = S88,0
guardsound = 5,14
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -5,0
air.velocity = -4,-5
yaccel = 0.5
air.fall = 1
fall.recover = 0
air.juggle = 3
p2stateno = 21238
kill       = root, Var(9) = 0
fall.kill  = root, Var(9) = 0
guard.kill = root, Var(9) = 0

[State 1001, gone]
type = Destroyself
trigger1 = movecontact
trigger2 = time = 90
;-------------------------------------------------------------------

[StateDef 2504]
type    = S
movetype= A
physics = S
juggle  = 4
ctrl = 0
velset = 0,0,0
anim = 1220

[State 1200, ZappySound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 4, 20
channel = 3
volume = 100

[State 1200, Za]
type = VelSet
trigger1 = 1
trigger2 = Vel Y != 0
y = 0

[State 1000, nonkilling helper]
type = helper
trigger1 = time  = 10
stateno = 1990
id = 1990
pos = 50*const(size.xscale), -75*const(size.xscale)
postype = p1

[State 1200, 10]
type = ChangeState
trigger1 = p2stateno = 1991
value = 10211

[State 1200, 10]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0

[Statedef 1990]
type    = S
movetype= A
physics = N
poweradd= 120
velset = 8,0
anim = 2200
ctrl = 0

[State 1200, Za]
type = VelSet
trigger1 = 1
trigger1 = numHelper(1991) < 1
X = 7.5

[State 1200, BoltFat]
type = HitDef
trigger1 = !movecontact
trigger1 = numHelper(1991) < 1
attr = S, HA
damage    = 0, 0
animtype = Light
air.animtype = Back
air.fall = 1
fall.recover = 0
guardflag = HL
pausetime = 0,2
sparkno = -1
guard.sparkno = S12312
hitsound   = S4,18
guardsound = S4,18
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -15,0
air.velocity = -4,-6
air.fall = 1
fall.recover = 0
air.juggle = 3
yaccel = 0.5
p2stateno = 21238
kill       = root,Var(9) = 0
fall.kill  = root,Var(9) = 0
guard.kill = root,Var(9) = 0
palfx.time = 170
palfx.sinadd = 70,70,70,10

[State 3011, Firedf]
type = nothitby
trigger1 = 1
value = CSA

[State 342, ats]
type = Helper
trigger1 = movehit
trigger1 = numHelper(1991) = 0
ID = 1991
stateno = 1991
pos = 50, -75
postype = p2

[State 3011, Fir]
type = explod
trigger1 = movehit
trigger1 = numExplod(1991) = 0
anim = 2201
Id = 1991
pos = 0,-75
postype = p2
sprpriority = 5
removetime = 170
bindtime = -1
scale = .9,.9

[State 1000, Bounf]
type = ChangeAnim
trigger1 = Moveguarded
value = 2220

[State 1001, gone]
type = Destroyself
trigger1 = time >= 40
trigger2 = root , Var(19) = 1

[State 3110, chaea]
type = changeanim
trigger1 = movehit
value = 888

[State 3110, chaesd]
type = VelSet
trigger1 = movehit
X = 0

;---------
[StateDef 1991]
type    = S
movetype= I
physics = N
ctrl = 0
velset = 0,0,0
anim = 888

[State 3011, Firedf]
type = nothitby
trigger1 = 1
value = CSA

[State 3110, chae]
type = Destroyself
trigger1 = time >= 170
trigger2 = root , Var(19) = 1

[StateDef 1992]
type    = S
movetype= I
physics = N
ctrl = 0
velset = 0,0,0
anim = 0

[State 240, 43]
type = ChangeState
trigger1 = time = 0
value = 10211

;--------------
[StateDef 1002]
type    = S
movetype= A
physics = S
juggle  = 4
ctrl = 0
velset = 0,0,0
anim = 1040

[State 1200, BoltFat]
type = Helper
trigger1 = animelem = 4
stateno = 267
ID = 997
pos = 0,0
postype = p1

[State 1200, 2at]
type = Explod
trigger1 = time = 1
anim = 888
pos = 0,0
postype = p1
ID = 1002
sprpriority  = 1
removetime = 150

[State 1200, 10]
type = ChangeState
trigger1 = animTime = 0
ctrl = 1
value = 0
;---------------------
[Statedef 267]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 1041

[State 820, sd435E1]
type = VelSet
Trigger1 = 1
X = 9

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 1,0

[State 820, 4435E1]
type = hitdef
trigger1 = !movecontact
trigger1 = p2name != "kintaro"
trigger1 = p2name != "goro"
trigger1 = p2name != "shao kahn,"
attr = S, NA
damage    = 160, 0
getpower = 130,0
animtype = Hard
air.animtype = Back
air.fall = 1
hitflag = CM
guardflag = CM
sparkno = -1
guard.sparkno = -1
p1stateno = 268
p2stateno = 266
hitsound   = 5,14
guardsound = 5,14
p2facing = -1
yaccel = 0.45
kill       = root, Var(9) = 0
fall.kill  = root, Var(9) = 0
guard.kill = root, Var(9) = 0

[State 820, 4435E1]
type = hitdef
triggerall = !movecontact
trigger1 = p2name = "kintaro"
trigger2 = p2name = "goro"
trigger3 = p2name = "shao kahn,"
attr = S, HT
damage    = 0, 0
getpower = 130,0
animtype = Hard
air.animtype = Back
air.fall = 1
hitflag = CM
guardflag = CM
sparkno = -1
guard.sparkno = -1
p1stateno = 2681
p2stateno = 21238
hitsound   = 5,14
guardsound = 5,14
yaccel = 0.45
kill       = root, Var(9) = 0
fall.kill  = root, Var(9) = 0
guard.kill = root, Var(9) = 0

[State 821, 5d4]
type = Changestate
trigger1 = moveguarded
value = 269

[State 821, 4]
type = Destroyself
trigger1 = time = 200

[Statedef 268]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 1042

[State 820, 4435E1]
type = velSET
Trigger1 = 1
X = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 5,11

[State 821, 4]
type = Destroyself
trigger1 = animtime = 0

[Statedef 2681]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 1043

[State 821, 4]
type = Destroyself
trigger1 = animtime = 0

[Statedef 269]
type    = S
movetype= I
physics = S
velset = 0,0
anim = 1043

[State 820, 4435E1]
type = velSET
Trigger1 = 1
X = 0

[State 821, 4]
type = Destroyself
trigger1 = animtime = 0

[Statedef 266]
type    = A
movetype= H
physics = N
velset = 0,0

[State 9010, 0.1]
type = Sprpriority
trigger1 = animtime = 0
value  >= 2

[State 820, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 26

[State 820, 1]
type = ChangeAnim
Trigger1 = Time = 13
value = 42

[State 820, 4351]
type = VelSet
Trigger1 = time = 12
x = -3.3
y = -9.3

[State 3002, gravedad]
type = veladd
trigger1 = time > 19
y = .5

[State 810, nd]
type = TURN
trigger1 = time >=  13

[State 3002, CC]
type = Selfstate
trigger1 = Pos Y >= 0
trigger1 = time > 25
value = 5110
;-------------------------------------
[StateDef 2505]
type = S
movetype= A
physics = S
ctrl = 0
anim = 1111

[State 2000]
type = AfterImage
triggerall = time = 0
trigger1 = p2stateno = 9010
PalBright   = 0,0,0
PalContrast = 0,120,0
Trans = Add1
time = 55

[State 1100, change1]          ;si esta muy lejos, solo corre
type = ChangeState
trigger1 = BackEdgeDist < 13
trigger1 = p2bodydist X > 165
trigger2 = p2stateno = 9010
value = 2506                  ;state que lo deja cerca del enemigo

[State 1100, change2]          ;si el oponente esta saltando, o tirado en el piso
type = ChangeState             ;corre al otro lado
trigger1 = p2statetype != S
trigger1 = p2statetype != C
value = 2507                   ;state que lo deja del otro lado

[State 1100, hit]
type = HitDef
trigger1 = p2stateno != 130
trigger1 = p2stateno != 131
trigger1 = p2bodydist X < 40
attr = S,NA
sparkno = -1
p2stateno = 2508;no tiene control, solo defensa parado y agachado
numhits = -1

[State 1100, hit]
type = HitDef
trigger1 = p2stateno = 130
trigger2 = p2stateno = 131
triggerall = p2bodydist X < 5
attr = S,NA
sparkno = -1
guardflag = HL
guardsound = 5,14
numhits = -1

[State 1100, Bouncf]
type = ChangeState
trigger1 = moveguarded  ;si se defiende
value = 2512            ;vibra

[state 1100, plush]
type = playerpush
trigger1 = 1
value = 0

[State 1001, 10]
type = Changestate
trigger1 = p2bodydist X < -110
trigger2 = time > 30              ;porlas
value = 2509

[State 1100, aAccell]   ;lo hace correr
type = VelAdd
trigger1 = 1
x = 12
;-------------------------------
[StateDef 2506];si estaba lejos
type    = S
movetype= I
physics = S

[State 1100, aAccell]       ;lo hace correr
type = VelAdd
trigger1 = 1
x = 12

[State 1001, 10]
type = Changestate
trigger1 = p2bodydist X < 30
trigger2 = time = 21         ; porlas
value = 0
ctrl = 1
;---------------------
[StateDef 2507];si salta
type    = S
movetype= I
physics = S

[State 1100, aAccell]   ;lo hace correr
type = VelAdd
trigger1 = 1
x = 12

[state 999, plush]
type = playerpush
trigger1 = 1
value = 0

[State 1001, 10]
type = Changestate
trigger1 = p2bodydist X < -60
trigger2 = time > 30              ;porlas
value = 0
ctrl = 1
;-------------------------
[StateDef 2508]
type    = S
movetype= I
physics = S
anim = 0
ctrl = 0
velset = 0,0

[state 1104,null]       ;porlas modo team
type = changestate
trigger1 = time = 30
value = 0
ctrl = 1
;---------------------------
[StateDef 2509]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 1113

[state 1104,m]
type = turn
trigger1 = time = 0

[state 999, push]
type = playerpush
trigger1 = 1
value = 0

[State 1000, 10]
type = HitDef
trigger1 = time = 0
attr = S,NA
sparkno = -1
p1stateno = 2510
p2stateno = 2511
numhits = -1

[state 1107,ch]           ;porlas
type = changestate
trigger1 = time = 1
value = 2510
;-----------------------
[StateDef 2510]
type    = S
movetype= A
physics = S
velset = 0,0

[state 444,78]
type = veladd
trigger1 = animelem = 4
x = 40

[State 2, blood111]
type = Helper
trigger1 = movehit
trigger1 = numhelper(27) < 1
ID = 27
stateno = 27
pos = 0, 0
postype = p1
persistent = 0
ignorehitpause = 1

[State 1000, 10]
type = HitDef
trigger1 = AnimElem = 4
attr = S,NA
animtype  = hard
damage    = 150, 75
guardflag = HL
pausetime = 20,0
hitflag = AHLMF
sparkno = -1
sparkxy = -30,-90
guard.sparkno = -1
hitsound   = 5,0
guardsound = 5,14
ground.type = High
ground.slidetime = 0
ground.hittime  = 0
ground.velocity = -6,-4
air.velocity = -3,-4
air.hittime = 17
yaccel = 0.45
fall = 1
fall.recover = 0
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)
envshake.time = 15
envshake.freq = 130
envshake.ampl = 8

[state 444,5]
type = changestate
trigger1 = animtime = 0
trigger2 = time = 25       ;porlas
value = 0
ctrl = 1
;----------------------
[StateDef 2511]
type    = S
movetype= I
physics = S
velset = 0,0
anim = 5

[state 1104,m]
type = turn
trigger1 = time = 0

[state 1104,mov]
type = changeanim
trigger1 = animtime = 0
value = 0

[state 1104,mov]
type = veladd
trigger1 = FrontEdgeDist < 30
x = -30

[state 1106,ch]
type = selfstate
trigger1 = time = 10
value = 0
ctrl = 1
;----------------------
[StateDef 2512]
type    = S
movetype= I
physics = S
anim = 1112

[state 1109,biv]
type = velset
trigger1 = time = 0
X = 0

[state 1109,ch]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1
;-------------------------

[StateDef 2513];bola rapida
type    = S
movetype= A
physics = S
juggle  = 9
ctrl = 0
velset = 0,0,0
anim = 1114

[State 1200, ZappySound]
type = PlaySnd
trigger1 = AnimElem = 5
value = 5, 10
channel = 3
volume = 70

[State 1200, Za]
type = VelSet
trigger1 = time = 1
trigger2 = Vel Y != 0
y = 0

[State 1200, 2at]
type = Explod
trigger1 = animelem = 8
anim = 888
pos = 5,-110
postype = p1
facing = -1
ID = 2777
sprpriority  >= 2
removetime = 1000

[State 1200, BoltFat]
type = Projectile
trigger1 = AnimElem = 6
triggerall = p2stateno != 9010
projanim = 1116
projhitanim = 1115
projremanim = 1115
offset = 60*const(size.xscale), -75*const(size.xscale)
ID = 997
velocity = 5, 0
remvelocity = 0, 0
attr = S, SP
animtype  = Back
damage    = 149, 75
guardflag = M
hitflag = MAF
pausetime = 0, 2
sparkno = -1
guard.sparkno = -1
hitsound = 5,0
guardsound = 5,14
ground.type = High
ground.slidetime = 30
p2facing = 1
guard.ctrltime = 20
guard.velocity = -25
guard.slidetime = 20
ground.hittime  = 20
ground.velocity = -2
air.velocity = -1,-3
p2stateno = 2004
air.hittime = 17
envshake.time = 10
envshake.freq = 50
envshake.ampl = 5
ground.cornerpush.veloff = -25
fall.recover = 0
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 1200, 10]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0
;-=-=-=-==-=-=-=-==-==--=-========

[StateDef 2514];bola lenta
type    = S
movetype= A
physics = S
juggle  = 9
ctrl = 0
velset = 0,0,0
anim = 1114

[State 1200, ZappySound]
type = PlaySnd
trigger1 = AnimElem = 5
value = 5, 10
channel = 3
volume = 70

[State 1200, Za]
type = VelSet
trigger1 = time = 1
trigger2 = Vel Y != 0
y = 0

[State 1200, 2at]
type = Explod
trigger1 = animelem = 8
anim = 888
pos = 5,-110
postype = p1
facing = -1
ID = 2777
sprpriority  >= 2
removetime = 1000

[State 1200, BoltFat]
type = Projectile
trigger1 = AnimElem = 6
triggerall = p2stateno != 9010
projanim = 1116
projhitanim = 1115
projremanim = 1115
offset = 60*const(size.xscale), -75*const(size.xscale)
ID = 998
velocity = 2, 0
remvelocity = 0, 0
attr = S, SP
animtype  = Back
damage    = 180, 90
guardflag = M
hitflag = MAF
pausetime = 0, 2
sparkno = -1
guard.sparkno = -1
hitsound = 5,0
guardsound = 5,14
ground.type = High
ground.slidetime = 30
p2facing = 1
guard.ctrltime = 20
guard.velocity = -25
guard.slidetime = 20
ground.hittime  = 30
ground.velocity = -2
air.velocity = -1,-3
p2stateno = 2004
air.hittime = 17
ground.cornerpush.veloff = -25
fall.recover = 0
envshake.time = 10
envshake.freq = 50
envshake.ampl = 5
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 1200, 10]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0
;-----------------------------

[Statedef 2004]
Type = A
MoveType = H
Physics = N
Velset = 3, -5
ctrl = 1

[State 3002, CA]
type = Changeanim2
trigger1 = time = 0
value = 2003

[State 3002, gravedad]
type = veladd
trigger1 = time > 5
y = .3

[State 3002, CC]
type = Selfstate
trigger1 = Pos Y >= 0
trigger1 = time > 5
value = 5110

[StateDef 2515]
type    = S
movetype= A
physics = S
juggle  = 9
ctrl = 0
velset = 0,0,0
anim = 1117

[State 1200, ZappySound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 5,0
channel = 3
volume = 70

[State 1200, Za]
type = VelSet
trigger1 = time = 1
trigger2 = Vel Y != 0
y = 0

[State 1200, BoltFat]
type = Projectile
trigger1 = AnimElem = 3
projanim = 1118
projhitanim = 1119
projremanim = 1119
offset = 103*const(size.xscale), -99*const(size.xscale)
ID = 998
velocity = 10, 0
remvelocity = 0, 0
attr = S, SP
animtype  = Light
damage    = 180, 90
guardflag = HL
hitflag = MAF
pausetime = 0, 2
sparkno = -1
sparkxy = 15,-10
guard.sparkno = 7
hitsound = 5,0
guardsound = 5,14
p2facing = 1
ground.type = High
ground.slidetime = 20
ground.hittime  = 15
guard.ctrltime = 20
ground.velocity = -15,0
air.velocity = -4,-5
air.fall = 1
air.juggle = 3
fall.recover = 0
p2stateno = 21238
palfx.time = 20
palfx.mul = 0,99,0
palfx.add = 0,99,0
yaccel = 0.45
envshake.time = 10
envshake.freq = 30
envshake.ampl = 3
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 0, ChangeState]
type = ChangeState
trigger1 = projcontact = 1
value = 2516
ctrl = 0

[State 1200, 10]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0
;--------------------
[StateDef 2516]
type    = S
movetype= A
physics = S
juggle  = 2
ctrl = 0
velset = 0,0,0

[State 1200, Za]
type = VelSet
trigger1 = time = 1
trigger2 = Vel Y != 0
y = 0

[State 1200, 2at]
type = helper
trigger1 = time = 5
helpertype = normal
name = "acido"
ID = 2517
stateno = 2517
pos = 17,-113
postype = p2
ontop = 1
facing = -1

[State 1200, 2at]
type = helper
trigger1 = time = 5
helpertype = normal
name = "acido"
ID = 2517
stateno = 2517
pos = 14,-116
postype = p2
ontop = 1
facing = -1

[State 1200, 2at]
type = helper
trigger1 = time = 2
pos = 7,-114
helpertype = normal
name = "acido"
ID = 2517
stateno = 2517
postype = p2
ontop = 1
facing = -1

[State 1200, 2at]
type = helper
trigger1 = time = 2
pos = 16,-111
helpertype = normal
name = "acido"
ID = 2517
stateno = 2517
postype = p2
ontop = 1
facing = -1

[State 1200, 2at]
type = helper
trigger1 = time = 0
pos = 14,-114
helpertype = normal
name = "acido"
ID = 2517
stateno = 2517
postype = p2
ontop = 1
facing = -1

[State 1200, 2at]
type = helper
trigger1 = time = 1
pos = 15,-112
helpertype = normal
name = "acido"
ID = 2517
stateno = 2517
postype = p2
ontop = 1
facing = 1

[State 1200, 2at]
type = helper
trigger1 = time = 0
pos = 17,-110
helpertype = normal
name = "acido"
ID = 2517
stateno = 2517
postype = p2
ontop = 1
facing = -1

[State 1200, 2at]
type = helper
trigger1 = time = 0
pos = 10,-95
helpertype = normal
name = "acido"
ID = 2517
stateno = 2517
postype = p2
ontop = 1
facing = -1

[State 1200, 2at]
type = helper
trigger1 = time = 3
pos = 18,-100
helpertype = normal
name = "acido"
ID = 2517
stateno = 2517
postype = p2
ontop = 1
facing = 1

[State 1200, 2at]
type = helper
trigger1 = time = 1
pos = 13,-110
helpertype = normal
name = "acido"
ID = 2517
stateno = 2517
postype = p2
ontop = 1
facing = 1

[State 1200, 2at]
type = helper
trigger1 = time = 6
pos = 15,-108
helpertype = normal
name = "acido"
ID = 2517
stateno = 2517
postype = p2
ontop = 1
facing = 1

[State 1200, 10]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0
;-------------------------

[Statedef 2517]
type    = S
movetype= I
juggle  = 0
anim = 1121
velset = 0, 0
ctrl = 0

[State 7200, velset]
type = velset
trigger1  = time = 0
X = -1-(random%30)/10.0

[State 7200, velset]
type = velset
trigger1  = time = 0
Y = -6-(random%30)/10.0

[State 7200, vel]
type = veladd
trigger1 = time > 1
trigger1  = pos Y < root,var(57)
Y = .5;.4

[State 6000, 5]
type = Changestate
trigger1 = Pos Y > 0
value = 2518
;------------------------------------------------------------------------
;Nice Blood splat A lands
[Statedef 2518]
type    = S
movetype= I
juggle  = 0
anim = 1122
velset = 0,0
ctrl = 0

[State 6001, 1]
type = Destroyself
trigger1 = animtime = 0
;---------------------------------------------------------

[StateDef 2520]
type    = A
movetype= A
physics = S
juggle  = 6
ctrl = 0
velset = 0,0,0
anim = 1123
sprpriority = 9

[State 1200, ZappySound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 5, 0
channel = 3
volume = 70

[State 1200, Za]
type = VelSet
trigger1 = time = 1
trigger2 = Vel Y != 0
x = 7

[State 1200, BoltFat]
type = Projectile
trigger1 = AnimElem = 3
projanim = 1118
projhitanim = 1119
projremanim = 1119
offset = 100*const(size.xscale), -99*const(size.xscale)
ID = 998
velocity = 9, 0
remvelocity = 0, 0
attr = S, SP
animtype  = Light
damage    = 180, 90
guardflag = HL
hitflag = MAF
pausetime = 0, 2
sparkno = -1
sparkxy = 15,-10
guard.sparkno = 7
hitsound = 5,0
guardsound = 5,14
p2facing = 1
ground.type = High
ground.slidetime = 20
ground.hittime  = 15
guard.ctrltime = 20
ground.velocity = -15,0
air.velocity = -4,-5
air.fall = 1
air.juggle = 3
fall.recover = 0
p2stateno = 21238
palfx.time = 20
palfx.mul = 0,99,0
palfx.add = 0,99,0
yaccel = 0.45
envshake.time = 10
envshake.freq = 30
envshake.ampl = 3
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 88500, NotFreindly]
type = VarSet
trigger1 = AnimElem = 4
v = 5
value = 1

[State 0, ChangeState]
type = ChangeState
trigger1 = projcontact = 1
value = 2516
ctrl = 0

[State 88500, Fall]
type = ChangeState
trigger1 = animtime = 0
value = 2521

[Statedef 2521]; Drop
type    = A
movetype= A
physics = A
juggle  = 4
velset = 0,.3
anim = 677
ctrl = 0

[State 1101]
type = Veladd
trigger1 = time > 0
y = .3
;---------------------------------

[StateDef 2522]
type    = S
movetype= A
physics = S
juggle  = 2
ctrl = 0
anim = 1124

[State 1100, aAccell]
type = VelAdd
trigger1 = Time < 15
x = 8

[State 2000]
type = AfterImage
triggerall = time = 0
trigger1 = p2stateno = 9010
PalBright   = 0,0,0
PalContrast = 0,120,0
Trans = Add1
time = 15

[State 1000, bber]
type = PlaySnd
trigger1 = Time = 0
value = 1,0

[State 1000, 10]
type = HitDef
trigger1 = AnimElem = 3
attr = S, SA
animtype  = back
damage    = 200, 95
guardflag = HLMF
hitflag = AHLMF
pausetime = 10,2
sparkno = -1
guard.sparkno = -1
hitsound   = 5,0
p1stateno = 2523
guardsound = 5,14
ground.type = High
ground.slidetime = 0
ground.hittime  = 0
ground.velocity = -5,-5
air.velocity = -6,-6
air.hittime = 17
yaccel = 0.5
fall = 1
fall.recover = 0
envshake.time = 10
envshake.freq = 50
envshake.ampl = 5
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 1000, Bounf]
type = ChangeState
trigger1 = Moveguarded = 1
value = 2523

[State 1000, BounceOff]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0

;--------------------------------------------
[StateDef 2523]
type    = S
movetype= I
physics = S
ctrl = 0
velset = 0,0

[State 1000, Accellw]
type = VelSet
trigger1 = time = 0
x = 0

[State 1001, 10]
type = Changestate
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;-----------------------

[StateDef 2524]
type    = S
movetype= A
physics = S
juggle  = 2
ctrl = 0
anim = 1125

[State 1100, aAccell]
type = VelAdd
trigger1 = Time < 30
trigger2 = Time > 6
x = 9

[State 2000]
type = AfterImage
triggerall = time = 0
trigger1 = p2stateno = 9010
PalBright   = 0,0,0
PalContrast = 0,120,0
Trans = Add1
time = 30

[State 1000, bber]
type = PlaySnd
trigger1 = Time = 8
value = 5,3

[State 1200, BoltFat]
type = HitDef
trigger1 = time = 0
attr = S, NA
damage    = 230, 100
animtype = Light
air.animtype = Back
guardflag = HL
pausetime = 0,2
sparkno = 96
sparkxy = 20,0
guard.sparkno = -1
hitsound   = 5,14
guardsound = 5,14
ground.type = High
ground.slidetime = 30
ground.hittime  = 30
ground.velocity = -2
air.velocity = -1,-3
p2stateno = 2003
air.fall = 1
fall.recover = 0
air.juggle = 3
envshake.time = 10
envshake.freq = 20
envshake.ampl = 2

[State 1000, BounceOff]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0
;------------------------------
[Statedef 2003]
Type = A
MoveType = H
Physics = N
Velset = 3.25, -5
ctrl = 1

[State 3002, CA]
type = Changeanim2
trigger1 = time = 0
value = 2003

[State 3002, gravedad]
type = veladd
trigger1 = time > 5
y = .3

[State 3002, CC]
type = Selfstate
trigger1 = Pos Y >= 0
trigger1 = time > 5
value = 5110

;===========================================================
; GROUND FREEZE
;===========================================================
[Statedef 2525]
Type = S
Movetype = A
Physics = S
Anim = 1126
ctrl = 0

[State 1300, 0.5]
type = playsnd
trigger1 = animelem = 4
value = 5,2
channel = 3

[State 1300, 1]
type = helper
trigger1 = animelem = 5
stateno = 2526
name = "Puddle"
id = 1301
pos = 107, -3
postype = p1
facing = 1
bindtime = 1
under = 1

[State 1300, 1]
type = explod
trigger1 = animelem = 4
pos = 0,0
postype = p1
anim = 1127
sprpriority = 0
ontop = 1

[State 1300, CS]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1
;----------------
[Statedef 2526]
Type = S
MoveType = A
Physics = N
anim = 1128

[State 1301, CA]
type = Changestate
trigger1 = p2stateno = 9010
value = 2527

[State 1301, CAAA]
type = SprPriority
trigger1 = time != 0
value = 0

[State 1301, CB]
type = HitDef
trigger1 = p2stateno != 2528
trigger1 = time = [0, 30]
attr = S, NA
damage    = 0
guardflag = L
hitflag = MA
priority = 3, Hit
pausetime = 0,0
numhits = 0
sparkno = -1
sparkxy = -10,-70
hitsound = S10,0
guardsound = -1
kill = 0
p2stateno = 2528

[State Destroy]
type = changestate
trigger1 = animtime = 0
trigger2 = root, movetype = H
trigger3 = moveguarded
trigger4 = root, movecontact
trigger5 = (p2movetype = H)&&(p2stateno!=2528)
value = 2527
;-------------------------------------------------------------------
[Statedef 2527];Change the slipping fool back to normal
Type = S
MoveType = A
Physics = N
anim = 1129

[State 1301, CAAA]
type = SprPriority
trigger1 = time != 0
value = 0

[State 1302, CB]
type = HitDef
trigger1 = p2stateno = 2528
attr = S, NA
damage    = 0
hitflag = MAFD
priority = 7, Hit
pausetime = 0,0
numhits = 0
sparkno = -1
sparkxy = -10,-70
hitsound = -1
guardsound = 6,0
kill = 0
p2stateno = 2529

[State 1302, CS]
type = destroyself
trigger1 = animtime = 0
;-------------------------------------------------------------------
[Statedef 2528];DUDE IS SLIPPING!
Type = S
MoveType = H
Physics = N
Velset = .25, 0, 0
anim = 100

[State 1303, CA]
type = Changeanim
triggerall = time = 0
trigger1 = !animexist(100)
value = 20

[State 1303, Change]
type = Changeanim
trigger1 = selfanimexist(21238)
triggerall = time = 0
value = 21238

[State 1303, CC]
type = Posset
trigger1 = Pos Y != 0
Y = 0

[State 1304, 1]
type = Selfstate
trigger1 = enemy, numhelper(1301) = 0
ctrl = 1
value = 0

;-------------------------------------------------------------------
[Statedef 2529];DUDE IS SLIPPING!
type = S
MoveType = H
Physics = N
Velset = 0
anim = 0

[State 1304, 1]
type = Selfstate
trigger1 = time = 0
trigger2 = movetype = H
ctrl = 1
value = 0
;============================================================
;end ground frezze
;============================================================
;Ice Shower
;============================================================
[StateDef 5200]
type    = S
movetype= A
physics = S
juggle  = 2
ctrl = 0
velset = 0,0,0
anim = 550

[State 5200, ZappySound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 4, 14
channel = 3
volume = 70

[State 5200, Za]
type = VelSet
trigger1 = time = 1
trigger2 = Vel Y != 0
y = 0

[State 181, DIED]
type = Explod
trigger1 = time = 6
anim = 888
id = 7088
pos = 16,10
postype = p1
facing = 1
sprpriority = 1
ownpal = 1
removetime = 420

[State 5200, 2at]
type = Explod
trigger1 = Animelem = 3
anim = 552
postype = p1
sprpriority  >= 2

[State 5200, ltFat]
type = Projectile
triggerall = AnimElem = 3
trigger1 = p2stateno != 12001
projanim = 551
offset = 0, 0
pos = 0*const(size.xscale),0 *const(size.xscale)
postype = P2
ID = 997
velocity = 0, 0
remvelocity = 0, 0
projremove = 0
projremovetime = 50
attr = S, SP
animtype = Hard
air.animtype = Back
air.fall = 1
numhits = 0
guardflag = HL
pausetime = 0,2
sparkno = -1
p2stateno = 12001
guard.sparkno = -1
hitsound   = s4,17
guardsound = s4,17
ground.type = High
ground.slidetime = 14
ground.hittime  = 16
air.juggle = 3
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 5200, BoltFat]
type = Projectile
triggerall = AnimElem = 3
trigger1 = p2stateno = 12001
projanim = 551
offset = 0, 0
pos = 0*const(size.xscale),0 *const(size.xscale)
POSTYPE = P2
ID = 997
velocity = 0, 0
remvelocity = 0, 0
projremove = 0
projremovetime = 50
attr = S, SP
animtype = Hard
air.animtype = Back
air.fall = 1
numhits = -1
guardflag = HL
pausetime = 0,2
sparkno = -1
p1stateno = 5201
p2stateno = 5206
guard.sparkno = -1
hitsound   = s4,17
guardsound = s4,17
ground.type = High
ground.slidetime = 14
ground.hittime  = 16
air.juggle = 3
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 5200, 10]
type = ChangeState
trigger1 = Movehit = 1
trigger1 = p2stateno = 12001
value = 551

[State 5200, 10]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0
------------
[Statedef 5206]
type = S
movetype= H
physics = N
velset = 0,0

[State 1005, CS]
type = SelfState
trigger1 = time = 0
trigger1 = Pos Y > -1
value = 0
ctrl = 1

[State 1005, CSZ]
type = Changestate
trigger1 = time = 0
trigger1 = Pos Y < 0
value = 1006
;--------------------------
; Double ice hits back
[Statedef 5201]
type    = S
movetype= H
physics = N
juggle  = 0
velset = 0,0
ctrl = 0
anim = 1010

[State 1009, Frosty color]
type = palFX
trigger1 = time != 0
add = 100,150,250
mul = 200,200,200
time = 2

[State 1009, VELSET]
type = velset
trigger1 = time = 0
X = 0
Y = 0

[State 1009, VELSET]
type = PosSet
trigger1 = time = 0
Y = 0

[State 1005, VEL1]
type = posadd
trigger1 = time = 0
trigger2 = time = 10
trigger3 = time = 20
X = 2.5

[State 1005, VEL2]
type = posadd
trigger1 = time = 5
trigger2 = time = 15
trigger3 = time = 25
X = - 2.5

[State 1005, CS]
type = SelfState
trigger1 = time = 200
trigger1 = Pos Y > -1
value = 0
ctrl = 1

[State 1005, CSZ]
type = Changestate
trigger1 = time = 200
trigger1 = Pos Y < 0
value = 1006
;============================================================
[StateDef 5210]
type    = S
movetype= A
physics = S
juggle  = 2
ctrl = 0
velset = 0,0,0
anim = 550

[State 5200, ZappySound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 4, 14
channel = 3
volume = 70

[State 5200, Za]
type = VelSet
trigger1 = time = 1
trigger2 = Vel Y != 0
y = 0

[State 181, DIED]
type = Explod
trigger1 = time = 6
anim = 888
id = 7088
pos = 16,10
postype = p1
facing = 1
sprpriority = 1
ownpal = 1
removetime = 420

[State 5200, 2at]
type = Explod
trigger1 = Animelem = 3
anim = 552
postype = p1
sprpriority  >= 2

[State 5200, ltFat]
type = Projectile
triggerall = AnimElem = 3
trigger1 = p2stateno != 12001
projanim = 551
offset = 80, 0
pos = 0*const(size.xscale),0 *const(size.xscale)
POSTYPE = P2
ID = 997
velocity = 0, 0
remvelocity = 0, 0
projremove = 0
projremovetime = 50
attr = S, SP
animtype = Hard
air.animtype = Back
air.fall = 1
numhits = 0
guardflag = HL
pausetime = 0,2
sparkno = -1
p2stateno = 12001
guard.sparkno = -1
hitsound   = s4,17
guardsound = s4,17
ground.type = High
ground.slidetime = 14
ground.hittime  = 16
air.juggle = 3
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 5200, BoltFat]
type = Projectile
triggerall = AnimElem = 3
trigger1 = p2stateno = 12001
projanim = 551
offset = 80, 0
pos = 0*const(size.xscale),0 *const(size.xscale)
POSTYPE = P2
ID = 997
velocity = 0, 0
remvelocity = 0, 0
projremove = 0
projremovetime = 50
attr = S, SP
animtype = Hard
air.animtype = Back
air.fall = 1
numhits = -1
guardflag = HL
pausetime = 0,2
sparkno = -1
p1stateno = 5201
p2stateno = 5206
guard.sparkno = -1
hitsound   = s4,17
guardsound = s4,17
ground.type = High
ground.slidetime = 14
ground.hittime  = 16
air.juggle = 3
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 5200, 10]
type = ChangeState
trigger1 = Movehit = 1
trigger1 = p2stateno = 12001
value = 551

[State 5200, 10]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0

;============================================================
[StateDef 5220]
type    = S
movetype= A
physics = S
juggle  = 2
ctrl = 0
velset = 0,0,0
anim = 550

[State 5200, ZappySound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 4, 14
channel = 3
volume = 70

[State 5200, Za]
type = VelSet
trigger1 = time = 1
trigger2 = Vel Y != 0
y = 0

[State 181, DIED]
type = Explod
trigger1 = time = 6
anim = 888
id = 7088
pos = 16,10
postype = p1
facing = 1
sprpriority = 1
ownpal = 1
removetime = 420

[State 5200, 2at]
type = Explod
trigger1 = Animelem = 3
anim = 552
postype = p1
sprpriority  >= 2

[State 5200, ltFat]
type = Projectile
triggerall = AnimElem = 3
trigger1 = p2stateno != 12001
projanim = 551
offset = -80, 0
pos = 0*const(size.xscale),0 *const(size.xscale)
POSTYPE = P2
ID = 997
velocity = 0, 0
remvelocity = 0, 0
projremove = 0
projremovetime = 50
attr = S, SP
animtype = Hard
air.animtype = Back
air.fall = 1
numhits = 0
guardflag = HL
pausetime = 0,2
sparkno = -1
p2stateno = 12001
guard.sparkno = -1
hitsound   = s4,17
guardsound = s4,17
ground.type = High
ground.slidetime = 14
ground.hittime  = 16
air.juggle = 3
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 5200, BoltFat]
type = Projectile
triggerall = AnimElem = 3
trigger1 = p2stateno = 12001
projanim = 551
offset = -80, 0
pos = 0*const(size.xscale),0 *const(size.xscale)
POSTYPE = P2
ID = 997
velocity = 0, 0
remvelocity = 0, 0
projremove = 0
projremovetime = 50
attr = S, SP
animtype = Hard
air.animtype = Back
air.fall = 1
numhits = -1
guardflag = HL
pausetime = 0,2
sparkno = -1
p1stateno = 5201
p2stateno = 5206
guard.sparkno = -1
hitsound   = s4,17
guardsound = s4,17
ground.type = High
ground.slidetime = 14
ground.hittime  = 16
air.juggle = 3
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 5200, 10]
type = ChangeState
trigger1 = Movehit = 1
trigger1 = p2stateno = 12001
value = 551

[State 5200, 10]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0
;--------------------------------------

[Statedef 2530]
type    = S
movetype= A
physics = S
juggle  = 10
ctrl = 0
velset = 0,0,0
anim = 1130

[State 9200, 1.5]
type = Playsnd
trigger1 = animelem = 3
value = F5,15

[State 9200, 2]
type = HitDef
trigger1 = !movecontact
attr = S, NA
animtype  = Back
damage    = 250, 50
guardflag = HL
hitflag = MAF
pausetime = 0,2
sparkno = 15
sparkxy = 0,-95
guard.sparkno = -1
hitsound = 5,0
guardsound = 5,14
ground.type = High
ground.slidetime = 30
p2facing = 1
guard.ctrltime = 20
guard.slidetime = 20
ground.hittime  = 30
ground.velocity = -5,-6
air.velocity = -6,-6
air.hittime = 17
ground.cornerpush.veloff = -35
fall.recover = 0
envshake.time = 15
envshake.freq = 70
envshake.ampl = 7
yaccel = 0.45
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)
priority = 1, Miss

[State 9200, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;-------------------------
[StateDef 2531]
type    = S
movetype= A
physics = S
ctrl = 0
anim = 1131

[State 700, 134]
type = poweradd
trigger1 = Time = 0
value = -750

[State 107, explod]
type = Explod
trigger1 = time >= 0
anim = 888
id = 7080
removetime = 39

[State 700, 1]
type = PlaySnd
trigger1 = Time = 10
trigger2 = Time = 30
value = 5, 22

[State 700, 134]
type = changeanim
trigger1 = animTime = 0
trigger1 = anim = 1131
value = 1134

[State 700, 2]
type = PosAdd
trigger1 = animelem = 1
trigger1 = anim = 1134
X = (P2Dist X) + 30

[State 700, 2234]
type = Turn
trigger1 = animelem = 1
trigger1 = anim = 1134

[State 1100, aAccell]
type = VelAdd
trigger1 = Time < 46
trigger1 = Time > 33
x = 10

[State 1100, aAccell]
type = Velset
trigger1 = Time < 46
trigger1 = movehit
x = 5

[State 1100, aAccell]
type = Velset
trigger1 = animelem = 13
trigger2 = moveguarded
x = 0

[State 201, 1]
type = HitDef
trigger1 = !MoveContact
attr = S, SA
animtype  = back
damage    = 250, 125
guardflag = H
hitflag = MAF
sparkno = -1
guard.sparkno = -1
hitsound   = 5,0
guardsound = 5,14
ground.type = High
yaccel = 0.5
p2facing = 1
p2stateno = 2532
fall = 1
fall.recover = 0
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 700, 4]
type = ChangeState
trigger1 = AnimTime = 0
trigger1 = anim = 1134
ctrl = 1
value = 0

[Statedef 2532]
type    = S
movetype= H
physics = N
anim = 5030
ctrl = 0

[State 210, 1]
type = velset
trigger1 = time = 1
x = -15
Y = -2

[State 3105, end]
type = Selfstate
trigger1 = time = 10
value = 5050

[StateDef 2533]
type    = S
movetype= A
physics = S
ctrl = 0
anim = 1131

[State 700, 134]
type = poweradd
trigger1 = Time = 0
value = -750

[State 107, explod]
type = Explod
trigger1 = time >= 0
anim = 888
id = 7080
removetime = 39

[State 2000, 0.6]
type = ScreenBound
trigger1 = time = [1, 1000]
value = 0
movecamera = 0,0

[State 700, 1]
type = PlaySnd
trigger1 = Time = 10
trigger2 = Time = 30
value = 5, 22

[State 700, 134]
type = changeanim
trigger1 = animTime = 0
trigger1 = anim = 1131
value = 1133

[State 700, 2]
type = PosAdd
trigger1 = animelem = 1
trigger1 = anim = 1133
X = (P2Dist X) + 30

[State 700, 2234]
type = Turn
trigger1 = animelem = 1
trigger1 = anim = 1133

[State 2, Upperblood]
type = Helper
trigger1 = movehit
trigger1 = numhelper(28) < 1
ID = 28
stateno = 28
pos = 0, 0
postype = p1
persistent = 0
ignorehitpause = 1

[State 410, 2]
type = HitDef
trigger1 = !MoveContact
attr = C, NA
damage    = 220, 110
animtype  = Back
hitflag = MAF
guardflag = HL
pausetime = 7,2
sparkno = 15
sparkxy = 0,-95
guard.sparkno = -1
hitsound   = 5,0
p2facing = 1
guardsound = 5,14
ground.cornerpush.veloff = -30
ground.type = High
guard.ctrltime = 20
guard.slidetime = 20
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -1,-11
air.velocity = -1.8,-12
yaccel = 0.38
envshake.time = 15
envshake.freq = 70
envshake.ampl = 7
fall.recover = 0
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)
priority = 1, Miss

[State 201, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;============================================================

[StateDef 2534]
type    = S
movetype= A
physics = S
juggle  = 2
velset = 0,0
anim = 3000
ctrl = 0

[State 10000, open]
type = PlaySnd
trigger1 = AnimElem = 4
value = 5, 1

[State 1000, nonkilling helper]
type = helper
trigger1 = time = 15
stateno = 2535
name = "estrella1"
id = 131302
pos = 50*const(size.xscale), -105*const(size.xscale)
postype = p1

[State 1000, nonkilling helper]
type = helper
trigger1 = time = 10
stateno = 2535
name = "estrella1"
id = 131302
pos = 40*const(size.xscale), -83*const(size.xscale)
postype = p1
.
[State 1000, nonkilling helper]
type = helper
trigger1 = time = 5
stateno = 2535
name = "estrella2"
id = 131302
pos = 30*const(size.xscale), -55*const(size.xscale)
postype = p1

[State 1000, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 2535]
type    = S
movetype= A
physics = N
poweradd= 120
velset = 9,0
anim = 2501
ctrl = 0

[State 2002]
type = AfterImage
trigger1 = time = 0
PalBright   =   0,  0,  0
PalContrast = 0, 0, 0
Trans = Add1
time = 40

[State 1200, BoltFat]
type = HitDef
trigger1 = time = 0
attr = S, SP
damage    = 100, 50
animtype = Light
air.animtype = Back
hitflag = MAFD
guardflag = HL
pausetime = 0,2
sparkno = 3
sparkxy = -30,0
guard.sparkno = -1
hitsound   = S88,0
guardsound = 5,14
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -5,0
air.velocity = -4,-5
yaccel = 0.5
air.fall = 1
fall.recover = 0
air.juggle = 3
p2stateno = 21238
kill       = root, Var(9) = 0
fall.kill  = root, Var(9) = 0
guard.kill = root, Var(9) = 0

[State 1001, gone]
type = Destroyself
trigger1 = movecontact
trigger2 = time = 90
;--------------------------------

[StateDef 1388]
type    = S
movetype= A
physics = S
juggle  = 3
poweradd= 10
ctrl = 0
anim = 678
sprpriority = 2

[State -3]
type = Explod
triggerall = Var(10) = 7
trigger1 = anim = 678
trigger1 = TimeMod=2,1
anim = 493
name = "humoarriba"
pos = -0,-90;0, -90
postype = p1
bindtime = 1
vel = 1, -1
random = 30, 70
removetime = -2
sprpriority = -1

[State -3]
type = Explod
triggerall = Var(10) = 7
trigger1 = anim = 678
trigger1 = TimeMod=2,1
anim = 493
name = "humoarriba"
pos = -0,-90;0, -90
postype = p1
bindtime = 1
vel = -1, -1
random = 30, 70
removetime = -2
sprpriority = 3

[State -3]
type = Explod
triggerall = Var(10) = 7
trigger1 = anim = 678
trigger1 = TimeMod=2,1
anim = 493
name = "humoarriba"
pos = -0,-90;0, -90
postype = p1
bindtime = 1
vel = -0.7, -1.3
random = 30, 70
removetime = -2
sprpriority = -1

[State -3]
type = Explod
triggerall = Var(10) = 7
trigger1 = anim = 678
trigger1 = TimeMod=2,1
anim = 493
name = "humoarriba"
pos = -0,-90;0, -90
postype = p1
bindtime = 1
vel = 0.6, -1.6
random = 30, 70
removetime = -2
sprpriority = 3

[State 1000, bber]
type = PlaySnd
trigger1 = Time = 1
value = 0, 4
volume = 70

[State 1300, gibber]
type = PlaySnd
trigger1 = Time = 1
value = 4, 18

[State 1300, down]
type = VelSet
trigger1 = Time = 1
y = 6

[State 1300, posadd]
type = PosAdd
trigger1 = Time = 10
X = (P2Dist X) + 25

[State 1300, upsy]
type = Velset
trigger1 = Time = 10
y = -6

[State 1300, turn]
type = Turn
trigger1 = Time = 11

[State 1300, change]
type = ChangeState
trigger1 = Time = 18
value = 50
ctrl = 1

;------------------------------

[Statedef 2536]
type    = S
movetype= A
physics = S
juggle  = 5
ctrl = 0
anim = 1135
sprpriority = 2

[State 430, 1]
type = PlaySnd
trigger1 = Time = 1
value = F5, 15

[State 430, 2]
type = HitDef
trigger1 = !MoveContact
attr = C, NA
damage    = 360, 90
animtype  = Back
hitflag = MAF
guardflag = HL
pausetime = 0,2
p1stateno = 2537
sparkno = 15
sparkxy = 0,-95
guard.sparkno = -1
hitsound   = 5,0
p2facing = 1
guardsound = 5,14
ground.cornerpush.veloff = -30
ground.type = High
guard.ctrltime = 20
guard.slidetime = 20
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -2,-11.5
air.velocity = -2.3,-12
yaccel = 0.38
envshake.time = 15
envshake.freq = 70
envshake.ampl = 7
fall.recover = 0
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)
priority = 1, Miss

[State 430, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;--------------------------------
[Statedef 2537]
type    = S
movetype= I
physics = S
ctrl = 0
anim = 1136

[State 10211, toasty]
type = Playsnd
trigger1 = time = 15
trigger1 = p2stateno != 9010
trigger1 = var(45)  = [120, 130]
value = F5,39
volume = 150

[State 431, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----rain's-rain------------------
[Statedef 2538]
anim = 888
ctrl = 0

[State 7200, izq]
type = helper
;trigger1 = time%20 = 0
trigger1 = time = 0
trigger2 = time = 10
trigger3 = time = 23 ; 10+13
trigger4 = time = 39 ; 23+16
trigger5 = time = 58 ; 39+19
trigger6 = time = 80 ; 58+22
trigger7 = time = 105; 80+25
trigger8 = time = 135; 105+30
postype = p1
pos = (random%50)+5,15+random%5
stateno = 2539
facing = -1

[State 7200, der]
type = helper
;trigger1 = time%20 = 10
trigger1 = time = 5
trigger2 = time = 15
trigger3 = time = 28 ; 15+13
trigger4 = time = 45 ; 28+16
trigger5 = time = 64 ; 45+19
trigger6 = time = 86 ; 64+22
trigger7 = time = 111; 86+25
trigger8 = time = 141; 111+30
postype = p1
pos = -(random%50)-5,15+random%5
stateno = 2539

[State 6500, destroy]
type = destroyself
trigger1 = time > 110
;-----rain
[Statedef 2539]
anim = 888
ctrl = 0

[State 7200, gota de sangre]
type = Explod
trigger1 = time = 0
anim = 1242
postype = p1
sprpriority = 4
bindtime = -1
facing = -1
removetime = 52

[State 7200, vel]
type = veladd
trigger1 = time > 1
trigger1  = pos Y < 0
Y = .4

[State 6000, 5]
type = Changestate
trigger1 = vel Y > 0
trigger1  = pos Y > 0
value = 1812
;----------------end-rain----------;

[Statedef 2540]
type    = S
movetype= A
physics = S
juggle  = 5
ctrl = 0
velset = 0,0,0
anim = 1138

[State 181, DID]
type = Explod
trigger1 = animelem = 5
anim = 888
ID = 989
pos = 18,10
postype = p1
facing = 1
sprpriority = 1
ownpal = 1
removetime = 400

[State 201, 347]
type = EnvShake
trigger1 = time = 0
time = 15
freq = 70
ampl = 7

[State 0, LifeAdd]
type = LifeAdd
trigger1 = time = 30
value = 300
absolute = 1

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 1137
pos = 0,0
postype = p1
facing = 1
bindtime = 1
vel = 0,0
removetime = -2
sprpriority = 0
ontop = 1

[State 2, blood111]
type = Helper
trigger1 = time = 10
trigger1 = numhelper(2538) < 1
ID = 2538
stateno = 2538
pos = 0, -500
postype = p1
persistent = 0
ignorehitpause = 1

[State 12440, 1.5]
type = Playsnd
trigger1 = animelem = 1
value = 4,4

[State 12440, 2]
type = HitDef
trigger1 = !movecontact
attr = S, NA
animtype  = Back
damage    = 90, 45
guardflag = HL
hitflag = MAF
pausetime = 0,2
sparkno = -1
sparkxy = 0,-95
guard.sparkno = -1
hitsound = -1
guardsound = -1
ground.type = High
ground.slidetime = 30
p2facing = 1
guard.ctrltime = 20
guard.slidetime = 20
ground.hittime  = 30
ground.velocity = -5,-6
air.velocity = -5,-6
air.hittime = 17
ground.cornerpush.veloff = -35
fall.recover = 0
envshake.time = 15
envshake.freq = 70
envshake.ampl = 7
yaccel = 0.45
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)
priority = 1, Miss

[State 12440, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;--------------------------------------

[Statedef 2541]
type    = S
movetype= A
physics = S
juggle  = 5
ctrl = 0
velset = 0,0,0
anim = 1140

[State 181, DID]
type = Explod
trigger1 = animelem = 5
anim = 888
ID = 989
pos = 18,10
postype = p1
facing = 1
sprpriority = 1
ownpal = 1
removetime = 400

[State 0, LifeAdd]
type = LifeAdd
trigger1 = time = 30
value = 300
absolute = 1

[State 201, 347]
type = EnvShake
trigger1 = time = 5
time = 15
freq = 70
ampl = 7

[State 2, blood111]
type = Helper
trigger1 = time = 0
trigger1 = numhelper(2542) < 1
ID = 2542
stateno = 2542
pos = 0, 0
postype = p1
persistent = 0
ignorehitpause = 1

[State 12440, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;---------------------------------

[Statedef 2542]
type    = S
movetype= A
physics = S
juggle  = 5
ctrl = 0
velset = 0,0,0
anim = 1141
sprpriority = 9

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 1139
pos = 0,0
postype = p1
bindtime = 1
vel = 0,0
removetime = -2
ontop = 1
removeongethit = 0

[State 12440, 1.5]
type = Playsnd
trigger1 = time = 0
value = 5,12

[State 12440, 2]
type = HitDef
trigger1 = !movecontact
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage    = 190, 60                   ;Damage that move inflicts
animtype = Back                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
air.animtype = Back
guardflag = HL
hitflag = MAF
ground.cornerpush.veloff = 0
priority = 2, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default
pausetime = 0,2                  ;Time attacker pauses, time victim shakes
sparkno = -1
sparkxy = -10,-105
guard.sparkno = -1
hitsound = -1
guardsound = -1
p2facing = 1
ground.type = HIGH                 ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 5
ground.hittime  = 20
guard.velocity = -15
guard.slidetime = 20
guard.ctrltime = 20
ground.velocity = -10,-4              ;Time to regain control after guard (def: guard.slidetime)
guard.velocity = -2
air.velocity = -10, -4
airguard.velocity = -1.9            ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.fall = 1
fall.recover = 0
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)
envshake.time = 13
envshake.freq = 50
envshake.ampl = 5

[State 0, DestroySelf]
type = DestroySelf
trigger1 = time = 40
;----------------------------------

[StateDef 2543]
type    = A
movetype= A
physics = A
ctrl = 0
velset = -2,-8

[State hit]
type = nothitby
trigger1 = time <= 10
value = SCA

[State 1001, 10a]
type = Changeanim
trigger1 = Time = 1
value = 1072

[State 1001, 10]
type = VelAdd
trigger1 = Time = [2, 7]
x = -0.2

[State 1001, 210]
type = VelSet
trigger1 = Pos Y <= -90
trigger1 = time >= 2
trigger1 = time <= 15
Y = 0

[State 1001, 10]
type = PosAdd
trigger1 = Time = 2
y = -45

[State 1200, at]
type = Explod
trigger1 = time = 0
trigger2 = movecontact
anim = 1142
postype = p1
sprpriority  >= 2
size.shadowoffset = -1000

[State 1001, 210]
type = VarSet
trigger1 = var(46) = 0
trigger2 = var(46) = 1
V = 46
value = (var(46)=0)*2 + (var(46)=1)*3

[State 1200, ZappySound]
type = PlaySnd
trigger1 = time = 1
trigger2 = p2stateno = 12001
trigger2 = time = 0
trigger3 = moveguarded
trigger3 = time = 0
value = 4, 22
channel = 3

[State ]
type = Helper
trigger1 = time = 0
trigger1 = numhelper(7003) < 1
helpertype = Normal
ID = 7003
name = "clone"
postype = p1
pos = 0,0
stateno = 2544
ownpal = 1
size.shadowoffset = -1000
;-------------------------
[Statedef 2544]
type    = A
movetype= A
physics = N
ctrl = 0
velset = 0,0

[State 1001, 10a]
type = Changeanim
trigger1 = Time = 0
value = 1143

[State 1200, BoltFat]
type = HitDef
trigger1 = animelem  = 1
triggerall = p2stateno != 12001
triggerall = p2stateno != 1001
attr = S, SP
animtype = Hard
air.animtype = Back
air.fall = 1
numhits = 0
guardflag = HL
pausetime = 0,2
sparkno = -1
p2stateno = 12001
guard.sparkno = -1
hitsound   = s4,17
guardsound = s4,17
ground.type = High
ground.slidetime = 1
ground.hittime  = 1
air.juggle = 3
kill       = parent,Var(9) = 0
fall.kill  = parent,Var(9) = 0
guard.kill = parent,Var(9) = 0

[State 1005, Frosty color]
type = palFX
trigger1 = 1
add = 100,150,250
mul = 200,200,200
time = 100

[State ]
type = varset
trigger1 = time <= 0
var(0) = parent,anim

[State ]
type = varset
trigger1 = time <= 0
var(1) = parent,animelemno(0)

[State ]
type = playerpush
trigger1 = 1
value = 0

[State ò_ó]
type = Helper
trigger1 = time = 0
trigger1 = numhelper(7004) < 1
id = 7004
Postype = p1
pos = 0,0
stateno = 2545
ownpal = 1

[State end]
type = destroyself
trigger1 = time = 200
trigger2 = moveguarded
trigger3 = moveguarded
trigger3 = time >= 10
trigger4 = movecontact

;----------------------------------------------------
[Statedef 2545]
type    = A
movetype= I
physics = N
ctrl = 0
velset = 0,0

[State 1009, Frosty color]
type = palFX
trigger1 = 1
add = 100,150,250
mul = 200,200,200
time = 2

[State ]
type = playerpush
trigger1 = 1
value = 0

[State ]
type = changeanim
trigger1 = 1
value = parent,var(0)
elem = parent,var(1)

[State gethit]
type = nothitby
trigger1 = 1
persistent = 1
value = SCA

[State 1200, at]
type = Explod
trigger1 = time = 200
trigger2 = p2stateno = 12001
trigger3 = numhelper(7003) < 1
anim = 1142
postype = p1
sprpriority  >= 2

[State 1200, Zand]
type = PlaySnd
trigger1 = time = 200
trigger2 = moveguarded
value = 4, 22

[State end]
type = destroyself
trigger1 = numhelper(7003) < 1

