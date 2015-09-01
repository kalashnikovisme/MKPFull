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
value = 5,14

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
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 50001, State End]
type = ChangeState
trigger1 = Animtime = 0
value = 0
ctrl = 1

;-----------------------------------------
[Statedef 1000] 
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
value = 4, 18

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
trigger1 = Time >= 10
x = 8

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
damage    = 150, 75
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
velset = 8,0
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
