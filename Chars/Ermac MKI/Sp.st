;###################################
;Hado-Energy
;###################################
[StateDef 1000]
type    = S
movetype= A
physics = S
juggle  = 4
ctrl = 0
velset = 0,0,0
anim = 1003

;Flash Energy
[State 1000]
type = explod
trigger1 = AnimElem = 3
anim = 1006
postype= p1
ontop = 1
ownpal = 1

;Sombra Verde
[State 1000]
type = explod
trigger1 = AnimElem = 3
trigger1 = var(17) = 0
anim = 1007
postype = p1
ontop = 1
ownpal = 1

[State 1200, ZappySound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 4, 18
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
hitsound = 25,3
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
hitsound = 25,3
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
[StateDef 1300]
type    = S
movetype= A
physics = S
juggle  = 6
ctrl = 0
velset = 0,0,0
anim = 1300
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
anim = 1006
postype= p1
ontop = 1
ownpal = 1
pos = 0, -20

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

;hadokill
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

;Hado no kill
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
;triggerall = !movecontact
trigger1 = Animelem = 5
;trigger1 = p2statetype = S
;trigger2 = p2statetype = C
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
value = 25,3
;value = 4,14;0,4

;Sonido, Boom Verde - S only
[State 2000, 0.5]
type = Playsnd
trigger1 = time = 0
trigger1 = Pos Y = 0
trigger1 = var(17) = 0
value = 25,4
;value = 4,14;0,4

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
;###################################
;Invisibility [Unnoficial]
;###################################
[StateDef 1298]
type    = S
movetype= I
physics = S
ctrl = 0
velset = 0,0
anim = 1298

[State 1298]
type = varset
trigger1 = time = 25
v = 17
value = 1

[State 1298]
type = explod
trigger1 = time = 18
anim = 1600
ontop = 1
ownpal = 1
postype = p1

[state 1298]
type = playsnd
trigger1 = time = 24
value = 25,3
volume = 210

[state 1298]
type = playsnd
trigger1 = time = 23
value = 25,4

[State 1298]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1
;###################################
;Des-Invisibility
;###################################
[StateDef 1299]
type    = S
movetype= I
physics = S
ctrl = 0
velset = 0,0
anim = 1299

[State 1298]
type = varset
trigger1 = time = 3
v = 17
value = 0

[State 1298]
type = explod
trigger1 = time = 0
anim = 1600
ontop = 1
ownpal = 1
postype = p1

[state 1298]
type = playsnd
trigger1 = time = 1
value = 25,3
volume = 210

[state 1298]
type = playsnd
trigger1 = time = 0
value = 25,4

[State 1298]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1