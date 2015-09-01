[StateDef 1000]; bola
type    = S
movetype= A
physics = S
juggle  = 4
ctrl = 0
velset = 0,0,0
anim = 1003

[State 1200, ZappySound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 4, 18
channel = 3
volume = 70

[State 1200, Za]
type = VelSet
trigger1 = time = 1
trigger2 = Vel Y != 0
y = 0

[State 1200, BoltFat]
type = Projectile
trigger1 = AnimElem = 2
projanim = 1016
offset = 20*const(size.xscale), -80*const(size.xscale)
ID = 997
velocity = 9, 0 
remvelocity = 0, 0
attr = S, SP
damage    = 195, 98
animtype = Light
air.animtype = Back
air.fall = 1
fall.recover = 0
guardflag = HL
pausetime = 0,2
sparkno = 6
guard.sparkno = 6
hitsound   = S4,12
guardsound = S4,12
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -15,0
air.velocity = -4,-6
air.fall = 1
fall.recover = 0
;air.juggle = 3
yaccel = 0.5
p2stateno = 21238
kill       = Var(9) = 0
fall.kill  = Var(9) = 0
guard.kill = Var(9) = 0


[State 1200, 10]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0
;------------
[StateDef 1300];bola aire
type    = S
movetype= A
physics = S
juggle  = 6
ctrl = 0
velset = 0,0,0
anim = 1300
sprpriority = 9

[State 1200, ZappySound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 4, 18
channel = 3
volume = 70

[State 88500, huck]
type = VelAdd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 4
X = -10

[State 1200, BoltFat]
type = Projectile
trigger1 = AnimElem = 3
projanim = 1016
ID = 997
velocity = 9, 0 
remvelocity = 0, 0
attr = S, SP
damage    = 195, 98
offset = 12*const(size.xscale), -95*const(size.xscale)
attr = S, SP
animtype = Light
air.animtype = Back
guardflag = HL
pausetime = 0,2
sparkno = 6
guard.sparkno = 6
hitsound   = S4,18
guardsound = S4,18
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -15,0
air.velocity = -4,-5
air.fall = 1
fall.recover = 0
yaccel = 0.5
p2stateno = 21238
kill       = Var(9) = 0
fall.kill  = Var(9) = 0
guard.kill = Var(9) = 0

[State 88500, NotFreindly]
type = VarSet
trigger1 = AnimElem = 4 
v = 5
value = 1

[State 88500, Fall]
type = ChangeState
trigger1 = AnimTime = 0
value = 1301
;--------------------
[Statedef 1301]; Drop
type    = A
movetype= I
physics = A
juggle  = 4
velset = 0,0
anim = 1301 
ctrl = 0

[State 1101]
type = Veladd
trigger1 = time > 0
y = .3
;------------------------telekinetik
[StateDef 1100]
type    = S
movetype= A
physics = S
juggle  = 20
ctrl = 0
velset = 0,0,0
anim = 1100

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
;triggerall = !movecontact
trigger1 = Animelem = 5
;trigger1 = p2statetype = S
;trigger2 = p2statetype = C
attr = S, NA;SA
animtype  = Light
damage = 150,0
guardflag = MA
hitflag = MAF 
pausetime = 8, 8  
sparkno = -1  
p2facing = 1  
ground.type = high   
guardsound = 5, 14  
guard.velocity = -8; 
guard.slidetime = 100;20         
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

;[State 1, 0]
;type = Nothitby
;trigger1 = 1
;value = ,AP

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
trigger1 = pos Y < -140;150
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
trigger1 = pos Y >= 0;> 2;< -150
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
trigger1 = time = 5;animelem = 2;9;15
y = -8

[State 3110, stop vel]
type = Veladd
trigger1 = time > 5
trigger1 = time < 38
y = 0.4
x = 0.2

[State 3110, stop vel]
type = Veladd;set
trigger1 = time > 37;= 38
y = 0.4
x = -0.2

;[State 1200, sound]
;type = PlaySnd
;trigger1 = time = 0;AnimElem = 1
;value = 3, (random%2)*2

[State 235, sssf]
type = envshake
trigger1 = time = 0;AnimElem = 1
time = 20
freq = 100
ampl = 4

[State 3110, chae]
type = selfstate;changestate
trigger1 = pos Y > -5
trigger1 = alive = 1
trigger1 = time > 20;animelem = 6
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
trigger1 = pos Y > 0;-2
trigger1 = alive = 0
value = 5100;050
;--------------
[Statedef 1113]
type    = S
movetype= I
physics = N
velset = 0,0
anim = 5100;5090

[State 1200, sound]
type = PlaySnd
trigger1 = time = 0
trigger1 = alive = 1
value = F7,0

[State 3120, change]
type = changeanim
trigger1 = animtime =0
trigger1 = alive = 1
trigger1 = time < 10;= 5
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
;trigger1 = time < 10;= 5
value = 5100;050

[State 3110, chae]
type = Selfstate
trigger1 = animtime = 0;pos Y > 0
trigger1 = time > 10;anim != 5090
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
; Fueguito Loko
;--------------------------------------------
[State 3010, Fire]
type = explod
trigger1 = Time = 0
trigger1 = Pos Y = 0
anim = F11
pos = 0,8
postype = p1
ontop = 1
removetime = 56
;--------------------------------------------
; explocion loka
;--------------------------------------------
[State 3010, Fire]
type = explod
trigger1 = Time = 0
trigger1 = Pos Y != 0
anim = F6
pos = 0,-50
postype = p1
ontop = 1
removetime = 42
;--------------------------------------------
[State 2000, 0.5]
type = Playsnd
trigger1 = time = 1
value = 4,14;0,4

[State 235, sssa]
type = envshake
trigger1 = time = 0
trigger1 = pos Y = 0
time = 10;15
freq = 100;150
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

[State 2000, 2]; vel x
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
p2stateno = 1274;21238;21242

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
