[Statedef 1000];rosa
type    = S
movetype= A
physics = S
juggle  = 2
velset = 0,0
anim = 1003
ctrl = 0

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 1013
pos = 0,0
postype = p1
bindtime = 1
sprpriority = 3
shadow = 0,0,0

[State 10000, open]
type = PlaySnd
trigger1 = AnimElem = 2
value = 4, 19

[State 1000, 0.1]
type = Posset
trigger1 = Pos Y != 0
trigger1 = time = 0
Y = 0

[State 201, 347]
type = EnvShake
trigger1 = projcontact = 1
time = 13
freq = 30
ampl = 5

[State 1200, BoltFat]
type = Projectile
trigger1 = AnimElem = 7
projanim = 1000
projhitanim = 1001
projremanim = 1001
offset = 69*const(size.xscale), -90*const(size.xscale)
velocity = 8, 0
;remvelocity = -10, -8
; HitDef part of projectile info
attr = S, SP
projID = 1234
damage    = 190, 95
animtype = Light
air.animtype = Back
guardflag = HL
pausetime = 0,2
sparkno = -1
sparkxy = 20,0
guard.sparkno = -1
hitsound   = S4,21
guardsound = S4,21
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -5,0
air.velocity = -4,-5
air.fall = 1
fall.recover = 0
air.juggle = 3
yaccel = .5
p2stateno = 21238
envshake.time = 13
envshake.freq = 30
envshake.ampl = 5
kill       = Var(9) = 0
fall.kill  = Var(9) = 0
guard.kill = Var(9) = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = projcontact = 1
value = 1304
ctrl = 0

[State 1000, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;---------------------------------
[StateDef 1100];bicicleta
type    = S;A
movetype= A
physics = S
juggle  = 2
ctrl = 0
anim = 1004
velset = 0,0

[State 1100, aAccelsal]
type = Velset
trigger1 = time = 5
X = 3
Y = -8;7

[State 1100, aAccelsal]
type = VelAdd
trigger1 = !movecontact
trigger1 = time > 5
X = 3
Y = 0.23

[State 1100, aAccelsal]
type = Veladd
trigger1 = !movecontact
trigger1 = time > 30
Y = 0.12

[State 1000, gibber]
type = PlaySnd
trigger1 = Time = 0
value = 5, 13

[State 1000, gibber]
type = PlaySnd
trigger1 = Time = 0
value = 9, 5

[State 1000, 10]
type = HitDef
trigger1 = !movecontact
trigger1 = pos Y > -90
attr = S, NA
damage = 200,75
guardflag = HL
hitflag = HAF
p1stateno = 1101
p2stateno = 1110
priority = 2, Hit
sparkno = -1
guard.sparkno = -1
hitsound = S9,6
guardsound = 5,14
ground.type = Low
p2facing = 1
ground.slidetime = 20
ground.hittime  = 20
guard.ctrltime = 20;
guard.velocity = -2
air.fall = 1
yaccel = .45
fall.recover = 0
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 1000, BounceOff]
type = ChangeState
trigger1 = time > 7
trigger1 = pos Y > 0
ctrl = 1
value = 0

[State 1000, BounceOff]
type = ChangeState
trigger1 = moveguarded
value = 1104

;--------------------------------------------
[StateDef 1110];p2stateno
type    = A
movetype= H
physics = S
ctrl = 0
anim = 21238
velset = -2,-3

[state 1000,ply]
type = playsnd
trigger1 = (time % 10) = 1
value = 3,(2 + (random%2)*6)

[State 820, 4351]
type = posadd
trigger1 = time =  0
X = (p2bodydist X) -6
y = p2bodydist Y

[State 820, 4351]
type = Velset
Trigger1 = p2stateno = 1102
x = -1
y = 0

[State 820, 4351]
type = Veladd;set
Trigger1 = p2stateno = 1103
x = -2
y = 0.4

[State 0, VelSet]
type = VelSet
trigger1 = pos y < -120
y = 0

[State 821, 4]
type = SelfState
Trigger1 = p2stateno = 1103
value = 5050
;---------------------------
[StateDef 1101];p1stateno
type    = A
movetype= A
physics = S
velset = 0,-3

[State 1100, aAccelsal]
type = Veladd
trigger1 = 1
X = 2

[State 1303, 2]
type = EnvShake
trigger1 = MoveContact = 1
trigger2 = animelem = 4
trigger3 = animelem = 7
trigger4 = animelem = 10
trigger5 = animelem = 13
trigger6 = animelem = 16
trigger7 = animelem = 19
time = 8
freq = 150
ampl = 5

[state 1000,ply]
type = playsnd
trigger1 = MoveContact = 1
trigger2 = animelem = 4
trigger3 = animelem = 7
trigger4 = animelem = 10
trigger5 = animelem = 13
trigger6 = animelem = 16
trigger7 = animelem = 19
value = S9,6

[State 0, VelSet]
type = VelSet
trigger1 = pos y < -110
y = 0

[State 1000, BounceOff]
type = ChangeState
trigger1 = animelem = 19
value = 1102
;---------------------------
[StateDef 1102];quieto en y
type    = A
movetype= A
physics = S
velset = 1,0

[State 1100, aAccelsal]
type = Veladd
trigger1 = 1
y = 0.1

[State 1303, 2]
type = EnvShake
trigger1 = animelem = 19
time = 8
freq = 150
ampl = 5

[state 1000,ply]
type = playsnd
trigger1 = animelem = 19
value = F9,6

[State 1000, BounceOff]
type = ChangeState
trigger1 = animelem = 20;pos Y > 0
;ctrl = 1
value = 1103
;-------------------
[StateDef 1103];bajando
type    = A
movetype= A
physics = N
velset = 0,3.3

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = time = 0
value = 1005

[State 1100, aAccelsal]
type = Veladd
trigger1 = 1
Y = 0.2

[State 1000, BounceOff]
type = ChangeState
trigger1 = pos Y > 0
ctrl = 1
value = 0
;--------------------
[StateDef 1104];bloqueado
type    = A
movetype= A
physics = S
velset = 0,-1.5

[State 1100, aAccelsal]
type = Veladd
trigger1 = 1
Y = 0.1
X = -0.4

[State 1000, BounceOff]
type = ChangeState
trigger1 = pos Y > 0
ctrl = 1
value = 0
;--------------
[StateDef 1200]
type    = A
movetype= A
physics = S
juggle  = 2
ctrl = 0
anim = 900

[State 1100]
type = VarRandom
trigger1 = 1
v = 11
range = 0,5

[State 1100]
type = VarRandom
trigger1 = 1
v = 12
range = 0,10

[State 1100]
type = VarRandom
trigger1 = 1
v = 13
range = 901,902

[State 1100]
type = Explod
trigger1 = time < 29
trigger1 = !movecontact
anim = var(13)
pos = -18+var(11),-50-35*(time > 6)+var(12)
postype = p1
facing = 1
sprpriority = 1

[State 1100, aAccell]
type = VelAdd
trigger1 = Time < 29
trigger1 = Time > 10
x = 11

[State 1100, aAcce]
type = VelAdd
trigger1 = Animelem  = 1
trigger2 = Animelem  = 2
y = -12

[State 1100, aAcce]
type = VelSet
trigger1 = Animelem  = 3
y = 0

[State 1100, aAcce]
type = VelAdd
trigger1 = Animelem  = 7
trigger2 = Animelem  = 8
y = 6

[State 1000, bber]
type = PlaySnd
trigger1 = Time = 1
value = 4, 17

[State 1100, aAcce]
type = VelSet
trigger1 = movecontact
X = 0

[State 1000, 10]
type = HitDef
trigger1 = AnimElem = 3
attr = S, SA
animtype  = back
damage    = 256, 132
guardflag = HLMF
hitflag = AHLMF
pausetime = 3,2
sparkno = -1
guard.sparkno = -1
hitsound   = 5,0
guardsound = 5,14
ground.type = High
ground.slidetime = 0
ground.hittime  = 0
ground.velocity = -3,-4
air.velocity = -3,-4
air.hittime = 17
fall = 1
fall.recover = 0
yaccel = 0.5
envshake.time = 13
envshake.freq = 50
envshake.ampl = 5
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 1000, Bounf]
type = ChangeState
trigger1 = Moveguarded = 1
value = 1201

[State 1000, BounceOff]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0
;----------
[Statedef 1201]
type    = A
movetype= I
physics = A
juggle  = 4
velset = 0,0
ctrl = 0

[State 1101]
type = Veladd
trigger1 = time > 0
y = .3
;--------------------------------------------
[Statedef 1300]
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 125
sprpriority = 4

[State 1000, gibber]
type = PlaySnd
trigger1 = animelem = 6
value = 4, 11

[State 1000, gibbersds]
type = sprpriority
trigger1 = 1
value = 5

[State 800, 1]
type = HitDef
Trigger1 = animelem = 7
pausetime = 0,0
attr = S, ST          ;Attributes
hitflag = HAFD
guardflag = M          ;Affect only ground people who are not being hit
priority = 1, Miss    ;Throw has low priority, must be miss or dodge type.
damage = 330
sparkno = -1          ;No spark
guard.sparkno = -1
hitsound = 5,14
guardsound = 5,14
guard.slidetime = 5
guard.ctrltime = 2
guard.velocity = -2
sprpriority = -1      ;Draw in front of p2
p2facing = -1       ;Force p2 to face KFM
p2stateno = 1301       ;If hit, p2 changes to state 820 in KFM's cns
guard.dist = 0        ;This prevents p2 from going into a guard state if close
yaccel = .5
fall.recover = 0
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 810, Bind 7]
type = TargetBind
trigger1 = movehit = 1
pos = 60, 0

[State 800, 2]
type = ChangeState
Trigger1 = Animtime = 0
value = 0
ctrl = 1

;-------------

[Statedef 1301]
type    = A
movetype= H
physics = N
velset = 0,0
anim = 126
sprpriority = -2

[State 820, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 126

[State 820, 435E1]
type = posadd
Trigger1 = animtime = 0
X = -10

[State 810, nd]
type = TURN
trigger1 = Animtime =  0

;[State 821, 4] ;Hit ground
;type = SelfState
;trigger1 = animtime =  0
;value = 5050 ;Hit ground

[State 821, 4] ;Hit ground
type = changestate
trigger1 = animtime =  0
value = 1310

;-------------

[Statedef 1310]
type    = A
movetype= I
physics = N
velset = 0,0
sprpriority = -2

[State 820, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 5170

[State 820, 435E1]
type = posadd
Trigger1 = time = 0
X = 115
Y = -15

[State 820, 4351]
type = VelAdd
Trigger1 = 1
x = 2.7
y = 2.3

[State 821, 4]
type = changestate
trigger1 = pos Y > -1
value = 1320

;-------------

[Statedef 1320]
type    = A
movetype= I
physics = N
velset = 0,0
sprpriority = -2

[State 235, sssa]
type = envshake
trigger1 = time = 0
time = 15
freq = 150
ampl = 7

[state  20006,sound]
type = playsnd
trigger1 = time = 0
value = 3, (( random % 2) * 2)

[State 820, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 5170

[State 820, 1]
type = ChangeAnim2
Trigger1 = Time = 4
value = 5100

[State 820, 4351]
type = Velset
Trigger1 = time = 4
x = 2.7
y = -6

[State 820, 4351]
type = VelAdd
Trigger1 = time > 4
y = .5

[State 821, 4] ;Hit ground
type = SelfState
trigger1 = time > 9
trigger1 = pos Y > -6;= 0;animtime =  0
value = 5110;050 ;Hit ground


;-------------------------

[Statedef 1500]
type    = S
physics = S

[State 0, LifeAdd]
type = LifeAdd
trigger1 = var(10) = 1
value = Life

[State 0, LifeAdd]
type = LifeAdd
trigger1 = var(10) = 0
value = -Life/2

[State 0]
type = ChangeState
trigger1 = var(10) = 1
value = 1501

[State 0]
type = ChangeState
trigger1 = var(10) = 0
value = 1502

;-------------------------
[Statedef 1501]; Mode on
type    = S
physics = S

[State 0]
type = VarSet
trigger1 = 1
v = 10
value = 0

;-------------------------
[Statedef 1502]; Mode off
type    = S
physics = S

[State 0]
type = VarSet
trigger1 = 1
v = 10
value = 1

;-------------------------

[Statedef 1600]
type    = S
physics = S
juggle  = 2
velset = 0,0
anim = 1006
ctrl = 0

[State 0, LifeAdd]
type = LifeAdd
trigger1 = AnimElem = 3
value = 15

[State 1000, 7]
type = ChangeState
trigger1 = AnimTime = 0
triggerall = command != "sp6"
value = 0
ctrl = 1

[State 1000, 7]
type = ChangeState
trigger1 = AnimTime = 0
triggerall = command = "sp6"
value = 1600

;-------------------------
[StateDef 1700]
type    = A
movetype= A
physics = N
juggle  = 8
ctrl = 0
velset = 0,0,0
anim = 1008
;sprpriority = 9

[State 10000, open]
type = PlaySnd
trigger1 = AnimElem = 2
value = 4, 6

[State 1200, BoltFat]
type = Projectile
trigger1 = AnimElem = 4
trigger1 = stateno != 621
;triggerall = p2life > 10
;triggerall = p2life >= 2
trigger2 = stateno = 621
trigger2 = AnimElem = 1
projanim = 1009
projhitanim = 1009
projremanim = 1009
offset = 50*const(size.xscale), -60*const(size.xscale)
ID = 997
velocity = 6, 5
;remvelocity = -10, -8
; HitDef part of projectile info
attr = S, SP
projID = 1234
damage    = 190, 95
animtype = Light
air.animtype = Back
guardflag = HL
pausetime = 0,2
sparkno = -1
sparkxy = 20,0
guard.sparkno = -1
hitsound   = S4,18
guardsound = S4,18
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -5,0
air.velocity = -4,-5
air.fall = 1
air.juggle = 8
fall.recover = 0
yaccel = .45
p2stateno = 21238
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
value = 1701

; Drop
[Statedef 1701]
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

;--------------------------------------

[Statedef 1302]
type    = S
movetype= I
juggle  = 0
anim = 2041
velset = 0, 0
ctrl = 0

[State 7200, velset]
type = velset
trigger1  = time = 0
X = -1-(random%30)/10.0
;X = -0.8-(random%20)/10.0

[State 7200, velset]
type = velset
trigger1  = time = 0
Y = -6-(random%40)/10.0

[State 7200, vel]
type = veladd
trigger1 = time > 1
trigger1  = pos Y < root,var(57)
Y = .5;.4

[State 6000, 5]
type = Changestate
trigger1 = Pos Y > 0
value = 1303
;------------------------------------------------------------------------
;Nice Blood splat A lands
[Statedef 1303]
type    = S
movetype= I
juggle  = 0
anim = 2042
velset = 0,0
ctrl = 0

[State 6001, 1]
type = Destroyself
trigger1 = animtime = 0
;-------------------------------
[StateDef 1304];p1state acido
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
helpertype = normal ;player
name = "plasma"
ID = 1302
stateno = 1302
pos = 15,-112
postype = p2    ;p2,front,back,left,right
ontop = 1
facing = -1

[State 1200, 2at]
type = helper
trigger1 = time = 6
helpertype = normal ;player
name = "plasma"
ID = 1302
stateno = 1302
pos = 17,-118
postype = p2    ;p2,front,back,left,right
ontop = 1
facing = -1

[State 1200, 2at]
type = helper
trigger1 = time = 2
pos = 14,-108
helpertype = normal ;player
name = "plasma"
ID = 1302
stateno = 1302
postype = p2    ;p2,front,back,left,right
ontop = 1
facing = -1

[State 1200, 2at]
type = helper
trigger1 = time = 2
pos = 15,-103
helpertype = normal ;player
name = "plasma"
ID = 1302
stateno = 1302
postype = p2    ;p2,front,back,left,right
ontop = 1
facing = -1

[State 1200, 2at]
type = helper
trigger1 = time = 3
pos = 7,-114
helpertype = normal ;player
name = "plasma"
ID = 1302
stateno = 1302
postype = p2    ;p2,front,back,left,right
ontop = 1
facing = -1

[State 1200, 2at]
type = helper
trigger1 = time = 2
pos = 5,-110
helpertype = normal ;player
name = "plasma"
ID = 1302
stateno = 1302
postype = p2    ;p2,front,back,left,right
ontop = 1
facing = 1

[State 1200, 2at]
type = helper
trigger1 = time = 0
pos = 10,-100
helpertype = normal ;player
name = "plasma"
ID = 1302
stateno = 1302
postype = p2    ;p2,front,back,left,right
ontop = 1
facing = -1

[State 1200, 2at]
type = helper
trigger1 = time = 0
pos = 5,-90
helpertype = normal ;player
name = "plasma"
ID = 1302
stateno = 1302
postype = p2    ;p2,front,back,left,right
ontop = 1
facing = -1

[State 1200, 2at]
type = helper
trigger1 = time = 2
pos = 12,-100
helpertype = normal ;player
name = "plasma"
ID = 1302
stateno = 1302
postype = p2    ;p2,front,back,left,right
ontop = 1
facing = 1

[State 1200, 2at]
type = helper
trigger1 = time = 0
pos = 10,-105
helpertype = normal ;player
name = "plasma"
ID = 1302
stateno = 1302
postype = p2    ;p2,front,back,left,right
ontop = 1
facing = 1

[State 1200, 2at]
type = helper
trigger1 = time = 8
pos = 15,-110
helpertype = normal ;player
name = "plasma"
ID = 1302
stateno = 1302
postype = p2    ;p2,front,back,left,right
ontop = 1
facing = 1

[State 1200, 10]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0
;-------------------------
[Statedef 1400]
type    = S
movetype= A
physics = S
juggle  = 5
ctrl = 0
velset = 0,0,0
anim = 1300

[State 1100, aAccell]
type = VelAdd
trigger1 = Time < 30
;trigger1 = Time > 10
x = 1

[State 240, 1.5]
type = Playsnd
trigger1 = animelem = 3
value = F5,15

[State 181, DI]
type = Explod
trigger1 = time = 1
anim = 888
id = 679
pos = 168,100
postype = left
facing = 1
sprpriority = 1
ownpal = 1
removetime = 1820

[State 240, 2]
type = HitDef
trigger1 = !movecontact
attr = S, NA
animtype  = Back
damage    = 240, 40
guardflag = HL
hitflag = MAF
pausetime = 0,2
sparkno = 2
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
ground.velocity = -5,-7
air.velocity = -5,-7
air.hittime = 17
ground.cornerpush.veloff = -35
fall.recover = 0
envshake.time = 13
envshake.freq = 30
envshake.ampl = 3
yaccel = 0.45
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)
priority = 1, Miss

[State 0, PosAdd]
type = PosAdd
trigger1 = time = 30
x = 120
y = 0

[State 240, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;-----------------------------------

[Statedef 1666]
type    = S
movetype= A
physics = S
juggle  = 5
ctrl = 0
velset = 0,0,0
anim = 1400

[State 2, Roundhouseblood]
type = Helper
trigger1 = movehit
trigger1 = numhelper(29) < 1
ID = 29
stateno = 29
pos = -83, 0
postype = p2
persistent = 0
ignorehitpause = 1

[State 240, 1.5]
type = Playsnd
trigger1 = animelem = 5
value = 4,20

[State 240, 2]
type = HitDef
trigger1 = !movecontact
attr = S, NA
animtype  = Back
damage    = 290, 100
guardflag = HL
hitflag = MAF
pausetime = 2,2
sparkno = -1
;sparkxy = -55,-95
guard.sparkno = -1
hitsound = s9,3
guardsound = 5,14
ground.type = High
ground.slidetime = 30
p2facing = 1
guard.ctrltime = 20
guard.slidetime = 20
ground.hittime  = 30
ground.velocity = -5,-6
air.velocity = -5,-6
air.hittime = 17
fall.recover = 0
envshake.time = 15
envshake.freq = 70
envshake.ampl = 7
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)
priority = 1, Miss

[State 240, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;-------------------------

[StateDef 2500]
type    = S
movetype= A
physics = S
juggle  = 2
velset = 0,0
anim = 1020
ctrl = 0

[State 10000, open]
type = PlaySnd
trigger1 = AnimElem = 9
value = 9, 4
volume = 50

[State 1000, nonkilling helper]
type = helper
trigger1 = animelem = 9
stateno = 2501
name = "dust"
id = 131302
pos = 0*const(size.xscale), 0*const(size.xscale)
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
poweradd= 120
velset = 0.5,0
anim = 1022
ctrl = 0

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 1021
id = 1021
pos = 1,0
postype = p1
vel = 1,0
ontop = 1
ownpal = 0

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 1023
id = 1023
pos = 0,0
postype = p1
vel = 0,0
ontop = 1
ownpal = 0

[State 1200, BoltFat]
type = HitDef
trigger1 = time = 0
attr = S, SP
damage    = 0,0
animtype = Light
air.animtype = Back
hitflag = MAFD
guardflag = HL
pausetime = 0,0
sparkno = -1
sparkxy = -30,0
guard.sparkno = -1
hitsound   = -1
guardsound = -1
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -5,0
air.velocity = -4,-5
yaccel = 0.5
air.fall = 1
fall.recover = 0
air.juggle = 3
p2stateno = 2502
kill       = root, Var(9) = 0
fall.kill  = root, Var(9) = 0
guard.kill = root, Var(9) = 0

[State 1001, gone]
type = Destroyself
trigger1 = movecontact
trigger2 = time = 90

[Statedef 2502]
Type = S
MoveType = H
Physics = N

[State 3010, Var]
type = VarSet
trigger1 = var(17) = 1
v = 17
value = 0

[State 1001, 1]
type = changestate
trigger1 = Pos Y != 0
trigger1 = time = 0
value = 21240

[State 1001, 1]
type = changestate
trigger1 = Pos Y = 0
trigger1 = time = 0
value = 2503

[Statedef 2503]
Type = S
MoveType = H
Physics = N
Velset = 0,0
anim = 5000

[State 1001, 1]
type = Selfstate
trigger1 = Pos Y = 0
trigger1 = AnimTime = 0
trigger1 = alive = 0
value = 5050

[State 1021, 1]
type = Changeanim
trigger1 = time = 14
trigger2 = anim = 5300
trigger2 = animtime = 0
value = 5300

[State 1001, 1]
type = Selfstate
trigger1 = Pos Y = 0
trigger1 = time = 100
trigger1 = alive = 1
value = 0
ctrl = 1
;-------------- Generated by Fighter Factory -------------

;--------------------- Variable List ----------------------

; Var(1) - StateDef 200, 201, 220, 221, 400, 410, 420, -2
; Var(2) - StateDef 4307, -3
; Var(3) - StateDef 3997, -3
; Var(4) - StateDef 2444, 730, 4300, 4302, 4304, 4306, 4308, 767, 790, 3997, 3502, 3000, 2400, 512
; Var(5) - StateDef 1700, 99430, 431, 712
; Var(6) - StateDef -2
; Var(8) - StateDef 770, 771, 772
; Var(9) - StateDef 3997, -3
; Var(10) - StateDef
; Var(11) - StateDef 600, 610, 620, 431, 43111, 712
; Var(13) - StateDef 3997, -3
; Var(15) - StateDef 431, -3
; Var(16) - StateDef 200, 201, 220, 221
; Var(17) - StateDef 2502, -3
; Var(18) - StateDef 4300
; Var(19) - StateDef 3997, -3
; Var(22) - StateDef -2
; Var(23) - StateDef 43011
; Var(24) - StateDef 712, 713
; Var(26) - StateDef 4300, 3002
; Var(30) - StateDef , -2
; Var(44) - StateDef -3
; Var(45) - StateDef 431, 6002, 6007, 181
; Var(47) - StateDef -2
; Var(54) - StateDef -3
; Var(58) - StateDef -2
; Var(59) - StateDef -3

;--------------------- Float Variable List ----------------------

