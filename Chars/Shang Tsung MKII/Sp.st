[Statedef 1015]
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 1015
;sprpriority = 2

[State 800, 1]
type = HitDef
Trigger1 = animelem = 3
pausetime = 0,40
attr = S, NA          ;Attributes: Standing, Normal Throw
hitflag = HAF          ;Affect only ground people who are not being hit
priority = 1, Miss    ;Throw has low priority, must be miss or dodge type.
damage = 280,140
sparkno = -1          ;No spark
hitsound = 5,14
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
sprpriority = -1      ;Draw in front of p2
p2facing = -1       ;Force p2 to face KFM
p1stateno = 1016       ;On success, KFM changes to state 810
p2stateno = 1017       ;If hit, p2 changes to state 820 in KFM's cns
guard.dist = 0        ;This prevents p2 from going into a guard state if close
;fall = 1              ;Force p2 into falling down
fall.recover = 0
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 800, 2]
type = ChangeState
Trigger1 = Animtime = 0
value = 0
ctrl = 1

;-------------

[Statedef 1016]
type    = S
movetype= A
physics = N
anim = 778


[State 1000]
type = PlaySnd
trigger1 = AnimElem = 1
value = 4, 24

[State 820, 1]
type = Sprpriority
Trigger1 = Time = 0
value = 1

[State 810, Bind 7]
type = TargetBind
trigger1 = TIME = 0
pos = 10, 0

;[State 810, nd]
;type = TURN
;trigger1 = Animtime =  0

[State 810, State End]
type = ChangeState
trigger1 = Animtime =  0
value = 0
ctrl = 1

;-------------

[Statedef 1017]
type    = A
movetype= H
physics = N
velset = 0,0
;sprpriority = -1

;[State 9010, 0.1]
;type = Sprpriority
;trigger1 = animtime = 0
;value  >= 2

[State 820, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 1017

[State 820, 435E1]
type = Playerpush
Trigger1 = 1
value = 0

;[State 820, 4435E1]
;type = velSET
;Trigger1 = animtime = 0
;X = -1

[State 820, 4351]
type = VelAdd
Trigger1 = animelem = 12
;Trigger1 = time <= 20
x = 7
;y = -.3 

;[State 820, 4351]
;type = VelAdd
;Trigger1 = Animtime = 0
;y = 5 
;x = -5

[State 810, nd]
type = TURN
trigger1 = aNIMtime =  0

[State 821, 4] ;Hit ground
type = SelfState
trigger1 = animtime =  0
value = 5050 ;Hit ground



;--------------------------------------------
; Torpedo
[StateDef 2000]
type    = A
movetype= A
physics = S
juggle  = 2
ctrl = 0
anim = 1055

[State 1000, bber]
type = PlaySnd
trigger1 = Time = 8
value = 4, 21
volume = 60

[State 1000, 10]
type = HitDef
trigger1 = !movecontact
attr = S, SA
animtype  = back
damage    = 170, 41
guardflag = HLMF
hitflag = ALM
pausetime = 0,2
sparkno = -1
guard.sparkno = -1
;hitsound   = 5,0
p1stateno = 2025
p2stateno = 2026
guardsound = 5,14 
ground.type = High
ground.slidetime = 0
ground.hittime  = 0
ground.velocity = -3,-3
air.velocity = -3,-3.3
air.hittime = 17  
p2facing = 1
fall = 1
fall.recover = 0
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)
palfx.time = 30
palfx.mul = 200,200,200
palfx.add = 200,200,200
palfx.sinadd = 200,200,200,10


[State 1000, BounceOff]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0


;--------------------------------------------
[Statedef 2025]
type    = S
movetype= A
physics = N
anim = 1046


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


[State 1000, bber]
type = PlaySnd
trigger1 = animelem = 3
value = 4, 21
volume = 60

[State 800, 2]
type = turn
trigger1 = animtime = 0

[State 800, 2]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;-------------

[Statedef 2026]
type    = A
movetype= H
physics = S
juggle  = 6
ctrl = 0
velset = 0,0,0
anim = 8881
;sprpriority = 9

;[State 10000, open]
;type = PlaySnd
;trigger1 = AnimElem = 2 
;value = 4, 6

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


[State 810, nd]
type = TURN
trigger1 = time =  40

[State 821, 4] ;Hit ground
type = ChangeState
trigger1 = time =  40
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

[State 10000, dopen]
type = PlaySnd
trigger1 = time = 0 
value = 3, 0

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
x = .7

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

;----------------------


;------
[StateDef 10011]
type    = S
movetype= I
physics = S
ctrl = 0
velset = 0,0

[State 1000, Accellw]
type = VelSet
trigger1 = time = 0
x = 0

[State 1100, aAccell]
type = VelAdd
trigger1 = Time < 50
x = -1

[State 1100, aAccell]
type = VelAdd
trigger1 = Time < 30
y = -.12

[State 1100, aAccell]
type = VelAdd
trigger1 = Time > 15
trigger1 = Time < 30
y = .3

[State 1000, snd]
type = Playsnd
trigger1 = AnimElem = 6
trigger2 = AnimElem = 8
trigger3 = AnimElem = 11
trigger4 = AnimElem = 13
trigger5 = AnimElem = 16
triggerall = p2bodydist X <= 50
value = F5,14

[State 1001, 10]
type = Changestate
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------
; I hitum now fly.
[StateDef 1011]
type    = A
movetype= A
physics = N
juggle  = 2
ctrl = 0
velset = 0,0
anim = 1010

[State 1010, HimHitWall]
type = TargetState
trigger1 = Time = 5
value = 1031
ctrl = 0

[State 1010, YouBounce]
type = ChangeState
trigger1 = Time = 5
value = 1001
ctrl = 0

;----------------------------------------------
; I hitum now he fly.
[StateDef 1030]
type    = A
movetype= H
physics = N
juggle  = 2
ctrl = 0

[State 1030, OW]
type = ChangeAnim2
trigger1 = time = 0
value = 1030

[State 1030, StopEarly]
Type = ScreenBound
trigger1 = Time >= 40
value = 0
;movecamera = 0, 0

[State 1031, HitGround]
type = SelfState
trigger1 = (Pos Y = 0) || (Vel Y != 0)
value = 5100 ;Hit ground


;----------------------------------------------
; Player Two hit the dirt.
[StateDef 1031]
type    = A
movetype= H
physics = N
juggle  = 2
velset = 0,0,0
ctrl = 0

[State 1031, Gravity]
type = VelAdd
Trigger1 = 1
y = .5

[State 1031, Falling]
type = ChangeAnim2
trigger1 = time = 0
value = 1031

[State 1031, HitGround]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5110 ;Hit ground

;--------------------------------------------
; Air Torpedo
[StateDef 1100]
type    = A
movetype= A
physics = N
juggle  = 2
ctrl = 0
velset = 0,0,0
anim = 1000   

[State 1100, flyThrough]
type = PlayerPush
trigger1 = Time >= 0
value = 0

;[State 1100, select gibber]
;type = VarRandom
;trigger1 = Time = 3
;v = 11
;range = 0, 3

[State 1100, gibber]
type = PlaySnd
trigger1 = Time = 1
value = 4, 0

[State 1000, gibberrr]
type = PlaySnd
trigger1 = Time = 3
value = 14, 0

[State 1100, Accell]
type = VelAdd
trigger1 = Time < 6
x = 2.5

[State 1100, 10]
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


[State 1100, BounceOff]
type = ChangeState
trigger1 = MoveGuarded = 1
ctrl = 0
value = 1101

[State 1100, SlidToAHalt]
type = ChangeState
trigger1 = time > 50
;trigger2 = P2Dist X <= -20
ctrl = 0
value = 1102

[State 1100, OverShoot]
type = ChangeState
trigger1 = FrontEdgeDist <= 20
ctrl = 0
value = 1103

;--------------------------------------------
; Torpedo Bounce away
[StateDef 1101]
type    = A
movetype= I
physics = A
ctrl = 0
velset = -2.7,-10,0

[State 1101, 10]
type = ChangeAnim
trigger1 = Time = 0
value = 1001

;--------------------------------------------
; Torpedo Slide to a halt
[StateDef 1102]
type    = A
movetype= I
physics = A
ctrl = 0
anim = 1102

[State 1102, 10]
type = VelAdd
trigger1 = (Time < 6) && (Vel X > 0)
x = -2

[State 1102, 10]
type = PosAdd
trigger1 = AnimElem = 3
y = 33

;--------------------------------------------
; Torpedo, flew past opponent and hit corner
[StateDef 1103]
type    = A
movetype= A
physics = N
juggle  = 2
ctrl = 0

[State 1000, 10]
type = HitDef
trigger1 = Time <= 5
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
fall.recover = 0
kill = 0
fall = 1

[State 1001, 10]
type = ChangeState
trigger1 = Time = 10
ctrl = 0
value = 1102

;----------------------------------------------
; I hitum now fly.
[StateDef 1110]
type    = A
movetype= A
physics = N
juggle  = 2
ctrl = 0
anim = 1110

[State 1110, setSpeed]
Type = VelSet
trigger1 = Time = 0
trigger1 = Vel X < 12
X = 12

[State 1110, TurnToMe]
Type = TargetFacing
trigger1 = Time = 0
value = -1

[State 1110, StickToHands]
Type = TargetBind
trigger1 = Time >= 0
pos = 16*const(size.xscale), -16*const(size.xscale)

[State 1010, StopEarly]
Type = ScreenBound
trigger1 = Time >= 40
value = 0
;movecamera = 0, 0

[State 1110, BangHitWall]
type = PlaySnd
trigger1 = FrontEdgeDist <= 20
value = F5, 2

[State 1110, YouBounce]
type = ChangeState
trigger1 = FrontEdgeDist <= 20
value = 1111
ctrl = 0

;----------------------------------------------
; I hitum now fly.
[StateDef 1111]
type    = A
movetype= I
physics = A
ctrl = 0
velset = -2,-8
anim = 1545


[State 1001, 10]
type = VelAdd
trigger1 = Time = [0, 7]
x = -0.2

[State 1001, 10]
type = PosAdd
trigger1 = Time = 0
y = -45

[State 1200, at]
type = Explod
trigger1 = time = 0
anim = 1015
postype = p1
sprpriority  >= 2

[State 1200, 2at]
type = Explod
trigger1 = time = 0
anim = 1046
postype = p1
ID = 112
sprpriority  >= 2


[State 1200, ZappySound]
type = PlaySnd
trigger1 = time = 1
value = 4, 22
channel = 3

[State 1200, Zapp]
type = PlaySnd
trigger1 = time = 1
value = 2424, 0
channel = 3


[State 1200, BoltFat]
type = Projectile
trigger1 = time = 0
triggerall = p2stateno != 12001
triggerall = p2stateno != 1009
triggerall = prevstateno != 50
projanim = 778
projhitanim = 1015
projremanim = 1015
offset = 0*const(size.xscale), 45
posset = 0,0
ID = 177
remvelocity = 0, 0
projremovetime = 200
projsprpriority = 1
; HitDef part of projectile info
attr = S, NT
animtype = Hard
air.animtype = Back
air.fall = 1
hitflag = CMA
;guardflag = L
pausetime = 0,2
sparkno = -1
p2stateno = 12001
guard.sparkno = -1
hitsound   = s4,17
;guardsound = s4,17
ground.type = High
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)


[State 1200, BoltFat]
type = Projectile
trigger1 = time = 0
triggerall = p2stateno != 12001
triggerall = p2stateno != 1009
triggerall = prevstateno = 50
projanim = 1050
projhitanim = 1015
projremanim = 1015
offset = 0*const(size.xscale), 45
posset = 0,0
ID = 177
remvelocity = 0, 0
projsprpriority = 1
projremovetime = 200
; HitDef part of projectile info
attr = S, NT
animtype = Hard
air.animtype = Back
air.fall = 1
hitflag = CMA
;guardflag = L
pausetime = 0,2
sparkno = -1
p2stateno = 12001
guard.sparkno = -1
hitsound   = s4,17
;guardsound = s4,17
ground.type = High
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

;[State 1200, 10]
;type = ChangeState
;trigger1 = AnimTime = 0
;value = 51
;CTRL = 1

;============================================================

[Statedef 1010]
type    = S
movetype= A
physics = S
juggle  = 2
velset = 0,0
anim = 1003
ctrl = 0

[State 10000, open]
type = PlaySnd
trigger1 = AnimElem = 7
value = 14, 0

[State 1000, 0.1]
type = Posset
trigger1 = Pos Y != 0
trigger1 = time = 0
Y = 0

[State 1200, BoltFat]
type = Projectile
trigger1 = AnimElem = 8
projanim = 1001
offset = 60*const(size.xscale), -93*const(size.xscale)
ID = 997
velocity =9,0;6,0 
remvelocity = 0, 0
projsprpriority = -2
attr = S, SP
damage    = 130, 60
animtype = Light
air.animtype = Back
air.fall = 1
fall.recover = 0
guardflag = HL
pausetime = 0,2
sparkno = 273
guard.sparkno = 273
hitsound   = S4,18
guardsound = S4,18
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -15,0
air.velocity = -4,-5
air.fall = 1
fall.recover = 0
air.juggle = 2
yaccel = 0.45
p2stateno = 21238
kill       = Var(9) = 0
fall.kill  = Var(9) = 0
guard.kill = Var(9) = 0

[State 1000, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[StateDef 1002]
type    = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
anim = 1013;1003
ctrl = 0

[State 10000, open]
type = PlaySnd
trigger1 = AnimElem = 7
trigger2 = AnimElem = 12
value = 14, 0

[State 1000, 0.1]
type = Posset
trigger1 = Pos Y != 0
trigger1 = time = 0
Y = 0

[State 1200, BoltFat]
type = Projectile
trigger1 = AnimElem = 8
trigger2 = AnimElem = 13
projanim = 1001
offset = 60*const(size.xscale), -93*const(size.xscale)
ID = 997
velocity = 9,0;7, 0 
remvelocity = 0, 0
attr = S, SP
damage    = 130, 60
projsprpriority = -2
animtype = Light
air.animtype = Back
air.fall = 1
fall.recover = 0
guardflag = HL
pausetime = 0,2
sparkno = 273
guard.sparkno = 273
hitsound   = S4,18
guardsound = S4,18
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -15,0
air.velocity = -4,-5
air.fall = 1
fall.recover = 0
air.juggle = 1
yaccel = 0.45
p2stateno = 21238
kill       = Var(9) = 0
fall.kill  = Var(9) = 0
guard.kill = Var(9) = 0

[State 1000, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[StateDef 10033]
type    = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
anim = 1023;1003
ctrl = 0

[State 10000, open]
type = PlaySnd
trigger1 = AnimElem = 7
trigger2 = AnimElem = 12
trigger3 = AnimElem = 17
value = 14, 0

[State 1000, 0.1]
type = Posset
trigger1 = Pos Y != 0
trigger1 = time = 0
Y = 0

[State 1200, BoltFat]
type = Projectile
trigger1 = AnimElem = 8
trigger2 = AnimElem = 13
trigger3 = AnimElem = 18
projanim = 1001
offset = 60*const(size.xscale), -93*const(size.xscale)
ID = 997
velocity = 9,0;8, 0 
remvelocity = 0, 0
projsprpriority = -2
attr = S, SP
damage    = 130, 60
animtype = Light
air.animtype = Back
air.fall = 1
fall.recover = 0
guardflag = HL
pausetime = 0,2
sparkno = 273
guard.sparkno = 273
hitsound   = S4,18
guardsound = S4,18
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -12,0
air.velocity = -4,-5
air.fall = 1
fall.recover = 0
air.juggle = 1
yaccel = 0.45
p2stateno = 21238
kill       = Var(9) = 0
fall.kill  = Var(9) = 0
guard.kill = Var(9) = 0

[State 1000, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;-------------------------------------------------------
[StateDef 900]
type    = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
anim = 1545
ctrl = 0

[State 10000, open]
type = PlaySnd
trigger1 = AnimElem = 2 
value = 1, 4

[State 1200, 2atas]
type = Explod
trigger1 = time = 40;50
anim = 888
pos = 220,0
postype = p1
sprpriority  >= 3
ID = 900
removetime = 700

[State 1200, 2at]
type = Explod
trigger1 = time = 12
anim = 1000
pos = 220,0
postype = p1
sprpriority  >= 3

[State 1200, 2atdf]
type = Explod
trigger1 = time = 30
anim = 1000
pos = 140,0
postype = p1
sprpriority  >= 3

[State 1200, 2atdffg]
type = Explod
trigger1 = time = 48
anim = 1000
pos = 50,0
postype = p1
sprpriority  >= 3

[State 10000, open]
type = PlaySnd
trigger1 = time = 12
trigger2 = time = 30
trigger3 = time = 48
value = 4, 4

[State 1000, 0.1]
type = Posset
trigger1 = Pos Y != 0
trigger1 = time = 0
Y = 0

;[State 10000, open]
;type = PlaySnd
;trigger1 = AnimElem = 2 
;value = 1, 4


[State 1200, BoltFat]
type = Projectile
trigger1 = time = 28
projanim = 1004
offset = 220*const(size.xscale), -60*const(size.xscale)
ID = 997
velocity = 0, -8 
remvelocity = 0, 0
projsprpriority = -2
attr = S, SP
damage    = 80, 40
animtype = back
air.animtype = Back
air.fall = 1
fall.recover = 0
guardflag = HL
pausetime = 0,2
sparkno = 273
guard.sparkno = 273
hitsound   = S4,18
guardsound = S4,18
ground.type = High
projheightbound = - 500
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = 3.5,-10;13
air.velocity = 3.5,-10;-11
air.fall = 1
fall.recover = 0
air.juggle = 1
yaccel = 0.45
kill       = Var(9) = 0
fall.kill  = Var(9) = 0
guard.kill = Var(9) = 0

[State 1200, BoltFat]
type = Projectile
trigger1 = time = 46
projanim = 1004
offset = 140*const(size.xscale), -60*const(size.xscale)
ID = 997
velocity = 0, -8 
remvelocity = 0, 0
projsprpriority = -2
attr = S, SP
damage    = 80, 40
animtype = back
air.animtype = Back
air.fall = 1
fall.recover = 0
guardflag = HL
pausetime = 0,2
sparkno = 273
guard.sparkno = 273
hitsound   = S4,18
guardsound = S4,18
ground.type = High
projheightbound = - 500
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = 3,-11
air.velocity = 3,-9
air.fall = 1
fall.recover = 0
air.juggle = 1
yaccel = 0.55
kill       = Var(9) = 0
fall.kill  = Var(9) = 0
guard.kill = Var(9) = 0

[State 1200, BoltFat]
type = Projectile
trigger1 = time  = 64
projanim = 1004
offset = 50*const(size.xscale), -60*const(size.xscale)
ID = 997
velocity = 0, -8 
remvelocity = 0, 0
projsprpriority = -2
attr = S, SP
damage    = 80, 40
animtype = back
air.animtype = Back
air.fall = 1
fall.recover = 0
guardflag = HL
pausetime = 0,2
projheightbound = - 500
sparkno = 273
guard.sparkno = 273
hitsound   = S4,18
guardsound = S4,18
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = 3,-11
air.velocity = 2,-9
air.fall = 1
fall.recover = 0
air.juggle = 1
yaccel = 0.40
kill       = Var(9) = 0
fall.kill  = Var(9) = 0
guard.kill = Var(9) = 0

[State 1000, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------
[StateDef 9009]
type    = S
movetype= A
physics = S
juggle  = 6
ctrl = 0
velset = 0,0,0
anim = 1010
sprpriority = 9

[State 10000, open]
type = PlaySnd
trigger1 = AnimElem = 2 
value = 4, 6

[State 88500, huck]
type = VelAdd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 4
X = -10

;[State 1200, 2at]
;type = Explod
;trigger1 = animelem = 1
;anim = 1000
;pos = -10,-130
;postype = p1
;ID = 112
;sprpriority  >= 2

[State 1200, BoltFat]
type = Projectile
trigger1 = AnimElem = 4
trigger1 = stateno != 621
;triggerall = p2life > 10
;triggerall = p2life >= 2
trigger2 = stateno = 621
trigger2 = AnimElem = 1
projanim = 1001
;projhitanim = 1000
;projremanim = 1000
offset = 30*const(size.xscale), -114*const(size.xscale)
ID = 997
velocity = 10, 0 
remvelocity = 0, 0
; HitDef part of projectile info
attr = S, SP
projID = 1234
damage    = 100, 23
animtype = Light
air.animtype = Back
guardflag = HL
pausetime = 40,15
sparkno = 16
sparkxy = 60,0
projremove = 0
guard.sparkno = -1
hitsound   = S4,19
guardsound = S3,9
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -15,0
air.velocity = -3,-4
air.fall = 1
fall.recover = 0
air.juggle = 3
;palfx.time = 20
;palfx.mul = 155,255,0
;palfx.add = 0,55,0
;palfx.sinadd = 55,155,0,5
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 88500, NotFreindly]
type = VarSet
trigger1 = AnimElem = 4 
v = 5
value = 1

[State 88500, Fall]
type = ChangeState
trigger1 = AnimTime = 0
value = 1601

; Drop
[Statedef 1601]
type    = A
movetype= I
physics = A
juggle  = 4
velset = 0,0
anim = 2244
ctrl = 0

[State 1101]
type = Veladd
trigger1 = time > 0
y = .3

;------------
; LightningFAT
[StateDef 12001]
type = S
movetype= H
physics = N
velset = 0,0

[State 1005, CSZ4]
type = LifeAdd
trigger1 = Life < 2
value = -10

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

[State 1005, freeze in anim]
type = Changeanim
trigger1 = time != 0
value = Var(23)

[State 1005, Frosty color]
type = palFX
trigger1 = time != 0
;trigger1 = var(23) = 1
add = 100,150,250	
mul = 200,200,200
time = 2

[State 1005, VELSET]
type = velset
trigger1 = time = 0
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
trigger1 = time = 200
trigger1 = Pos Y > -1
value = 0
ctrl = 1

[State 1005, CSZ]
type = Changestate
trigger1 = time = 200
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
anim = 99981

[State 1009, Frosty color]
type = palFX
trigger1 = time != 0
;trigger1 = var(23) = 1
add = 100,150,250	
mul = 200,200,200
time = 0

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

;--------------------------
; Double ice hits back22222222
[Statedef 1019]
type    = S
movetype= H
physics = N
juggle  = 0
velset = 0,0
ctrl = 0
anim = 1019

[State 1009, Frosty color]
type = palFX
trigger1 = time != 0
;trigger1 = var(23) = 1
add = 100,150,250	
mul = 200,200,200
time = 0

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
; 
[StateDef 10000]
type    = A
movetype= A
physics = N
juggle  = 2
ctrl = 0
velset = 0,0,0
anim = 778



[State 1000]
type = PlaySnd
trigger1 = AnimElem = 1
value = 4, 24

[State 431, 3.2]
type = VarRandom
trigger1 = Time = 5
v = 11
range = 1, 60

[State 431, 3.5]
type = Playsnd
trigger1 = Var(11) = [1, 20]
trigger1 = time = 5
value = 4, 3
volume = 50

[State 431, 3.6]
type = Playsnd
trigger1 = Var(11) = [21, 40]
trigger1 = time = 5
value = 2, 0
volume = 50

[State 431, 3.7]
type = Playsnd
trigger1 = Var(11) = [41, 60]
trigger1 = time = 5
value = 2, 1
volume = 10

[State 1000, Accell]
type = VelAdd
trigger1 = Time < 6
x = 2

[State 1000, 10]
type = HitDef
trigger1 = AnimElem = 3
trigger1 = p2stateno != 5120
attr = S, SA
animtype  = back
damage    = 298, 149
guardflag = MA
hitflag = MAF
pausetime = 0,2
sparkno = -1
guard.sparkno = -1
hitsound   = 5,1
guardsound = 5,14
ground.type = High
ground.slidetime = 0
ground.hittime  = 0
ground.velocity = 0
air.velocity = -0.3,-4.2
air.hittime = 17  
p1stateno = 10100
p2stateno = 10300
yaccel = 0.5
fall = 1
fall.recover = 0
kill       = Var(9) = 0
fall.kill  = Var(9) = 0
guard.kill = Var(9) = 0

[State 1000, BounceOff]
type = ChangeState
trigger1 = MoveGuarded = 1
ctrl = 0
value = 10018

[State 1000, SlidToAHalt]
type = ChangeState
trigger1 = time > 50
trigger2 = P2Dist X <= -20
ctrl = 0
value = 10020

[State 1000, OverShoot]
type = ChangeState
trigger1 = FrontEdgeDist <= 20
ctrl = 0
value = 10020

;--------------------------------------------
; Torpedo Bounce
[StateDef 10010]
type    = A
movetype= I
physics = A
ctrl = 0
velset = -2,-8
anim = 10466

[State 1200]
type = PlaySnd
trigger1 = AnimElem = 1
value = 4, 54

[State 1001, 10]
type = VelAdd
trigger1 = Time = [0, 7]
x = -0.2

[State 1001, 10]
type = PosAdd
trigger1 = Time = 0
y = -45

; Torpedo Bounce
[StateDef 10018]
type    = A
movetype= I
physics = A
ctrl = 0
velset = 0,-8
anim = 10466

[State 1200]
type = PlaySnd
trigger1 = AnimElem = 1
value = 4, 54

[State 1001, 10]
type = PosAdd
trigger1 = Time = 0
y = -45


;--------------------------------------------
; 
[StateDef 10020]
type    = S
movetype= I
physics = S
ctrl = 0
anim = 10455


[State 1200]
type = PlaySnd
trigger1 = AnimElem = 1
value = 4, 24

[State 1001, 10]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0

;--------------------------------------------
[StateDef 10030]
type    = A
movetype= A
physics = N
juggle  = 2
ctrl = 0

[State 1000, 10]
type = HitDef
trigger1 = Time <= 5
trigger1 = p2stateno != 5120
attr = S, SA
animtype  = back
damage    = 298, 149
guardflag = MA
hitflag = HAF
pausetime = 0,2
sparkno = -1
guard.sparkno = -1
hitsound   = 5,1
guardsound = 4,14
ground.type = High
ground.slidetime = 0
ground.hittime  = 0
ground.velocity = 0
air.velocity = -0.3,-4.2
air.hittime = 17  
p1stateno = 10100
p2stateno = 10300
fall = 1
fall.recover = 0
kill       = Var(9) = 0
fall.kill  = Var(9) = 0
guard.kill = Var(9) = 0

[State 1001, 10]
type = ChangeState
trigger1 = Time = 10
ctrl = 0
value = 10020


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
trigger3 = p2stateno = 9010

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

; Spear Toss!!!
[Statedef 10022]
type    = S
movetype= A
physics = S
juggle  = 2
velset = 0,0
anim = 10022
ctrl = 0

[State 10000, rakieta]
type = PlaySnd
trigger1 = AnimElem = 1
value = 6, 9


[State 1200]
type = PlaySnd
trigger1 = AnimElem = 1
value = 6, 3

[State 1000, 0.1]
type = Posset
trigger1 = Pos Y != 0
trigger1 = time = 0
Y = 0

[State 1200, BoltFat]
type = Projectile
trigger1 = AnimElem = 4;3
projanim = 10042
projhitanim = 16102
projremanim = 16102
offset = 60*const(size.xscale), -115*const(size.xscale)
velocity = 9, 0 
remvelocity = 0, 0
; HitDef part of projectile info
attr = S, SP
projID = 1234
damage    = 240, 120
animtype = Light
air.animtype = Back                               
guardflag = HL
hitflag = MAF            
priority = 2, Hit                    
animtype = Light
air.animtype = Back
guardflag = HL
pausetime = 0,2
sparkno = -1
guard.sparkno = -1
hitsound   = 5,1
guardsound = 5,14
ground.type = High
ground.slidetime = 20
ground.hittime  = 15
ground.velocity = -15,0
air.velocity = -3,-4
air.fall = 1
yaccel = 0.5
p2stateno = 21238
fall.recover = 0
air.juggle = 3
kill       = Var(9) = 0
fall.kill  = Var(9) = 0
guard.kill = Var(9) = 0


[State 1000, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


[StateDef 1400]
type    = A
movetype= A
physics = N
juggle  = 2
ctrl = 0
velset = 0,0
anim = 5331

[State 1100, aAccell]
type = VelSet
trigger1 = Time < 40
x = 10


[State 1200]
type = PlaySnd
trigger1 = AnimElem = 1
value = 4, 24

[State 1000, gibber]
type = PlaySnd
trigger1 = Time = 1
value = 1, 6

[State 1000, bber]
type = PlaySnd
trigger1 = Time = 1
value = 1, 1

[State 1000, 10]
type = HitDef
trigger1 = AnimElem = 3
attr = S, SA
animtype  = back
damage    = 232, 116
guardflag = HLMF
hitflag = AHLMF
pausetime = 20,2
sparkno = -1
guard.sparkno = -1
hitsound   = 5,0
p1stateno = 1401
guardsound = 5,14 
ground.type = High
ground.slidetime = 0
ground.hittime  = 0
ground.velocity = -3,-3
air.velocity = -3,-3
;yaccel = 0.45
air.hittime = 17  
fall = 1
fall.recover = 0
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 1000, Bounf]
type = ChangeState
trigger1 = Moveguarded = 1
value = 1401

[State 1000, BounceOff]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0
;--------------------------------------------
[StateDef 1401]
type    = A
movetype= I
physics = N
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


[StateDef 777]
type    = A
movetype= I
physics = A
ctrl = 0
velset = -2,-8
anim = 10466

[State 1001, 10]
type = VelAdd
trigger1 = Time = [0, 7]
x = -0.2

[State 1001, 10]
type = PosAdd
trigger1 = Time = 0
y = -45

; Torpedo Bounce
[StateDef 10018]
type    = A
movetype= I
physics = A
ctrl = 0
velset = 0,-8
anim = 10466

[State 1200]
type = PlaySnd
trigger1 = AnimElem = 1
value = 4, 24

[State 1001, 10]
type = PosAdd
trigger1 = Time = 0
y = -45



[StateDef 10000]
type    = A
movetype= A
physics = N
juggle  = 2
ctrl = 0
velset = 0,0,0
anim = 778


[State 1000]
type = PlaySnd
trigger1 = AnimElem = 1
value = 4, 24



[State 431, 3.2]
type = VarRandom
trigger1 = Time = 5
v = 11
range = 1, 60

[State 431, 3.5]
type = Playsnd
trigger1 = Var(11) = [1, 20]
trigger1 = time = 5
value = 4, 3
volume = 50

[State 431, 3.6]
type = Playsnd
trigger1 = Var(11) = [21, 40]
trigger1 = time = 5
value = 2, 0
volume = 50

[State 431, 3.7]
type = Playsnd
trigger1 = Var(11) = [41, 60]
trigger1 = time = 5
value = 2, 1
volume = 10



[State 1000, Accell]
type = VelAdd
trigger1 = Time < 6
x = 2

[State 1000, 10]
type = HitDef
trigger1 = AnimElem = 3
trigger1 = p2stateno != 5120
attr = S, SA
animtype  = back
damage    = 298, 149
guardflag = MA
hitflag = MAF
pausetime = 0,2
sparkno = -1
guard.sparkno = -1
hitsound   = 5,1
guardsound = 5,14
ground.type = High
ground.slidetime = 0
ground.hittime  = 0
ground.velocity = 0
air.velocity = -0.3,-4.2
air.hittime = 17  
p1stateno = 10100
p2stateno = 10300
yaccel = 0.5
fall = 1
fall.recover = 0
kill       = Var(9) = 0
fall.kill  = Var(9) = 0
guard.kill = Var(9) = 0

[State 1000, BounceOff]
type = ChangeState
trigger1 = MoveGuarded = 1
ctrl = 0
value = 10018

[State 1000, SlidToAHalt]
type = ChangeState
trigger1 = time > 50
trigger2 = P2Dist X <= -20
ctrl = 0
value = 10020

[State 1000, OverShoot]
type = ChangeState
trigger1 = FrontEdgeDist <= 20
ctrl = 0
value = 10030

;--------------------------------------------
; Torpedo Bounce
[StateDef 10010]
type    = A
movetype= I
physics = A
ctrl = 0
velset = -2,-8
anim = 10466

[State 1001, 10]
type = VelAdd
trigger1 = Time = [0, 7]
x = -0.2

[State 1001, 10]
type = PosAdd
trigger1 = Time = 0
y = -45

; Torpedo Bounce
[StateDef 10018]
type    = A
movetype= I
physics = A
ctrl = 0
velset = 0,-8
anim = 10466

[State 1001, 10]
type = PosAdd
trigger1 = Time = 0
y = -45


;--------------------------------------------
; 
[StateDef 10020]
type    = S
movetype= I
physics = S
ctrl = 0
anim = 1545

[State 1200]
type = PlaySnd
trigger1 = AnimElem = 1
value = 4, 24


[State 1001, 10]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0

;--------------------------------------------
[StateDef 10030]
type    = A
movetype= A
physics = N
juggle  = 2
ctrl = 0

[State 1000, 10]
type = HitDef
trigger1 = Time <= 5
trigger1 = p2stateno != 5120
attr = S, SA
animtype  = back
damage    = 298, 149
guardflag = MA
hitflag = HAF
pausetime = 0,2
sparkno = -1
guard.sparkno = -1
hitsound   = 5,1
guardsound = 4,14
ground.type = High
ground.slidetime = 0
ground.hittime  = 0
ground.velocity = 0
air.velocity = -0.3,-4.2
air.hittime = 17  
p1stateno = 10100
p2stateno = 10300
fall = 1
fall.recover = 0
kill       = Var(9) = 0
fall.kill  = Var(9) = 0
guard.kill = Var(9) = 0

[State 1001, 10]
type = ChangeState
trigger1 = Time = 10
ctrl = 0
value = 10020

;----------------------------------------------
; I hitum now fly.
[StateDef 10100]
type    = A
movetype= A
physics = N
juggle  = 2
ctrl = 0
anim = 10509

[State 1010, setSpeed]
Type = VelSet
trigger1 = Time = 0
trigger1 = Vel X < 12
X = 12

[State 1010, TurnToMe]
Type = TargetFacing
trigger1 = Time = 0
value = -1

[State 1010, StickToHands]
Type = TargetBind
trigger1 = Time >= 0
pos = 16*const(size.xscale), -67*const(size.xscale)

[State 1010, StopEarly]
Type = ScreenBound
trigger1 = Time >= 40
value = 0
;movecamera = 0, 0

[State 1010, BangHitWall]
type = PlaySnd
trigger1 = FrontEdgeDist <= 20
value = F5, 0

[State 1010, YouBounce]
type = ChangeState
trigger1 = FrontEdgeDist <= 20
value = 10110
ctrl = 0

;----------------------------------------------
; I hitum now fly.
[StateDef 10110]
type    = A
movetype= A
physics = N
juggle  = 2
ctrl = 0
velset = 0,0
anim = 10509

[State 1010, HimHitWall]
type = TargetState
trigger1 = Time = 5
value = 10310
ctrl = 0

[State 1010, YouBounce]
type = ChangeState
trigger1 = Time = 5
value = 10010
ctrl = 0

;----------------------------------------------
;----------------------------------------------
; I hitum now he fly.
[StateDef 10300]
type    = A
movetype= H
physics = N
juggle  = 2
ctrl = 0

[State 1030, OW]
type = ChangeAnim2
trigger1 = time = 0
value = 1056

[State 1030, StopEarly]
Type = ScreenBound
trigger1 = Time >= 40
value = 0
;movecamera = 0, 0

[State 1031, HitGround]
type = SelfState
trigger1 = (Pos Y = 0) || (Vel Y != 0)
value = 5100 ;Hit ground


;----------------------------------------------
; Player Two hit the dirt.
[StateDef 10310]
type    = A
movetype= H
physics = N
juggle  = 2
velset = 0,0,0
ctrl = 0

[State 1031, Gravity]
type = VelAdd
Trigger1 = 1
y = .2

[State 1031, Falling]
type = ChangeAnim2
trigger1 = time = 0
value = 1031

[State 1031, HitGround]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100 ;Hit ground


[StateDef 2002]
type    = S
movetype= A
physics = S
juggle  = 4
ctrl = 0
anim = 9105

[State 1200]
type = PlaySnd
trigger1 = AnimElem = 1
value = 4, 24

[State 1100, aAccell]
type = VelAdd
trigger1 = Time < 15
;trigger1 = Time > 45
x = 8.2;10

[State 181, selFre]
type = VarRandom
trigger1 = time = 0
v = 11
range = 0, 10

[State 3100, Super D]
type = AfterImage
trigger1 = Var(11) != 10
trigger1 = time = 1
FrameGap = 3
length = 15
timegap = 1
PalBright   =   0,  0,  0
PalContrast = 10,80,10
PalAdd      =   0,  10,  0
PalMul      =  1,1,1
Trans = Add1
time = 20

[State 3100, Super D]
type = AfterImage
trigger1 = Var(11) = 10
trigger1 = time = 1
FrameGap = 3
length = 15
timegap = 1
PalBright   =   0,  0,  0
PalContrast = 80,10,10
PalAdd      =   10,  0,  0
PalMul      =  1,1,1
Trans = Add1
time = 20

[State 1000, bber]
type = PlaySnd
trigger1 = Time = 1
value = 1, 2
volume = 70

[State 1000, 10]
type = HitDef
trigger1 = AnimElem = 5
trigger1 = Var(11) != 10
attr = S, SA
animtype  = back
damage    = 298, 149
guardflag = HLMF
hitflag = AHLMF
pausetime = 10,2
sparkno = -1
guard.sparkno = -1
hitsound   = 5,0
p1stateno = 2001
guardsound = 5,14 
ground.type = High
ground.slidetime = 0
ground.hittime  = 0
ground.velocity = -3.5,-3.5
air.velocity = -3.5,-5
air.hittime = 17  
fall = 1
fall.recover = 0
yaccel = 0.5
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 1000, 10]
type = HitDef
trigger1 = AnimElem = 5
trigger1 = Var(11) = 10
attr = S, SA
animtype  = back
damage    = 348, 199
guardflag = HLMF
hitflag = AHLMF
pausetime = 10,2
sparkno = -1
guard.sparkno = -1
hitsound   = 5,0
p1stateno = 2001
guardsound = 5,14 
ground.type = High
ground.slidetime = 0
ground.hittime  = 0
ground.velocity = -3.5,-3.5
air.velocity = -3.5,-5
air.hittime = 17  
fall = 1
fall.recover = 0
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 1000, Bounf]
type = ChangeState
trigger1 = Moveguarded = 1
value = 2001

[State 1000, BounceOff]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0


;--------------------------------------------
[StateDef 2001]
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















[StateDef 1300]
type    = S
movetype= A
physics = S
juggle  = 2
ctrl = 0
velset = 0,0,0
anim = 4447

[State 1200]
type = PlaySnd
trigger1 = AnimElem = 1
value = 4, 14

[State 1200]
type = PlaySnd
trigger1 = AnimElem = 1
value = 4, 24


[State 1200, Za]
type = VelSet
trigger1 = time = 1
trigger2 = Vel Y != 0
y = 0

[State 1200, 2at]
type = Explod
trigger1 = animelem = 3;1
anim = 912
pos = 48,-75;35,-75
postype = p1
ID = 112
sprpriority  >= 2


[State 181, DIED]
type = Explod
trigger1 = time = 1
anim = 888
id = 7088
pos = 16,10
postype = p1
facing = 1
sprpriority = 1
ownpal = 1
removetime = 420

[State 1200, BoltFat]
type = Projectile
triggerall = time = 22;AnimElem = 3
trigger1 = p2stateno != 12001
trigger1 = p2stateno != 1009
projanim = 101011
projhitanim = 103033
projremanim = 103033
offset = 36*const(size.xscale), -76*const(size.xscale)
ID = 997
velocity = 8, 0 
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
guardsound = 5,14  
ground.type = High
ground.slidetime = 14
ground.hittime  = 16
air.juggle = 3
;palfx.time = 20
;palfx.mul = 70,250,270
;palfx.add = 89,100,150
;palfx.sinadd = 180,180,180,5
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)


[State 1200, BoltFat]
type = Projectile
triggerall = AnimElem = 3
trigger1 = p2stateno = 12001
trigger2 = p2stateno = 1009
projanim = 101011
;projhitanim = 1230
;projremanim = 1211
offset = 5*const(size.xscale), -75*const(size.xscale)
ID = 997
velocity = 8, 0 
remvelocity = 0, 0
; HitDef part of projectile info
attr = S, NT
animtype = Hard
air.animtype = Back
air.fall = 1
guardflag = HL
pausetime = 0,2
sparkno = -1
p2stateno = 1007
p1stateno = 1009
numhits = -1
guard.sparkno = -1
hitsound   = s4,17
guardsound = 5,14  
ground.type = High
ground.slidetime = 14
ground.hittime  = 16
air.juggle = 3
;palfx.time = 20
;palfx.mul = 70,250,270
;palfx.add = 89,100,150
;palfx.sinadd = 180,180,180,5
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)


[State 1200, 10]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0

[StateDef 1002]
type    = S
movetype= A
physics = S
juggle  = 2
ctrl = 0
velset = 0,0,0
anim = 1000

[State 1200]
type = PlaySnd
trigger1 = AnimElem = 7
value = 4, 4
channel = 3

[State 1200, Za]
type = VelSet
trigger1 = time = 1
trigger2 = Vel Y != 0
y = 0

[State 1200, BoltFat]
type = Projectile
trigger1 = AnimElem = 8
projanim = 1002
;projhitanim = 1230
;projremanim = 1211
offset = 60*const(size.xscale), -100*const(size.xscale)
velocity = 12, 0 
remvelocity = 0, 0
; HitDef part of projectile info
attr = S, SP
damage    = 140, 23
animtype = Light
air.animtype = Back
air.fall = 1
guardflag = HL
pausetime = 0,2
sparkno = -1
guard.sparkno = -1
hitsound   = s4,17
guardsound = 5,14  
ground.type = High
p2stateno = 1007
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)


[State 1200, 10]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0
;------------
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











[Statedef 1009]
type    = S
movetype= H
physics = N
juggle  = 0
velset = 0,0
ctrl = 0
anim = 99981

[State 1200]
type = PlaySnd
trigger1 = AnimElem = 1
value = 4, 24

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



;--------------------------
; Double ice hits back22222222
[Statedef 1019]
type    = S
movetype= H
physics = N
juggle  = 0
velset = 0,0
ctrl = 0
anim = 1019

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







[StateDef 15003];barrida
type    = S
movetype= A
physics = S
juggle  = 2
ctrl = 0
anim = 10044

[State 1100, aAccell]
type = VelAdd
trigger1 = Time < 22
x = 9

[State 1000, gibber]
type = PlaySnd
trigger1 = animelem = 1
value = 1, 3

[State 1200]
type = PlaySnd
trigger1 = AnimElem = 1
value = 4, 24

[State 1000, 10]
type = HitDef
trigger1 = AnimElem = 3
attr = S, SA
animtype  = back
air.animtype  = Back
air.hittime  = 17;55
air.velocity = -3, -7
yaccel = 0.5
damage    = 132, 68
guardflag = L
hitflag = AHLMF
pausetime = 10,2
sparkno = -1
guard.sparkno = -1
hitsound   = -1
p1stateno = 15013
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
value = 15013;2001

[State 1000, BounceOff]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0
;--------------------------------------------
[StateDef 15013]
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
;------------------------------














[Statedef 11111]
type    = S
movetype= A
physics = S
juggle  = 7
velset = 0,0
anim = 4440
ctrl = 0


[State 10000, open]
type = PlaySnd
trigger1 = AnimElem = 2 
value = 4, 6


[State 1200]
type = PlaySnd
trigger1 = AnimElem = 1
value = 6, 3


[State 1000, 0.1]
type = Posset
trigger1 = Pos Y != 0
trigger1 = time = 0
Y = 0


[State 2, blood111]
type = Helper
trigger1 = animelem = 3
trigger1 = numhelper(1011) < 1
ID = 1011
stateno = 1088
pos = 40, -76
postype = p1
persistent = 0
ignorehitpause = 1


[State 1000, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 1088]
type    = S
movetype= A
physics = S
juggle  = 11
velset = 7,0
anim = 166331

[State 1000, 0.12]
type = VelSet
trigger1 = 1
X = 8


[State 1200, BoltFat]
type = HitDef
trigger1 = !movecontact
attr = S, SP
damage    = 215, 107
animtype = Light
air.animtype = Back
guardflag = HL
pausetime = 0,20
sparkno = -1
guard.sparkno = -1
p1stateno = 1090
p2stateno = 21241;21238
hitsound   = S4,19
guardsound = 5,14  
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -5,0
air.velocity = -4,-5
air.fall = 1
fall.recover = 0
air.juggle = 11
yaccel = 0.5
kill       = root, Var(9) = 0
fall.kill  = root, Var(9) = 0
guard.kill = root, Var(9) = 0


[State 1000, 0.123]
type = changestate
trigger1 = moveguarded
value = 10899

[State 1000, 0.1]
type = Destroyself
trigger1 = time >= 150
trigger1 = 1


[Statedef 10899]
type    = S
movetype= A
physics = S
juggle  = 2
velset = 0,0
anim = 166331

[State 1000, 0.1]
type = VelSet
trigger1 = time <= 40
Y = 0
X = 0

[State 1000, 0.12]
type = VelSet
trigger1 = time >= 50
Y = -7
X = -7

[State 1000, 0.1]
type = Destroyself
trigger1 = time >= 70
trigger1 = 1

[Statedef 1090]
type    = S
movetype= A
physics = S
juggle  = 2
velset = 0,0
anim = 166331

[State 2, Upperblood]
type = Helper
trigger1 = time = 0
trigger1 = p2stateno = 21241
ID = 127
stateno = 31
pos = -40, 75
postype = p1
persistent = 0
ignorehitpause = 1


[State 1000, 0.1]
type = VelSet
trigger1 = time <= 30
Y = 0
X = 2;0

[State 1000, 0.12]
type = VelSet
trigger1 = time >= 35
Y = -7
X = -7

[State 1000, 0.1]
type = Destroyself
trigger1 = time >= 70
trigger1 = 1

[StateDef 1002]
type    = S
movetype= A
physics = S
juggle  = 2
ctrl = 0
velset = 0,0,0
anim = 4440







[Statedef 1200]
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 1200
sprpriority = 5

[State 1200, ound]
type = PlaySnd
trigger1 = animelem = 7
value = F5, 29
volume = 50

[State 1200]
type = PlaySnd
trigger1 = AnimElem = 1
value = 6, 3

[State 235, sssa]
type = envshake
trigger1 = animelem = 7
time = 10
freq = 100
ampl = 7

[State 1100, 1]
type = HitDef
Trigger1 = Time = 0
;Trigger1 = p2statetype != A
attr = S, NA
damage=150
hitflag = MFD
guardflag = A
sparkno = -1
sprpriority = 5
p2facing = 1
p2stateno = 21238
air.fall = 1
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 1100, 2]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1





[State 1200, Za]
type = VelSet
trigger1 = time = 1
trigger2 = Vel Y != 0
y = 0


[State 1200, BoltFat]
type = Projectile
trigger1 = AnimElem = 8
projanim = 888
;projhitanim = 1230
;projremanim = 1211
offset = 60*const(size.xscale), -100*const(size.xscale)
velocity = 12, 0 
remvelocity = 0, 0
; HitDef part of projectile info
attr = S, SP
damage    = 140, 23
animtype = Light
air.animtype = Back
air.fall = 1
guardflag = HL
pausetime = 0,2
sparkno = -1
guard.sparkno = -1
hitsound   = s94,3
ground.type = High
p2stateno = 21238;1007
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)


[State 1200, 10]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0



[Statedef 17777]
type    = S
movetype= A
physics = S
juggle  = 2
velset = 0,0
anim = 2222
ctrl = 0

;[State 10000, open]
;type = PlaySnd
;trigger1 = AnimElem = 2 
;value = 14, 0

[State 10000, open]
type = PlaySnd
trigger1 = AnimElem = 2 
value = 4, 5

[State 10000, open]
type = PlaySnd
trigger1 = AnimElem = 2 
value = 6, 3

[State 1000, 0.1]
type = Posset
trigger1 = Pos Y != 0
trigger1 = time = 0
Y = 0

[State 1000, nonkilling helper]
type = helper
trigger1 = AnimElem = 2
stateno = 1712
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
[Statedef 1712]
type    = S
movetype= A
physics = N
poweradd= 120
velset = 10,0;10, 0
anim = 1779
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
trigger1 = time = 5
;projanim = 1001
pos = 16*const(size.xscale), -16*const(size.xscale)
ID = 997
velocity = 9, 0 
remvelocity = 0, 0
; HitDef part of projectile info
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
guardsound = 5,14
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



















[StateDef 1333]
type    = S
movetype= A
physics = S
juggle  = 2
velset = 0,0
anim = 1333
ctrl = 0

[State 1000, sai]
type = PlaySnd
trigger1 = AnimElem = 3
value = 10, 1

[State 1200]
type = PlaySnd
trigger1 = AnimElem = 1
value = 6, 3


[State 1000, 0.1]
type = Posset
trigger1 = Pos Y != 0
trigger1 = time = 0
Y = 0

[State 1000, saivolando]
type = Projectile
trigger1 = AnimElem = 4;3
projanim = 1331
projhitanim = 1332
projremanim = 1332
offset = 30*const(size.xscale), -100*const(size.xscale)
velocity = 9, 0 
remvelocity = 0, 0
; info del HitDef del proyectíl
attr = S, SP
p2stateno = 21238
projID = 1234
damage    = 240, 120
animtype = Light
air.animtype = Back                               
guardflag = HL
hitflag = MAF            
priority = 2, Hit                    
animtype = Light
air.animtype = Back
guardflag = HL
pausetime = 0,2
sparkno = -1
guard.sparkno = -1
hitsound   = S10,2
guardsound = 5,14
ground.type = High
ground.slidetime = 20
ground.hittime  = 15
ground.velocity = -15,0
air.velocity = -4,-5
yaccel = 0.45
air.fall = 1
fall.recover = 0
air.juggle = 3
kill       = Var(9) = 0
fall.kill  = Var(9) = 0
guard.kill = Var(9) = 0

[State 1000, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
