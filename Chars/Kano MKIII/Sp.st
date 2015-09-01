[Statedef 1000]   ;tira cuchillas
type    = S
movetype= A
physics = S
juggle  = 2
velset = 0,0
anim = 1003
ctrl = 0

[State 10000, open]
type = PlaySnd
trigger1 = AnimElem = 2 
value = 14, 0

[State 1000, 0.1]
type = Posset
trigger1 = Pos Y != 0
trigger1 = time = 0
Y = 0

[State 1200, BoltFat]
type = Projectile
trigger1 = AnimElem = 8
projanim = 1000
projhitanim = 1001
projremanim = 1001
offset = 50*const(size.xscale), -110*const(size.xscale)
velocity = 9, 0 
;remvelocity = -10, -8
; HitDef part of projectile info
attr = S, SP
projID = 1234
damage    = 182, 91
animtype = Light
air.animtype = Back
guardflag = HL
pausetime = 0,2
sparkno = -1
sparkxy = 20,0
guard.sparkno = -1
hitsound   = 5,0
guardsound = 5,0
air.velocity = -4,-5
air.fall = 1
fall.recover = 0
air.juggle = 3
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
;-----------------------------------
[StateDef 1100]    ;cuchillaso
type    = A
movetype= A
physics = S
juggle  = 2
ctrl = 0
anim = 1004

[State 1100, aAccell]
type = VelAdd
trigger1 = time <= 12
trigger1 = Time > 4
x = 6

[State 1100, aAccellsd]
type = VelSet
trigger1 = time >= 13
x = 0

[State 1000, bber]
type = PlaySnd
trigger1 = Time = 1
value = 4, 14

[State 1000, 10]
type = HitDef
trigger1 = !movecontact
attr = S, SA
animtype  = back
damage    = 257, 128
guardflag = M
hitflag = MAF
;pausetime = 0,2
sparkno = -1
guard.sparkno = -1
hitsound   = -1;5,0
guardsound = 5,14 
air.velocity = -4,-4
air.hittime = 17  
fall.recover = 0
p1stateno = 1101;012
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
[StateDef 1101]
type    = S
movetype= I
physics = S
juggle  = 2
;velset = 0,0
ctrl = 0

[State 2, Upperblood]
type = Helper
trigger1 = time = 0
trigger1 = numhelper(28) < 1
ID = 28
stateno = 28
pos = 0, 0
postype = p1
persistent = 0
ignorehitpause = 1

[State 1000, BounceOff]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0
;--------------------
[Statedef 1200] ;agarre que rebolea
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 1015
;sprpriority = 2

[State 820, 1]
type = Sprpriority
Trigger1 = Time = 0
value = 5;2;1

[State 800, 1]
type = HitDef
trigger1 = p2name != "shao kahn,"
trigger1 = p2name != "kintaro"
trigger1 = p2name != "goro"
trigger1 = p2name != "motaro"
Trigger1 = animelem = 4;3
attr = S, NA          ;Attributes: Standing, Normal Throw
hitflag = HAF          ;Affect only ground people who are not being hit
priority = 1, Miss    ;Throw has low priority, must be miss or dodge type.
damage = 307,153
sparkno = -1          ;No spark
sparkxy = 0,400
guardflag = HL
guard.pausetime = 30,0
hitsound = 5,14
guardsound = 5,14 
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
sprpriority = 5;-1      ;Draw in front of p2
p2facing = -1       ;Force p2 to face KFM
p1stateno = 1201;1016       ;On success, KFM changes to state 810
p2stateno = 1202;1017       ;If hit, p2 changes to state 820 in KFM's cns
guard.dist = 0        ;This prevents p2 from going into a guard state if close
;fall = 1              ;Force p2 into falling down
yaccel = 0.4
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
[Statedef 1201]
type    = S
movetype= A
physics = N
anim = 1016

[State 10000, open]
type = PlaySnd
trigger1 = time = 0;AnimElem = 4;2 
value = 10, 0
volume = 60

[State 820, 1]
type = Sprpriority
Trigger1 = Time = 0
value = 5;1

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
[Statedef 1202]
type    = A
movetype= H
physics = S
velset = 0,0
anim = 1017
;sprpriority = -1

[State 9010, 0.1]
type = Sprpriority
trigger1 = time = 0;animtime = 0
value = 1;>= 2

;[State 820, 1]
;type = ChangeAnim2
;Trigger1 = Time = 0
;value = 1017

[State 820, 435E1]
type = Playerpush
Trigger1 = 1
value = 0

[State 810, nd]
type = TURN
trigger1 = animtime =  0
trigger1 = anim =  1017

[State 820, 4435E1]
type = StateTypeSet
Trigger1 = animtime = 0
statetype = A
physics = A

[State 820, 4351]
type = posadd
Trigger1 = animtime = 0
trigger1 = anim =  1017
x = -5
y = -10

[State 820, 4351]
type = Velset
Trigger1 = animtime = 0
trigger1 = anim =  1017
x = -3;4.5
y = -5.5

[State 820, 4435E1]
type = changeanim
Trigger1 = animtime = 0
trigger1 = anim =  1017
value = 5030

[State 821, 4] ;Hit ground
type = SelfState
trigger1 = animtime = 0
trigger1 = anim =  5030
value = 5050 ;Hit ground
;--------------------------------
[StateDef 1300]  ; bola girando
type    = S
movetype= A
physics = S
juggle  = 2
ctrl = 0
anim = 2000

[State 1100, aAccell]
type = VelAdd
trigger1 = time <= 33
trigger1 = Time > 2
x = 12

[State 1000, bber]
type = PlaySnd
trigger1 = Time = 1
value = 4, 4

[State 1000, 10]
type = HitDef
trigger1 = 1;movecontact
attr = S, SA
animtype  = back
damage    = 240, 120
guardflag = HLMF
hitflag = ALMHF
pausetime = 0,2
sparkno = -1
guard.sparkno = -1
hitsound   = 5,0
p1stateno = 1301;10017
guardsound = 5,14 
ground.type = High
ground.slidetime = 0
ground.hittime  = 0
ground.velocity = -3,-4
air.velocity = -3,-4
air.hittime = 17
yaccel = 0.45
fall = 1
fall.recover = 0
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 1000, Bounf]
type = ChangeState
trigger1 = Moveguarded = 1
value = 1301;10017

[State 1000, BounceOff]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0
;--------------------------------------------
[StateDef 1301]
type    = A
movetype= I
physics = A
ctrl = 0
velset = 0,0
anim = 20002

[State 1000, Accellwsd]
type = VelSet
trigger1 = time  < 17
x = -.8

[State 1000, Accellw]
type = VelSet
trigger1 = animelem  = 9
x = 0

[State 1000, Accellwsdsd]
type = VelAdd
trigger1 = time  < 6
Y = -2.2

[State 1000, Accellwsdsdzs]
type = VelAdd
trigger1 = time  > 23
Y = 1

[State 1000, Accellzw]
type = VelSet
trigger1 = time = 12
trigger2 = time  > 32
Y = 0

[State 1001, 10]
type = Changestate
trigger1 = AnimTime = 0
value = 52
ctrl = 1
;------------------------
[StateDef 1400]; bola para arriba
type    = S
movetype= A
physics = S
juggle  = 4
ctrl = 0
anim = 2000

[State 1100, aAccell]
type = VelAdd
trigger1 = time > 1
trigger1 = Time < 12
x = 16
y = -2.8

[State 1100, aAcll]
type = VelSet
trigger1 = time = 11
trigger2 = animelem = 8
Y = 0
X = 0

[State 1100, aAcce]
type = VelAdd
trigger1 = Animelem  = 5
y = 10

[State 1000, bber]
type = PlaySnd
trigger1 = Time = 1
value = 4, 4

[State 1000, 10]
type = HitDef
trigger1 = !movecontact
attr = S, SA
animtype  = Back
damage    = 298, 149
guardflag = HL
hitflag = MAFD
pausetime = 0, 2
sparkno = -1
sparkxy = -55,-95
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
ground.velocity = -5,-6;-5            
air.velocity = -4,-6
air.hittime = 17  
ground.cornerpush.veloff = -25
yaccel = 0.45
p1stateno = 1301;10017
fall = 1
fall.recover = 0
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 1000, Bounf]
type = ChangeState
trigger1 = Moveguarded = 1
value = 1301;10017

[State 1000, BounceOff]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0
;------------------
[Statedef 1500];agarre aereo
type    = A
movetype= A
physics = A
juggle  = 0
velset = 0,0
ctrl = 0
anim = 2500
;sprpriority = 2

[State 800, 1]
type = HitDef
Trigger1 = time = 0
;trigger1 = pos Y != 0
pausetime = 10,15
attr = A, NT;A          ;Attributes: Standing, Normal Throw
hitflag = AF          ;Affect only ground people who are not being hit
;priority = 1, Miss    ;Throw has low priority, must be miss or dodge type.
air.animtype = Back
air.velocity = -3, 5
yaccel = 0.55
damage = 232
numhits = 0
hitsound = 5,14
sparkno = -1          ;No spark
sprpriority = -1      ;Draw in front of p2
fall = 1
fall.recover = 0
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 800, 2]
type = ChangeState
Trigger1 = Animtime = 0
value = 0
ctrl = 1
