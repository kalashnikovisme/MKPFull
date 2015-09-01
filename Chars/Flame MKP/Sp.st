;------------------------------------------------------------
[StateDef 1100];bola rapida
type    = S
movetype= A
physics = S
juggle  = 9
ctrl = 0
velset = 0,0,0
anim = 1003

[State 1200, ZappySound]
type = PlaySnd
trigger1 = time = 0
value = 4, 18
channel = 3
volume = 70

[State 1200, Za]
type = VelSet
trigger1 = time = 1
trigger2 = Vel Y != 0
y = 0

[State 1200, 2at]
type = Explod
trigger1 = animelem = 8
anim = 1003
pos = 5,-110
postype = p1
facing = -1
ID = 1002
sprpriority  >= 2
removetime = 1000

[State 1200, BoltFat]
type = Projectile
trigger1 = time = 4
triggerall = p2stateno != 9010
;trigger1 = p2stateno != 12001
;trigger2 = p2stateno != 1009
projanim = 1001
projhitanim = 1000
projremanim = 1000
offset = 60*const(size.xscale), -75*const(size.xscale)
ID = 997
velocity = 9, 0
remvelocity = 0, 0
; HitDef part of projectile info
attr = S, SP
animtype  = Back
damage    = 149, 75
guardflag = M
hitflag = MAF
pausetime = 0, 2
sparkno = -1
guard.sparkno = -1
hitsound = 5,0
guardsound = 5,14
ground.type = High
ground.slidetime = 30
p2facing = 1
guard.ctrltime = 20
guard.velocity = -25
guard.slidetime = 20
ground.hittime  = 20
ground.velocity = 2.5,-8
air.velocity = 2.5,-8
air.hittime = 17
ground.cornerpush.veloff = -25
fall = 1
fall.recover = 0
envshake.time = 15
envshake.freq = 70
envshake.ampl = 7
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 1200, 10]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0
;----------------------------
[StateDef 2220];bola
type    = S
movetype= A
physics = S
juggle  = 9
ctrl = 0
velset = 0,0,0
anim = 1003

[State 2220, ZappySound]
type = PlaySnd
trigger1 = time = 0
value = 4, 18
channel = 3
volume = 70

[State 2220, Za]
type = VelSet
trigger1 = time = 1
trigger2 = Vel Y != 0
y = 0

[State 2220, 2at]
type = Explod
trigger1 = animelem = 8
anim = 1003
pos = 5,-110
postype = p1
facing = -1
ID = 1002
sprpriority  >= 2
removetime = 1000

[State 2220, BoltFat]
type = Projectile
trigger1 = time = 4
triggerall = p2stateno != 9010
;trigger1 = p2stateno != 12001
;trigger2 = p2stateno != 1009
projanim = 1001
projhitanim = 2555
projremanim = 2555
offset = 60*const(size.xscale), -75*const(size.xscale)
ID = 997
velocity = 9, 0
remvelocity = 0, 0
; HitDef part of projectile info
attr = S, NA
animtype  = Back
damage    = 250, 40
guardflag = HL
hitflag = MAF
pausetime = 15,2
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

[State 2220, 10]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0
;--------------------------------------------
[StateDef 1510]
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

[State 2002, Super]
type = AfterImage
trigger1 = time = 0
FrameGap = 5
length = 20
PalBright   =   0,  25,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
Trans = Add1
time = 15

[State 1000, gibber]
type = PlaySnd
trigger1 = Time = 1
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
pausetime = 7,2
sparkno = -1
guard.sparkno = -1
hitsound   = -1
p1stateno = 1511
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
value = 1511

[State 1000, BounceOff]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0
;--------------------------------------------
[StateDef 1511]
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
;--------------------------------

[StateDef 1301]
type    = A
movetype= I
physics = A
ctrl = 0
velset = 0,0
anim = 900

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

;------------------------------------tele
[StateDef 1400];empujon
type = S
movetype= A
physics = S
ctrl = 0
anim = 100

[State 2002, Super]
type = AfterImage
trigger1 = time = 0
FrameGap = 5
length = 20
PalBright   =   0,  25,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
Trans = Add1
time = 30

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
anim = 240

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

[State 1000, 10]
type = HitDef
trigger1 = AnimElem = 4
attr = S,NA
animtype  = hard
damage    = 150, 75
guardflag = HL
pausetime = 20,0
hitflag = AHLMF
sparkno = 2;-1
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
;------------------

[StateDef 2100]
type    = A
movetype= A
physics = A
ctrl = 0
velset = -2,-8

[State hit]
type = nothitby
trigger1 = time <= 10
value = SCA

[State 1001, 10a]
type = Changeanim
trigger1 = Time = 1
value = 1045

[State 1001, 10]
type = VelAdd
trigger1 = Time = [2, 7]
x = -0.2

[State 1001, 210]
type = VelSet
trigger1 = Pos Y <= -90
trigger1 = time >= 2
trigger1 = time <= 15
Y = 0

[State 1001, 10]
type = PosAdd
trigger1 = Time = 2
y = -45

[State 1200, at]
type = Explod
trigger1 = time = 0
trigger2 = movecontact
anim = 1015
postype = p1
sprpriority  >= 2
size.shadowoffset = -1000

[State 1001, 210]
type = VarSet
trigger1 = var(46) = 0
trigger2 = var(46) = 1
V = 46
value = (var(46)=0)*2 + (var(46)=1)*3

[State 1200, ZappySound]
type = PlaySnd
trigger1 = time = 1
trigger2 = p2stateno = 12001
trigger2 = time = 0
trigger3 = moveguarded
trigger3 = time = 0
value = 4, 22
channel = 3

[State 1200, Zapp]
type = PlaySnd
trigger1 = time = 1
value = 2424, 0
channel = 3

[State ]
type = Helper
trigger1 = time = 0
trigger1 = numhelper(7003) < 1
;trigger1 = p2stateno != [120,155]
helpertype = Normal
ID = 7003
name = "clone"
postype = p1
pos = 0,0
stateno = 2102
ownpal = 1
size.shadowoffset = -1000
;-------------------------
[Statedef 2102]
type    = A
movetype= A
physics = N
ctrl = 0
velset = 0,0

[State 1001, 10a]
type = Changeanim
trigger1 = Time = 0
value = 1016

[State 240, 2]
type = HitDef
trigger1 = !movecontact
attr = S, NA
animtype  = Back
damage    = 290, 40
guardflag = HL
hitflag = MAF
pausetime = 0,2
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

[State 1005, Frosty color]
type = palFX
trigger1 = 1
;trigger1 = var(23) = 1
add = 220,70,0
mul = 200,200,200
time = 100

[State ]
type = varset
trigger1 = time <= 0
var(0) = parent,anim

[State ]
type = varset
trigger1 = time <= 0
var(1) = parent,animelemno(0)

[State ]
type = playerpush
trigger1 = 1
value = 0

[State ò_ó]
type = Helper
trigger1 = time = 0
trigger1 = numhelper(7004) < 1
id = 7004
Postype = p1
pos = 0,0
stateno = 2011
ownpal = 1

[State end]
type = destroyself
trigger1 = time = 200
trigger2 = moveguarded
trigger3 = moveguarded
trigger3 = time >= 10
trigger4 = movecontact

;----------------------------------------------------
[Statedef 2011]
type    = A
movetype= I
physics = N
ctrl = 0
velset = 0,0

[State 1009, Frosty color]
type = palFX
trigger1 = 1
add = 250,200,100
mul = 200,200,200
time = 2

[State ]
type = playerpush
trigger1 = 1
value = 0

[State ]
type = changeanim
trigger1 = 1
value = parent,var(0)
elem = parent,var(1)

[State gethit]
type = nothitby
trigger1 = 1
persistent = 1
value = SCA

[State 1200, at]
type = Explod
trigger1 = time = 200
trigger2 = p2stateno = 12001
trigger3 = numhelper(7003) < 1
anim = 1015
postype = p1
sprpriority  >= 2

[State 1200, Zand]
type = PlaySnd
trigger1 = time = 200
trigger2 = moveguarded
value = 4, 22

[State end]
type = destroyself
trigger1 = numhelper(7003) < 1
;---------------------------------

[StateDef 1200]
type    = S
movetype= A
physics = S
juggle  = 2
ctrl = 0
velset = 0,0,0
anim = 900

[State 1200, ZappySound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 4, 99

[State 1200, Za]
type = VelSet
trigger1 = time = 1
trigger2 = Vel Y != 0
y = 0

[State 181, DIED]
type = Explod
trigger1 = time = 6
anim = 888
id = 7088
pos = 16,10
postype = p1
facing = 1
sprpriority = 1
ownpal = 1
removetime = 420

[State 1200, 2at]
type = Explod
trigger1 = Animelem = 3
anim = 902
postype = p1
sprpriority  >= 2

[State 1200, ltFat]
type = Projectile
triggerall = AnimElem = 3
trigger1 = p2stateno != 12001
;trigger2 = p2stateno != 1001
projanim = 901
;projhitanim = 1000
;projremanim = 1000
offset = 0, 0
sprpriority = 1
pos = 0*const(size.xscale),0 *const(size.xscale)
POSTYPE = P2
ID = 997
velocity = 0, 0
remvelocity = 0, 0
projremove = 0
projremovetime = 50
; HitDef part of projectile info
attr = S, NA
animtype  = Back
damage    = 300, 100
guardflag = HL
hitflag = MAF
pausetime = 0,2
sparkno = -1
;sparkxy = -55,-95
guard.sparkno = -1
hitsound = s5,13
guardsound = s5,13
ground.type = High
ground.slidetime = 30
p2facing = 1
guard.ctrltime = 20
guard.slidetime = 20
ground.hittime  = 30
ground.velocity = 0,6
air.velocity = 0,6
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

[State 1200, 10]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0
;------------------------------

[StateDef 1210]
type    = S
movetype= A
physics = S
juggle  = 2
ctrl = 0
velset = 0,0,0
anim = 900

[State 1200, ZappySound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 4, 99
channel = 3
volume = 70

[State 1200, Za]
type = VelSet
trigger1 = time = 1
trigger2 = Vel Y != 0
y = 0

[State 181, DIED]
type = Explod
trigger1 = time = 6
anim = 888
id = 7088
pos = 16,10
postype = p1
facing = 1
sprpriority = 1
ownpal = 1
removetime = 420

[State 1200, 2at]
type = Explod
trigger1 = Animelem = 3
anim = 902
postype = p1
sprpriority  >= 2

[State 1200, ltFat]
type = Projectile
triggerall = AnimElem = 3
trigger1 = p2stateno != 12001
;trigger2 = p2stateno != 1001
projanim = 901
;projhitanim = 1000
;projremanim = 1000
offset = 80, 0
sprpriority = 1
pos = 0*const(size.xscale),0 *const(size.xscale)
POSTYPE = P2
ID = 997
velocity = 0, 0
remvelocity = 0, 0
projremove = 0
projremovetime = 50
; HitDef part of projectile info
attr = S, NA
animtype  = Back
damage    = 300, 100
guardflag = HL
hitflag = MAF
pausetime = 0,2
sparkno = -1
;sparkxy = -55,-95
guard.sparkno = -1
hitsound = s5,13
guardsound = s5,13
ground.type = High
ground.slidetime = 30
p2facing = 1
guard.ctrltime = 20
guard.slidetime = 20
ground.hittime  = 30
ground.velocity = 0,6
air.velocity = 0,6
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

[State 1200, 10]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0
;----------------------------------

[StateDef 1220]
type    = S
movetype= A
physics = S
juggle  = 2
ctrl = 0
velset = 0,0,0
anim = 900

[State 1200, ZappySound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 4, 99

[State 1200, Za]
type = VelSet
trigger1 = time = 1
trigger2 = Vel Y != 0
y = 0

[State 181, DIED]
type = Explod
trigger1 = time = 6
anim = 888
id = 7088
pos = 16,10
postype = p1
facing = 1
sprpriority = 1
ownpal = 1
removetime = 420

[State 1200, 2at]
type = Explod
trigger1 = Animelem = 3
anim = 902
postype = p1
sprpriority  >= 2

[State 1200, ltFat]
type = Projectile
triggerall = AnimElem = 3
trigger1 = p2stateno != 12001
;trigger2 = p2stateno != 1001
projanim = 901
;projhitanim = 1000
;projremanim = 1000
offset = -80, 0
sprpriority = 1
pos = 0*const(size.xscale),0 *const(size.xscale)
POSTYPE = P2
ID = 997
velocity = 0, 0
remvelocity = 0, 0
projremove = 0
projremovetime = 50
; HitDef part of projectile info
attr = S, NA
animtype  = Back
damage    = 300, 100
guardflag = HL
hitflag = MAF
pausetime = 0,2
sparkno = -1
;sparkxy = -55,-95
guard.sparkno = -1
hitsound = s5,13
guardsound = s5,13
ground.type = High
ground.slidetime = 30
p2facing = 1
guard.ctrltime = 20
guard.slidetime = 20
ground.hittime  = 30
ground.velocity = 0,6
air.velocity = 0,6
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

[State 1200, 10]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0
