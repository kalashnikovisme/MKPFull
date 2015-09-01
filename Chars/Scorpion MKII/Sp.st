[Statedef 1100];teleport atras
type    = S
movetype= I
physics = N
juggle  = 1
anim = 1040
Velset = 0, 0
ctrl = 0

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
;---------------
[Statedef 1000];spear
type    = S
movetype= A
physics = S
;juggle  = 1
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
triggerall = Time >= 100
trigger1 = p2stateno != 1020
trigger1 = p2stateno != 1021
value = 0
ctrl = 1

[State 1000, 8]
type = Changestate
trigger1 = p2stateno = 1020
trigger1 = time = 60
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
trigger1 = animelem = 1
triggerall = Var(2) = [25, 50]
trigger1 = 1
value = 4, 12
volume = 50

[State 200, Plaay]
type = PlaySnd
trigger1 = animelem = 1
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
trigger1 = time > 50
value = 0
ctrl = 1
;---------------------------------------------------------------------------
; The flying spear
[Statedef 1010]
type    = S
movetype= A
physics = N
velset = 7,0
anim = 1001
ctrl = 0

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
trigger1 = timemod = 4,0
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
trigger1 = p2stateno != 9010
trigger1 = p2stateno != 5120
trigger1 = root,numexplod(7088) < 2
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
kill       = root, Var(9) = 0
fall.kill  = root, Var(9) = 0
guard.kill = root, Var(9) = 0


[State 1010, 4]
type = Changestate
trigger1 = MoveGuarded = 1
value = 1013

[State 1030, 1.54]
type = Destroyself
trigger1 = time = 250

;---------------------------------------------------------------------------
;The hidden Rope
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
;The Rope Becomes visible
[Statedef 1012]
type    = S
movetype= I
physics = N
anim = 1002
ctrl = 0

;[State 1030, 1]
;type = PosAdd
;trigger1 = timemod = 5,0
;trigger1 = time = [0, 50]
;Y = 1

;[State 1030, 1.1]
;type = Posadd
;trigger1 = timemod = 5,4
;trigger1 = time = [0, 50]
;Y = -1

[State 1030, 1.54]
type = Destroyself
trigger1 = time = 150


[State 1011, 1]
type = Destroyself
trigger1 = p2stateno = 1021
trigger2 = Parentdist X = [-10, 10]
trigger2 = Parent, Vel X = -8
;------------------------------------------------------------------------
; WBJ's Less cheap thingy
[Statedef 1013]
type    = S
movetype= I
physics = N
anim = 10151
Velset = 0,0
ctrl = 0
sprpriority = -1

[State 1030, 1234]
type = PosSet
trigger1 = Animelem = 1
Y = -39 

[State 1013, 1]
type = Destroyself
trigger1 = animtime = 0
;---------------------------------------------------------------------------
; P2's hit by spear state
[Statedef 1020]
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

[State 1020, 1.123]
type = PosSET
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

;[State 1021, 1234]
;type = ChangeState
;trigger1 = p2statetype = A
;trigger1 = time = 1
;value = 0
;ctrl = 1

[State 1021, 3]
type = Selfstate
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
;Spear latching onto target
[Statedef 1030]
type    = S
movetype= A
physics = N
;juggle  = 1
anim = 1003
Velset = 0, 0
ctrl = 0

[State 2, blood111]
type = Helper
trigger1 = time = 10
trigger1 = numhelper(27) < 1
ID = 27
stateno = 27
pos = 70, 95
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
pos = 70, 115
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
pos = 70, 115
postype = p1
persistent = 0
vel = 2,0
ignorehitpause = 1
facing = -1


[State 1030, 1]
type = targetbind
trigger1 = p2stateno = 1020
pos = 0,95

;[State 1030, 1]
;type = PosAdd
;trigger1 = timemod = 10,0
;trigger1 = time = [0, 50]
;Y = -.5

;[State 1030, 1.1]
;type = Posadd
;trigger1 = timemod = 10,4
;trigger1 = time = [0, 50]
;Y = .5

[State 1030, 1.01]
type = Velset
trigger1 = time = 50
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
trigger1 = Parent, stateno != [1000, 1030]

;-------------------------------------------------------
[Statedef 1090]
type    = A
movetype= A
physics = S
juggle  = 14
velset = 0,0
ctrl = 0
anim = 2000
;sprpriority = 2

[State 610, 1.5]
type = turn
trigger1 = time = 0
trigger1 = P2Dist X < -30

[State 2000, 0.5]
type = Playsnd
trigger1 = animelem = 2
value = 4,4

[State 3010, Fire]
type = explod
trigger1 = animelem = 2
anim = 2021
ID = 2021
pos = 0,0
vel = 6,6
postype = p1
;ontop = 1
sprpriority = 1
removetime = 200

[State 800, 1]
type = HitDef
Trigger1 = animelem = 3
pausetime = 0,2
attr = S, NA          ;Attributes: Standing, Normal Throw
hitflag = MAF            
guardflag = HLM
priority = 1, Miss    ;Throw has low priority, must be miss or dodge type.
damage = 230,57
hitsound   = S88,0
guardsound = 5,14
hitonce  = 1
sparkno = -1          ;No spark
sprpriority = -1      ;Draw in front of p2
p2facing = -1       ;Force p2 to face KFM
p1stateno = 1081       ;On success, KFM changes to state 810
p2stateno = 1082       ;If hit, p2 changes to state 820 in KFM's cns
guard.dist = 0        ;This prevents p2 from going into a guard state if close
fall.recover = 0
air.juggle = 14
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 810, nd]
type = VelAdd
trigger1 = Animelem =  6
trigger2 = Animelem =  7
Y = 4

[State 800, 2]
type = ChangeState
trigger1 = Pos Y >= -6
value = 52
ctrl = 1

;-------------

[Statedef 1081]
type    = S
movetype= A
physics = N
anim = 2010

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

[State 3010, Fe]
type = PosAdd
trigger1 = time = 0
Y = -20

[State 820, 1]
type = Sprpriority
Trigger1 = Time = 0
value = -2

[State 3010, Fire]
type = removeexplod
trigger1 = 1
ID = 2021

[State 2000, 0.5]
type = Playsnd
trigger1 = animelem = 2
value = 1,0

[State 810, Bind 7]
type = TargetBind
trigger1 = time <= 30
pos = -10, 10

[State 810, nd]
type = VelAdd
trigger1 = Animelem =  17
trigger2 = Animelem =  18
Y = 4

[State 2000, 0.5]
type = Playsnd
trigger1 = animelem = 1
trigger2 = animelem = 9
trigger3 = animelem = 13
triggerall = anim = 2010 
value = 4,19

[State 800, 2]
type = Changeanim
trigger1 = animtime = 0
trigger1 = anim = 2010
value = 2022

[State 800, 2]
type = ChangeState
;trigger1 = animtime = 0
trigger1 = Pos Y >= -6
value = 52
ctrl = 1

;-------------

[Statedef 1082]
type    = A
movetype= H
physics = N
velset = 0,0
;sprpriority = -1

[State 9010, 0.1]
type = Sprpriority
trigger1 = animtime = 0
value  = 5

[State 820, 134]
type = PosSet
Trigger1 = Time = 0
Y = 0

[State 820, 1344]
type = VelSet
Trigger1 = Time = 0
Y = 0
X = 0

[State 820, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 2020

[State 810, nd]
type = TURN
trigger1 = Animtime =  0

[State 821, 4] ;Hit ground
type = ChangeState
trigger1 = animtime =  0
value = 1083


[Statedef 1083]
type    = A
movetype= H
physics = N
velset = 0,0
;sprpriority = -1
anim = 5050

[State 9010, 0.1]
type = Sprpriority
trigger1 = animtime = 0
value  = 5

[State 820, 4351]
type = PosAdd
Trigger1 = 1
X = -80

[State 820, 4351]
type = VelAdd
Trigger1 = 1
x = -5
;y = -.3 

[State 821, 4] ;Hit ground
type = ChangeState
trigger1 = BackEdgeBodyDist <= 40
value = 1084
;------------------
[Statedef 1084]
type    = A
movetype= H
physics = N
anim = 5050

[State 1027, Sound]
type = PlaySnd
trigger1 = Time = 0
value = F5,21
volume = 100

[State 1027, Turn]
type = Turn
trigger1 = (Time = 55) && (FrontEdgeBodyDist <= 10)

[State 1027, Pos]
type = PosAdd
trigger1 = Time = 0
x = 15 - BackEdgeBodyDist

[State 1027, Stop moving]
type = PosFreeze
trigger1 = 1
x = 1
y = 1

[State 235, sssa]
type = envshake
trigger1 = time = 0
time = 15
freq = 150
ampl = 7


[State 1027, No scroll]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,1

;[State 1027, Anim]
;type = ChangeAnim2
;trigger1 = Time = 0
;value = 1027

[State 1027, State]
type = ChangeState
trigger1 = (Time <= 15) && (BackEdgeBodyDist <= 20)
value = 1085
;------------------
[Statedef 1085]
type    = A
movetype= H
physics = N

;[State 1028, 1]
;type = NotHitBy
;trigger1 = 1
;value = , NA, NP

[State 1028, Vel Y]
type = VelSet
trigger1 = Time = 0
y = -6

[State 1028, Vel X]
type = VelSet
trigger1 = Time = 0
x = 1.6

[State 1028, Turn]
type = Turn
trigger1 = (Time = 0) && (BackEdgeDist < 60)

[State 1028, Gravity]
type = VelAdd
trigger1 = 1
y = .35

[State 1028, Anim 5050] ;Self falling animation
type = ChangeAnim
trigger1 = Time = 0
trigger1 = !SelfAnimExist(5052)
value = 5050

[State 1028, Anim 5052] ;Self falling animation (diagup type)
type = ChangeAnim
trigger1 = Time = 0
trigger1 = SelfAnimExist(5052)
value = 5052

[State 1028, Anim 5060] ;Coming down - normal
type = ChangeAnim
trigger1 = Vel Y > -2
trigger1 = Anim = 5050
trigger1 = SelfAnimExist(5060)
persistent = 0
value = 5060

[State 1028, Anim 5062] ;Coming down - diagup type
type = ChangeAnim
trigger1 = Vel Y > -2
trigger1 = Anim = 5052
trigger1 = SelfAnimExist(5062)
persistent = 0
value = 5062

[State 1028, Hit ground]
type = SelfState
trigger1 = (Vel y > 0) && (Pos y >= 0)
value = 5100
;---fin spear

;--------------------------------------------------
[StateDef 2245]
type    = S
movetype= A
physics = S
juggle  = 4
ctrl = 0
anim = 2245

[State 1200, ZappySound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1, 0
volume = 100

[State 1200, Za]
type = VelSet
trigger1 = time = 1
trigger2 = Vel Y != 0
y = 0

[State 13130, BoltFat]
type = HitDef
trigger1 = time = 0
attr = S, NA
damage   = 298, 199
animtype = Back
hitflag = MAF ;HAF
guardflag = HL
pausetime = 0,2
sparkno = -1
spakxy = -18,-100
guard.sparkno = -1
hitsound  = 5,0
p2facing = 1
guardsound = 5,14
ground.cornerpush.veloff = -30
ground.type = High
guard.ctrltime = 20
guard.slidetime = 20
ground.slidetime = 20
ground.hittime = 20
ground.velocity = -1.2,-8;12
air.velocity = -1.2,-7;13
yaccel = 0.4
envshake.time = 15
envshake.freq = 70
envshake.ampl = 7
fall.recover = 0
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 2, Upperblood]
type = Helper
trigger1 = numhelper(28) < 1
trigger1 = movehit
ID = 28
stateno = 28
pos = 0, 0
postype = p1
persistent = 0
ignorehitpause = 1

[State 1200, 10]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0

[StateDef 1002]
type    = S
movetype= A
physics = S
juggle = 7
ctrl = 0
velset = 0,0,0
anim = 10151

[State 1200,10]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value =0