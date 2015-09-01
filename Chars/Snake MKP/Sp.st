;--------------------------
[StateDef 1300];acido
type    = S
movetype= A
physics = S
juggle  = 9
ctrl = 0
velset = 0,0,0
anim = 20151

[State 1200, ZappySound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 4, 12
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
projanim = 2016
projhitanim = 2040
projremanim = 2040
offset = 103*const(size.xscale), -99*const(size.xscale)
ID = 998
velocity = 12, 0
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
p1stateno = 1301
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
trigger1 = time = 16
helpertype = normal ;player
name = "acido"
ID = 1302
stateno = 1302
pos = 15,-112
postype = p2    ;p2,front,back,left,right
ontop = 1
facing = 1

[State 1200, 2at]
type = helper
trigger1 = time = 16
helpertype = normal ;player
name = "acido"
ID = 1302
stateno = 1302
pos = 15,-132
postype = p2    ;p2,front,back,left,right
ontop = 1
facing = 1

[State 1200, 2at]
type = helper
trigger1 = time = 10
pos = 20,-112
helpertype = normal ;player
name = "acido"
ID = 1302
stateno = 1302
postype = p2    ;p2,front,back,left,right
ontop = 1
facing = 1

[State 1200, 2at]
type = helper
trigger1 = time = 10
pos = 20,-122
helpertype = normal ;player
name = "acido"
ID = 1302
stateno = 1302
postype = p2    ;p2,front,back,left,right
ontop = 1
facing = 1

[State 1200, 2at]
type = helper
trigger1 = time = 7
pos = 40,-114
helpertype = normal ;player
name = "acido"
ID = 1302
stateno = 1302
postype = p2    ;p2,front,back,left,right
ontop = 1
facing = 1

[State 1200, 2at]
type = helper
trigger1 = time = 3
pos = 5,-110
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
pos = 5,-110
helpertype = normal ;player
name = "acido"
ID = 1302
stateno = 1302
postype = p2    ;p2,front,back,left,right
ontop = 1
facing = 1

[State 1200, 2at]
type = helper
trigger1 = time = 3
pos = 5,-90
helpertype = normal ;player
name = "acido"
ID = 1302
stateno = 1302
postype = p2    ;p2,front,back,left,right
ontop = 1
facing = 1

[State 1200, 2at]
type = helper
trigger1 = time = 3
pos = 5,-90
helpertype = normal ;player
name = "acido"
ID = 1302
stateno = 1302
postype = p2    ;p2,front,back,left,right
ontop = 1
facing = -1

[State 1200, 10]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0
;----------------------------------
[Statedef 1302]
type    = S
movetype= I
juggle  = 0
anim = 2041
velset = 0, 0
ctrl = 0

[State 6000, 4]
type = Veladd
trigger1 = time = 0
X = 7
Y = -3

[State 6000, 4]
type = Veladd
trigger1 = time = 7
Y = 3

[State 6000, 4]
type = Veladd
trigger1 = time = 12
Y = 3

[State 6000, 4]
type = Veladd
trigger1 = time = 15
Y = 3

[State 6000, 4]
type = Veladd
trigger1 = time = 18
Y = 4


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

;-------------------------
[Statedef 1400];invisible
type = S
movetype = I
physics = S
anim = 700 + var(17)
ctrl = 0
velset = 0,0

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
anim = 702 + var(0)
ctrl = 0
velset = 0,0

[State 3011, Var]
type = VarSet
trigger1 = time = 0
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

;============================================================

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
value = 4, 12
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
projanim = 2016
projhitanim = 2040
projremanim = 2040
offset = 100*const(size.xscale), -99*const(size.xscale)
ID = 998
velocity = 7, 0
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

[State 1200, 2at]
type = helper
trigger1 = projcontact = 1
helpertype = normal ;player
name = "acido"
ID = 1302
stateno = 1302
pos = 15,-112
postype = p2    ;p2,front,back,left,right
ontop = 1
facing = 1

[State 1200, 2at]
type = helper
trigger1 = projcontact = 1
pos = 20,-112
helpertype = normal ;player
name = "acido"
ID = 1302
stateno = 1302
postype = p2    ;p2,front,back,left,right
ontop = 1
facing = 1

[State 1200, 2at]
type = helper
trigger1 = projcontact = 1
pos = 40,-114
helpertype = normal ;player
name = "acido"
ID = 1302
stateno = 1302
postype = p2    ;p2,front,back,left,right
ontop = 1
facing = 1

[State 1200, 2at]
type = helper
trigger1 = projcontact = 1
pos = 5,-110
helpertype = normal ;player
name = "acido"
ID = 1302
stateno = 1302
postype = p2    ;p2,front,back,left,right
ontop = 1
facing = 1

[State 88500, Fall]
type = ChangeState
trigger1 = animtime = 0
value = 1306
;--------------------
[Statedef 1306]; Drop
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

;------------------------------------------------------

; Spear Toss!!!
[Statedef 1000]
type    = S
movetype= A
physics = S
juggle  = 10
poweradd= 110
velset = 0,0
anim = 1000
ctrl = 0

[State 1000, 0.1]
type = Posset
trigger1 = Pos Y != 0
trigger1 = time = 0
Y = 0

[State 1000, 1]
type = Helper
trigger1 = animelem = 3
stateno = 1010
name = "spear"
id = 1010
postype = p1
pos = 70 , -97
helpertype = normal
sprpriority = -1
keyctrl = 0
ownpal = 0
under = 1

[State 1030, 1.54]
type = Destroyself
trigger1 = time = 150

[State 1000, 7]
type = ChangeState
triggerall = Time >= 50
trigger1 = p2stateno != 1020
trigger1 = p2stateno != 1021
value = 0
ctrl = 1

[State 1000, 8]
type = Changestate
trigger1 = p2stateno = 1020
trigger1 = time = 60
trigger2 = p2stateno = 1021
value = 1001
;---------------------------------------------------------------------------
;PULL EM IN
[Statedef 1001]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 1004
ctrl = 0

[State -2, 3.3]
type = VarRandom
trigger1 = 1
v = 2
range = 0, 50

[State 200, Play]
type = PlaySnd
trigger1 = animelem = 1
triggerall = Var(2) = [25, 50]
trigger1 = 1
value = 4, 13
volume = 50

[State 200, Plaay]
type = PlaySnd
trigger1 = animelem = 1
triggerall = Var(2) = [0, 24]
trigger1 = 1
value = 4, 14
volume = 50

[State 1001, 7]
type = ChangeState
trigger1 = p2stateno = 1021
trigger1 = time > 12
value = 0
ctrl = 1

[State 1030, 1.54]
type = Destroyself
trigger1 = time = 150


[State 1001, 8]
type = Changestate
trigger1 = time > 50
value = 0
ctrl = 1
;---------------------------------------------------------------------------
; The flying spear
[Statedef 1010]
type    = S
movetype= A
physics = N
juggle = 13
velset = 10,0
anim = 1001
ctrl = 0

[State 1030, 1.54]
type = Destroyself
trigger1 = time = 150

[State 1010, 1]
type = Playsnd
trigger1 = time = 0
value = 4,12

[State 1010, 1.2]
type = Helper
trigger1 = time = 0
stateno = 1011
name = "Rope"
pos = -22, 0
helpertype = normal
sprpriority = -2
keyctrl = 0
ownpal = 0
under = 1

[State 1010, 1.55]
type = Helper
trigger1 = timemod = 4,0
trigger1 = time = [0, 60]
trigger1 = Pos X > -190
trigger1 = Pos X < 190
;trigger1 = p2stateno != 9010
stateno = 1011
name = "Rope"
pos = 0, 0
helpertype = normal
sprpriority = -2
keyctrl = 0
ownpal = 0
under = 1

[State 1010, 2]
type = HitDef
trigger1 = time > 0
trigger1 = p2stateno != 9010
attr = SA, SP
damage    = 10,2
p2facing = 1
priority  = 6
hitflag = MAF
guardflag = M
forcestand = 1
sparkno = 1
sparkxy = 30, 20
hitsound   = S88,0
guardsound = 14,5
animtype = Light
kill = 0
Fall = 0
Air.fall = 0
fall.recover = 0
guard.slidetime = 5
guard.ctrltime = 20
snap = 0,0
p1stateno = 1030
p2stateno = 1020

[State 1010, 4]
type = Changestate
trigger1 = MoveGuarded = 1
value = 1013

[State 1030, 1.54]
type = Destroyself
trigger1 = time = 250

;---------------------------------------------------------------------------
;The hidden Rope
[Statedef 1011]
type    = S
movetype= I
physics = N
anim = 1015
ctrl = 0

[State 1030, 1.54]
type = Destroyself
trigger1 = time = 150

[State 1011, 1]
type = Changestate
trigger1 = p2stateno = 1020
value = 1012

[State 1011, 2]
type = Destroyself
trigger1 = root, stateno != [1000, 1001]
;------------------------------------------------------------------------
;The Rope Becomes visible
[Statedef 1012]
type    = S
movetype= I
physics = N
anim = 1002
ctrl = 0

;[State 1030, 1]
;type = PosAdd
;trigger1 = timemod = 5,0
;trigger1 = time = [0, 50]
;Y = 1

;[State 1030, 1.1]
;type = Posadd
;trigger1 = timemod = 5,4
;trigger1 = time = [0, 50]
;Y = -1

[State 1030, 1.54]
type = Destroyself
trigger1 = time = 150


[State 1011, 1]
type = Destroyself
trigger1 = p2stateno = 1021
trigger2 = Parentdist X = [-10, 10]
trigger2 = Parent, Vel X = -8
;------------------------------------------------------------------------
; WBJ's Less cheap thingy
[Statedef 1013]
type    = S
movetype= I
physics = N
anim = 10151
Velset = 0,0
ctrl = 0
sprpriority = -1

[State 1030, 1234]
type = PosSet
trigger1 = Animelem = 1
Y = -97

[State 1013, 1]
type = Destroyself
trigger1 = animtime = 0
;---------------------------------------------------------------------------
; P2's hit by spear state
[Statedef 1020]
type    = S
movetype= H
physics = S
ctrl = 0
Velset = 0,0,0

[State 1030, 1.54]
type = Destroyself
trigger1 = time = 150

[State 1020, sound]
type = Playsnd
trigger1 = time = 0
value = F88,0

[State 1020, .5]
type = Changeanim2
trigger1 = time = 0
value = 1012

[State 1020, .75]
type = PlayerPush
trigger1 = time >= 0
value = 0

[State 1020, 1]
type = PosAdd
trigger1 = timemod = 10,0
trigger1 = time = [0, 50]
X = -1

[State 1020, 1.1]
type = Posadd
trigger1 = timemod = 10,4
trigger1 = time = [0, 50]
X = 1

[State 1020, 1.123]
type = Posadd
trigger1 = time = 1
Y = 0

[State 1020, 1.123]
type = PosSET
trigger1 = time = 1
Y = 0

[State 1020, 2]
type = Changestate
trigger1 = P2dist X = [30, 40]
value = 1021

[State 1030, 1.54]
type = Destroyself
trigger1 = time = 150

[State 1020, 3]
type = Selfstate
trigger1 = time = 400
value = 0
ctrl = 1
;-------------------------------------------------------------------------------
;P2  stunned by spear
[Statedef 1021]
type    = S
movetype= H
physics = N
velset = 0,0,0
ctrl = 0

[State 1021, 1]
type = Changeanim
trigger1 = animexist(5300)
trigger1 = anim != 5300
trigger1 = time = 0
value = 5300

[State 1020, 1.123]
type = PosSET
trigger1 = time = 1
Y = 0

[State 1021, 1]
type = Changeanim2
trigger1 = !animexist(5300)
trigger1 = anim != 9010
trigger1 = time = 0
value = 9010

;[State 1021, 1234]
;type = ChangeState
;trigger1 = p2statetype = A
;trigger1 = time = 1
;value = 0
;ctrl = 1

[State 1021, 3]
type = Selfstate
trigger1 = time = 70
trigger2 = p2statetype = A
value = 0
ctrl = 1

;--------------------------------------------------------------------------
;Spear latching onto target
[Statedef 1030]
type    = S
movetype= A
physics = N
juggle  = 4
anim = 1003
Velset = 0, 0
ctrl = 0

[State 1030, 1]
type = targetbind
trigger1 = p2stateno = 1020
pos = 0,95

[State 1030, 1.01]
type = Velset
trigger1 = time = 50
X = -8

[State 1030, 1.1]
type = Velset
trigger1 = ParentDist X = [-40, 60]
X = 0

[State 1030, 1.4]
type = Changeanim
trigger1 = p2stateno = 1021
trigger1 = anim != 1015
value = 1015


[State 1030, 1.5]
type = Destroyself
trigger1 = p2stateno != 1021
trigger2 = p2stateno = 5000
trigger3 = p2stateno = 5030
trigger4 = p2stateno = 0
trigger5 = time = 200
trigger1 = anim = 1015
trigger1 = Parent, stateno != [1000, 1030]
;--------------------------------------------------------
;Espada
[Statedef 814]
type    = S
movetype= A
physics = S
juggle  = 5
ctrl = 0
velset = 0,0,0
anim = 814


[State 2]
type = Helper
trigger1 = movehit
trigger1 = numhelper(29) < 1
ID = 29
stateno = 29
pos = 100, 0
postype = p1
persistent = 0
ignorehitpause = 1

[State 2]
type = Helper
trigger1 = time = 0
stateno = 815
pos = 0,0
postype = p1

[State 240, 1.5]
type = Playsnd
trigger1 = animelem = 3
trigger2 = animelem = 8
value = 5,0

[State 240, 2]
type = HitDef
trigger1 = animelem = 6
trigger2 = animelem = 10
attr = S, NA
animtype  = Back
damage    = 0
guardflag = HL
hitflag = MAF
pausetime = 0
sparkno = 17
sparkxy = -55,-95
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

[State 810, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
;Espada
[Statedef 815]
type    = S
movetype= A
physics = S
juggle  = 5
ctrl = 0
velset = 0,0,0
anim = 815


[State 2]
type = Helper
trigger1 = movehit
trigger1 = numhelper(29) < 1
ID = 29
stateno = 29
pos = 100, 0
postype = p1
persistent = 0
ignorehitpause = 1

[State 240, 2]
type = HitDef
trigger1 = animelem = 6
trigger2 = animelem = 10
attr = S, NA
animtype  = Back
damage    = 120
guardflag = HL
hitflag = MAF
pausetime = 0
sparkno = 17
sparkxy = -55,-95
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

[State 1011, 2]
type = Destroyself
trigger1 = root, stateno != 814

[State 810, 3]
type = destroyself
trigger1 = AnimTime = 0
;---------------
; Spear Toss!!!
[Statedef 2300]
type    = S
movetype= A
physics = S
juggle  = 0
poweradd= 110
velset = 0,0
anim = 2300
ctrl = 0

[State 1000, 0.1]
type = Posset
trigger1 = Pos Y != 0
trigger1 = time = 0
Y = 0

[State 1000, 1]
type = Helper
trigger1 = animelem = 3
stateno = 2310
name = "spear"
postype = p1
pos = 50, -121
helpertype = normal
sprpriority = -1
keyctrl = 0
ownpal = 0
under = 1

[State 1030, 1.54]
type = Destroyself
trigger1 = time = 150

[State 1000, 7]
type = ChangeState
triggerall = Time >= 100
trigger1 = p2stateno != 2320
trigger1 = p2stateno != 2321
value = 0
ctrl = 1

[State 1000, 8]
type = Changestate
trigger1 = p2stateno = 2320
value = 2301
;---------------------------------------------------------------------------
;PULL EM IN
[Statedef 2301]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 2305
ctrl = 0

[State 200, Play]
type = PlaySnd
trigger1 = animelem = 1
value = 4, 16
volume = 50

[State 1001, 7]
type = ChangeState
trigger1 = p2stateno = 2321
trigger1 = time > 12
value = 0
ctrl = 1

[State 1030, 1.54]
type = Destroyself
trigger1 = time = 150


[State 1001, 8]
type = Changestate
trigger1 = p2bodydist X <= 3
value = 0
ctrl = 1
;---------------------------------------------------------------------------

[Statedef 2310]
type    = S
movetype= A
physics = N
juggle = 13
velset = 6,-3
anim = 2301
ctrl = 0

[State 1010, 1]
type = Playsnd
trigger1 = animelem = 1
value = 4,12

[State 1010, 1.2]
type = Helper
trigger1 = time = 0
stateno = 2311
name = "Rope"
pos = 0, 0
helpertype = normal
sprpriority = -2
keyctrl = 0
ownpal = 0
under = 1

[State 1010, 1.55]
type = Helper
trigger1 = timemod = 4,0
trigger1 = Pos X > -190
trigger1 = Pos X < 190
stateno = 2311
name = "Rope"
pos = 0, 0
helpertype = normal
sprpriority = -2
keyctrl = 0
ownpal = 0
under = 1

[State 1010, 2]
type = HitDef
trigger1 = time > 0
trigger1 = p2stateno != 9010
attr = SA, SP
damage    = 10,2
p2facing = 1
priority  = 6
hitflag = MAF
guardflag = M
forcestand = 1
sparkno = 1
sparkxy = 30, 20
hitsound   = S88,0
guardsound = 14,5
animtype = Light
kill = 0
Fall = 0
Air.fall = 0
fall.recover = 0
guard.slidetime = 5
guard.ctrltime = 20
snap = 0,0
p1stateno = 2330
p2stateno = 2320

[State 1010, 4]
type = Changestate
trigger1 = MoveGuarded = 1
value = 2313

[State 1030, 1.54]
type = Destroyself
trigger1 = time = 150

;---------------------------------------------------------------------------
;The hidden Rope
[Statedef 2311]
type    = S
movetype= I
physics = N
anim = 1015
ctrl = 0

[State 1030, 1.54]
type = Destroyself
trigger1 = time = 150

[State 1011, 1]
type = Changestate
trigger1 = p2stateno = 2320
value = 2312

[State 1011, 2]
type = Destroyself
trigger1 = root, stateno != [2300, 2301]
;------------------------------------------------------------------------
;The Rope Becomes visible
[Statedef 2312]
type    = S
movetype= I
physics = N
anim = 2303
ctrl = 0

;[State 1030, 1]
;type = PosAdd
;trigger1 = timemod = 5,0
;trigger1 = time = [0, 50]
;Y = 1

;[State 1030, 1.1]
;type = Posadd
;trigger1 = timemod = 5,4
;trigger1 = time = [0, 50]
;Y = -1

[State 1030, 1.54]
type = Destroyself
trigger1 = time = 150


[State 1011, 1]
type = Destroyself
trigger1 = p2stateno = 2321
trigger2 = Parentdist X = [-10, 10]
trigger2 = Parentdist Y = [-15, 5]
trigger2 = Parent, Vel X = -10
trigger2 = Parent, Vel Y = 5
;------------------------------------------------------------------------
; WBJ's Less cheap thingy
[Statedef 2313]
type    = S
movetype= I
physics = N
anim = 2313
Velset = 0,0
ctrl = 0
sprpriority = -1

[State 1030, 1234]
type = PosSet
trigger1 = Animelem = 1
Y = -39

[State 1013, 1]
type = Destroyself
trigger1 = animtime = 0
;---------------------------------------------------------------------------
; P2's hit by spear state
[Statedef 2320]
type    = A
movetype= H
physics = S
ctrl = 0
Velset = 0,0,0

[State 1030, 1.54]
type = Destroyself
trigger1 = time = 150

;[State 1020, sound]
;type = Playsnd
;trigger1 = time = 0
;value = 88,0

[State 1020, .5]
type = Changeanim2
trigger1 = time = 0
value = 2302

[State 1020, .75]
type = PlayerPush
trigger1 = time >= 0
value = 0

[State 1020, 1]
type = PosAdd
trigger1 = timemod = 10,0
trigger1 = time = [0, 50]
X = -1

[State 1020, 1.1]
type = Posadd
trigger1 = timemod = 10,4
trigger1 = time = [0, 50]
X = 1

[State 1020, 1.123]
type = Posadd
trigger1 = time = 1
Y = 0

[State 1020, 1.123]
type = PosSET
trigger1 = time = 1
Y = 0

[State 1020, 2]
type = Changestate
trigger1 = P2dist X = [30, 40]
value = 2321

[State 1030, 1.54]
type = Destroyself
trigger1 = time = 150

[State 1020, 3]
type = Selfstate
trigger1 = time = 400
value = 0
ctrl = 1
;-------------------------------------------------------------------------------
;P2  stunned by spear
[Statedef 2321]
type    = S
movetype= H
physics = N
velset = 0,0,0
ctrl = 0

[State 1021, 1]
type = Changeanim
trigger1 = animexist(5300)
trigger1 = anim != 5300
trigger1 = time = 0
value = 5300

[State 1020, 1.123]
type = PosSET
trigger1 = time = 1
Y = 0

[State 1021, 1]
type = Changeanim2
trigger1 = !animexist(5300)
trigger1 = anim != 9010
trigger1 = time = 0
value = 9010

;[State 1021, 1234]
;type = ChangeState
;trigger1 = p2statetype = A
;trigger1 = time = 1
;value = 0
;ctrl = 1

[State 1021, 3]
type = Selfstate
trigger1 = time = 70
trigger2 = p2statetype = A
value = 0
ctrl = 1

;--------------------------------------------------------------------------
;Spear latching onto target
[Statedef 2330]
type    = S
movetype= A
physics = N
juggle  = 4
anim = 2304
Velset = 0, 0
ctrl = 0

[State 1030, 1]
type = targetbind
trigger1 = p2stateno = 2320
pos = 45,75

;[State 1030, 1]
;type = PosAdd
;trigger1 = timemod = 10,0
;trigger1 = time = [0, 50]
;Y = -.5

;[State 1030, 1.1]
;type = Posadd
;trigger1 = timemod = 10,4
;trigger1 = time = [0, 50]
;Y = .5

[State 1030, 1.01]
type = Velset
trigger1 = time = 0
X = -10
Y = 5

[State 1030, 1.4]
type = Changeanim
trigger1 = p2stateno = 2321
trigger1 = anim != 1015
value = 1015


[State 1030, 1.5]
type = Destroyself
trigger1 = p2stateno != 2321
trigger2 = p2stateno = 5000
trigger3 = p2stateno = 5030
trigger4 = p2stateno = 0
trigger5 = time = 200
trigger1 = anim = 1015
trigger1 = Parent, stateno != [1000, 1030]
