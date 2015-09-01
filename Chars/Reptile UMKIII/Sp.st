[StateDef 1000];bola rapida
type    = S
movetype= A
physics = S
juggle  = 9
ctrl = 0
velset = 0,0,0
anim = 1003

[State 1200, Za]
type = VelSet
trigger1 = time = 1
trigger2 = Vel Y != 0
y = 0

[State 1000, nonkilling helper]
type = helper
trigger1 = Animelem = 6
stateno = 2501
name = "estrella1"
id = 131302
pos = 60*const(size.xscale), -75*const(size.xscale)
postype = p1

[State 1000, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

; Projectile
[Statedef 2501]
type    = S
movetype= A
physics = N
velset = 5,0
anim = 1001
ctrl = 0
sprpriority = 2

[State 1200, ZappySound]
type = PlaySnd
trigger1 = time = 0
value = 4, 14
channel = 3
volume = 70

[State 1200, BoltFat]
type = HitDef
trigger1 = time = 0
attr = S, SP
damage    = 150, 75
animtype = Light
air.animtype = Back
hitflag = MAFD
guardflag = HL
pausetime = 0,2
sparkno = -1
guard.sparkno = -1
hitsound = 5,0
guardsound = 5,14
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -5,0
air.velocity = -4,-5
yaccel = 0.5
air.fall = 1
fall.recover = 0
air.juggle = 3
p2stateno = 2004
envshake.time = 10
envshake.freq = 30
envshake.ampl = 5
kill       = root, Var(9) = 0
fall.kill  = root, Var(9) = 0
guard.kill = root, Var(9) = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = movecontact
value = 2616
ctrl = 0

[State end]
type = destroyself
trigger1 = frontedgedist <= -150

; Projectile
[Statedef 2502]
type    = S
movetype= A
physics = N
velset = 2,0
anim = 1001
ctrl = 0
sprpriority = 2

[State 1200, ZappySound]
type = PlaySnd
trigger1 = time = 0
value = 4, 14
channel = 3
volume = 70

[State 1200, BoltFat]
type = HitDef
trigger1 = time = 0
attr = S, SP
damage    = 150, 75
animtype = Light
air.animtype = Back
hitflag = MAFD
guardflag = HL
pausetime = 0,2
sparkno = -1
guard.sparkno = -1
hitsound = 5,0
guardsound = 5,14
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -5,0
air.velocity = -4,-5
yaccel = 0.5
air.fall = 1
fall.recover = 0
air.juggle = 3
p2stateno = 2004
envshake.time = 10
envshake.freq = 30
envshake.ampl = 5
kill       = root, Var(9) = 0
fall.kill  = root, Var(9) = 0
guard.kill = root, Var(9) = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = movecontact
value = 2616
ctrl = 0

[State end]
type = destroyself
trigger1 = frontedgedist <= -150

;-------------------------------------

[StateDef 2616]
type    = S
movetype= A
physics = S
juggle  = 2
ctrl = 0
anim = 1000
velset = 0,0,0

[State 1200, Za]
type = VelSet
trigger1 = time = 1
trigger2 = Vel Y != 0
y = 0

[State 1200, 2at]
type = helper
trigger1 = time = 5
helpertype = normal
name = "acido"
ID = 2617
stateno = 2617
pos = 0,-70
postype = p2
ontop = 1
facing = -1

[State 1200, 2at]
type = helper
trigger1 = time = 5
helpertype = normal
name = "acido"
ID = 2617
stateno = 2617
pos = 3,-70
postype = p2
ontop = 1
facing = -1

[State 1200, 2at]
type = helper
trigger1 = time = 2
pos = -3,-67
helpertype = normal
name = "acido"
ID = 2617
stateno = 2617
postype = p2
ontop = 1
facing = -1

[State 1200, 2at]
type = helper
trigger1 = time = 2
pos = 2,-71
helpertype = normal
name = "acido"
ID = 2617
stateno = 2617
postype = p2
ontop = 1
facing = -1

[State 1200, 2at]
type = helper
trigger1 = time = 0
pos = -2,-69
helpertype = normal
name = "acido"
ID = 2617
stateno = 2617
postype = p2
ontop = 1
facing = -1

[State 1200, 2at]
type = helper
trigger1 = time = 1
pos = 0,-70
helpertype = normal
name = "acido"
ID = 2617
stateno = 2617
postype = p2
ontop = 1
facing = 1

[State 1200, 2at]
type = helper
trigger1 = time = 0
pos = 0,-70
helpertype = normal
name = "acido"
ID = 2617
stateno = 2617
postype = p2
ontop = 1
facing = -1

[State 1200, 2at]
type = helper
trigger1 = time = 0
pos = 0,-70
helpertype = normal
name = "acido"
ID = 2617
stateno = 2617
postype = p2
ontop = 1
facing = -1

[State 1200, 2at]
type = helper
trigger1 = time = 3
pos = 0,-70
helpertype = normal
name = "acido"
ID = 2617
stateno = 2617
postype = p2
ontop = 1
facing = 1

[State 1200, 2at]
type = helper
trigger1 = time = 1
pos = 0,-70
helpertype = normal
name = "acido"
ID = 2617
stateno = 2617
postype = p2
ontop = 1
facing = 1

[State 1200, 2at]
type = helper
trigger1 = time = 6
pos = 0,-70
helpertype = normal
name = "acido"
ID = 2617
stateno = 2617
postype = p2
ontop = 1
facing = 1

[State 1200, 2at]
type = helper
trigger1 = time = 5
helpertype = normal
name = "acido"
ID = 2517
stateno = 1302
pos = 0,-70
postype = p2
ontop = 1
facing = -1

[State 1200, 2at]
type = helper
trigger1 = time = 5
helpertype = normal
name = "acido"
ID = 2517
stateno = 1302
pos = 3,-70
postype = p2
ontop = 1
facing = -1

[State 1200, 2at]
type = helper
trigger1 = time = 2
pos = -3,-67
helpertype = normal
name = "acido"
ID = 2517
stateno = 1302
postype = p2
ontop = 1
facing = -1

[State 1200, 2at]
type = helper
trigger1 = time = 2
pos = 2,-71
helpertype = normal
name = "acido"
ID = 2517
stateno = 1302
postype = p2
ontop = 1
facing = -1

[State 1200, 2at]
type = helper
trigger1 = time = 0
pos = -2,-69
helpertype = normal
name = "acido"
ID = 2517
stateno = 1302
postype = p2
ontop = 1
facing = -1

[State 1200, 2at]
type = helper
trigger1 = time = 1
pos = 0,-70
helpertype = normal
name = "acido"
ID = 2517
stateno = 1302
postype = p2
ontop = 1
facing = 1

[State 1200, 2at]
type = helper
trigger1 = time = 0
pos = 0,-70
helpertype = normal
name = "acido"
ID = 2517
stateno = 1302
postype = p2
ontop = 1
facing = -1

[State 1200, 2at]
type = helper
trigger1 = time = 0
pos = 0,-70
helpertype = normal
name = "acido"
ID = 2517
stateno = 1302
postype = p2
ontop = 1
facing = -1

[State 1200, 2at]
type = helper
trigger1 = time = 3
pos = 0,-70
helpertype = normal
name = "acido"
ID = 2517
stateno = 1302
postype = p2
ontop = 1
facing = 1

[State 1200, 2at]
type = helper
trigger1 = time = 1
pos = 0,-70
helpertype = normal
name = "acido"
ID = 2517
stateno = 1302
postype = p2
ontop = 1
facing = 1

[State 1200, 2at]
type = helper
trigger1 = time = 6
pos = 0,-70
helpertype = normal
name = "acido"
ID = 2517
stateno = 1302
postype = p2
ontop = 1
facing = 1

[State end]
type = destroyself
trigger1 = !animtime
;----------------------

[Statedef 2617]
type    = S
movetype= I
juggle  = 0
anim = 2041
velset = 0, 0
ctrl = 0

[State 7200, velset]
type = velset
trigger1  = time = 0
X = -3-(random%30)/10.0

[State 7200, velset]
type = velset
trigger1  = time = 0
Y = -9-(random%30)/10.0

[State 7200, vel]
type = veladd
trigger1 = time > 1
trigger1  = pos Y < root,var(57)
Y = .5;.4

[State 6000, 5]
type = Changestate
trigger1 = Pos Y > 0
value = 1303

;-----------------------

[StateDef 1100];empujon
type = S
movetype= A
physics = S
ctrl = 0
anim = 1100

[State 2000]
type = AfterImage
triggerall = time = 0
trigger1 = p2stateno = 9010
PalBright   = 0,0,0
PalContrast = 0,120,0
Trans = Add1
time = 55

[State 1100, change1]          ;si esta muy lejos, solo corre
type = ChangeState
trigger1 = BackEdgeDist < 13
trigger1 = p2bodydist X > 165
trigger2 = p2stateno = 9010
value = 1101                   ;state que lo deja cerca del enemigo

[State 1100, change2]          ;si el oponente esta saltando, o tirado en el piso
type = ChangeState             ;corre al otro lado
trigger1 = p2statetype != S
trigger1 = p2statetype != C
value = 1102                   ;state que lo deja del otro lado

[State 1100, hit]
type = HitDef
trigger1 = p2stateno != 130
trigger1 = p2stateno != 131
trigger1 = p2bodydist X < 40
attr = S,NA
sparkno = -1
p2stateno = 1104;no tiene control, solo defensa parado y agachado
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
value = 1109            ;vibra

[state 1100, plush]
type = playerpush
trigger1 = 1
value = 0

[State 1001, 10]
type = Changestate
trigger1 = p2bodydist X < -110
trigger2 = time > 30              ;porlas
value = 1105

[State 1100, aAccell]   ;lo hace correr
type = VelAdd
trigger1 = 1
x = 12
;-------------------------------
[StateDef 1101];si estaba lejos
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
[StateDef 1102];si salta
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
;-------------------------
[StateDef 1104]
type    = S
movetype= I
physics = S
anim = 0
ctrl = 0
velset = 0,0

[state 1104,null]       ;porlas modo team
type = changestate
trigger1 = time = 30
value = 0
ctrl = 1
;---------------------------
[StateDef 1105]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 1102

[state 1104,m]
type = turn
trigger1 = time = 0

[state 999, push]
type = playerpush
trigger1 = 1
value = 0

[State 1000, 10]
type = HitDef
trigger1 = time = 0
attr = S,NA
sparkno = -1
p1stateno = 1107
p2stateno = 1108
numhits = -1

[state 1107,ch]           ;porlas
type = changestate
trigger1 = time = 1
value = 1107
;-----------------------
[StateDef 1107]
type    = S
movetype= A
physics = S
velset = 0,0

[state 444,78]
type = veladd
trigger1 = animelem = 4
x = 40

[State 2, blood111]
type = Helper
trigger1 = movehit
trigger1 = numhelper(24) < 1
ID = 24
stateno = 27
pos = 0, 0
postype = p1
persistent = 0
ignorehitpause = 1

[State 1000, 10]
type = HitDef
trigger1 = AnimElem = 4
attr = S,NA
animtype  = hard
damage    = 150, 75
guardflag = HL
pausetime = 20,0
hitflag = AHLMF
sparkno = -1
sparkxy = -30,-90
guard.sparkno = -1
hitsound   = 5,0
guardsound = 5,14
ground.type = High
ground.slidetime = 0
ground.hittime  = 0
ground.velocity = -6,-4;3.6
air.velocity = -3,-4;3.6;2
air.hittime = 17  
yaccel = 0.45
fall = 1
fall.recover = 0
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)
envshake.time = 15
envshake.freq = 130
envshake.ampl = 8

[state 444,5]               
type = changestate
trigger1 = animtime = 0
trigger2 = time = 25       ;porlas
value = 0
ctrl = 1
;----------------------
[StateDef 1108]
type    = S
movetype= I
physics = S
velset = 0,0
anim = 5

[state 1104,m]
type = turn
trigger1 = time = 0

[state 1104,mov]
type = changeanim
trigger1 = animtime = 0
value = 0

[state 1104,mov]
type = veladd
trigger1 = FrontEdgeDist < 30
x = -30

[state 1106,ch]
type = selfstate
trigger1 = time = 10
value = 0
ctrl = 1
;----------------------
[StateDef 1109]
type    = S
movetype= I
physics = S
anim = 1101

[state 1109,biv]
type = velset
trigger1 = time = 0
X = 0

[state 1109,ch]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1
;-------------------------------------
[StateDef 1200];bola rapida
type    = S
movetype= A
physics = S
juggle  = 9
ctrl = 0
velset = 0,0,0
anim = 1003

[State 1200, Za]
type = VelSet
trigger1 = time = 1
trigger2 = Vel Y != 0
y = 0

[State 1000, nonkilling helper]
type = helper
trigger1 = Animelem = 6
stateno = 2502
name = "estrella1"
id = 131302
pos = 60*const(size.xscale), -75*const(size.xscale)
postype = p1

[State 1000, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;--------------------------
[StateDef 1300];acido
type    = S
movetype= A
physics = S
juggle  = 9
ctrl = 0
velset = 0,0,0
anim = 10151

[State 1200, ZappySound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 4, 4
channel = 3
volume = 70

[State 1200, Za]
type = VelSet
trigger1 = time = 1
trigger2 = Vel Y != 0
y = 0

[State 1200, BoltFat]
type = Projectile
trigger1 = AnimElem = 3
projanim = 1016
projhitanim = 1040
projremanim = 1040
offset = 103*const(size.xscale), -99*const(size.xscale)
ID = 998
velocity = 10, 0
remvelocity = 0, 0
; HitDef part of projectile info
attr = S, SP
animtype  = Light
damage    = 180, 90
guardflag = HL
hitflag = MAF
pausetime = 0, 2
sparkno = -1
sparkxy = 15,-10
guard.sparkno = 7
hitsound = 5,0
guardsound = 5,14
p2facing = 1
ground.type = High
ground.slidetime = 20
ground.hittime  = 15
guard.ctrltime = 20
ground.velocity = -15,0
air.velocity = -4,-5
air.fall = 1
air.juggle = 3
fall.recover = 0
p2stateno = 21238
palfx.time = 20
palfx.mul = 0,99,0
palfx.add = 0,99,0
yaccel = 0.45
envshake.time = 10
envshake.freq = 30
envshake.ampl = 5
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 0, ChangeState]
type = ChangeState
trigger1 = projcontact = 1
value = 1301
ctrl = 0

[State 1200, 10]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0
;--------------------
[StateDef 1301];p1state acido
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
trigger1 = time = 5
helpertype = normal ;player
name = "acido"
ID = 1302
stateno = 1302
pos = 17,-113
postype = p2    ;p2,front,back,left,right
ontop = 1
facing = -1

[State 1200, 2at]
type = helper
trigger1 = time = 5
helpertype = normal ;player
name = "acido"
ID = 1302
stateno = 1302
pos = 14,-116
postype = p2    ;p2,front,back,left,right
ontop = 1
facing = -1

[State 1200, 2at]
type = helper
trigger1 = time = 2
pos = 7,-114
helpertype = normal ;player
name = "acido"
ID = 1302
stateno = 1302
postype = p2    ;p2,front,back,left,right
ontop = 1
facing = -1

[State 1200, 2at]
type = helper
trigger1 = time = 2
pos = 16,-111
helpertype = normal ;player
name = "acido"
ID = 1302
stateno = 1302
postype = p2    ;p2,front,back,left,right
ontop = 1
facing = -1

[State 1200, 2at]
type = helper
trigger1 = time = 0
pos = 14,-114
helpertype = normal ;player
name = "acido"
ID = 1302
stateno = 1302
postype = p2    ;p2,front,back,left,right
ontop = 1
facing = -1

[State 1200, 2at]
type = helper
trigger1 = time = 1
pos = 15,-112
helpertype = normal ;player
name = "acido"
ID = 1302
stateno = 1302
postype = p2    ;p2,front,back,left,right
ontop = 1
facing = 1

[State 1200, 2at]
type = helper
trigger1 = time = 0
pos = 17,-110
helpertype = normal ;player
name = "acido"
ID = 1302
stateno = 1302
postype = p2    ;p2,front,back,left,right
ontop = 1
facing = -1

[State 1200, 2at]
type = helper
trigger1 = time = 0
pos = 10,-95
helpertype = normal ;player
name = "acido"
ID = 1302
stateno = 1302
postype = p2    ;p2,front,back,left,right
ontop = 1
facing = -1

[State 1200, 2at]
type = helper
trigger1 = time = 3
pos = 18,-100
helpertype = normal ;player
name = "acido"
ID = 1302
stateno = 1302
postype = p2    ;p2,front,back,left,right
ontop = 1
facing = 1

[State 1200, 2at]
type = helper
trigger1 = time = 1
pos = 13,-110
helpertype = normal;player
name = "acido"
ID = 1302
stateno = 1302
postype = p2    ;p2,front,back,left,right
ontop = 1
facing = 1

[State 1200, 2at]
type = helper
trigger1 = time = 6
pos = 15,-108
helpertype = normal ;player
name = "acido"
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
Y = -6-(random%30)/10.0

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

[State 3010, Fire]
type = explod
trigger1 = time = 0
anim = 493
ID = 36
pos = 0,0
vel = 0,-1-(random%30)/10.0
shadow = -1,250,250
postype = p1
sprpriority = 2

[State 6001, 1]
type = Destroyself
trigger1 = animtime = 0
;-------------------------------

[Statedef 1400];invisible
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
;------------------------
[StateDef 1500];barrida
type    = S
movetype= A
physics = S
juggle  = 2
ctrl = 0
anim = 1004

[State 1100, aAccell]
type = VelAdd
trigger1 = Time < 22
x = 9

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
p1stateno = 1501
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
value = 1501;2001

[State 1000, BounceOff]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0
;--------------------------------------------
[StateDef 1501]
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

[StateDef 2000]
type    = S
movetype= A
physics = S
juggle  = 2
ctrl = 0
anim = 3444

[State 1100, aAccell]
type = VelAdd
trigger1 = Time < 15
;trigger1 = Time > 10
x = 8;10

[State 2000]
type = AfterImage
triggerall = time = 0
trigger1 = p2stateno = 9010
PalBright   = 0,0,0
PalContrast = 0,120,0
Trans = Add1
time = 15

;[State 2002, Super]
;type = AfterImage
;triggerall = time = 0
;trigger1 = p2stateno = 9010
;FrameGap = 5
;length = 20
;PalBright   =   0,  50,  0
;PalContrast = 128,128,128
;PalAdd      =   0,  0,  0
;PalMul      =  1,1,1
;Trans = Add1
;time = 15

[State 1000, bber]
type = PlaySnd
trigger1 = Time = 0
value = 1,0

[State 1000, 10]
type = HitDef
trigger1 = AnimElem = 3
attr = S, SA
animtype  = back
damage    = 200, 95
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
ground.velocity = -5,-5
air.velocity = -6,-6
air.hittime = 17
yaccel = 0.5
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
;-----------------------

[StateDef 2002]
type    = S
movetype= A
physics = S
juggle  = 2
ctrl = 0
anim = 3445

[State 1100, aAccell]
type = VelAdd
trigger1 = Time < 30
trigger2 = Time > 6
x = 9

[State 2000]
type = AfterImage
triggerall = time = 0
trigger1 = p2stateno = 9010
PalBright   = 0,0,0
PalContrast = 0,120,0
Trans = Add1
time = 30

[State 1000, bber]
type = PlaySnd
trigger1 = Time = 8
value = 4,66

[State 1200, BoltFat]
type = HitDef
trigger1 = time = 0
attr = S, NA
damage    = 230, 100
animtype = Light
air.animtype = Back
guardflag = HL
pausetime = 0,2
sparkno = 96
sparkxy = 20,0
guard.sparkno = -1
hitsound   = 5,14
guardsound = 5,14
ground.type = High
ground.slidetime = 30
ground.hittime  = 30
ground.velocity = -2
air.velocity = -1,-3
p2stateno = 2003
air.fall = 1
fall.recover = 0
air.juggle = 3


[State 1000, BounceOff]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0
;------------------------------
[Statedef 2003]
Type = A
MoveType = H
Physics = N
Velset = 3.25, -5
ctrl = 1

[State 3002, CA]
type = Changeanim2
trigger1 = time = 0
value = 2003

[State 3002, gravedad]
type = veladd
trigger1 = time > 5
y = .3

[State 3002, CC]
type = Selfstate
trigger1 = Pos Y >= 0
trigger1 = time > 5
value = 5110
;------------------

[Statedef 2004]
Type = A
MoveType = H
Physics = N
Velset = 3, -5
ctrl = 1

[State 3002, CA]
type = Changeanim2
trigger1 = time = 0
value = 2003

[State 3002, gravedad]
type = veladd
trigger1 = time > 5
y = .3

[State 3002, CC]
type = Selfstate
trigger1 = Pos Y >= 0
trigger1 = time > 5
value = 5110
;------------------------

[StateDef 2005]
type    = S
movetype= A
physics = S
juggle  = 6
ctrl = 0
velset = 0,0,0
anim = 2005
sprpriority = 9

[State 1200, ZappySound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 4, 4
channel = 3
volume = 70

[State 1200, Za]
type = VelSet
trigger1 = time = 1
trigger2 = Vel Y != 0
x = 7

[State 1200, BoltFat]
type = Projectile
trigger1 = AnimElem = 3
projanim = 1016
projhitanim = 1040
projremanim = 1040
offset = 100*const(size.xscale), -99*const(size.xscale)
ID = 998
velocity = 9, 0
remvelocity = 0, 0
; HitDef part of projectile info
attr = S, SP
animtype  = Light
damage    = 180, 90
guardflag = HL
hitflag = MAF
pausetime = 0, 2
sparkno = -1
sparkxy = 15,-10
guard.sparkno = 7
hitsound = 5,0
guardsound = 5,14
p2facing = 1
ground.type = High
ground.slidetime = 20
ground.hittime  = 15
guard.ctrltime = 20
ground.velocity = -15,0
air.velocity = -4,-5
air.fall = 1
air.juggle = 3
fall.recover = 0
p2stateno = 21238
palfx.time = 20
palfx.mul = 0,99,0
palfx.add = 0,99,0
yaccel = 0.45
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 88500, NotFreindly]
type = VarSet
trigger1 = AnimElem = 4
v = 5
value = 1

[State 0, ChangeState]
type = ChangeState
trigger1 = projcontact = 1
value = 1301
ctrl = 0

[State 88500, Fall]
type = ChangeState
trigger1 = animtime = 0
value = 2306

[Statedef 2306]; Drop
type    = A
movetype= A
physics = A
juggle  = 4
velset = 0,.3
anim = 2006
ctrl = 0

[State 1101]
type = Veladd
trigger1 = time > 0
y = .3
;---------------------------------
