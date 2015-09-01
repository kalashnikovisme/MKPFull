; Intento de agarre
[Statedef 1400]
type    = S
movetype= A
physics = S
anim = 1400
sprpriority = 2
ctrl = 0

[State 50001, Throw 11]
type = Playsnd
trigger1 = time = 0
value = 7,0

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
Trigger1 = animelem = 11
Trigger2 = animelem = 21
Trigger3 = animelem = 31
Trigger4 = animelem = 41
attr = S, NA
damage = 60
hitflag = HAF
sparkno = -1
p2stateno = 1000000; Falso state, para arreglar el puto bug
envshake.time = 13
envshake.freq = 50
envshake.ampl = 5
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
trigger1 = animelem = 11
trigger2 = animelem = 21
trigger3 = animelem = 31
trigger4 = animelem = 41
trigger5 = animelem = 51
ID = 28
stateno = 28
pos = -20, -25
postype = p1
ignorehitpause = 1

; Sonido de los golpes
[State 50001, Throw 11]
type = Playsnd
trigger1 = AnimElem = 11
trigger2 = AnimElem = 21
trigger3 = AnimElem = 31
trigger4 = AnimElem = 41
trigger5 = AnimElem = 51
value = 5,15

[State 50001, Throw 11]
type = Playsnd
trigger1 = Animelem = 6
trigger2 = Animelem = 16
trigger3 = Animelem = 26
trigger4 = Animelem = 36
trigger5 = Animelem = 46
value = 7,1

; Si no apretamos lp a tiempo termina el movimiento (o tambien con 5 hits)
[State 50001, State End]
type = ChangeState
trigger1 = AnimElem = 21
trigger1 = Var(46) = 0
trigger2 = AnimElem = 31
trigger2 = Var(46) = 1
trigger3 = AnimElem = 41
trigger3 = Var(46) = 2
trigger4 = AnimElem = 51, = 10
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
pos = 23,-83
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

;
[StateDef 10000]
type    = A
movetype= A
physics = N
juggle  = 2
ctrl = 0
velset = 0,0,0
anim = 1016


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
x = 10

[State 1000, bber]
type = PlaySnd
trigger1 = Time = 1
value = 4, 18
volume = 70

[State 1000, 10]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NA
animtype  = Back
damage    = 200, 40
guardflag = HL
hitflag = MAF
pausetime = 13,2
sparkno = -1
;sparkxy = -55,-95
guard.sparkno = -1
hitsound = 5,0
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
ground.cornerpush.veloff = -35
fall.recover = 0
envshake.time = 15
envshake.freq = 70
envshake.ampl = 7
yaccel = 0.45
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)
priority = 1, Miss

[State 1000, BounceOff]
type = ChangeState
trigger1 = AnimTime = 0
value = 1301

[StateDef 1301]
type    = S
movetype= I
physics = S
ctrl = 0
velset = 9,0
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

;------------------------------------------
;===========================================================
; GROUND FREEZE
;===========================================================


[Statedef 1600]
Type = S
Movetype = A
Physics = S
Anim = 13001
ctrl = 0

[State 1300, 0.5]
type = playsnd
trigger1 = animelem = 4
value = 9,5
channel = 3

[State 1300, 0.5]
type = playsnd
trigger1 = animelem = 2
value = 9,0
channel

[State 1300, 1]
type = helper
trigger1 = animelem = 5;9
stateno = 1611
name = "Puddle"
id = 13002
pos = 107, -3
postype = p1
facing = 1
bindtime = 1
under = 1

[State 1300, 1]
type = explod
trigger1 = animelem = 4
pos = 0,0
postype = p1
anim = 13002
sprpriority = 0
ontop = 1

[State 1300, CS]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1
;----------------
[Statedef 1611];helper
Type = S
MoveType = A
Physics = N
anim = 13005

[State 1301, CA]
type = Changestate
trigger1 = p2stateno = 9010
value = 1612

[State 1301, CAAA]
type = SprPriority
trigger1 = time != 0
value = 0

[State 1301, CB]
type = HitDef
trigger2 = animelem = 1
trigger3 = animelem = 2
trigger4 = animelem = 3
trigger5 = animelem = 4
trigger6 = animelem = 5
trigger1 = p2stateno != 1680
trigger1 = time = [0, 30]
attr = S, NA
damage    = 50
guardflag = L
hitflag = MA
priority = 3, Hit
pausetime = 0,0
numhits = 0
sparkno = -1
sparkxy = -10,-70
hitsound = S10,0
guardsound = -1
kill = 0
p2stateno = 1680

[State 3,33]
type = Explod
trigger1 = TimeMod=5,1
anim = F19
name = "Smoke"
pos = -10, -40
postype = p1
bindtime = -2
vel = 0, 0
random = 30, 70
removetime = -2
ontop = 1
shadow = -1, -1, -1
removeongethit = 0

[State Destroy]
type = changestate
trigger1 = animtime = 0
trigger2 = root, movetype = H
trigger3 = moveguarded
trigger4 = root, movecontact
trigger5 = (p2movetype = H)&&(p2stateno!=1680)
value = 1612
;-------------------------------------------------------------------
[Statedef 1612];Change the slipping fool back to normal
Type = S
MoveType = A
Physics = N
anim = 13003

[State 1301, CAAA]
type = SprPriority
trigger1 = time != 0
value = 0

[State 1302, CB]
type = HitDef
trigger1 = p2stateno = 1680
attr = S, NA
damage    = 50
hitflag = MAFD
priority = 7, Hit
pausetime = 0,0
numhits = 0
sparkno = -1
sparkxy = -10,-70
hitsound = -1
guardsound = 6,0
kill = 0
p2stateno = 1681

[State 1302, CS]
type = destroyself
trigger1 = animtime = 0
;-------------------------------------------------------------------
[Statedef 1680];DUDE IS SLIPPING!
Type = S
MoveType = H
Physics = N
Velset = .25, 0, 0
anim = 100

[State 1303, CA]
type = Changeanim
triggerall = time = 0
trigger1 = !animexist(100)
value = 20

[State 1303, Change]
type = Changeanim
trigger1 = selfanimexist(21238)
triggerall = time = 0
value = 21238

[State 1303, CC]
type = Posset
trigger1 = Pos Y != 0
Y = 0

[State 1304, 1]
type = Selfstate
trigger1 = enemy, numhelper(13002) = 0
ctrl = 1
value = 0
;-------------------------------------------------------------------
[Statedef 1681];DUDE IS SLIPPING!
type = S
MoveType = H
Physics = N
Velset = 0
anim = 0

[State 1304, 1]
type = Selfstate
trigger1 = time = 0
trigger2 = movetype = H
ctrl = 1
value = 0
;============================================================
;end ground frezze
;============================================================

;--------------------------------------------
; Torpedo
[Statedef 2000]
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


[State 2000, killing helper]
type = helper
trigger1 = AnimElem = 2
;trigger1 = Var(9) = 0
stateno = 2222
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

[State 2010, sound]
type = Playsnd
trigger1 = time = 0
value = 14,0


[State 2010, killing helper]
type = helper
trigger1 = AnimElem = 2
;trigger1 = Var(9) = 0
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
[Statedef 2111]
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
[Statedef 2222]
type    = S
movetype= A
physics = N
velset = 6, 0
anim = 1010
ctrl = 0

[State 2000, soundss]
type = Playsnd
trigger1 = time = 30
trigger2 = time = 40
value = 5,14

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

[State 2002, stop]
type = velset
trigger1 = Pos Y >= 0
x = 0
y = 0

[State 1005, VEL1]
type = posadd
trigger1 = time > 30
trigger1 = time < 35
Y = -5

[State 1005, VEL1]
type = posadd
trigger1 = time > 30
trigger1 = time < 45
X = 1.5

[State 1005, VEL2]
type = posadd
trigger1 = time = 35
;trigger2 = time = 45
trigger3 = time = 55
Y = 3

[State 2002, gone]
type = Destroyself
trigger1 = time = 120

;-------------------------------------
; Close bomb (killer)
[Statedef 2011]
type    = S
movetype= A
physics = N
velset = 3, 0
anim = 1010
ctrl = 0

[State 2000, soundss]
type = Playsnd
trigger1 = time = 20
trigger2 = time = 30
value = 5,14

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
y = .4


[State 2011, stop]
type = velset
trigger1 = Pos Y >= 0
x = 0
y = 0

[State 1005, VEL1]
type = posadd
trigger1 = time > 20
trigger1 = time < 25
Y = -5

[State 1005, VEL1]
type = posadd
trigger1 = time > 20
trigger1 = time < 35
X = 1.5

[State 1005, VEL2]
type = posadd
trigger1 = time = 35
;trigger2 = time = 35
trigger3 = time = 45
Y = 3


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

[State 1005, VEL1]
type = posadd
trigger1 = time > 30
trigger1 = time < 35
Y = -5

[State 1005, VEL1]
type = posadd
trigger1 = time > 30
trigger1 = time < 45
X = 1.5

[State 1005, VEL2]
type = posadd
trigger1 = time = 35
;trigger2 = time = 45
trigger3 = time = 55
Y = 3

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
value = 4,22

[State 2020, plume]
type = Explod
trigger1 = time = 0
anim = 10004;F20
pos = 0, 0
postype = p1
facing = 1
sprpriority = 3
ownpal = 0
ontop = 1

[State 201, 347]
type = EnvShake
trigger1 = time = 0
time = 15
freq = 30
ampl = 7

[State 2020, hit]
type = HitDef
trigger1 = time = 0
;trigger1 = p2life >= 90
trigger1 = p2name !="shao kahn,"
attr = S, SP
damage    = 207, 207
animtype = Heavy
guardflag = A
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
yaccel = 0.4
air.fall = 1
fall = 1
fall.recover = 0
kill       = root, Var(9) = 0
fall.kill  = root, Var(9) = 0
guard.kill = root, Var(9) = 0

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
value = 4,22

[State 2021, plume]
type = Explod
trigger1 = time = 0
anim = 10004;F20
pos = 0, 0
postype = p1
facing = 1
sprpriority = 3
ownpal = 0
ontop = 1

[State 201, 347]
type = EnvShake
trigger1 = time = 0
time = 15
freq = 30
ampl = 7

[State 2021, hit]
type = HitDef
trigger1 = time = 0
;trigger1 = p2life >= 90
;trigger1 = p2statetype != A
trigger1 = p2name !="shao kahn,"
attr = S, SP
damage    = 207, 207
animtype = Heavy
guardflag = A
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
yaccel = 0.4
fall = 1
fall.recover = 0
kill       = root, Var(9) = 0
fall.kill  = root, Var(9) = 0
guard.kill = root, Var(9) = 0

[State 2021, des]
type = destroyself
trigger1 = animtime = 0

;================================
; Quake Bomb eject close
[Statedef 2050]
type    = S
movetype= A
physics = S
juggle  = 4
velset = 0,0
anim = 1200
ctrl = 0

[State 2010, sound]
type = Playsnd
trigger1 = time = 0
value = 14,0

[State 2010, killing helper]
type = helper
trigger1 = AnimElem = 2
;trigger1 = Var(9) = 0
stateno = 2051
name = "Shot2"
id = 2051
pos = 0, -90
postype = p1

[State 2010, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;-----------------

; Close bomb (killer)
[Statedef 2051]
type    = S
movetype= A
physics = N
velset = 3, 0
anim = 1210
ctrl = 0

[State 2000, soundss]
type = Playsnd
trigger1 = time = 20
trigger2 = time = 30
value = 5,14

[State 2011, killing helper]
type = helper
trigger1 = time = 90
stateno = 2052
name = "Killbomb"
id = 2052
pos = 0, 0
postype = p1

[State 2011, drop]
type = Veladd
trigger1 = time > 0
y = .4


[State 2011, stop]
type = velset
trigger1 = Pos Y >= 0
x = 0
y = 0

[State 1005, VEL1]
type = posadd
trigger1 = time > 20
trigger1 = time < 25
Y = -5

[State 1005, VEL1]
type = posadd
trigger1 = time > 20
trigger1 = time < 35
X = 1.5

[State 1005, VEL2]
type = posadd
trigger1 = time = 35
;trigger2 = time = 35
trigger3 = time = 45
Y = 3

[State 2011, gone]
type = Destroyself
trigger1 = time = 92
;-----------------------

; Killer BOMB
[Statedef 2052]
type    = S
movetype= A
physics = N
juggle = 0
anim = 1332
ctrl = 0

[State 2020, snd]
type = playsnd
trigger1 = time = 0
value = 4,22

[State 2020, plume]
type = Explod
trigger1 = time = 0
anim = 10005;F20
pos = 0, 0
postype = p1
facing = 1
sprpriority = 3
ownpal = 0
ontop = 1

[State 201, 347]
type = EnvShake
trigger1 = time = 0
time = 15
freq = 30
ampl = 7

[State 2021, hit]
type = HitDef
trigger1 = time = 0
attr = S, SP
damage    = 207, 207
animtype = Heavy
guardflag = A
hitflag = MAF
priority = 7, Hit
pausetime = 0,2
sparkno = -1
guardsound = 5,14
p2stateno = 21238
air.fall = 1
yaccel = 0.4
fall = 1
fall.recover = 0
kill       = root, Var(9) = 0
fall.kill  = root, Var(9) = 0
guard.kill = root, Var(9) = 0

[State 2020, des]
type = destroyself
trigger1 = animtime = 0
