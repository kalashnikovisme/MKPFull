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
value = 4,31

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
value = 4,31

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
; Freeze Ball
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
value = 4, 29
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
value = 4, 29
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

;------------------------telekinetik
[StateDef 1100]
type    = S
movetype= A
physics = S
juggle  = 20
ctrl = 0
velset = 0,0,0
anim = 1100

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
attr = S, NA;SA
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
; ---------------------------------
; Throwing Run (Smoke MK II)
; ---------------------------------

[StateDef 1050];empujon
type = S
movetype= A
physics = S
ctrl = 0
anim = 1050

[State 1050]
type = AfterImage
trigger1 = time = 0
PalBright   = 0,0,0
PalContrast = 40,40,40
Trans = Add1
time = 35

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

[State 1060]
type = AfterImage
trigger1 = time = 0
PalBright   = 0,0,0
PalContrast = 40,40,40
Trans = Add1
time = 35

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

[State 1070]
type = AfterImage
trigger1 = time = 0
PalBright   = 0,0,0
PalContrast = 40,40,40
Trans = Add1
time = 30

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

[State 1080]
type = AfterImage
trigger1 = time = 0
PalBright   = 0,0,0
PalContrast = 40,40,40
Trans = Add1
time = 30

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

[StateDef 2000]
type    = S
movetype= A
physics = S
juggle  = 2
ctrl = 0
anim = 700
sprpriority = 5

[State 1100, aAccell]
type = VelAdd
trigger1 = time <= 35
Y = -2.5

[State 1100, aAcXceDFll]
type = VelAdd
trigger1 = time >= 57
;trigger1 = pOS Y >= 0
Y = 1

[State 1100, aAccellas]
type = VelsET
trigger1 = time >= 19
trigger1 = time <= 24
TRIGGER2 = TIME >= 43
TRIGGER2 = TIME <= 55
Y = 0

[State 1100, aAccellasSD]
type = pOSsET
trigger1 = time = 20
Y = 300

[State 1100, aAccXCellasSDS]
type = TURN
trigger1 = time = 20

[State 1000, gibber]
type = PlaySnd
trigger1 = Time = 1
value = 4, 14

[State 1000]
type = AfterImage
trigger1 = time = 0
PalBright   = 0,0,0
PalContrast = 40,40,40
Trans = Add1
time = 53

[State 1000, 10]
type = HitDef
trigger1 = !movecontact
attr = S, ST          ;Attributes: Standing, Normal Throw
hitflag = H          ;Affect only ground people who are not being hit
guardflag = CMH          ;Affect only ground people who are not being hit
priority = 1, Miss    ;Throw has low priority, must be miss or dodge type.
damage = 215,107
hitsound = 5,14
guardsound = 5,14
sparkno = -1          ;No spark
sprpriority = -1      ;Draw in front of p2
p2facing = -1       ;Force p2 to face KFM
p1stateno = 2001       ;On success, KFM changes to state 810
p2stateno = 20011       ;If hit, p2 changes to state 820 in KFM's cns
guard.dist = 0        ;This prevents p2 from going into a guard state if close
fall.recover = 0
yaccel = 0.5
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)


[State 700, 2]
type = PosAdd
trigger1 = TIME = 20
X = (P2Dist X) - 20

[State 1000, BounceOffsd]
type = Changeanim
trigger1 = Time = 18
value = 900

[State 2020]
type = Changestate
trigger1 = Pos Y >= -6
trigger1 = time >= 45
value = 52
ctrl = 1

;--------------------------------------------
; Torpedo Bounce away
[StateDef 2001]
type    = S
movetype= I
physics = S
ctrl = 0
anim = 910
sprpriority = 5

[State 1000, Accellw]
type = VelSet
trigger1 = time = 5
trigger2 = time = 22
Y = 0

[State 1000, Accw]
type = playsnd
trigger1 = time = 17
value = F5,0
volume = 100


[State 1100, aAcXceDFll]
type = VelAdd
trigger1 = time = 5
Y = 9

[State 1001, 10]
type = Changestate
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[StateDef 20011]
type    = S
movetype= H
physics = S
ctrl = 0
sprpriority = 4

[State 1001, 1034]
type = Changeanim2
trigger1 = Time = 0
value = 9998

[State 1100, aAcXceDFll]
type = VelAdd
trigger1 = time <= 5
Y = -8.5

[State 1100, aAcXceDFll]
type = VelAdd
trigger1 = time = 6
Y = 9.5

[State 1100, aAcXc]
type = VelAdd
trigger1 = time >= 23
X = 1.5
Y = -4.5

[State 22, round hit]
type = EnvShake
trigger1 = time = 20
freq = 140
time = 10
ampl = 10

[State 1100, aAcXll]
type = playsnd
trigger1 = time = 20
value = 3,2


[State 1100, aAc]
type = Turn
trigger1 = time = 24

[State 1000, Accellw]
type = VelSet
trigger1 = time = 5
trigger2 = time = 22
Y = 0

[State 1001, 10]
type = Selfstate
trigger1 = Time = 24
value = 5050
;ctrl = 1


;--------------------------------------------

[StateDef 2002]
type    = S
movetype= I
physics = N
juggle  = 2
anim = 1045
Velset = 0, 0
ctrl = 0

[State 181, DIED]
type = Explod
trigger1 = time = 1
anim = 888
id = 7089
pos = 168,100
postype = left
facing = 1
sprpriority = 1
ownpal = 1
removetime = 220

[State 3010, Fire]
type = explod
trigger1 = Time = 0
trigger1 = Pos Y = 0
anim = F11
ID = 36
pos = -20,8
shadow = -1,250,250
postype = p1
ontop = 1

[State 2000, 55]
type = Helper
trigger1 = time = 0
trigger1 = Pos Y = 0
stateno = 1046
name = "AfterImage"
pos = 0, 0
postype = P1
helpertype = normal
sprpriority = 1
keyctrl = 0
ownpal = 0
under = 1

[State 2000, 0.6]
type = ScreenBound
trigger1 = time = [1, 1000]
value = 0
movecamera = 0,0

;---------------------------------
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
X = 10.5

[State 1050, 5]
type = VelAdd
trigger1 = Time < 4
trigger1 = Vel Y > -3
Y = -2

;[State 1050, 534]
;type = VelAdd
;trigger1 = Time < 2
;trigger1 = movetype = A
;Y = -2

[State 2000, 4]
type = Changestate
triggerall = time > 9
trigger1 = Pos X > 140
value = 1050

[State 2000, 5]
type = Changestate
triggerall = time > 9
trigger1 = Pos X < -140
value = 1050


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

[Statedef 1045]
type    = S
movetype= I
physics = N
anim = 1045
Velset = 0, 0
ctrl = 0

[State 1045, 1]
type = turn
trigger1 = time = 0

[State 1045, 3]
type = Destroyself
trigger1 = animtime = 0
;-------------------------------

[StateDef 2202]
type    = S
movetype= A
physics = S
juggle  = 2
ctrl = 0
anim = 1444

[State 2202, 1]
type = Helper
trigger1 = animelem = 3
triggerall = numexplod(89) != 1
triggerall = numexplod(89) = 0
stateno = 22222
name = "storm"
id = 2220
postype = p1
pos = 0, 0
helpertype = normal
sprpriority = -1
keyctrl = 0
ownpal = 0
under = 1

[State 181, DID]
type = Explod
trigger1 = animelem = 6
anim = 888
ID = 89
pos = 18,10
postype = p1
facing = 1
sprpriority = 1
ownpal = 1
removetime = 25

[State 2202, BounceOff]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0

;------------------
[Statedef 22222]
type    = S
movetype= A
physics = N
velset = 0,0
anim = 9910
ctrl = 0

[State 700, 2]
type = PosAdd
trigger1 = Time = 0
X = (P2Dist X) + 1

[State 2220, 1]
type = Playsnd
trigger1 = time = 0
value = 4,4

[State 2220, 2]
type = HitDef
trigger1 = animelem = 4
attr = S, NA
damage    = 174, 86
animtype  = Back
hitflag = MAF
guardflag = HL
pausetime = 0,2
sparkno = -1
sparkxy = -15,-95
guard.sparkno = -1
hitsound   = 5,0
p2facing = 1
guardsound = 5,14
ground.type = High
guard.ctrltime = 20
guard.velocity = 0
guard.slidetime = 20
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = 0,-12
air.velocity = 0,-11
yaccel = 0.38
envshake.time = 20
envshake.freq = 30
envshake.ampl = 15
;fall = 1
fall.recover = 0
;p1stateno = 1030
;p2stateno = 1020
kill       = root, Var(9) = 0
fall.kill  = root, Var(9) = 0
guard.kill = root, Var(9) = 0

[State -3]
type = Explod
trigger1 = TimeMod=12,3
triggerall = var(26) = 0
triggerall = p2statetype != S
triggerall = p2statetype != C
anim = F19
name = "humoarriba"
pos = -10,-110;0, -90
postype = p2
bindtime = 1
vel = 0, 0
random = 30, 70
removetime = -2
sprpriority = 1
shadow = -1, -1, -1

[State -2, Steam1]
type = Explod
trigger1 = TimeMod=8,3
triggerall = var(26) = 0
triggerall = p2statetype != S
triggerall = p2statetype != C
anim = F19
name = "humomedio"
pos = 0, -70
postype = p2
bindtime = 1
vel = 0, 0
random = 20, 50
removetime = -2
sprpriority = 1
shadow = -1, -1, -1

[State 2230, 1.54]
type = Destroyself
trigger1 = time = 36

;--------------------
[Statedef 12000]
type    = S
movetype= I
physics = N
juggle  = 2
anim = 1040
Velset = 0, 0
ctrl = 0

[State 181, DIED]
type = Explod
trigger1 = time = 1
anim = 888
id = 7089
pos = 168,100
postype = left
facing = 1
sprpriority = 1
ownpal = 1
removetime = 220

[State 2000, 0.5]
type = Playsnd
trigger1 = time = 1
value = 0,4
;volume = 70

[State 2000, 55]
type = Helper
trigger1 = time = 0
trigger1 = Pos Y = 0
stateno = 1046
name = "AfterImage"
pos = 0, 0
postype = P1
helpertype = normal
sprpriority = 1
keyctrl = 0
ownpal = 0
under = 1

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
X = 10.5

[State 1050, 5]
type = VelAdd
trigger1 = Time < 4
trigger1 = Vel Y > -3
Y = -2

;[State 1050, 534]
;type = VelAdd
;trigger1 = Time < 2
;trigger1 = movetype = A
;Y = -2

[State 2000, 4]
type = Changestate
triggerall = time > 9
trigger1 = Pos X > 140
value = 1050

[State 2000, 5]
type = Changestate
triggerall = time > 9
trigger1 = Pos X < -140
value = 1050


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

[Statedef 1045]
type    = S
movetype= I
physics = N
anim = 1045
Velset = 0, 0
ctrl = 0

[State 1045, 1]
type = turn
trigger1 = time = 0

[State 1045, 3]
type = Destroyself
trigger1 = animtime = 0

;============================================================

[StateDef 1800]
type    = S
movetype= A
physics = S
juggle  = 4
ctrl = 0
velset = 0,0,0
anim = 1003

[State 1200, ZappySound]
type = PlaySnd
trigger1 = AnimElem = 5
value = 4, 18
channel = 3
volume = 20

[State 1200, Za]
type = VelSet
trigger1 = 1
trigger2 = Vel Y != 0
y = 0

[State 1200, Zadf]
type = nothitby
trigger1 = animelem >= 6
value = CSA

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

[State 1200, BoltFat]
type = Projectile
trigger1 = AnimElem = 6
triggerall = p2stateno != 9010
;trigger1 = p2stateno != 12001
;trigger2 = p2stateno != 1009
projanim = 1040
;projhitanim = 1016
;projremanim = 1016
offset = 60*const(size.xscale), -75*const(size.xscale)
ID = 997
velocity = 8, 0
remvelocity = 0, 0
; HitDef part of projectile info
attr = S, NP
animtype  = Back
damage    = 174, 86
guardflag = ML
hitflag = MAF
pausetime = 0, 2
sparkno = 6
guard.sparkno = 6
hitsound = S4,18
p1stateno = 1001;918
p2stateno = 1002;9019
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
[StateDef 1001];918
type    = S
movetype= A
physics = S
ctrl = 0
velset = 0,0,0
anim = 1031
;sprpriority = 9

[State 1200, Zadf]
type = nothitby
trigger1 = 1
value = CSA


[State 1200, Za]
type = VelSet
trigger1 = 1
trigger2 = Vel Y != 0
y = 0

[State 1200, Zasd]
type = PosSet
trigger1 = 1
y = 0

[State 1200, 2at]
type = Explod
trigger1 = time = 1
anim = 888
pos = 35,-75
postype = p1
ID = 1990
sprpriority  >= 2
removetime = 400

;[State 10000, open]
;type = PlaySnd
;trigger1 = AnimElem = 2
;value = 4, 6

[State 88500, hu]
type = targetVelAdd
trigger1 = time <= 140
trigger1 = command = "holdup"
Y = -.1

[State 88500, hud]
type = targetVelAdd
trigger1 = command = "holdback"
X = 1.6

[State 88500, hudd]
type = targetVelAdd
trigger1 = command = "holdfwd"
X = -1.6

[State 1200, 103]
type = ChangeState
trigger1 = animTime = 0
trigger1 = moveguarded
ctrl = 1
value = 0


[State 1200, 10]
type = ChangeState
trigger1 = Time = 180
trigger1 = p2stateno = 1002;9019
trigger2 = roundstate = 3
trigger2 = time >= 30
ctrl = 1
value = 1003;9220

[State 1200, 10sd]
type = ChangeState
trigger1 = p2bodydist X <= 20
trigger1 = p2stateno = 1002;9019
trigger2 = p2stateno = [5000,5300]
ctrl = 1
value = 1003;9220
;--------
[StateDef 1003];9220
type    = S
movetype= I
physics = S
ctrl = 0
velset = 0,0,0
anim = 1043
;sprpriority = 9

[State 1200, 10]
type = ChangeState
trigger1 = animTime = 0
trigger2 = p2stateno = [5000,5300]
ctrl = 1
value = 0

;---------
[StateDef 1002];9019
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

;[State 88500, huck]
;type = VelAdd
;trigger1 = time <= 90
;trigger1 = command = "holdup"
;Y = -.2


[State 88500, huck]
type = VelAdd
trigger1 = time > 200
;trigger1 = command = "holdup"
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

[StateDef 90191]
type    = A
movetype= H
physics = S
juggle  = 6
ctrl = 0
velset = 0,0,0
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

;[State 88500, sdhuck]
;type = changestate
;trigger1 = command = "holdup"
;value = 90191

[State 88500, Fall]
type = SelfState
trigger1 = Time = 200
value = 5100

;-----------------------------------------
[Statedef 3003]
type    = S
movetype= A
physics = S
juggle  = 2
velset = 0,0
anim = 3000
ctrl = 0

;[State 10000, open]
;type = PlaySnd
;trigger1 = AnimElem = 2
;value = 14, 0

[State 10000, open]
type = PlaySnd
trigger1 = AnimElem = 2
value = 4,6

[State 1000, 0.1]
type = Posset
trigger1 = Pos Y != 0
trigger1 = time = 0
Y = 0

[State 1000, nonkilling helper]
type = helper
trigger1 = AnimElem = 2
stateno = 3012
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
[Statedef 3012]
type    = S
movetype= A
physics = N
poweradd= 120
velset = 11,0
anim = 3001
ctrl = 0

[State 2002]
type = AfterImage
trigger1 = time = 0
;FrameGap = 5
;length = 20
PalBright   =   0,  0,  0
PalContrast = 111,219,255
;PalAdd      =   0,  0,  0
;PalMul      =  1, 1, 1
Trans = Add1
time = 40

[State 1200, BoltFat]
type = HitDef
trigger1 = time = 0
;projanim = 1001
;offset = -10*const(size.xscale), -105*const(size.xscale)
;remvelocity = -10, -8
; HitDef part of projectile info
attr = S, SP
;projID = 1234
damage    = 192, 96
animtype = Light
air.animtype = Back
guardflag = HL
pausetime = 0,2
sparkno = 16
sparkxy = 20,0
guard.sparkno = -1
hitsound   = S4,19
guardsound = S3,9
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
;==========================

[Statedef 3004]
type    = S
movetype= A
physics = S
juggle  = 2
velset = 0,0
anim = 3000
ctrl = 0

[State 10000, open]
type = PlaySnd
trigger1 = AnimElem = 3
value = 4, 6

[State 1000, 0.1]
type = Posset
trigger1 = Pos Y != 0
trigger1 = time = 0
Y = 0

[State 1000, nonkilling helper]
type = helper
trigger1 = AnimElem = 2
stateno = 3005
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
[Statedef 3005]
type    = S
movetype= A
physics = N
poweradd= 120
velset = 11,0
anim = 3001
ctrl = 0

[State 10000, open]
type = PlaySnd
trigger1 = time = 0
value = 4, 19
volume = 50

[State 2002]
type = AfterImage
trigger1 = time = 0
PalBright   =   0,  0,  0
PalContrast = 111,219,255
Trans = Add1
time = -1

[State 1200, BoltFat]
type = HitDef
trigger1 = time = 0
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
guardsound = S3,9
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -5,0
air.velocity = -4,-5
air.fall = 1
fall.recover = 0
air.juggle = 3
yaccel = 0.5
p2stateno = 21238
kill       = root, Var(9) = 0
fall.kill  = root, Var(9) = 0
guard.kill = root, Var(9) = 0

[State 1001, gone]
type = changestate
trigger1 = FrontEdgeDist < -40
trigger1 = !movecontact
value = 3006

[State 1001, gone]
type = destroyself
trigger1 = time = 200

;----------------------------------------------------------
;- Move Bola Aire -----------------------------------------
;----------------------------------------------------------

[StateDef 3007]
type    = A
movetype= A
physics = S
juggle  = 6
ctrl = 0
velset = 0,0,0
anim = 3002
sprpriority = 9

[State 10000, open]
type = PlaySnd
trigger1 = AnimElem = 3
value = 4, 6

[State 1000, nonkilling helper]
type = helper
trigger1 = AnimElem = 3
stateno = 3005;1012 <-- derecho
name = "Shot1"
id = 1001
pos = 12*const(size.xscale), -95*const(size.xscale)
postype = p1

[State 88500, Fall]
type = ChangeState
trigger1 = AnimTime = 0
value = 3008

;- Drop ---------------------------------------------------

[Statedef 3008]
type    = A
movetype= I
physics = A
juggle  = 4
velset = 0,0
anim = 3005
ctrl = 0

[State 1101]
type = Veladd
trigger1 = time > 0
y = .3
;=================

[Statedef 3006]
type    = S
movetype= A
physics = N
poweradd= 120
velset = -11,0
anim = 3001
ctrl = 0

[State 2002]
type = AfterImage
trigger1 = time = 0
PalBright   =   0,  0,  0
PalContrast = 111,219,255
Trans = Add1
time = -1

[State 1200, BoltFat]
type = HitDef
trigger1 = time = 0
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
guardsound = S3,9
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -5,0
air.velocity = -3,-4
air.fall = 1
fall.recover = 0
air.juggle = 3
p2stateno = 21242
kill       = root, Var(9) = 0
fall.kill  = root, Var(9) = 0
guard.kill = root, Var(9) = 0

[State 1001, gone]
type = destroyself
trigger1 = time = 200

;---------------------------------
[StateDef 777]
type    = S
movetype= I
physics = S
ctrl = 0
velset = 0,0,0
anim = 778
shadow = 128,128,128

;[State 700, 1]
;type = PlaySnd
;trigger1 = Time = 0
;value = 4,8

[State 700, 1sd]
type = nothitby
trigger1 = 1
value = CSA

[State 700, 1sd]
type = explod
trigger1 = time = 0
anim = 777
pos = 0,0
shadow = 128,128,128
removeongethit = 1

[State 700, 2]
type = PosAdd
trigger1 = Time = 1
X = (P2Dist X) + 30

[State 700, 1sd]
type = turn
trigger1 = time = 1

[State 700, 4]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0
;------------------------------

[StateDef 2302]
type    = S
movetype= A
physics = S
juggle  = 2
ctrl = 0
anim = 1445

[State 2202, 1]
type = Helper
trigger1 = animelem = 1
triggerall = numexplod(89) != 1
triggerall = numexplod(89) = 0
stateno = 23232
name = "storm"
id = 2220
postype = p1
pos = 0, 0
helpertype = normal
sprpriority = -1
keyctrl = 0
ownpal = 0
under = 1

[State 181, DID]
type = Explod
trigger1 = animelem = 6
anim = 888
ID = 89
pos = 18,10
postype = p1
facing = 1
sprpriority = 1
ownpal = 1
removetime = 31

[State 2202, BounceOff]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0
;------------------

[Statedef 23232]
type    = S
movetype= A
physics = N
velset = 0,0
anim = 2303
ctrl = 0

[State 700, 2]
type = PosAdd
trigger1 = Time = 0
X = (P2Dist X) + 1

[State 2220, 1]
type = Playsnd
trigger1 = time = 0
value = 9,1

[State 1000, 10]
type = HitDef
trigger1 = AnimElem = 12
trigger1 = p2stateno != 9010
trigger1 = p2name != "motaro"
trigger1 = NUMHELPER(9000) = 0
trigger1 = p2stateno != 1610
attr = S, NA
animtype  = Light
fall.animtype = Light
damage    = 0, 0
guardflag = HL
hitflag = AHLMF
ground.type = Low
air.type = Low
pausetime = 0,2
sparkno = -1
guard.sparkno = -1
hitsound   = s9,2
forcestand = 1
p2facing = -1
p1stateno = 20005
p2stateno = 1610
guardsound = 5,14
ground.type = Low
guard.velocity = 0
guard.slidetime = 10
guard.ctrltime = 10
ground.slidetime = 20
ground.hittime  = 220
ground.velocity = 0,0
air.velocity = 0,0
air.hittime = 17
;fall = 0
;air.fall = 0
fall.recover = 0

[State 1000, BounceOff]
type = ChangeState
trigger1 = AnimTime = 0
;trigger2 = p2stateno = 9010
ctrl = 1
value = 0


[Statedef 1610]
type = S
movetype = H
physics = S
anim = 0 + var(17)
ctrl = 0
juggle = 10
velset = 0,0

[State 1101]
type = PosSet
trigger1 = 1
y = 0

[State 110123]
type = VelSet
trigger1 = 1
y = 0
X = 0


[State 88500, Fire Explode]
type = Explod
trigger1 = p1name != "shao kahn,"
trigger1 = p1name != "goro"
trigger1 = p1name != "kintaro"
trigger1 = time = 0
anim = F41
shadow = 128, 128, 128
;id = 19191
pos = 0*const(size.xscale), -2*const(size.xscale)
postype = p1
sprpriority = -1
;ontop = 1
ownpal = 1
removetime = 150
removeongethit = 1
bindtime = -1

[State 88500, Fire Explode]
type = Explod
trigger1 = p1name = "shao kahn,"
trigger2 = p1name = "goro"
trigger3 = p1name = "kintaro"
triggerall = time = 0
anim = 1610
;id = 19191
pos = 0*const(size.xscale), -2*const(size.xscale)
postype = p1
sprpriority = -1
;ontop = 1
ownpal = 1
removetime = 150
removeongethit = 1
bindtime = -1


[State 3010, Var]
type = VarSet
trigger1 = Time = 1
var(17) = 1

[state 2, invisibility]
type = AssertSpecial
triggerall = var(17) = 1
;trigger1 = 1
trigger1 = stateno = 1610
trigger2 = NumExplod(19191) = 1
trigger2 = time >= 2
flag = invisible

[State 2, hit]
type = VarSet
triggerall = var(17) = 1
;trigger1 = movetype = H
trigger1 = stateno = [5000,5200]
trigger2 = stateno != 1610
trigger3 = stateno = [0,1500]
trigger4 = stateno = [1700,9999]
var(17) = 0

[State 232, Ggfho]
type = RemoveExplod
;trigger1 = movetype = H
trigger1 = stateno = [5000,5200]
;trigger4 = p2stateno = 0
trigger4 = stateno = 713
;trigger3 = movecontact
;triggerall = time >= 0
trigger3 = stateno = 1620
ID = 19191

[State 3010, CS]
type = ChangeState
trigger1 = Time = 150
trigger1 = NumExplod(19191) != 1
trigger2 = NumExplod(19191) >= 1
trigger2 = Time <= 20
value = 1620
ctrl = 1

[Statedef 1620]
type    = S
movetype= I
physics = S
;velset = 0,0,0
juggle = 10
ctrl = 1
Anim = 5300

[State 2, Go]
type = RemoveExplod
trigger1 = 1
ID = 19191

[State 2, hit]
type = VarSet
triggerall = var(17) = 1
trigger1 = 1
var(17) = 0

[State 9010, 034.1]
type = PosSet
;trigger1 = p2stateno =[0,9999]
trigger1 = 1
Y = 0

[State 9010, 4.1]
type = VelSet
;trigger1 = p2stateno =[0,9999]
trigger1 = 1
Y = 0


[State 3010, C345S]
type = selfState
trigger1 = 1
trigger1 = command = "blok"
value = 130
ctrl = 1

[State 3010, 35S]
type = selfState
trigger1 = 1
trigger1 = command = "blok"
trigger1 = command = "holddown"
value = 131
ctrl = 1

[State 10210, 3]
type = Selfstate
trigger1 = time = 80
value = 0
ctrl = 1

[State 821, 4] ;Hit ground
type = SelfState
trigger1 = roundstate = 3
trigger1 = time = 80
value = 5050
ctrl = 1

[State 2230, 1.54]
type = Destroyself
trigger1 = time = 36
