; Intento de agarre
[Statedef 1400]
type    = S
movetype= A
physics = S
anim = 1400
sprpriority = 2
ctrl = 0

; Ponemos en 0 la variable que cuenta los golpes
[State 50001, varset]
type = Varset 
trigger1 = Time = 0
v = 46
value = 0

[State 50000, 1]
type = HitDef
Trigger1 = Time = 0
attr = S, NT
damage = 0
hitflag = HAF
sparkno = -1
sprpriority = 1
p2facing = 1
p1stateno = 1401
p2stateno = 1402
numhits = 0
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 50000, 2]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1

; Empieza a pegar
[Statedef 1401]
type    = S
movetype= A
physics = S;N
anim = 1401

[State 50000, 1]
type = HitDef
Trigger1 = animelem = 6
Trigger2 = animelem = 10
Trigger3 = animelem = 14
Trigger4 = animelem = 18
attr = S, NA
damage = 60
hitflag = HAF
sparkno = -1
envshake.time = 13
envshake.freq = 50
envshake.ampl = 5
p2stateno = 1000000; Falso state, para arreglar el puto bug
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 50001, Gotcha]
type = PlaySnd
trigger1 = time = 0
value = 4,4

;** Cambios de variables si apretamos lp
[State 50001, varset]
type = Varset 
trigger1 = command = "pound"
trigger1 = Time = [0, 56]
v = 46
value = 1

[State 50001, varset]
type = Varset 
trigger1 = command = "pound"
trigger1 = Time = [57, 84]
v = 46
value = 2

[State 50001, varset]
type = Varset 
trigger1 = command = "pound"
trigger1 = Time = [85, 112]
v = 46
value = 3
;** Fin de cambio de variables

;** Movemos al enemigo a diferentes posiciones
[State 50001, Bind 2-4]
type = TargetBind
trigger1 = animelem = 1
trigger1 = time = 0
trigger2 = animelem = 1, = 10
trigger3 = animelem = 1, = 20
pos = 70, -12

[State 50001, Bind 2-4]
type = TargetBind
trigger1 = animelem = 1, = 5
trigger2 = animelem = 1, = 15
trigger3 = animelem = 1, = 25
pos = 68, -14

[State 50001, Bind 2-4]
type = TargetBind
trigger1 = AnimElem = 2
pos = 50, -20

[State 50001, Bind 2-4]
type = TargetBind
trigger1 = AnimElem = 3
pos = 18, -12
;** Fin de mover al enemigo

; Sangre en cada golpe
[State 2, Upperblood]
type = Helper
trigger1 = animelem = 6
trigger2 = animelem = 10
trigger3 = animelem = 14
trigger4 = animelem = 18
trigger5 = animelem = 22
ID = 28
stateno = 28
pos = -20, -25
postype = p1
ignorehitpause = 1

; Sonido de los golpes
[State 50001, Throw 11]
type = Playsnd
trigger1 = AnimElem = 6
trigger2 = AnimElem = 10
trigger3 = AnimElem = 14
trigger4 = AnimElem = 18
trigger5 = AnimElem = 22
value = 6,91

; Si no apretamos lp a tiempo termina el movimiento (o tambien con 5 hits)
[State 50001, State End]
type = ChangeState
trigger1 = AnimElem = 10
trigger1 = Var(46) = 0
trigger2 = AnimElem = 14
trigger2 = Var(46) = 1
trigger3 = AnimElem = 18
trigger3 = Var(46) = 2
trigger4 = AnimElem = 21, = 10
value = 1403

; Player 2 recibiendo los golpes
[Statedef 1402]
type    = A
movetype= H
physics = N

[State 50001, State End]
type = Changeanim2
trigger1 = time = 0
value = 1402

[State 50001, Throw 11]
type = Playsnd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 11
value = 3,0

[State 50001, Throw 11]
type = Playsnd
trigger1 = AnimElem = 7
trigger2 = AnimElem = 15
value = 3,8

; Terminación de golpes
[Statedef 1403]
type    = S
movetype= A
physics = S
anim = 1403

[State 50000, 1]
type = HitDef
Trigger1 = time = 0
attr = S, NA
damage = 90
hitflag = HAF
sparkno = -1
animtype  = Back
air.velocity = -3.5,-4.5
envshake.time = 13
envshake.freq = 50
envshake.ampl = 5
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 50001, State End]
type = ChangeState
trigger1 = Animtime = 0
value = 0
ctrl = 1

;------------ 1misil
[StateDef 1000]
type    = S
movetype= A
physics = S
juggle  = 9
ctrl = 0
velset = 0,0,0
anim = 1000

[State 1200, Za]
type = Veladd
trigger1 = time > 10
trigger1 = time < 30
x = -1

[State 9251,misil]
type = Helper
trigger1 = time = 0
postype = p1
pos = 23,-83
stateno = 1010

[State 1200, 10]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0

;---------------------------
[Statedef 1010]     ;un misil
type    = S
movetype= A
physics = S
juggle  = 2
anim = 1002

[State 1200, ZappySound]
type = PlaySnd
trigger1 = time =11;AnimElem = 3
value = S4, 12
channel = 3
volume = 70

[State 10000, rakieta]
type = veladd
trigger1 = time > 10
X = 8

[State 9327, explod] 
type = Explod
trigger1 = time%4=1
trigger1 = time > 10;anim = 1000
;trigger2 = anim = 1001
anim = F20020
pos = 50,0;-30, 0
postype = p1
ownpal = 0

[State 9327, explod] 
type = Explod
trigger1 = time%4=1
trigger1 = time < 11
;trigger2 = anim = 1001
anim = F20020
pos = time*6,0;-30, 0
postype = p1
ownpal = 0

[State 1601, Hit]
type = HitDef
trigger1 = 1;time > 10
attr = S, HA
damage    = 180, 90
animtype = back
air.animtype = Back
guardflag = HL
hitflag = MAF
sparkno = S1004
sparkxy = 0,0;100,0
guard.sparkno = S1004
hitsound   = S4,13
guardsound = S4,13
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -15,0
air.velocity = -4,-5
air.fall = 1
fall.recover = 0
air.juggle = 3
yaccel = 0.5
p2stateno = 21238
p2facing = 1
kill       = root, Var(9) = 0
fall.kill  = root, Var(9) = 0
guard.kill = root, Var(9) = 0

[State 10000, rakieta]
type = destroyself
trigger1 = movecontact
;------------ 2 misiles
[StateDef 1100]
type    = S
movetype= A
physics = S
juggle  = 9
ctrl = 0
velset = 0,0,0
anim = 1001

;[State 1200, ZappySound]
;type = PlaySnd
;trigger1 = AnimElem = 3
;value = 4, 12
;channel = 3
;volume = 70

[State 1200, Za]
type = Veladd
trigger1 = time > 10
;trigger1 = time < 30
x = -1

[State 9251,misil]
type = Helper
trigger1 = time = 0
postype = p1
pos = 23,-83
stateno = 1010

[State 9251,misil]
type = Helper
trigger1 = time = 15
postype = p1
pos = -10,-120
stateno = 1010

[State 1200, 10]
type = ChangeState
trigger1 = time = 39;AnimTime = 0
ctrl = 1
value = 0
;------------ terremoto
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

;---------------------------------------;
;	   - Puñetazo en el medio de la geta -		;
;---------------------------------------;

[StateDef 1300]
type    = S
movetype= A
physics = S
juggle  = 4
ctrl = 0
anim = 1300

[State 1100, aAccell]
type = VelAdd
trigger1 = Time >= 5
x = 9

[State 1000, bber]
type = PlaySnd
trigger1 = Time = 1
value = 4, 18
volume = 70

[State 1000, 10]
type = HitDef
trigger1 = AnimElem = 2
attr = S, SA
animtype  = back
damage    = 175, 75
guardflag = HLMF
hitflag = AHLMF
pausetime = 10,2
sparkno = -1
guard.sparkno = -1
hitsound   = 5,0
guardsound = 5,14 
ground.type = High
ground.slidetime = 0
ground.hittime  = 0
ground.velocity = -5,-6;4.5
air.velocity = -5,-5;5
air.hittime = 17  
yaccel = 0.5
fall = 1
fall.recover = 0
envshake.time = 15
envshake.freq = 70
envshake.ampl = 7
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 1000, BounceOff]
type = ChangeState
trigger1 = AnimTime = 0
value = 1301

[StateDef 1301]
type    = S
movetype= I
physics = S
ctrl = 0
velset = 4,0
anim = 1301

[State 1001, 10]
type = Changestate
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-------------------------------------------------------------
; Gotcha!!!
;======================
[Statedef 120000];1200
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 1400
;sprpriority = 2

[State 800, 1]
type = HitDef
Trigger1 = animelem = 4
;pausetime = 20,0
attr = S, NA          ;Attributes: Standing, Normal Throw
hitflag = M          ;Affect only ground people who are not being hit
;priority = 1, Miss    ;Throw has low priority, must be miss or dodge type.
;damage = 232
hitsound = 5,14
sparkno = -1          ;No spark
sprpriority = -1      ;Draw in front of p2
p2facing = -1       ;Force p2 to face KFM
p1stateno = 1201;25       ;On success, KFM changes to state 810
p2stateno = 1210;26       ;If hit, p2 changes to state 820 in KFM's cns
guard.dist = 0        ;This prevents p2 from going into a guard state if close
fall.recover = 0
envshake.time = 13
envshake.freq = 40
envshake.ampl = 4
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 800, 2]
type = ChangeState
Trigger1 = Animtime = 0
value = 0
ctrl = 1

;-------------

[Statedef 120001];1201
type    = S
movetype= A
physics = N
anim = 1401;25

[State 820, 1]
type = Sprpriority
Trigger1 = Time = 0
value = 1

[State 810, Bind 7]
type = TargetBind
trigger1 = TIME = 0
pos = 15, 0


[State 810, State End]
type = ChangeState
trigger1 = Animtime =  0
value = 0
ctrl = 1

;-------------

[Statedef 120010];1210
type    = A
movetype= H
physics = N
velset = 0,0
;anim = 1210;26
;sprpriority = -1

[State 9010, 0.1]
type = Sprpriority
trigger1 = animtime = 0
value  >= 2

[State 820, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 1210;26

;[State 820, 435E1]
;type = velset
;Trigger1 = animtime = 0
;Y = -.3

;[State 820, 4435E1]
;type = velSET
;Trigger1 = animtime = 0
;X = -1

[State 820, 4351]
type = VelAdd
Trigger1 = time >= 11
Trigger1 = time <= 18
x = -2.5
;y = -.3 

;[State 820, 4351]
;type = VelAdd
;Trigger1 = Animtime = 0
;y = 5 
;x = -5

[State 810, nd]
type = TURN
trigger1 = Animtime =  0

[State 821, 4] ;Hit ground
type = SelfState
trigger1 = animtime =  0
value = 5050 ;Hit ground
;===============================
;Energy Wave
[StateDef 1555]
type    = S
movetype= A
physics = S
juggle  = 2
ctrl = 0
velset = 0,0,0
anim = 3555

[State 1001, 210]
type = VarSet
trigger1 = var(46) = 0
trigger2 = var(46) = 2
V = 46
value = (var(46)=0)*1 + (var(46)=2)*3

[State 1200, ZappySound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 5, 12

[State 1200, Za]
type = VelSet
trigger1 = time = 1
trigger2 = Vel Y != 0
y = 0

[State 1200, BoltFat]
type = Projectile
trigger1 = AnimElem = 8
projanim = 3557
projhitanim = 3558
projremanim = 3558
offset = 5*const(size.xscale), -65*const(size.xscale)
ID = 997
velocity = 9, 0
remvelocity = 0, 0
; HitDef part of projectile info
attr = S, SP
damage    = 195, 98
animtype = Light
air.animtype = Back
air.fall = 1
fall.recover = 0
guardflag = HL
pausetime = 0,2
sparkno = -1
guard.sparkno = -1
hitsound   = S4,13
guardsound = S4,13
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
envshake.time = 2
envshake.freq = 10
envshake.ampl = 1
kill       = Var(9) = 0
fall.kill  = Var(9) = 0
guard.kill = Var(9) = 0

[State 1200, 10]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0
;---------------------------------
; Air Energy Wave
[StateDef 1556]
type    = S
movetype= A
physics = S
juggle  = 2
ctrl = 0
velset = 0,0,0
anim = 3556

[State 1001, 210]
type = VarSet
trigger1 = var(46) = 0
trigger2 = var(46) = 2
V = 46
value = (var(46)=0)*1 + (var(46)=2)*3

[State 1200, ZappySound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 5, 12

[State 1200, Za]
type = VelSet
trigger1 = time = 1
trigger2 = Vel Y != 0
y = 0

[State 1200, BoltFat]
type = Projectile
trigger1 = AnimElem = 6
projanim = 3557
projhitanim = 3558
projremanim = 3558
offset = 5*const(size.xscale), -65*const(size.xscale)
ID = 997
velocity = 9, 0
remvelocity = 0, 0
; HitDef part of projectile info
attr = S, SP
damage    = 195, 98
animtype = Light
air.animtype = Back
air.fall = 1
fall.recover = 0
guardflag = HL
pausetime = 0,2
sparkno = -1
guard.sparkno = -1
hitsound   = S4,13
guardsound = S4,13
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
envshake.time = 2
envshake.freq = 10
envshake.ampl = 1
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
value = 1557
;--------------------
[Statedef 1557]; Drop
type    = A
movetype= I
physics = A
juggle  = 4
velset = 0,0
anim = 3559
ctrl = 0

[State 1101]
type = Veladd
trigger1 = time > 0
y = .3
;=============================

[StateDef 1560]
type    = S
movetype= A
physics = S
juggle  = 2
ctrl = 0
anim = 3560

[State 1100, aAccell]
type = VelAdd
trigger1 = Time < 15
x = 5

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
value = 4,18

[State 201, 1]
type = HitDef
trigger1 = AnimElem = 3
triggerall = NumHelper(711) = 0
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage    = 60, 10                   ;Damage that move inflicts
animtype = Light                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
air.animtype = Back
guardflag = HL
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 2, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default
pausetime = 0,2
p1stateno = 1561
sparkno = -1
sparkxy = -10,-105
guard.sparkno = -1
hitsound = s6,91
guardsound = 5,14
p2facing = 1
ground.type = HIGH                 ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 5
ground.hittime  = 20
guard.velocity = -15
guard.slidetime = 20
guard.ctrltime = 20
ground.velocity = 0,0              ;Time to regain control after guard (def: guard.slidetime)
guard.velocity = -2
air.velocity = -2, 1
airguard.velocity = -1.9            ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.fall = 1
fall.recover = 0
ground.cornerpush.veloff = 0
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)
envshake.time = 10
envshake.freq = 30
envshake.ampl = 5

[State 1000, Bounf]
type = ChangeState
trigger1 = Moveguarded = 1
value = 1561

[State 1000, BounceOff]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0

;--------------------------------------------

[StateDef 1561]
type    = S
movetype= A
physics = S
juggle  = 2
ctrl = 0
anim = 3561

[State 1100, aAccell]
type = VelAdd
trigger1 = Time < 47
x = 3

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
trigger1 = AnimElem = 2
trigger2 = AnimElem = 4
trigger3 = AnimElem = 6
trigger4 = AnimElem = 8
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage    = 60, 10                   ;Damage that move inflicts
animtype = Light                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
air.animtype = Back
guardflag = HL
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 2, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default
pausetime = 0,2
sparkno = -1
sparkxy = -10,-105
guard.sparkno = -1
hitsound = s6,91
guardsound = 5,14
p2facing = 1
ground.type = HIGH                 ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 5
ground.hittime  = 20
guard.velocity = -15
guard.slidetime = 20
guard.ctrltime = 20
ground.velocity = 0,0              ;Time to regain control after guard (def: guard.slidetime)
guard.velocity = -2
air.velocity = -2, 1
airguard.velocity = -1.9            ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.fall = 1
fall.recover = 0
ground.cornerpush.veloff = 0
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)
envshake.time = 10
envshake.freq = 30
envshake.ampl = 5

[State 1000, 10]
type = HitDef
trigger1 = AnimElem = 10
attr = S, SA
animtype  = back
damage    = 70, 95
guardflag = HLMF
hitflag = AHLMF
pausetime = 0,2
sparkno = -1
guard.sparkno = -1
hitsound   = s6,91
p1stateno = 1570
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
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 1000, BounceOff]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0
;------------
[StateDef 1570]
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
