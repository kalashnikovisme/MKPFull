;-------------------------------
;-------------------
[StateDef 1100]; gorro
type    = S
movetype= A
physics = S
juggle  = 11
ctrl = 0
velset = 0,0,0
anim = 111222

[State 1200, ZappySound]
type = PlaySnd
trigger1 = AnimElem = 1
value = 4 ,4
volume = 70

[State 1200, Za]
type = VelSet
trigger1 = time = 1
trigger2 = Vel Y != 0
y = 0

[State 2, blood111]
type = Helper
trigger1 = animelem = 7
trigger1 = numhelper(1011) < 1
ID = 1011
stateno = 1101
pos = 0, -59
postype = p1
persistent = 0
ignorehitpause = 1

[State 1200, 10]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0
;-------------------------
[Statedef 1101]
type    = S
movetype= A
physics = S
juggle  = 11
;velset = 7,0
anim = 111111

[State 1000, 0.12]
type = VelSet
trigger1 = time = 1;1
X = 7;8
Y = -2

[State 1000, 0.12]
type = Veladd
trigger1 = 1;0;1
X = 7;8
Y = 0.15;-2

[State 2002, Super]
type = AfterImage
trigger1 = time = 1
FrameGap = 3;4;5
length = 25
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
Trans = Add1
time = 25;15


[State 1200, BoltFat]
type = HitDef
trigger1 = !movecontact
attr = S, SP
damage    = 215, 107
animtype = Light
air.animtype = Back
guardflag = HL
pausetime = 0,50
sparkno = -1
guard.sparkno = -1
p1stateno = 1102
p2stateno = 21241;21238
hitsound   = S4,19
guardsound = S3,9
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -5,0
air.velocity = -3,-4
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
value = 1103

[State 1000, 0.1]
type = Destroyself
trigger1 = time >= 250
;trigger1 = 1
;--------------
[Statedef 1102]
type    = S
movetype= A
physics = S
juggle  = 11
velset = 0,0
anim = 111111

[State 2, Upperblood]
type = explod
trigger1 = (time%10) = 6
trigger1 = time <=30
anim = F3
pos = 0, 0
postype = p1

[State 1000, 0.1]
type = VelSet
trigger1 = FrontEdgeDist >20
trigger1 = time <= 60
Y = 0
X = 2

[State 1000, 0.12]
type = VelSet
trigger1 = time >= 35
Y = -7
X = -7

[State 1000, 0.12]
type = changeanim
trigger1 = time >= 35
value = 1002

[State 1000, 0.1]
type = Destroyself
trigger1 = time >= 70
trigger1 = 1
;---------------------
[Statedef 1103]
type    = S
movetype= A
physics = S
juggle  = 2
velset = 0,0

[State 1000, 0.12]
type = VelSet
trigger1 = time >= 35
Y = -7
X = -7

[State 1000, 0.12]
type = changeanim
trigger1 = time >= 35
value = 1002

[State 1000, 0.1]
type = Destroyself
trigger1 = time >= 70

;-------------------------------sombra
[StateDef 1002]
type    = S
movetype= A
physics = S
juggle  = 4
ctrl = 0
velset = 0,0,0
anim = 111666

[State 1200, BoltFat]
type = Helper
trigger1 = animelem = 3
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
;sprpriority = -1
anim = 111555

[State 820, sd435E1]
type = VelSet
Trigger1 = 1
X = 9

;[State 820, 4435E1]
;type = velSET
;Trigger1 = movecontact
;Trigger1 = 1
;X = 0

[State 820, bber]
type = PlaySnd
trigger1 = Time = 1
value = 7, 2

[State 820, 4435E1]
type = hitdef
trigger1 = !movecontact
attr = S, SP
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
hitsound   = 7,2
guardsound = 7,2
p2facing = -1
yaccel = 0.45
kill       = root, Var(9) = 0
fall.kill  = root, Var(9) = 0
guard.kill = root, Var(9) = 0

[State 821, 5d4] ;Hit ground
type = Changestate
trigger1 = moveguarded
value = 269

[State 821, 4] ;Hit ground
type = Destroyself
trigger1 = time = 200
;value = 5050 ;Hit ground

[Statedef 268]
type    = S
movetype= A
physics = S
velset = 0,0
;sprpriority = -1
anim = 111333

[State 820, 4435E1]
type = velSET
Trigger1 = 1
X = 0


[State 821, 4] ;Hit ground
type = Destroyself
trigger1 = animtime = 0
;value = 5050 ;Hit ground

[Statedef 269]
type    = S
movetype= I
physics = S
velset = 0,0
;sprpriority = -1
anim = 111444

[State 820, 4435E1]
type = velSET
Trigger1 = 1
X = 0

[State 821, 4] ;Hit ground
type = Destroyself
trigger1 = animtime = 0

[Statedef 266]
type    = A
movetype= H
physics = N
velset = 0,0
;sprpriority = -1

[State 9010, 0.1]
type = Sprpriority
trigger1 = animtime = 0
value  >= 2

[State 820, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 26


;[State 820, 4435E1]
;type = velSET
;Trigger1 = animtime = 0
;X = -1

[State 820, 4351]
type = VelSet
Trigger1 = time = 12
x = -2.5
y = -10

[State 810, nd]
type = TURN
trigger1 = time >=  13

[State 821, 4] ;Hit ground
type = SelfState
trigger1 = time >=  13
value = 5050 ;Hit ground


;-------------------------------------------------------------------
; GROUND
;-------------------------------------------------------------------

[StateDef 111777]    ;cuchillaso
type    = A
movetype= A
physics = S
juggle  = 2
ctrl = 0
anim = 111777

[State 3100, aAccell]
type = VelAdd
trigger1 = time <= 12
trigger1 = Time > 4
x = 6

[State 3100, aAccellsd]
type = VelSet
trigger1 = time >= 13
x = 0

[State 3000, bber]
type = PlaySnd
trigger1 = Time = 1
value = 4, 14

[State 3000, 10]
type = HitDef
trigger1 = !movecontact
attr = S, SA
animtype  = back
damage    = 257, 128
guardflag = M
hitflag = MAF
;pausetime = 0,2
sparkno = 1
guard.sparkno = 1
hitsound   = 1;5,0
guardsound = 5,14
air.velocity = -4,-4
air.hittime = 17
fall.recover = 0
p1stateno = 3101;012
yaccel = 0.5
p2stateno = 21238
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 3000, BounceOff]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0

;sangre de golpe con cuchillo
[StateDef 3101]
type    = S
movetype= I
physics = S
juggle  = 2
velset = 0,0
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

[State 3000, BounceOff]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0
;--------------------------------
[StateDef 1000];giro
type    = S
movetype= A
physics = S
juggle  = 3
ctrl = 0
velset = 0,0,0
anim = 1610

[State 1200, ZappySound]
type = PlaySnd
trigger1 = AnimElem = 1
value = 7, 4

[State 1200, Za]
type = VelSet
trigger1 = time = 1
trigger2 = Vel Y != 0
y = 0

[State 2, Roundhouseblood]
type = Helper
trigger1 = movehit
trigger1 = numhelper(219) < 1
ID = 219
stateno = 28
pos = 0, 0
postype = p1
persistent = 0
ignorehitpause = 1

[State 1200, BoltFat]
type = HitDef
trigger1 = !movecontact
attr = S, NA
damage    = 215, 107
animtype  = Heavy
hitflag = MAF ;HAF
guardflag = HL
pausetime = 0,2
sparkno = -1
sparkxy = -15,-95
guard.sparkno = -1
hitsound   = 5,0
p2facing = 1
guardsound = 5,14
ground.cornerpush.veloff = -30
ground.type = High
guard.ctrltime = 20
guard.velocity = -25
guard.slidetime = 20
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -1.8,-12
air.velocity = -1.8,-10
yaccel = 0.38
envshake.time = 20
envshake.freq = 30
envshake.ampl = 15
air.juggle = 4
fall = 1
fall.recover = 0
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 235, sssf]
type = envshake
trigger1 = AnimElem = 4
time = 30
freq = 25
ampl = 3

[State 1200, 10]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0


;----------------------------------------------------------
;- Move Pisoton -------------------------------------------
;----------------------------------------------------------

;disparo de stryker
[StateDef 1600]
type    = S
movetype= A
physics = S
juggle  = 5
velset = 0,0
anim = 222333
ctrl = 0

[State 1600, sonidopistola]
type = playsnd
trigger1 = AnimElem = 2
value = 2424,0

[State 1600, 1]
type = HitDef
triggerall = p2stateno != 1601
trigger1 = animelem = 5
trigger2 = animelem = 6
trigger3 = animelem = 7
trigger4 = animelem = 8
trigger5 = animelem = 9
trigger6 = animelem = 10
trigger7 = animelem = 11
trigger8 = animelem = 12
trigger9 = animelem = 13
trigger10 = animelem = 14
trigger11 = animelem = 15
attr = S, NA
damage    = 80,40
animtype = Light
air.animtype = Back
guardflag = HL
hitflag = MAF
priority = 2, Hit
;animtype = Light
;air.animtype = Back
guardflag = HL
;pausetime = 0,0;0,2
sparkno = -1
guard.sparkno = -1
;hitsound   = 5,4;s4,6
;snap = 55,-20
guardsound = 5,14
;ground.type = Low
p2stateno = 1601;12001
;ground.slidetime = 20
;ground.hittime  = 15
;ground.velocity = -15,0
;air.velocity = -3,-4
;air.fall = 0
;fall = 1
fall.recover = 0
air.juggle = 3
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 1600, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;------
[Statedef 1601]
Type = S
MoveType = H
Physics = N
Velset = -1.5,0
anim = 21238;5002

[State 1601, sacaenergia]
type = Lifeadd
triggerall = life >=6
;triggerall = SelfAnimExist(21238)
trigger1 = time = 0
trigger2 = time = 5
trigger3 = time = 10
trigger4 = time = 15
trigger5 = time = 20
trigger6 = time = 25
trigger7 = time = 30
trigger8 = time = 35
trigger9 = time = 40
trigger10 = time = 45
trigger10 = time = 50
trigger12 = time = 55
trigger13 = time = 60
trigger14 = time = 65
trigger15 = time = 70
value = -5

[State 1601, ple]
type = Explod
triggerall = SelfAnimExist(21238)
trigger1 = time = 2
trigger2 = time = 110
trigger3 = time = 15
trigger4 = time = 120
trigger5 = time = 25
trigger6 = time = 130
trigger7 = time = 35
trigger8 = time = 140
trigger9 = time = 45
trigger10 = time = 150
trigger11 = time = 55
trigger12 = time = 160
trigger13 = time = 65
trigger14 = time = 170
trigger15 = time = 75
anim = F1
pos = 0, -70
postype = p1
facing = 1
sprpriority = 5
ownpal = 0


[State 1601, plesd]
type = Explod
triggerall = SelfAnimExist(21238)
trigger1 = time = 105
trigger2 = time = 7
trigger3 = time = 115
trigger4 = time = 20
trigger5 = time = 125
trigger6 = time = 30
trigger7 = time = 135
trigger8 = time = 40
trigger9 = time = 145
trigger10 = time = 50
trigger11 = time = 155
trigger12 = time = 60
trigger13 = time = 165
trigger14 = time = 70
trigger15 = time = 175
anim = F2
pos = 0, -50
postype = p1
facing = 1
sprpriority = 5
ownpal = 0

[State 1601, pd]
type = Explod
triggerall = SelfAnimExist(21238)
trigger1 = time = 0
anim = F2
pos = 0, -60
postype = p1
facing = 1
sprpriority = 3
ownpal = 0
ontop = 1

[State 1601, CA]
type = Changeanim
trigger1 = time = 60;80
value = 0

[State 1601, 1]
type = Selfstate
trigger1 = Pos Y != 0
trigger1 = time = 60;80
value = 5050

[State 1601, 1]
type = Selfstate
trigger1 = Pos Y = 0
trigger1 = time = 60;80
trigger1 = alive = 0
value = 5050

[State 1601, 1]
type = Selfstate
trigger1 = Pos Y = 0
trigger1 = time = 60;80
trigger1 = alive = 1
value = 0
ctrl = 1


;--------------------------------------------------------
;------------------------------------------------------
;-------------------------------------------------------
[StateDef 333444]
type    = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
anim = 333444
ctrl = 0

[State 4200, 2atas]
type = Explod
trigger1 = time = 40;50
anim = 888
pos = 220,0
postype = p1
sprpriority  >= 3
ID = 333444
removetime = 700

[State 1200, 2at]
type = Explod
trigger1 = time = 12
anim = 888
pos = 140,0
postype = p1
sprpriority  >= 3

[State 1200, 2atdf]
type = Explod
trigger1 = time = 30
anim = 888
pos = 50,0
postype = p1
sprpriority  >= 3

[State 1200, 2atdffg]
type = Explod
trigger1 = time = 48
anim = 888
pos = 10,0
postype = p1
sprpriority  >= 3

[State 10000, open]
type = PlaySnd
trigger1 = time = 12
trigger2 = time = 30
trigger3 = time = 48
value = 7, 3

[State 1000, 0.1]
type = Posset
trigger1 = Pos Y != 0
trigger1 = time = 0
Y = 0

[State 1200, BoltFat]
type = Projectile
trigger1 = time = 28
projanim = 333555
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
sparkno = 6
guard.sparkno = 6
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
projanim = 333555
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
sparkno = 6
guard.sparkno = 6
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
projanim = 333555
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
sparkno = 6
guard.sparkno = 6
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

;---------------------------------------;
;	- Rebotador de poderes -	;
;---------------------------------------;

[StateDef 1300]
type    = S
movetype= A
physics = S
juggle  = 4
ctrl = 0
anim = 101009
SprPriority=5

[State 1300, sonido]
type = Playsnd
trigger1 = animelem = 3
value = 4, 12

[State 1300, noprojectiles]
trigger1 = 1
type = NotHitBy
value = , AP

[State 1000, BounceOff]
type = ChangeState
trigger1 = time = 88
ctrl = 1
value = 1301

;----------------------------------

[StateDef 1301]
type    = S
movetype= I
physics = S
juggle  = 4
ctrl = 0
anim = 101010

[State 1000, BounceOff]
type = ChangeState
trigger1 = animtime = 0
ctrl = 1
value = 0


;-------------------------------------------------
;----------------------------------------------------
;----------------------------------------------------

[StateDef 1500];hielo
type    = S
movetype= A
physics = S
juggle  = 2
ctrl = 0
velset = 0,0,0
anim = 91911

;[State 181, DIED]
;type = Explod
;trigger1 = time = 6
;anim = 888
;id = 7088
;pos = 16,10
;postype = p1
;facing = 1
;sprpriority = 1
;ownpal = 1
;removetime = 100;420

[State 7001, 210]
type = VarSet
trigger1 = var(46) = 0
trigger2 = var(46) = 2
V = 46
value = (var(46)=0)*1 + (var(46)=2)*3

;[State 1001, 210]
;type = VarSet
;trigger1 = var(46) = 0
;V = 46
;value = 1

[State 7200, ZappySound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 4, 14
channel = 3
volume = 70

[State 7200, Za]
type = VelSet
trigger1 = time = 1
trigger2 = Vel Y != 0
y = 0

[State 7200, BoltFat]
type = Projectile
triggerall = AnimElem = 3
trigger1 = p2stateno != 72001
trigger2 = p2stateno != 91912
projanim = 91912
projhitanim = 91912
projremanim = 91912
offset = 5*const(size.xscale), -65*const(size.xscale)
ID = 997
velocity = 8, 0
remvelocity = 0, 0
; HitDef part of projectile info
attr = S, SP
animtype = Hard
air.animtype = Back
air.fall = 1
numhits = 0
guardflag = HL
pausetime = 0,2
sparkno = -1
p2stateno = 72001
guard.sparkno = -1
hitsound   = s4,17
guardsound = s4,17
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
trigger1 = p2stateno = 72001
trigger2 = p2stateno =7001
projanim = 91912
offset = 5*const(size.xscale), -65*const(size.xscale)
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
numhits = -1
p2stateno = 7002
p1stateno = 7001
guard.sparkno = -1
hitsound   = s4,17
guardsound = S4,17
ground.type = High
ground.slidetime = 14
ground.hittime  = 16
air.juggle = 3
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 7200, 10]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0
;----------------------
[StateDef 72001]
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

[State 7005, CSZ4]
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

[State 7005, CS3]
type = SelfState
trigger1 = time = 100
trigger1 = Life < 2
value = 5050

[State 7005, attempt]
type = Varset
trigger1 = time = 0
V = 23
Value = Anim

[State 7005, FREEZE]
type = Changeanim
trigger1 = time != 0
value = Var(23)
elem = animelemno(0)

[State 7005, Frosty color]
type = palFX
trigger1 = time != 0
;trigger1 = var(23) = 1
add = 100,150,250
mul = 200,200,200
time = 2

[State 7005, VELSET]
type = velset
trigger1 = 1
X = 0
Y = 0

[State 7005, VEL1]
type = posadd
trigger1 = time = 0
trigger2 = time = 10
trigger3 = time = 20
X = 2.5

[State 7005, VEL2]
type = posadd
trigger1 = time = 5
trigger2 = time = 15
trigger3 = time = 25
X = - 2.5

[State 7005, CS]
type = SelfState
trigger1 = time = 150
trigger1 = Pos Y > -1
value = 0
ctrl = 1

[State 7005, CSZ]
type = Changestate
trigger1 = time = 150
trigger1 = Pos Y < 0
value = 7003
;--------------
[Statedef 7002]
type = S
movetype= H
physics = N
velset = 0,0

[State 7005, CS]
type = SelfState
trigger1 = time = 0
trigger1 = Pos Y > -1
value = 0
ctrl = 1

[State 7005, CSZ]
type = Changestate
trigger1 = time = 0
trigger1 = Pos Y < 0
value = 7003
;-----------------------
; Double ice hits back
[Statedef 7001]
type    = S
movetype= H
physics = N
juggle  = 0
velset = 0,0
ctrl = 0
anim = 91914

[State 7009, Frosty color]
type = palFX
trigger1 = time != 0
;trigger1 = var(23) = 1
add = 100,150,250
mul = 200,200,200
time = 2

[State 7009, VELSET]
type = velset
trigger1 = time = 0
X = 0
Y = 0

[State 7009, VELSET]
type = PosSet
trigger1 = time = 0
Y = 0

[State 7005, VEL1]
type = posadd
trigger1 = time = 0
trigger2 = time = 10
trigger3 = time = 20
X = 2.5

[State 7005, VEL2]
type = posadd
trigger1 = time = 5
trigger2 = time = 15
trigger3 = time = 25
X = - 2.5

[State 7005, CS]
type = SelfState
trigger1 = time = 200
trigger1 = Pos Y > -1
value = 0
ctrl = 1

[State 7005, CSZ]
type = Changestate
trigger1 = time = 200
trigger1 = Pos Y < 0
value = 7003
;------------------------
[Statedef 7003]
type    = S
movetype= H
physics = N
velset = 0,4
ctrl = 0
anim = 5070

[State 7006, VELADD]
type = Veladd
trigger1 = Pos Y < 0
Y = .75

[State 7006, Hit ground A]

type = Velset
trigger1 = Pos Y > 0
Y = 0

[State 7006, Hit ground A]
type = Posset
trigger1 = Pos Y > 0
trigger1 = Vel Y = 0
Y = 0

[State 7006, Hit Ground C]
type = SelfState
trigger1 = vel Y = 0
trigger1 = Pos Y = 0
value = 5100 ;Hit ground

;-----------------------------------------------------
;--------------------------------sonia
;--------------
[StateDef 1200]
type    = A
movetype= A
physics = S
juggle  = 2
ctrl = 0
anim = 90000


[State 1100, aAccell]
type = VelAdd
trigger1 = Time < 29
trigger1 = Time > 10
x = 10

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
value = 7, 1

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
pausetime = 2,0;20,2
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
