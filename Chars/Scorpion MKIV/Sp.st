[Statedef 1100];teleport atras
type    = S
movetype= I
physics = N
juggle  = 1
anim = 1040
Velset = 0, 0
ctrl = 0

[State -3]
type = Explod
trigger1 = anim = 1040
trigger1 = TimeMod=2,1
anim = 1051
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
trigger1 = anim = 1040
trigger1 = TimeMod=2,1
anim = 1051
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
trigger1 = anim = 1040
trigger1 = TimeMod=2,1
anim = 1051
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
trigger1 = anim = 1040
trigger1 = TimeMod=2,1
anim = 1051
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
value = 1102

[State 2000, 6.1]
type = Changestate
trigger1 = time > 22
trigger1 = Pos Y = 0
trigger2 = Pos Y > 0
value = 0
ctrl = 1
;------------------------------------------------------------------------------------------
[Statedef 1102]
type    = S
movetype= A
physics = N
juggle = 6
anim = 1050
Velset = 0, 0
ctrl = 0

[State -3]
type = Explod
trigger1 = anim = 1050
trigger1 = TimeMod=2,1
anim = 1051
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
trigger1 = anim = 1050
trigger1 = TimeMod=2,1
anim = 1051
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
trigger1 = anim = 1050
trigger1 = TimeMod=2,1
anim = 1051
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
trigger1 = anim = 1050
trigger1 = TimeMod=2,1
anim = 1051
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
value = 1050

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
;p2facing = 1
p2stateno = 1074

[State 1050, 5]
type = PosSet
trigger1 = MoveGuarded = 1
Y = -5

[State 1050, 6]
type = Changestate
trigger1 = MoveGuarded = 1
value = 1103

[State 181, DIED]
type = Explod
trigger1 = time = 7
;trigger1 = numexplod(7089) = 0
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
;anim = 21238

[State 1001, 10]
type = turn
;triggerall = time = 0
trigger1 = p2bodydist X < 0

[State 1050, 7]
type= changestate
trigger1 = time = 3;p2bodydist X > 0;time = 1
value = 21238
;---------------------
[StateDef 1103]; Blocked
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
;-------------fin teleport atras
[Statedef 1200];teleport adelante
type    = A
movetype= A
physics = A
anim = 1050
Velset = 0, -6
juggle = 6
ctrl = 0

[State -3]
type = Explod
trigger1 = anim = 1050
trigger1 = TimeMod=2,1
anim = 1051
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
trigger1 = anim = 1050
trigger1 = TimeMod=2,1
anim = 1051
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
trigger1 = anim = 1050
trigger1 = TimeMod=2,1
anim = 1051
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
trigger1 = anim = 1050
trigger1 = TimeMod=2,1
anim = 1051
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
value = 1103

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

;------------------------------------------------------
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
value = 4,4

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
trigger1 = p2name = "scorpion"
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
anim = 1003
Velset = 0, 0
ctrl = 0

[State -3]
type = Explod
trigger1 = anim = 1003
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
value = 1003

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
;-------------------------------------------
[Statedef 1099];queda vulnerable
type    = S
movetype= A
physics = S
anim = 1001

[State 1030, 1.4]
type = Changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

;fin spear suelo

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
value = 4,4

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
damage    = 80,20;80*(1.5**(-0.6*(var(11)))),20
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
;numhits = 1-1*(numpartner = 0 & numenemy = 1)

[State 800, 2]
type = ChangeState
trigger1 = NumProj = 0 & time >10 & p2stateno != 1302
value = 1399
;-------------

[Statedef 1301]
type    = A;S
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
removetime = 1820

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
;pos = 0,100;-10*(time <= 30)+87*(animtime = 0), 10+90*(animtime = 0)

[State 2000, 0.6]
type = ScreenBound
trigger1 = time = [1, 1000]
value = 0
movecamera = 0,0

[State 2000, 0.5]
type = Playsnd
trigger1 = animelem = 1
trigger2 = animelem = 9
value = 4,19

[State 2000, 0.5]
type = Playsnd
trigger1 = animelem = 4
value = 9,2

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
value = 1304+var(52)*10000

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
anim = 5170+var(52)*10000

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
anim = 5110+var(52)*10000
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
trigger1 = 1;time > 10
y = .35

[State 1028, Anim 5050] ;Self falling animation
type = ChangeAnim
trigger1 = Time = 0
value = 5050+var(52)*10000

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
;--------------------------

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

[State 181, ED]
type = Explod
trigger1 = animelem = 1
anim = 43050
id = 7088
pos = 168,100
postype = left
facing = 1
sprpriority = 1
ownpal = 1
removetime = 220

[State 181, ED]
type = Explod
trigger1 = time = 1
anim = 43050
id = 89
pos = 168,100
postype = left
facing = 1
sprpriority = 1
ownpal = 1
removetime = 550

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
value = 0
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

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = time = 28
value = 34441

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = time = 47
value = 34442

[State 0, Explod]
type = Explod
trigger1 = time = 24
anim = 3443
pos = 0,0
postype = p1
shadow = 0,0,0

[State 0, Explod]
type = Explod
trigger1 = anim = 34441
anim = 3448
name = "sasa"
pos = 54,-92
postype = p1
bindtime = 1
vel = 9-(random%30)/10.0 , 3-(random%30)/10.0
removetime = -2
sprpriority = 3

[State -3]
type = Explod
trigger1 = anim = 34441
anim = 3448
name = "safa"
pos = 54,-92
postype = p1
bindtime = 1
vel = 8-(random%30)/10.0 , 4-(random%30)/10.0
removetime = -2
sprpriority = 3

[State -3]
type = Explod
trigger1 = anim = 34441
anim = 3448
name = "sasa"
pos = 55,-94
postype = p1
bindtime = 1
vel = 9-(random%30)/10.0 , 3-(random%30)/10.0
removetime = -2
sprpriority = 3

[State -3]
type = Explod
trigger1 = anim = 34441
anim = 3448
name = "safa"
pos = 55,-94
postype = p1
bindtime = 1
vel = 8-(random%30)/10.0 , 5-(random%30)/10.0
removetime = -2
sprpriority = 3

[State 240, 1.5]
type = Playsnd
trigger1 = time = 25
value = 91,3

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
pos = 0,-70;0, -90
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
pos = 0,-70;0, -90
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
ground.cornerpush.veloff = -10
guardsound = 5,14
ground.type = High                 ;Type: High, Low, Trip (def: Normal)
p2facing = 1
guard.velocity = 0
guard.slidetime = 20
guard.ctrltime = 20
ground.hittime  = 30
air.velocity = -2, 1
air.hittime = 17
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

[StateDef 2600]    ;cuchillasoxfgdgsegsduedbhsadfxyz
type    = A
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
value = 4, 19

[State 1000, 10]
type = HitDef
trigger1 = !movecontact
attr = S, SA
animtype  = back
damage    = 250, 70
guardflag = M
hitflag = MAF
pausetime = 0,2
sparkno = -1
guard.sparkno = -1
hitsound   = s88,0
guardsound = 5,14
air.velocity = -4,-4
air.hittime = 17
fall.recover = 0
p1stateno = 2601;012
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

;sangre de golpe con cuchillo
[StateDef 2601]
type    = S
movetype= I
physics = S
juggle  = 2
;velset = 0,0
ctrl = 0

[State 2, Roundhouseblood]
type = Helper
trigger1 = time = 0
trigger1 = numhelper(29) < 1
ID = 29
stateno = 29
pos = 0, 0
postype = p1
persistent = 0
ignorehitpause = 1

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
value = 7, 1

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
value = 7,4

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
value = 7,3

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
value = 7,2

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
