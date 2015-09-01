[Statedef 1400];invisible
type = S
movetype = I
physics = S
anim = 1400
ctrl = 0
velset = 0,0

[State 3010, Fire]
type = explod
trigger1 = animelem = 3
anim = F11
ID = 36
pos = -10,5
shadow = -1,250,250
postype = p1
ontop = 1

[State 3011, Boom]
type = PlaySnd
trigger1 = time = 1
value = 4, 18

[State 3010, Var]
type = VarSet
trigger1 = AnimTime = 0 
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
anim = 900 + var(0)
ctrl = 0
velset = 0,0

[State 3011, Fire]
type = explod
trigger1 = Time = 1
trigger1 = stateno != 3010
anim = F11
shadow = -1,250,250
ID = 36
pos = -10,5
postype = p1
ontop = 1

[State 3011, Var]
type = VarSet
trigger1 = AnimTime = 0 
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

;teleport con golpe puños
[StateDef 1200]
type    = S
movetype= A
physics = S
ctrl = 0
anim = 1200

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
value = 4, 22; teleport

[State 700, 134]
type = changeanim
trigger1 = animTime = 0
trigger1 = anim = 1200
value = 1201

[State 700, 2]
type = PosAdd
trigger1 = animelem = 1
trigger1 = anim = 1201
X = (P2Dist X) + 30

[State 700, 2234]
type = Turn
trigger1 = animelem = 1
trigger1 = anim = 1201

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
;ground.slidetime = 0
;ground.hittime  = 0
;ground.velocity = -10,-5
;air.velocity = 10,-5
;air.hittime = 17
yaccel = 0.5
p2facing = 1
p2stateno = 1201
fall = 1
fall.recover = 0
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 700, 4]
type = ChangeState
trigger1 = AnimTime = 0
trigger1 = anim = 1201
ctrl = 1
value = 0

[Statedef 1201]
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

;teleport con patada
[StateDef 1210]
type    = S
movetype= A
physics = S
ctrl = 0
anim = 1200

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
value = 4, 22; teleport

[State 700, 134]
type = changeanim
trigger1 = animTime = 0
trigger1 = anim = 1200
value = 1210

[State 700, 2]
type = PosAdd
trigger1 = animelem = 1
trigger1 = anim = 1210
X = (P2Dist X) + 30

[State 700, 2234]
type = Turn
trigger1 = animelem = 1
trigger1 = anim = 1210

;[State 200, Play]
;type = PlaySnd
;trigger1 = time = 1
;trigger1 = 1
;value = F5, 15

[State 2, Upperblood]
type = Helper
trigger1 = movehit;time = 0
trigger1 = numhelper(28) < 1
ID = 28
stateno = 28
pos = 0, 0
postype = p1
persistent = 0
ignorehitpause = 1

[State 201, 1]
type = HitDef
trigger1 = !MoveContact
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage    = 200, 100                   ;Damage that move inflicts
animtype = Light                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
air.animtype = Back
guardflag = HL
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 2, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default
pausetime = 0,2                  ;Time attacker pauses, time victim shakes
sparkno = -1
sparkxy = -10,-105
guard.sparkno = -1
hitsound = 5,21
guardsound = 5,14             
ground.type = Low                 ;Type: High, Low, Trip (def: Normal)
p2facing = 1
ground.slidetime = 5
ground.hittime  = 20
guard.velocity = -15
guard.slidetime = 20
guard.ctrltime = 20 
ground.velocity = -0.8,-11
guard.velocity = -2
air.velocity = -2, 1
airguard.velocity = -1.9            ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.fall = 1
fall.recover = 0
ground.cornerpush.veloff = 0    
yaccel = 0.4
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)
envshake.time = 25
envshake.freq = 40
envshake.ampl = -10

[State 201, 7]
type = ChangeState
trigger1 = AnimTime = 0 
value = 0
ctrl = 1

;-----------------------

[Statedef 2024]
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
p1stateno = 2025       ;On success, KFM changes to state 810
p2stateno = 2026       ;If hit, p2 changes to state 820 in KFM's cns
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

[Statedef 2025]
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

[Statedef 2026]
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
value = 10277 ;Hit ground


[Statedef 10277]
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
value = 1027 ;Hit ground

;------------------
; Hit by Fast Kung Fu Palm - hit wall
; (a custom gethit state)
[Statedef 1027]
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
value = 1028

;------------------
; Hit by Fast Kung Fu Palm - bounce off wall
; (a custom gethit state)
[Statedef 1028]
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

;--------------------------------------------

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
value = 1102

[State 2000, 5]
type = Changestate
triggerall = time > 9
trigger1 = Pos X < -140
value = 1102

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
air.velocity = -3,-6
yaccel = 0.4
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

;----------------
[Statedef 13000]
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
p2stateno = 13001
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

[State 1050, 5]
type = PosSet
trigger1 = MoveGuarded = 1
Y = -5

[State 1050, 6]
type = Changestate
trigger1 = MoveGuarded = 1
value = 1055

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

;--------------------------
[Statedef 13001]
type    = S
movetype= H
physics = S
velset = 0,0
ctrl = 0

[State 2000, sd24]
type = PosSet
trigger1 = 1
Y = 0

[State 2000, sd]
type = velSet
trigger1 = time >= 0
x = -2

[State 2000, sdd]
type = velSet
trigger1 = time >= 20
x = 0


[State 2000, sound]
type = Playsnd
trigger1 = time = 0
value = 3,8

[State 2000, sod]
type = changeanim2
trigger1 = time = 0
value = 5002


[State 2000, 3]
type = SelfState
trigger1 = AnimTime = 0
trigger1 = roundstate = 2
value = 0
ctrl = 1

[State 2000, 33]
type = SelfState
triggerall = AnimTime = 0
trigger1 = roundstate = 3
trigger2 = roundstate = 4
value = 5050


; Torpedo
[Statedef 25640]
type    = S
movetype= A
physics = S
juggle  = 4
velset = 0,0
anim = 1200
ctrl = 0

; Chest sound
[State 2000, sound]
type = Playsnd
trigger1 = animelem = 2
value = 14,0

[State 2000, nonkilling helper]
type = helper
trigger1 = AnimElem = 2
trigger1 = Var(9) = 1
	stateno = 2001
name = "Bomb1"
id = 2001
pos = 0, -90
postype = p1

[State 2000, killing helper]
type = helper
trigger1 = AnimElem = 2
trigger1 = Var(9) = 0
stateno = 2002
name = "Bomb1"
id = 2001
pos = 0, -90
postype = p1

[State 2000, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;--------------------------------------
; Bomb eject close
[Statedef 2010]
type    = S
movetype= A
physics = S
juggle  = 4
velset = 0,0
anim = 1200
ctrl = 0

; Chest sound
[State 2010, sound]
type = Playsnd
trigger1 = time = 0
value = 14,0

[State 2010, nonkilling helper]
type = helper
trigger1 = AnimElem = 2
trigger1 = Var(9) = 1
stateno = 2012
name = "Shot2"
id = 2001
pos = 0, -90
postype = p1

[State 2010, killing helper]
type = helper
trigger1 = AnimElem = 2
trigger1 = Var(9) = 0
stateno = 2011
name = "Shot2"
id = 2001
pos = 0, -90
postype = p1

[State 2010, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-------------------------------------
; Far bomb (killer)
[Statedef 20011]
type    = S
movetype= A
physics = N
velset = 10, 0
anim = 1010
ctrl = 0

[State 2001, nonkilling helper]
type = helper
trigger1 = time = 119
stateno = 2020
name = "Killbomb"
id = 2020
pos = 0, 0
postype = p1

[State 2001, drop]
type = Veladd
trigger1 = time > 0
y = .2

[State 2001, slow]
type = veladd
trigger1 = p2bodydist X < 70
x = -.1

[State 2001, stopx]
type = velset
trigger1 = p2dist X < 1
x = 0

[State 2001, slow]
type = veladd
trigger1 = p2bodydist X < 35
x = -.2

[State 2001, stop]
type = velset
trigger1 = Pos Y >= 0
x = 0
y = 0

[State 2001, gone]
type = Destroyself
trigger1 = time = 120

;-------------------------------------
; Far bomb (nonkiller)
[Statedef 20022]
type    = S
movetype= A
physics = N
velset = 10, 0
anim = 1010
ctrl = 0

[State 2000, soundss]
type = Playsnd
trigger1 = time = 30
value = 0,4

[State 2002, nonkilling helper]
type = helper
trigger1 = time = 119
stateno = 2021
name = "NoKillbomb"
id = 2021
pos = 0, 0
postype = p1

[State 2002, drop]
type = Veladd
trigger1 = time > 0
y = .2

[State 2002, slow]
type = veladd
trigger1 = p2bodydist X < 70
x = -.1

[State 2002, slow]
type = veladd
trigger1 = p2bodydist X < 35
x = -.2

[State 2002, stopx]
type = velset
trigger1 = p2dist X < 1
x = 0

[State 2002, stop]
type = velset
trigger1 = Pos Y >= 0
x = 0
y = 0

[State 2002, gone]
type = Destroyself
trigger1 = time = 120

;-------------------------------------
; Close bomb (killer)
[Statedef 2011]
type    = S
movetype= A
physics = N
velset = 4, 0
anim = 1010
ctrl = 0

[State 2000, soundss]
type = Playsnd
trigger1 = time = 30
value = 0,4

[State 2011, killing helper]
type = helper
trigger1 = time = 129
stateno = 2020
name = "Killbomb"
id = 2020
pos = 0, 0
postype = p1

[State 2011, drop]
type = Veladd
trigger1 = time > 0
y = .2

[State 2011, stopx]
type = velset
trigger1 = p2dist X < 1
x = 0

[State 2011, stop]
type = velset
trigger1 = Pos Y >= 0
x = 0
y = 0

[State 2011, gone]
type = Destroyself
trigger1 = time = 130

;-------------------------------------
; Close bomb (nonkiller)
[Statedef 2012]
type    = S
movetype= A
physics = N
velset = 4, 0
anim = 1010
ctrl = 0

[State 2012, nonkilling helper]
type = helper
trigger1 = time = 129
stateno = 2021
name = "NoKillbomb"
id = 2021
pos = 0, 0
postype = p1

[State 2012, drop]
type = Veladd
trigger1 = time > 0
y = .2

[State 2012, stopx]
type = velset
trigger1 = p2dist X < 1
x = 0

[State 2012, stop]
type = velset
trigger1 = Pos Y >= 0
x = 0
y = 0

[State 2012, gone]
type = Destroyself
trigger1 = time = 130

;-------------------------------------
; Killer BOMB
[Statedef 2020]
type    = S
movetype= A
physics = N
juggle = 0
anim = 1011
ctrl = 0

[State 2020, snd]
type = playsnd
trigger1 = time = 0
value = 4,19

[State 2020, plume]
type = Explod
trigger1 = time = 0
anim = 1020;F20
pos = 0, 0
postype = p1
facing = 1
sprpriority = 3
ownpal = 0
ontop = 1

[State 2020, hit]
type = HitDef
trigger1 = time = 0
;trigger1 = p2statetype != A
attr = S, SP   
damage    = 100, 30
animtype = Heavy
guardflag = HL
hitflag = SAF
priority = 7, Hit
pausetime = 0,2
sparkno = -1
;sparkxy = -10,-70
;hitsound = 2000,5
guardsound = 5,14
ground.type = Low
ground.slidetime = 5
ground.hittime  = 20
ground.velocity = 2.5, -12
air.velocity = -2.5,-10
air.fall = 1
fall.recover = 0

fall = 1
fall.recover = 0
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 2020, des]
type = destroyself
trigger1 = animtime = 0

;--------------------------------------
; NonKiller BOMB
[Statedef 2021]
type    = S
movetype= A
physics = N
juggle = 0
anim = 1011
ctrl = 0

[State 2021, snd]
type = playsnd
trigger1 = time = 0
value = 4,19

[State 2021, plume]
type = Explod
trigger1 = time = 0
anim = 1020;F20
pos = 0, 0
postype = p1
facing = 1
sprpriority = 3
ownpal = 0
ontop = 1

[State 2021, hit]
type = HitDef
trigger1 = time = 0
;trigger1 = p2statetype != A
attr = S, SP   
damage    = 100, 30
animtype = Heavy
guardflag = HL
hitflag = MAF
priority = 7, Hit
pausetime = 0,2
sparkno = -1
;sparkxy = -10,-70
;hitsound = 2000,5
guardsound = 5,14
ground.type = Low
ground.slidetime = 5
ground.hittime  = 20
ground.velocity = 2.5, -12
air.velocity = -2.5,-10
air.fall = 1
fall.recover = 0

fall = 1
fall.recover = 0
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)


[State 2021, des]
type = destroyself
trigger1 = animtime = 0

;--------------------------------------------
;INVINCIBLE
[Statedef 3010]
type = S
movetype = I
physics = S
anim = 700 + var(17)
ctrl = 0
velset = 0,0

[State 3010, Fire]
type = explod
trigger1 = animelem = 3
anim = F11
ID = 36
pos = 0,0
shadow = -1,250,250
postype = p1
ontop = 1

[State 3011, Boom]
type = PlaySnd
trigger1 = time = 1
value = 4, 18

[State 3010, Var]
type = VarSet
trigger1 = AnimTime = 0 
var(17) = 1

[State 3010, CS]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;********** Reverse INVISIBILITY **********
[Statedef 3011]
type = S
movetype = I
physics = S
anim = 900 + var(0)
ctrl = 0
velset = 0,0

[State 3011, Fire]
type = explod
trigger1 = Time = 1
trigger1 = stateno != 3010
anim = F11
shadow = -1,250,250
ID = 36
pos = 0,0
postype = p1
ontop = 1

[State 3011, Var]
type = VarSet
trigger1 = AnimTime = 0 
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
;============================================================

[StateDef 1000]
type    = S
movetype= A
physics = S
juggle  = 2
velset = 0,0
anim = 1000
ctrl = 0

[State 10000, open]
type = PlaySnd
trigger1 = AnimElem = 4 
trigger2 = AnimElem = 5 
trigger3 = AnimElem = 6 
value = 7, 1

[State 1000, nonkilling helper]
type = helper
trigger1 = AnimElem = 4
trigger2 = AnimElem = 6
stateno = 1001
name = "estrella1"
id = 131302
pos = 50*const(size.xscale), -105*const(size.xscale)
postype = p1
.
[State 1000, nonkilling helper]
type = helper
trigger1 = AnimElem = 5
stateno = 1001
name = "estrella2"
id = 131302
pos = 30*const(size.xscale), -55*const(size.xscale)
postype = p1

[State 1000, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;
; Projectile 
[Statedef 1001]
type    = S
movetype= A
physics = N
poweradd= 120
velset = 8,0 
anim = 1001
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
hitsound   = S7,0
guardsound = S3,9
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

;-------------------------------------------------------
; LightningFAT
[StateDef 12001]
type = U
movetype= H
physics = N
velset = 0,0

[State 433, INVOFF]
type = VarSet
triggerall = 1
trigger1 = p1name ="smoke" 
trigger2 = p1name = "reptile"
trigger3 = p1name = "scorpion"
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
;trigger1 = var(23) = 1
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
value = 1006


;--------------

[Statedef 1007]
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
;-----------------------

; Double ice hits back
[Statedef 1009]
type    = S
movetype= H
physics = N
juggle  = 0
velset = 0,0
ctrl = 0
anim = 9998



[State 1009, Frosty color]
type = palFX
trigger1 = time != 0
;trigger1 = var(23) = 1
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


;------------------------

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

;--------------------------------

[Statedef 441]
type    = S
movetype= H
physics = S
juggle  = 4
ctrl = 0
anim = 441

[State 9010, 0.1]
type = Sprpriority
trigger1 = time = 1
value  >= 2

[State 1313, Bolt]
type = Explod
trigger1 = animelem = 4
anim = 442
shadow = -1,250,250
pos = -50*const(size.xscale),-65*const(size.xscale)
bindtime = -1
helpertype = normal
sprpriority = 3
ownpal = 1

[State 9399, 2]
type = Selfstate
trigger1 = AnimTime = 0
value = 5150

[State 9399, 3]
type = Lifeadd
trigger1 = Time = 1
Value = -9999


[State 5150, 8]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1
ctrl = 1



;------------------------

[Statedef 701]
type    = S
movetype= H
physics = S
juggle  = 4
ctrl = 0
anim = 701

[State 9010, 0.1]
type = Sprpriority
trigger1 = time = 1
value  >= 2

[State 1313, Bolt]
type = Explod
trigger1 = animelem = 1
anim = 703
shadow = -1,250,250
pos = 0*const(size.xscale),-75*const(size.xscale)
bindtime = -1
helpertype = normal
sprpriority = 3
ownpal = 1

[State 9399, 2]
type = Selfstate
trigger1 = AnimTime = 0
value = 5150

[State 9399, 3]
type = Lifeadd
trigger1 = Time = 1
Value = -9999


[State 5150, 8]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1
ctrl = 1

;============================================================
[StateDef 13130]
type    = S
movetype= A
physics = S
juggle  = 5
ctrl = 0
velset = 7,0,0
anim = 90002
ctrl = 0

[State 13130, Up]
type = VelSet
trigger1 = command = "holdback"
x = 4
ctrl = 1

[State 13130, Up]
type = VelSet
trigger1 = command = "holdup"
y = -1.2
ctrl = 1

[State 13130, Down]
type = VelSet
trigger1 = command = "holddown"
y = 1.2
ctrl = 1

[State 13130, BoltFat]
type = HitDef
trigger1 = time = 0
attr = S, NA
damage    = 85, 13
animtype = Heavy
air.animtype = Back
air.fall = 1
fall.recover = 0

guardflag = L
pausetime = 0,2
sparkno = -1
guard.sparkno = -1
hitsound   = s4,22
guardsound = S1, 0
ground.type = High
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -8
air.velocity = -2.5,-5
air.juggle = 9
fall = 0
palfx.time = 20
palfx.mul = 70,160,270
palfx.add = 89,103,150
palfx.sinadd = 180,180,180,5
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 1313, Bolt]
type = Explod
trigger1 = movehit = 1
anim = 90003
shadow = -1,250,250
name = "Laser"
postype = p2
pos = -40*const(size.xscale), 20*const(size.xscale)
bindtime = -1
helpertype = normal
ontop = 1
ownpal = 1

[State 2001, Didn't hit, blocked etc.]
type = Destroyself
trigger1 = movehit = 1


;-----------------------------------------------

[StateDef 10000]
type    = S
movetype= A
physics = S
juggle  = 2
ctrl = 0
velset = 0,0,0
anim = 10000

[State 10000, ZappySound]
type = PlaySnd
trigger1 = AnimElem = 2 
value = 4, 14

[State 10000, BoltFat]
type = Projectile
trigger1 = AnimElem = 2 
projanim = 10001
projhitanim = 10002
projremanim = 1211
postype 
offset = 0*const(size.xscale), 0*const(size.xscale)
velocity = 8, -3
remvelocity = 2.35, 0
; HitDef part of projectile info
attr = S, SP
damage    = 125, 23
animtype = Hard
air.animtype = Back
air.fall = 1
fall.recover = 0

guardflag = L
pausetime = 0,2
sparkno = -1
guard.sparkno = -1
hitsound   = s2424, 0
guardsound = S1, 0
ground.type = High
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -8
air.velocity = -2.5,-5
air.juggle = 2
palfx.time = 20
palfx.mul = 70,160,270
palfx.add = 89,103,150
palfx.sinadd = 180,180,180,5
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)
fall = 0
air.fall = 1
fall.recover = 0


[State 10000, NotFreindly]
type = VarSet
trigger1 = AnimElem = 4 
v = 5
value = 1

[State 10000, 10]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0

;-----------------------------------------------
[StateDef 1410]
type    = S
movetype= A
physics = N
juggle  = 2
ctrl = 0
velset = 8,0,0
anim = 1220

[State 1410, ClearVar]
type = VelSet
trigger1 = Time = 0
v = 20
value = 0

[State 1410, BoltFat]
type = HitDef
trigger1 = 1
attr = S, SP
damage    = 125, 23
animtype = Hard
air.animtype = Back
air.fall = 1
fall.recover = 0

guardflag = L
pausetime = 0,2
sparkno = -1
guard.sparkno = -1
hitsound   = s2424, 0
guardsound = S1, 0
ground.type = High
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -10
air.velocity = -2.5,-5
air.juggle = 3
palfx.time = 20
palfx.mul = 70,250,270
palfx.add = 89,100,150
palfx.sinadd = 180,180,180,5
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 1410, 10]
type = ChangeState
trigger1 = MoveContact = 1
value = 1420

[State 1410, FirstOffEdge]
type = VarAdd
trigger1 = FrontEdgeDist <= 0
v = 20
value = 1

[State 1410, Wrap]
type = PosAdd
trigger1 = (FrontEdgeDist <= 0) && (Var(20) = 1)
X = -330

[State 1410, GoByeBye]
type = DestroySelf
trigger1 = (FrontEdgeDist <= 0) && (Var(20) = 2)
trigger2 = Time >= 150


[StateDef 1420]
type    = S
movetype= A
physics = N
juggle  = 2
ctrl = 0
velset = 2.35,0,0
anim = 1230

[State 1420, gobyebye]
type = DestroySelf
trigger1 = AnimTime = 0
trigger2 = Time >= 150

;--------------------------------------------
; Torpedo for combos
[StateDef 1500]
type    = A
movetype= A
physics = N
juggle  = 2
ctrl = 0
velset = 0,0,0
anim = 1500


[State 1500, flyThrough]
type = PlayerPush
trigger1 = Time >= 0
value = 0

[State 1500, gibber]
type = PlaySnd
trigger1 = Time = 3
value = 4, 4

[State 1500, Accell]
type = VelAdd
trigger1 = Time < 6
x = 2

[State 1500, 10]
type = HitDef
trigger1 = AnimElem = 3
attr = S, SA
animtype  = back
damage    = 166, 41
guardflag = L
hitflag = HAF
pausetime = 0,2
sparkno = -1
guard.sparkno = -1
hitsound   = 5,2
guardsound = S1,0
ground.type = High
ground.slidetime = 0
ground.hittime  = 0
ground.velocity = 0
air.velocity = -0.3,-4.2
air.hittime = 17  
p1stateno = 1010
p2stateno = 1030
fall = 1
fall.recover = 0
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 1500, BounceOff]
type = ChangeState
trigger1 = MoveGuarded = 1
ctrl = 0
value = 1001

[State 1500, SlidToAHalt]
type = ChangeState
trigger1 = time > 50
trigger2 = P2Dist X <= -20
ctrl = 0
value = 1002

[State 1500, OverShoot]
type = ChangeState
trigger1 = FrontEdgeDist <= 20
ctrl = 0
value = 1003

;--------------------------------------------
; Torpedo
[StateDef 1510]
type    = A
movetype= A
physics = N
juggle  = 2
ctrl = 0
velset = 0,0,0
anim = 1000 ;1510

[State 1510, flyThrough]
type = PlayerPush
trigger1 = Time >= 0
value = 0

[State 1510, select gibber]
type = VarRandom
trigger1 = Time = 3
v = 11
range = 0, 3

[State 1510, gibber]
type = PlaySnd
trigger1 = Time = 3
value = 4, Var(11)

[State 1510, Accell]
type = VelAdd
trigger1 = Time < 6
x = 2

[State 1510, 10]
type = HitDef
trigger1 = AnimElem = 3
attr = A, SA
animtype  = back
damage    = 166, 41
guardflag = L
hitflag = HAF
pausetime = 0,2
sparkno = -1
guard.sparkno = -1
hitsound   = 5,2
guardsound = S1,0
ground.type = High
ground.slidetime = 0
ground.hittime  = 0
ground.velocity = 0
air.velocity = -0.3,-4.2
air.hittime = 17  
p1stateno = 1010
p2stateno = 1030
fall = 1
fall.recover = 0
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 1510, BounceOff]
type = ChangeState
trigger1 = MoveGuarded = 1
ctrl = 0
value = 1101

[State 1510, SlidToAHalt]
type = ChangeState
trigger1 = time > 50
;trigger2 = P2Dist X <= -20
ctrl = 0
value = 1102

[State 1510, OverShoot]
type = ChangeState
trigger1 = FrontEdgeDist <= 20
ctrl = 0
value = 1103


;---------------------------------------------------------------------------
; Lightning Strike
[StateDef 2090]
type    = S
movetype= A
physics = S
velset = 0
anim = 2090
ctrl = 0

[State 2090, Storm]
type = PlaySnd
trigger1 = Time = 0
value = 4,18

[State 2090, Super]
type = SuperPause
trigger1 = AnimElem = 1
pos = -33*const(size.xscale), -130*const(size.xscale)
anim = 102


[State 2090, Super2]
type = SuperPause
trigger1 = AnimElem = 1
pos = 36*const(size.xscale), -125*const(size.xscale)
anim = 102

[State 2090, gibber]
type = PlaySnd
trigger1 = Time = 0
value = 4,0

[State 2090, gibber2]
type = PlaySnd
trigger1 = Time = 8
value = 4,19

[State 2090, gibber3]
type = PlaySnd
trigger1 = Time = 12
value = 4,19

[State 2090, 2]
type = Projectile
trigger1 = Time = 0
projanim = 2091
projremanim = -1
projremovetime = 25
pos = 0*const(size.xscale),0 *const(size.xscale)
postype = p2
offset = 0*const(size.xscale), 0*const(size.xscale)
velocity = 0, 0
remvelocity = 0, 0
; HitDef part of projectile info
attr = S, SP
damage    = 250, 29
animtype = Hard
air.animtype = Back
air.fall = 0
fall.recover = 0

fall = 1
hitflag = MFD
guardflag = L
pausetime = 0,2
sparkno = -1
guard.sparkno = -1
hitsound   = s4,21
guardsound = 6,0
ground.type = High
ground.slidetime = 0
ground.hittime  = 30 ;11
ground.velocity = 0, -15 ;-1, -15
guard.velocity = 0
air.velocity = 0, 0 ;-2, 0
air.hittime = 35 ;55
palfx.time = 70
palfx.mul = 70,160,270
palfx.add = 89,103,150
palfx.sinadd = 180,180,180,5
envshake.time = 40
envshake.freq = 190
envshake.ampl = -5
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 2090, 4]
type = ChangeState
trigger1 = time = 15
ctrl = 1
value = 0

;===============
;Runnning Throw 
;===============
[StateDef 1430]
type = S
movetype= A
physics = S
ctrl = 0
anim = 1430

[State 1430, 1]
type = changestate
trigger1 = BackEdgeDist < 13
trigger1 = p2bodydist X > 165
trigger2 = p2stateno = 9010
value = 1431   

[State 1430, 2]
type = changestate   
trigger1 = p2statetype != S
trigger1 = p2statetype != C
value = 1432

[State 1430, 3]
type = HitDef
trigger1 = p2stateno != 130
trigger1 = p2stateno != 131
trigger1 = p2bodydist X < 40
attr = S,NT
damage = 232,78
sparkno = -1
facing = p2
p1stateno = 1433
p2stateno = 1434
p2facing = -1
numhits = -1

[State 1430, 4]
type = HitDef
trigger1 = p2stateno = 130
trigger2 = p2stateno = 131
triggerall = p2bodydist X < 5
attr = S,NA
sparkno = -1
guardflag = HL
guardsound = 5,14
numhits = -1

[State 1430, 5]
type = changestate
trigger1 = moveguarded
value = 1436        

[State 1430, 6]
type = playerpush
trigger1 = 1
value = 0

[State 1430, 7] 
type = veladd
trigger1 = 1
x = 12

[StateDef 1431]
type    = S
movetype= I
physics = S

[State 1431, 1]
type = veladd
trigger1 = 1
x = 12

[State 1431, 2]
type = changestate
trigger1 = p2bodydist X < 30
trigger2 = time = 21  
value = 0
ctrl = 1

[StateDef 1432]
type    = S
movetype= I
physics = S

[State 1432, 1]
type = veladd
trigger1 = 1
x = 12

[State 1432, 2]
type = playerpush
trigger1 = 1
value = 0

[State 1432, 3]
type = changestate
trigger1 = p2bodydist X < -60
trigger2 = time > 30
value = 0
ctrl = 1

[StateDef 1433]
type    = S
movetype= A
anim = 25

[State 1433, 1]
type = velset
trigger1 = 1
x = 0

[State 1433, 2]
type = sprpriority
Trigger1 = time = 0
value = 3

[State 1433, 3]
type = targetbind
trigger1 = time = 0
pos = 15, 0

[State 1433, 4]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

[StateDef 1434]
type    = A
movetype= H
physics = N
velset = 0,0
anim = 26

[State 1434, 1]
type = veladd
trigger1 = time = 1
y = (p2stateno = 33)*3

[State 1434, 2]
type = sprpriority
trigger1 = time = 0
value = 2

[State 1434, 3]
type = changeanim2
Trigger1 = time = 0
value = 26

[State 1434, 4]
type = changestate
Trigger1 = animtime = 0
value = 1053

[StateDef 1053]
type = A
movetype = I
physics = N
velset = 0,0

[State 1435, 1]
type = changeanim2
Trigger1 = time = 0
value = 28

[State 1435, 2]
type = veladd
trigger1 = time = 0
x = -80
y = -50

[State 1435, 3]
type = veladd
trigger1 = time = 1
x = 80-10
y = 50+4+3*((p2stateno = 33)||(time > 15))

[State 1435, 4]
type = turn
trigger1 = pos y > 0

[State 1435, 5]
type = selfstate
trigger1 = pos y > 0
value = 5110

[StateDef 1436]
type = S
movetype = I
physics = S
anim = 1431

[State 1436, 1]
type = velset
trigger1 = time = 0
X = 0

[State 1436, 2]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1
