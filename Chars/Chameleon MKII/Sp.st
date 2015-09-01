;---------------------
; invisible
;---------------------

[Statedef 1010]
type = S
movetype = I
physics = S
anim = 1010 + var(17)
ctrl = 0
velset = 0,0

[State 3011, Fire]
type = explod
trigger1 = time = 10
anim = F11
shadow = -1,250,250
ID = 36
pos = -10,5
postype = p1
ontop = 1

[State 0, Explod]
type = Explod
trigger1 = timemod = 8,3
trigger2 = animtime = 1
trigger2 = anim = 1010
triggerall = (var(17) != 1)
anim = F19
pos = 0,-75
sprpriority = 2
postype = p1
vel = 0,-2
random = 10,40

[State 3011, Boom]
type = PlaySnd
trigger1 = time = 1
value = 4,12

[State 3010, Var]
type = VarSet
trigger1 = Animelem = 3
var(17) = 1

[State 3010, CS]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-----------------------

[Statedef 1011] ;desinvisible
type = S
movetype = I
physics = S
anim = 1011 + var(0)
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

[State 0, Explod]
type = Explod
trigger1 = timemod = 8,3
trigger2 = animtime = 1
trigger2 = anim = 1011
triggerall = (var(17) != 0)
anim = F19
pos = 0,-75
sprpriority = 2
postype = p1
vel = 0,-2
random = 10,40

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
value = 4, 12

[State 3011, CS]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

; ------------------------
; Green Ball
; ------------------------

[StateDef 1020]
type    = S
movetype= A
physics = S
juggle  = 4
ctrl = 0
velset = 0,0,0
anim = 1020

[State 1200, ZappySound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 4, 30
channel = 3
volume = 70

[State 0, Explod]
type = Explod
trigger1 = animelem = 4
trigger1 = var (17) = 0
anim = 1023
pos = 0,0
postype = p1
facing = 1
removetime = -2
sprpriority = 1

[State 1200, Za]
type = VelSet
trigger1 = time = 1
trigger2 = Vel Y != 0
y = 0

[State 1200, BoltFat]
type = Projectile
trigger1 = AnimElem = 4
projanim = 1021
projhitanim = 1022
projremanim = 1022
offset = 20*const(size.xscale), -90*const(size.xscale)
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
;sparkno = 6
;guard.sparkno = 6
hitsound   = S4,31
guardsound = S4,31
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

; ------------------------
; Freeze (a-la Sub Zero)
; ------------------------

[StateDef 1030]
type    = S
movetype= A
physics = S
juggle  = 2
ctrl = 0
velset = 0,0,0
anim = 1020

[State 1200, ZappySound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 4, 30
channel = 3
volume = 70

[State 0, Explod]
type = Explod
trigger1 = animelem = 4
trigger1 = var (17) = 0
anim = 1033
pos = 0,0
postype = p1
facing = 1
removetime = -2
sprpriority = 1

[State 1200, Za]
type = VelSet
trigger1 = time = 1
trigger2 = Vel Y != 0
y = 0

[State 1200, BoltFat]
type = Projectile
triggerall = animelem = 4
trigger1 = p2stateno != 12001
trigger1 = p2stateno != 1009
projanim = 1030
projhitanim = 1032
projremanim = 1032
offset = 20*const(size.xscale), -90*const(size.xscale)
velocity = 9, 0
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
hitsound   = s4,32
guardsound = s4,32
ground.type = High
ground.slidetime = 14
ground.hittime  = 16
air.juggle = 3
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)


[State 1200, BoltFat]
type = Projectile
triggerall = AnimElem = 4
trigger1 = p2stateno = 12001
trigger2 = p2stateno = 1039
projanim = 1030
offset = 30*const(size.xscale), -85*const(size.xscale)
velocity = 9, 0
remvelocity = 0, 0
attr = S, NT
animtype = Hard
air.animtype = Back
air.fall = 1
guardflag = HL
pausetime = 0,2
sparkno = -1
p2stateno = 1037
p1stateno = 1039
numhits = -1
guard.sparkno = -1
ground.type = High
ground.slidetime = 14
ground.hittime  = 16
air.juggle = 3
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 1200, 10]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0

; ------------------------

[StateDef 12001]
type = U
movetype= H
physics = N
velset = 0,0

[State 433, INVOFF]  ; reverse invisible
type = VarSet
triggerall = 1
trigger1 = p1name ="smoke"
trigger2 = p1name = "reptile"
trigger3 = p1name = "scorpion"
trigger4 = p1name = "chameleon"
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
value = 1036

; -----------------------

[Statedef 1036]
type    = S
movetype= H
physics = N
velset = 0,4
ctrl = 0
anim = 0

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

; --------------------------

[Statedef 1037]
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

; ------------------------

[Statedef 1039]
type    = S
movetype= H
physics = N
juggle  = 0
velset = 0,0
ctrl = 0
anim = 1031

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
value = 1036
;--------------------------------------------
; Full Control Ball
;--------------------------------------------

[StateDef 1040]
type    = S
movetype= A
physics = S
juggle  = 4
ctrl = 0
velset = 0,0,0
anim = 1020

[State 1200, ZappySound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 4, 30
channel = 3
volume = 20

[State 0, Explod]
type = Explod
trigger1 = animelem = 4
trigger1 = var (17) = 0
anim = 1042
pos = 0,0
postype = p1
facing = 1
removetime = -2
sprpriority = 1

[State 1200, Za]
type = VelSet
trigger1 = 1
trigger2 = Vel Y != 0
y = 0

[State 1200, Zadf]
type = nothitby
trigger1 = animelem >= 4
value = CSA

[State 1200, BoltFat]
type = Projectile
trigger1 = AnimElem = 4
triggerall = p2stateno != 9010
projanim = 1040
projhitanim = 1041
projremanim = 1041
offset = 20*const(size.xscale), -85*const(size.xscale)
velocity = 9, 0
remvelocity = 0, 0
; HitDef part of projectile info
attr = S, NP
animtype  = Back
damage    = 174, 86
guardflag = ML
hitflag = MAF
pausetime = 0, 2
hitsound = S4,18
p1stateno = 1041
p2stateno = 1042
guardsound = S4,18
ground.type = High
ground.slidetime = 30
p2facing = 1
guard.ctrltime = 20
guard.velocity = -5
guard.slidetime = 20
ground.hittime  = 30
air.hittime = 17
fall = 1
fall.recover = 0
yaccel = 0.45
kill       = Var(9) = 0
fall.kill  = Var(9) = 0
guard.kill = Var(9) = 0

[State 1200, Zadf]
type = nothitby
trigger1 = movehit
value = CSA

[State 1200, 10]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0

;----------

[StateDef 1041]
type    = S
movetype= A
physics = S
ctrl = 0
velset = 0,0,0
anim = 1031

[State 1200, Zadf]
type = nothitby
trigger1 = 1
value = CSA

[State 1200, Za]
type = VelSet
trigger1 = 1
trigger2 = Vel Y != 0
y = 0

;[State 0, PlaySnd]
;type = PlaySnd
;trigger1 = time = 1
;id = 104011
;value = 4,33
;volume = 100
;loop = 1

[State 1200, Zasd]
type = PosSet
trigger1 = 1
y = 0

[State 1200, 2at]
type = Explod
trigger1 = time = 0
anim = 888
pos = 35,-75
postype = p1
ID = 1990
sprpriority  >= 2
removetime = 400

[State 88500, hu]
type = targetVelAdd
trigger1 = time <= 140
trigger1 = command = "holdup"
Y = -.2

[State 88500, hud]
type = targetVelAdd
trigger1 = command = "holdback"
X = 1.6

[State 88500, hudd]
type = targetVelAdd
trigger1 = command = "holdfwd"
X = -1.6

;[State 88500, hudd]
;type = targetVelAdd
;trigger1 = command = "holddown"
;X = .2

[State 1200, 103]
type = ChangeState
trigger1 = animTime = 0
trigger1 = moveguarded
ctrl = 1
value = 0

[State 1200, 10]
type = ChangeState
trigger1 = Time = 180
trigger1 = p2stateno = 1042
trigger2 = roundstate = 3
trigger2 = time >= 30
ctrl = 1
value = 1043

;---------------------------

[StateDef 1043]
type    = S
movetype= I
physics = S
ctrl = 0
velset = 0,0,0
anim = 1043

[State 1200, 10]
type = ChangeState
trigger1 = animTime = 0
trigger2 = p2stateno = [5000,5300]
ctrl = 1
value = 0

;--------------------------

[StateDef 1042]
type    = A
movetype= H
physics = S
juggle  = 6
ctrl = 0
velset = 0,0,0
anim = 8881 ; system animation !!!

[State 88500, huck]
type = VelAdd
trigger1 = time > 200
Y = 1

[State 88500, huck]
type = VelSet
trigger1 = Pos Y <= -90
trigger1 = time  <= 160
Y = 0

[State 88500, Fa]
type = SelfState
trigger1 = Time = 200
trigger1 = Pos Y <= -100
value = 5050

[State 88500, Fall]
type = SelfState
trigger1 = Time = 210
value = 5100

;--------------------------------------------
; Green Ball in air
;--------------------------------------------

[StateDef 1028]
type    = S
movetype= A
physics = S
juggle  = 6
ctrl = 0
velset = 0,0,0
anim = 1028

[State 1200, ZappySound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 4, 30
channel = 3
volume = 70

[State 12007, Explod]
type = Explod
trigger1 = animelem = 2
trigger1 = var (17) = 0
anim = 10291
pos = 4,-20
postype = p1
facing = 1
removetime = -2
sprpriority = 4

[State 88500, huck]
type = VelAdd
trigger1 = AnimElem = 1
trigger2 = AnimElem = 2
X = -10

[State 1200, BoltFat]
type = Projectile
trigger1 = AnimElem = 2
projanim = 1021
projhitanim = 1022
projremanim = 1022
offset = 20*const(size.xscale), -105*const(size.xscale)
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
;sparkno = 6
;guard.sparkno = 6
hitsound   = S4,31
guardsound = S4,31
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

[State 88500, NotFreindly]
type = VarSet
trigger1 = AnimElem = 3
v = 5
value = 1

[State 88500, Fall]
type = ChangeState
trigger1 = AnimTime = 0
value = 1029

;--------------------

[Statedef 1029]
type    = A
movetype= I
physics = A
juggle  = 4
velset = 0,0
anim = 1029
ctrl = 0

[State 1101]
type = Veladd
trigger1 = time > 0
y = .3

;--------------------------------------------
; ----- Freeze in air
;--------------------------------------------

[StateDef 1130]
type    = S
movetype= A
physics = S
juggle  = 2
ctrl = 0
velset = 0,0,0
anim = 1028

[State 1200, ZappySound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 4, 30
channel = 3
volume = 70

[State 0, Explod]
type = Explod
trigger1 = animelem = 2
trigger1 = var (17) = 0
anim = 1131
pos = 4,-20
postype = p1
facing = 1
removetime = -2
sprpriority = 4

[State 88500, huck]
type = VelAdd
trigger1 = AnimElem = 1
trigger2 = AnimElem = 2
X = -10

[State 1200, BoltFat]
type = Projectile
triggerall = animelem = 2
trigger1 = p2stateno != 12001
trigger1 = p2stateno != 1009
projanim = 1030
projhitanim = 1032
projremanim = 1032
offset = 20*const(size.xscale), -105*const(size.xscale)
velocity = 9, 0
remvelocity = 0, 0
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
hitsound   = s4,32
guardsound = s4,32
ground.type = High
ground.slidetime = 14
ground.hittime  = 16
air.juggle = 3
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)


[State 1200, BoltFat]
type = Projectile
triggerall = AnimElem = 4
trigger1 = p2stateno = 12001
trigger2 = p2stateno = 1039
projanim = 1030
offset = 30*const(size.xscale), -85*const(size.xscale)
velocity = 9, 0
remvelocity = 0, 0
attr = S, NT
animtype = Hard
air.animtype = Back
air.fall = 1
guardflag = HL
pausetime = 0,2
sparkno = -1
p2stateno = 1037
p1stateno = 1132
numhits = -1
guard.sparkno = -1
ground.type = High
ground.slidetime = 14
ground.hittime  = 16
air.juggle = 3
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 88500, NotFreindly]
type = VarSet
trigger1 = AnimElem = 3
v = 5
value = 1

[State 88500, Fall]
type = ChangeState
trigger1 = AnimTime = 0
value = 1029

; ---------------------------

[Statedef 1132]
type    = S
movetype= H
physics = N
juggle  = 0
velset = 0,0
ctrl = 0
anim = 1132

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
value = 1036

; ---------------------------------
; Throwing Run (Smoke MK II)
; ---------------------------------

[StateDef 1050];empujon
type = S
movetype= A
physics = S
ctrl = 0
anim = 1050

[State 1100, change1]          ;si esta muy lejos, solo corre
type = ChangeState
trigger1 = BackEdgeDist < 13
trigger1 = p2bodydist X > 165
trigger2 = p2stateno = 9010
value = 1055                   ;state que lo deja cerca del enemigo

[State 1100, change2]          ;si el oponente esta saltando, o tirado en el piso
type = ChangeState             ;corre al otro lado
trigger1 = p2statetype != S
trigger1 = p2statetype != C
value = 1056

[State 1100, hit]
type = HitDef
trigger1 = p2stateno != 130
trigger1 = p2stateno != 131
trigger1 = p2bodydist X < 40
attr = S,NT
damage = 232,78
sparkno = -1
facing = p2
p1stateno = 1051
p2stateno = 1052
p2facing = -1
numhits = -1

[State 1100, hit]
type = HitDef
trigger1 = p2stateno = 130
trigger2 = p2stateno = 131
triggerall = p2bodydist X < 5
attr = S,NA
sparkno = -1
guardflag = HL
guardsound = 5,14
numhits = -1

[State 1100, Bouncf]
type = ChangeState
trigger1 = moveguarded  ;si se defiende
value = 1054            ;vibra

[State 0, Explod]
type = Explod
trigger1 = timemod = 2,1
trigger1 = anim = 1050
trigger1 = var(17) = 0
anim = 1055
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1

[state 1100, plush]
type = playerpush
trigger1 = 1
value = 0

[State 1100, aAccell]   ;lo hace correr
type = VelAdd
trigger1 = 1
x = 12
;-------------------------
[StateDef 1051]
type    = S
movetype= A
anim = 25

[State 0, VelAdd]
type = VelSet
trigger1 = 1
x = 0

[State 820, 1]
type = Sprpriority
Trigger1 = Time = 0
value = 3

[State 810, Bind 7]
type = TargetBind
trigger1 = TIME = 0
pos = 15, 0

[State 810, State End]
type = ChangeState
trigger1 = Animtime =  0
value = 0
ctrl = 1
; ---------------------------
[Statedef 1052]
type    = A
movetype= H
physics = N
velset = 0,0
anim = 26

[State 820, 4351]
type = VelAdd
trigger1 = time = 1
y = (p2stateno = 33)*3

[State 9010, 0.1]
type = Sprpriority
trigger1 = time = 0
value  = 2

[State 820, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 26

[State 820, 1]
type = Changestate
Trigger1 = animTime = 0
value = 1053
;-------------
[Statedef 1053];sigue de agarre
type    = A
movetype= I
physics = N
velset = 0,0

[State 820, 1]
type = ChangeAnim2
Trigger1 = time = 0
value = 28

[State 820, 4351]
type = VelAdd
trigger1 = time = 0
x = -80
y = -50

[State 820, 4351]
type = VelAdd
trigger1 = time = 1
x = 80-10
y = 50+4+3*((p2stateno = 33)||(time > 15))

[State 810, nd]
type = TURN
trigger1 = pos y > 0

[State 821, 4]
type = SelfState
trigger1 = pos y > 0
value = 5110

;---------------------------
[StateDef 1054]
type    = S
movetype= I
physics = S
anim = 1052

[state 1109,biv]
type = velset
trigger1 = time = 0
X = 0

[state 1109,ch]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1
; --------------------------
[StateDef 1055];si estaba lejos
type    = S
movetype= I
physics = S

[State 1100, aAccell]       ;lo hace correr
type = VelAdd
trigger1 = 1
x = 12

[State 1001, 10]
type = Changestate
trigger1 = p2bodydist X < 30
trigger2 = time = 21         ; porlas
value = 0
ctrl = 1
;---------------------
[StateDef 1056];si salta
type    = S
movetype= I
physics = S

[State 1100, aAccell]   ;lo hace correr
type = VelAdd
trigger1 = 1
x = 12

[state 999, plush]
type = playerpush
trigger1 = 1
value = 0

[State 1001, 10]
type = Changestate
trigger1 = p2bodydist X < -60
trigger2 = time > 30              ;porlas
value = 0
ctrl = 1


; ------------------
; -----  Slide -----
; ------------------

[StateDef 1060];barrida
type    = S
movetype= A
physics = S
juggle  = 2
ctrl = 0
anim = 1060

[State 1100, aAccell]
type = VelAdd
trigger1 = Time < 22
x = 12

[State 0, Explod]
type = Explod
trigger1 = timemod = 2,1
trigger1 = var(17) = 0
anim = 1061
pos = 0,0
postype = p1  ;p2,front,back,left,right
removetime = 20

[State 1000, gibber]
type = PlaySnd
trigger1 = animelem = 1
value = 14, 0

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
p1stateno = 1061
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
value = 1061

[State 1000, BounceOff]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0
;--------------------------------------------
[StateDef 1061]
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

; --------------------------
; -----  Teleport Back -----
; --------------------------

[Statedef 1070]
type    = S
movetype= I
physics = N
juggle  = 1
anim = 1070
Velset = 0, 0
ctrl = 0

[State 0, Explod]
type = Explod
trigger1 = timemod = 5,2
trigger1 = anim = 1070
anim = 1073
pos = 0,0
postype = p1
removetime = 20

[State 2000, 0.5]
type = Playsnd
trigger1 = time = 1
value = 4,14

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
trigger2 = Pos X < -140
value = 1072

[State 2000, 6.1]
type = Changestate
trigger1 = time > 22
trigger1 = Pos Y = 0
trigger2 = Pos Y > 0
value = 0
ctrl = 1
;------------------------------------------------------------------------------------------
[Statedef 1072]
type    = S
movetype= A
physics = N
juggle = 6
anim = 1071
Velset = 0, 0
ctrl = 0

[State 0, Explod]
type = Explod
trigger1 = timemod = 8,3
trigger1 = anim = 1071
anim = 1073
pos = 0,0
postype = p1  ;p2,front,back,left,right
removetime = 20

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
value = 1071

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
p2stateno = 1074

[State 1050, 5]
type = PosSet
trigger1 = MoveGuarded = 1
Y = -5

[State 1050, 6]
type = Changestate
trigger1 = MoveGuarded = 1
value = 1073

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

[StateDef 1073]
type    = A
movetype= I
physics = A
ctrl = 0
velset = 0,-7
anim = 1072

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

; ---------------------------
; -----  Teleport Front -----
; ---------------------------

[Statedef 1080]
type    = A
movetype= A
physics = A
anim = 1071
Velset = 0, -6
juggle = 6
ctrl = 0

[State 123456, Explod]
type = Explod
trigger1 = timemod = 8,3
trigger1 = anim = 1071
anim = 1073
pos = 0,0
postype = p1  ;p2,front,back,left,right
removetime = 15

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
value = 4,14

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
guardsound = 5,14
ground.type = High
ground.slidetime = 95
ground.hittime  = 20
ground.velocity = -10,0
air.velocity = -2.8,-6.3
guard.slidetime = 10              ;Values for guarded attack (def: ground.slidetime)
guard.ctrltime = 5               ;Time to regain control after guard (def: guard.slidetime)
p2stateno = 21238
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
value = 1073

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
