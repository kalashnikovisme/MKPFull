[Statedef 2241]
type    = S
movetype= A
physics = S
juggle  = 10
ctrl = 0
velset = 0,0,0
anim = 2241

;[State 2, blood111]
;type = Helper
;trigger1 = movehit
;trigger1 = numhelper(7110) < 1
;ID = 7110
;stateno = 7110
;pos = 0, -100
;postype = p2
;persistent = 0
;ignorehitpause = 1

[State 9200, 1.5]
type = Playsnd
trigger1 = animelem = 3
value = F5,15

[State 9200, 2]
type = HitDef
trigger1 = !movecontact
attr = S, NA
animtype  = Back
damage    = 250, 50
guardflag = HL
hitflag = MAF
pausetime = 0,2
sparkno = 15
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
air.velocity = -6,-6
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

[State 0, ChangeState]
type = ChangeState
trigger1 = movecontact = 1
value = 1404
ctrl = 0

[State 9200, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 2444]
type    = S
movetype= A
physics = S
juggle  = 4
ctrl = 0
velset = 0,0,0
anim = 210

[State 9130, SetFatal]
type = Varset
trigger1 = Time = 4
V = 4
value = 1

[State 8000, sad]
type = BGPalFX
trigger1 = animelem = 1
time = 9999
add = -100, -100, -100

[State 9200, 1.5]
type = Playsnd
trigger1 = animelem = 1
value = 13,0

[State 240, 1.5]
type = Playsnd
trigger1 = animelem = 3
value = F5,15

[State 9200, 2]
type = HitDef
trigger1 = !movecontact
attr = S, NA
animtype  = Back
damage    = 166, 22
guardflag = HL
hitflag = MAF
pausetime = 0, 2
p2stateno = 441
sparkno = 1
sparkxy = 30,-95
guard.sparkno = -1
hitsound = 5,0
guardsound = 5,14
ground.cornerpush.veloff = -30
ground.type = High
ground.slidetime = 30
p2facing = 1
guard.ctrltime = 20
ground.hittime  = 30
ground.velocity = -5,-5
air.velocity = -4.4,-5.2
air.hittime = 17
;fall = 1
fall.recover = 0
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 9200, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


[State 9200, 4]
type = ChangeState
trigger1 = Movehit = 1
value = 2401
ctrl = 1

[Statedef 2401]
type    = S
movetype= I
physics = S
ctrl = 0

[State 2401, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;---------------------------------

[StateDef 2000]
type    = S
movetype= A
physics = S
juggle  = 2
ctrl = 0
anim = 1004

[State 1100]
type = VarRandom
trigger1 = 1
v = 13
range = 1105,1106

[State 1100]
type = Explod
trigger1 = anim = 1004
trigger1 = time < 20
anim = var(13)
pos = 0,-30
random = 0, 50
vel = -1,0
postype = p1
facing = 1
sprpriority = 1

[State 1100]
type = Explod
trigger1 = anim = 1004
trigger1 = time < 20
anim = var(13)
pos = 0,-30
random = 0, 50
vel = -2,0
postype = p1
facing = 1
sprpriority = 1

[State 1100]
type = Explod
trigger1 = anim = 1004
trigger1 = time < 20
anim = var(13)
pos = 0,-30
random = 0, 50
vel = -3,0
postype = p1
facing = 1
sprpriority = 1

[State 0, Explod]
type = Explod
trigger1 = anim = 1004
trigger1 = time < 18
anim = 1104
pos = 10,0
postype = p1
sprpriority = 2

[State 1100, aAccell]
type = VelAdd
trigger1 = Time < 22
x = 6

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
pausetime = 10,2
sparkno = -1
guard.sparkno = -1
hitsound   = -1
p1stateno = 1001
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
value = 1001

[State 1000, BounceOff]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0

[State 1100, aAccell]
type = VelAdd
trigger1 = Time < 22
x = 6

;--------------------------------------------
; Torpedo Bounce away
[StateDef 1001]
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

-----------------------------------------------
[Statedef 20022]
type    = S
movetype= A
physics = N
velset = 0,0
anim = 910
ctrl = 0

[State 700, 2]
type = PosAdd
trigger1 = Time = 0
X = (P2Dist X) + 1

[State 1010, 1]
type = Playsnd
trigger1 = time = 0
value = 4,4

[State 1010, 2]
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


[State 1030, 1.54]
type = Destroyself
trigger1 = time = 25

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
;------------------------------------------------------------------------------------------
;------------------------------------------------------------------------------------------
; Dissappear (stand)
[Statedef 1046]
type    = S
movetype= I
physics = N
anim = 1046
Velset = 0, 0
ctrl = 0

[State 1045, 3]
type = Destroyself
trigger1 = animtime = 0
trigger2 = Parent, FrontEdgedist = [0, 10]
trigger3 = Parent, BackEdgedist = [0, 10]
;------------------------------------------------------------------------------------------
; Appear behind
[Statedef 1050]
type    = S
movetype= A
physics = N
juggle  = 2
anim = 1050
Velset = 0, 0
ctrl = 0

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
value = 1050

[State 1050, 3]
type = Velset
trigger1 = time = 4
X = 8.5

[State 1040, 0.7]
type = Veladd
trigger1 = Pos Y < 0
Y = .65

[State 1050, 4]
type = HitDef
trigger1 = time > 0
trigger1 = movecontact = 0
attr = A, SA
damage    = 70,10
animtype  = Light
air.animtype  = Back
guardflag = HA
priority = 7
pausetime = 13, 10
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
p2facing = 1

[State 1050, 5]
type = PosSet
trigger1 = MoveGuarded = 1
Y = -5

[State 1050, 6]
type = Changestate
trigger1 = MoveGuarded = 1
value = 1055

[State 1050, 6.6]
type = Posset
trigger1 = movehit = 1
Y = 0

[State 1050, 6.9]
type = Velset
trigger1 = Pos Y > 0
Y = 0

[State 1050, 6.6]
type = Posset
trigger1 = Pos Y > 0
trigger1 = time = 20
Y = 0

[State 1050, 7]
type= Changestate
trigger1 = time > 10
trigger1 = Pos Y = 0
trigger2 = movehit = 1
value = 50
ctrl = 1
;------------------------------------------------------------------------------------------
; Blocked
; Torpedo Bounce
[StateDef 1055]
type    = A
movetype= I
physics = A
ctrl = 0
velset = -2,-8
anim = 1055

[State 1001, 10]
type = VelAdd
trigger1 = Time = [0, 3]
x = -0.1

[State 1001, 10]
type = PosAdd
trigger1 = Time = 0
y = -45

[State 1050, 7]
type= Changestate
trigger1 = Animtime = 0
trigger1 = Pos Y = 0
value = 0
ctrl = 1

; Torpedo
[Statedef 25640]
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

[State 2000, nonkilling helper]
type = helper
trigger1 = AnimElem = 2
trigger1 = Var(9) = 1
stateno = 2001
name = "Bomb1"
id = 2001
pos = 0, -90
postype = p1

[State 2000, killing helper]
type = helper
trigger1 = AnimElem = 2
trigger1 = Var(9) = 0
stateno = 2002
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
[StateDef 5200]
type    = S
movetype= A
physics = S
juggle  = 2
ctrl = 0
velset = 0,0,0
anim = 550

[State 1200, 2at]
type = Explod
trigger1 = animelem = 4
anim = 553
pos = 0,0
postype = p1
ID = 112
sprpriority  = 2

[State 5200, ZappySound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 4, 14
channel = 3
volume = 70

[State 5200, Za]
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

[State 5200, 2at]
type = Explod
trigger1 = Animelem = 3
anim = 552
postype = p1
sprpriority  >= 2

[State 5200, ltFat]
type = Projectile
triggerall = AnimElem = 3
trigger1 = p2stateno != 12001
;trigger2 = p2stateno != 1001
projanim = 551
;projhitanim = 1000
;projremanim = 1000
offset = 0, 0
pos = 0*const(size.xscale),0 *const(size.xscale)
POSTYPE = P2
ID = 997
velocity = 0, 0
remvelocity = 0, 0
projremove = 0
projremovetime = 50
; HitDef part of projectile info
attr = S, SP
animtype = Hard
air.animtype = Back
air.fall = 1
numhits = 0
guardflag = HL
pausetime = 0,2
sparkno = -1
p2stateno = 12001
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

[State 5200, BoltFat]
type = Projectile
triggerall = AnimElem = 3
trigger1 = p2stateno = 12001
;trigger1 = p2stateno = 1001
projanim = 551
;projhitanim = 1000
;projremanim = 1000
offset = 0, 0
pos = 0*const(size.xscale),0 *const(size.xscale)
POSTYPE = P2
ID = 997
velocity = 0, 0
remvelocity = 0, 0
projremove = 0
projremovetime = 50
; HitDef part of projectile info
attr = S, SP
animtype = Hard
air.animtype = Back
air.fall = 1
numhits = -1
guardflag = HL
pausetime = 0,2
sparkno = -1
p1stateno = 5201
p2stateno = 5206
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

[State 0, ChangeState]
type = ChangeState
trigger1 = projcontact = 1
value = 1404
ctrl = 0

[State 5200, 10]
type = ChangeState
trigger1 = Movehit = 1
trigger1 = p2stateno = 12001
value = 551

[State 5200, 10]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0
------------
[Statedef 5206]
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
;--------------------------
; Double ice hits back
[Statedef 5201]
type    = S
movetype= H
physics = N
juggle  = 0
velset = 0,0
ctrl = 0
anim = 1019

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
value = 1006
;---------------------------------

[StateDef 2000]
type    = S
movetype= A
physics = S
juggle  = 2
ctrl = 0
anim = 1004

[State 2000]
type = AfterImage
trigger1 = time = 0
PalBright   = 0,0,0
PalContrast = 0,155,240
Trans = Add1
time = 53

[State 1100, aAccell]
type = VelAdd
trigger1 = Time < 22
x = 9

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
pausetime = 10,2
sparkno = -1
guard.sparkno = -1
hitsound   = -1
p1stateno = 1301
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
value = 1301

[State 1000, BounceOff]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0
;--------------------------------------------
[StateDef 1101]
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
;============================================================
[StateDef 5210]
type    = S
movetype= A
physics = S
juggle  = 2
ctrl = 0
velset = 0,0,0
anim = 550

[State 5200, ZappySound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 4, 14
channel = 3
volume = 70

[State 1200, 2at]
type = Explod
trigger1 = animelem = 4
anim = 553
pos = 0,0
postype = p1
ID = 112
sprpriority  = 2

[State 5200, Za]
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

[State 5200, 2at]
type = Explod
trigger1 = Animelem = 3
anim = 552
postype = p1
sprpriority  >= 2

[State 5200, ltFat]
type = Projectile
triggerall = AnimElem = 3
trigger1 = p2stateno != 12001
;trigger2 = p2stateno != 1001
projanim = 551
;projhitanim = 1000
;projremanim = 1000
offset = 80, 0
pos = 0*const(size.xscale),0 *const(size.xscale)
POSTYPE = P2
ID = 997
velocity = 0, 0
remvelocity = 0, 0
projremove = 0
projremovetime = 50
; HitDef part of projectile info
attr = S, SP
animtype = Hard
air.animtype = Back
air.fall = 1
numhits = 0
guardflag = HL
pausetime = 0,2
sparkno = -1
p2stateno = 12001
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

[State 5200, BoltFat]
type = Projectile
triggerall = AnimElem = 3
trigger1 = p2stateno = 12001
;trigger1 = p2stateno = 1001
projanim = 551
;projhitanim = 1000
;projremanim = 1000
offset = 80, 0
pos = 0*const(size.xscale),0 *const(size.xscale)
POSTYPE = P2
ID = 997
velocity = 0, 0
remvelocity = 0, 0
projremove = 0
projremovetime = 50
; HitDef part of projectile info
attr = S, SP
animtype = Hard
air.animtype = Back
air.fall = 1
numhits = -1
guardflag = HL
pausetime = 0,2
sparkno = -1
p1stateno = 5201
p2stateno = 5206
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

[State 0, ChangeState]
type = ChangeState
trigger1 = projcontact = 1
value = 1404
ctrl = 0

[State 5200, 10]
type = ChangeState
trigger1 = Movehit = 1
trigger1 = p2stateno = 12001
value = 551

[State 5200, 10]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0

;============================================================
[StateDef 5220]
type    = S
movetype= A
physics = S
juggle  = 2
ctrl = 0
velset = 0,0,0
anim = 550

[State 5200, ZappySound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 4, 14
channel = 3
volume = 70

[State 1200, 2at]
type = Explod
trigger1 = animelem = 4
anim = 553
pos = 0,0
postype = p1
ID = 112
sprpriority  = 2

[State 5200, Za]
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

[State 5200, 2at]
type = Explod
trigger1 = Animelem = 3
anim = 552
postype = p1
sprpriority  >= 2

[State 5200, ltFat]
type = Projectile
triggerall = AnimElem = 3
trigger1 = p2stateno != 12001
;trigger2 = p2stateno != 1001
projanim = 551
;projhitanim = 1000
;projremanim = 1000
offset = -80, 0
pos = 0*const(size.xscale),0 *const(size.xscale)
POSTYPE = P2
ID = 997
velocity = 0, 0
remvelocity = 0, 0
projremove = 0
projremovetime = 50
; HitDef part of projectile info
attr = S, SP
animtype = Hard
air.animtype = Back
air.fall = 1
numhits = 0
guardflag = HL
pausetime = 0,2
sparkno = -1
p2stateno = 12001
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

[State 5200, BoltFat]
type = Projectile
triggerall = AnimElem = 3
trigger1 = p2stateno = 12001
;trigger1 = p2stateno = 1001
projanim = 551
;projhitanim = 1000
;projremanim = 1000
offset = -80, 0
pos = 0*const(size.xscale),0 *const(size.xscale)
POSTYPE = P2
ID = 997
velocity = 0, 0
remvelocity = 0, 0
projremove = 0
projremovetime = 50
; HitDef part of projectile info
attr = S, SP
animtype = Hard
air.animtype = Back
air.fall = 1
numhits = -1
guardflag = HL
pausetime = 0,2
sparkno = -1
p1stateno = 5201
p2stateno = 5206
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

[State 0, ChangeState]
type = ChangeState
trigger1 = projcontact = 1
value = 1404
ctrl = 0

[State 5200, 10]
type = ChangeState
trigger1 = Movehit = 1
trigger1 = p2stateno = 12001
value = 551

[State 5200, 10]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0
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

; Chest sound
[State 2010, sound]
type = Playsnd
trigger1 = time = 0
value = 14,0

[State 2010, nonkilling helper]
type = helper
trigger1 = AnimElem = 2
trigger1 = Var(9) = 1
stateno = 2012
name = "Shot2"
id = 2001
pos = 0, -90
postype = p1

[State 2010, killing helper]
type = helper
trigger1 = AnimElem = 2
trigger1 = Var(9) = 0
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
[Statedef 2001]
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
[Statedef 2002]
type    = S
movetype= A
physics = N
velset = 10, 0
anim = 1010
ctrl = 0

[State 2000, soundss]
type = Playsnd
trigger1 = time = 30
value = 0,4

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

[State 2002, slow]
type = veladd
trigger1 = p2bodydist X < 70
x = -.1

[State 2002, slow]
type = veladd
trigger1 = p2bodydist X < 35
x = -.2

[State 2002, stopx]
type = velset
trigger1 = p2dist X < 1
x = 0

[State 2002, stop]
type = velset
trigger1 = Pos Y >= 0
x = 0
y = 0

[State 2002, gone]
type = Destroyself
trigger1 = time = 120

;-------------------------------------
; Close bomb (killer)
[Statedef 2011]
type    = S
movetype= A
physics = N
velset = 4, 0
anim = 1010
ctrl = 0

[State 2000, soundss]
type = Playsnd
trigger1 = time = 30
value = 0,4

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
y = .2

[State 2011, stopx]
type = velset
trigger1 = p2dist X < 1
x = 0

[State 2011, stop]
type = velset
trigger1 = Pos Y >= 0
x = 0
y = 0

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
value = 4,19

[State 2020, plume]
type = Explod
trigger1 = time = 0
anim = 1020;F20
pos = 0, 0
postype = p1
facing = 1
sprpriority = 3
ownpal = 0
ontop = 1

[State 2020, hit]
type = HitDef
trigger1 = time = 0
;trigger1 = p2statetype != A
attr = S, SP   
damage    = 100, 30
animtype = Heavy
guardflag = HL
hitflag = SAF
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
fall.recover = 0

fall = 1
fall.recover = 0
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

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
value = 4,19

[State 2021, plume]
type = Explod
trigger1 = time = 0
anim = 1020;F20
pos = 0, 0
postype = p1
facing = 1
sprpriority = 3
ownpal = 0
ontop = 1

[State 2021, hit]
type = HitDef
trigger1 = time = 0
;trigger1 = p2statetype != A
attr = S, SP   
damage    = 100, 30
animtype = Heavy
guardflag = HL
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
fall.recover = 0

[State 2021, des]
type = destroyself
trigger1 = animtime = 0

;-------------------------------------------------------------------
; GROUND FREEZE
;-------------------------------------------------------------------

[Statedef 1300]
Type = S
Movetype = A
Physics = S
Anim = 1300
ctrl = 0

[State 0, Explod]
type = Explod
trigger1 = time = 11
anim = 1301
pos = 0,0
postype = p1
bindtime = 1
sprpriority = 2
removeongethit = 0

[State 1200, 2at]
type = Explod
trigger1 = animelem = 3
anim = 1302
pos = 0,0
postype = p1
sprpriority  = 2

[State 1300, 0.5]
type = playsnd
trigger1 = time = 0
value = 9,5

[State 1300, 1]
type = helper
trigger1 = animelem = 10
trigger1 = p2stateno != 9010
stateno = 1301
name = "Puddle"
id = 1301
pos = 107, -3
postype = p1
facing = 1
bindtime = 1
under = 1

[State 1300, 1]
type = helper
trigger1 = animelem = 10
trigger1 = p2stateno = 9010
stateno = 1305
name = "Puddle"
id = 1305
pos = 107, -3
postype = p1
facing = 1
bindtime = 1
under = 1

[State 1300, CS]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

;-------------------------------------------------------------------

[Statedef 1301]
Type = S
MoveType = A
Physics = N

;WILLOUGHBY NOTES TO IMPALER
;The helper appears but does not actually hit the person because there is no
;hit def... :^D

[State 1301, CA]
type = ChangeAnim
trigger1 = time = 0
value = 2301

[State 1301, CAAA]
type = SprPriority
trigger1 = time != 0
value = 0

[State 1301, CB] ;WBJ...The actual hit
type = HitDef
trigger1 = p2stateno != 1303
trigger1 = time = [0, 30]
attr = S, NA
damage    = 0
guardflag = L
hitflag = MAFD
priority = 3, Hit
pausetime = 0,0
numhits = 0
sparkno = -1
sparkxy = -10,-70
hitsound = S10,0
guardsound = -1
kill = 0
p2stateno = 1303

[State Destroy]
type = changestate
trigger1 = animtime = 0
trigger2 = root, movetype = H
trigger3 = moveguarded
trigger4 = root, movecontact
value = 1302

;-------------------------------------------------------------------
;Change the slipping fool back to normal
;-------------------------------------------------------------------

[Statedef 1302]
Type = S
MoveType = A
Physics = N
anim = 2302

[State 1301, CAAA]
type = SprPriority
trigger1 = time != 0
value = 0

[State 1302, CB]
type = HitDef
trigger1 = p2stateno = 1303
attr = S, NA
damage    = 0
hitflag = MAFD
priority = 7, Hit
pausetime = 0,0
numhits = 0
sparkno = -1
sparkxy = -10,-70
hitsound = -1
guardsound = 6,0
kill = 0
p2stateno = 1304

[State 1302, CS]
type = destroyself
trigger1 = animtime = 0

;-------------------------------------------------------------------
;DUDE IS SLIPPING!
;-------------------------------------------------------------------

[Statedef 1303]
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
trigger1 = enemy, numhelper(1301) = 0
ctrl = 1
value = 0

;-------------------------------------------------------------------
;DUDE STOPS
;-------------------------------------------------------------------

[Statedef 1304];WBJ puts the player back in normal states...
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

;charco en finish him
[Statedef 1305]
Type = S
MoveType = I
Physics = N
anim = 2301

[State 1301, CA]
type = ChangeAnim
trigger1 = time = 0
trigger1 = anim = 2301
value = 2302

[State 1302, CS]
type = destroyself
trigger1 = animtime = 0

;============================================================

[StateDef 1000]
type    = S
movetype= A
physics = S
juggle  = 2
ctrl = 0
velset = 0,0,0
anim = 1003

[State 1200, ZappySound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 4, 14
channel = 3
volume = 70

[State 1200, Za]
type = VelSet
trigger1 = time = 1
trigger2 = Vel Y != 0
y = 0

[State 1200, 2at]
type = Explod
trigger1 = animelem = 3;1
anim = 910
pos = 48,-75
postype = p1
ID = 112
sprpriority  >= 2

[State 1200, 2at]
type = Explod
trigger1 = animelem = 3
anim = 1002
pos = 0,0
postype = p1
ID = 112

sprpriority  >= 2
[State 181, DIED]
type = Explod
trigger1 = time = 0
anim = 888
id = 7088
pos = 16,10
postype = p1
facing = 1
sprpriority = 1
ownpal = 1
bindtime = 1

[State 1200, BoltFat]
type = Projectile
triggerall = time = 16
trigger1 = p2stateno != 12001
trigger1 = p2stateno != 1009
projanim = 1001
projhitanim = 1000
projremanim = 1000
offset = 48*const(size.xscale), -75*const(size.xscale)
ID = 997
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
hitsound   = s4,17
guardsound = s4,17
ground.type = High
ground.slidetime = 14
ground.hittime  = 16
air.juggle = 3
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 1200, BoltFat]
type = Projectile
triggerall = time = 16
trigger1 = p2stateno = 12001
trigger2 = p2stateno = 1009
projanim = 1001
projhitanim = 1000
projremanim = 1000
offset = 48*const(size.xscale), -75*const(size.xscale)
ID = 997
velocity = 9, 0
remvelocity = 0, 0
attr = S, NT
animtype = Hard
air.animtype = Back
air.fall = 1
guardflag = HL
pausetime = 0,2
sparkno = -1
p2stateno = 1007
p1stateno = 1009
numhits = -1
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

[State 0, ChangeState]
type = ChangeState
trigger1 = projcontact = 1
value = 1404
ctrl = 0

[State 1200, 10]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0

[StateDef 1404]
type    = S
movetype= I
physics = S
ctrl = 0
velset = 0,0

[State 1000, Accellw]
type = VelSet
trigger1 = time = 0
x = 0

[State 1200, 2at]
type = helper
trigger1 = time = 1
helpertype = normal
pos = 0,-80
name = "snow"
ID = 1402
stateno = 1402
postype = p2
ontop = 1
facing = -1

[State 1200, 2at]
type = helper
trigger1 = time = 0
helpertype = normal
pos = 0,-90
name = "snow"
ID = 1402
stateno = 1402
postype = p2
ontop = 1
facing = -1

[State 1200, 2at]
type = helper
trigger1 = time = 1
pos = 7,-114
helpertype = normal
name = "snow"
ID = 1402
stateno = 1402
postype = p2
ontop = 1
facing = 1

[State 1200, 2at]
type = helper
trigger1 = time = 0
pos = 5,-70
helpertype = normal
name = "snow"
ID = 1402
stateno = 1402
postype = p2
ontop = 1
facing = 1

[State 1200, 2at]
type = helper
trigger1 = time = 1
pos = 3,-85
helpertype = normal
name = "snow"
ID = 1402
stateno = 1402
postype = p2
ontop = 1
facing = -1

[State 1200, 2at]
type = helper
trigger1 = time = 0
pos = 1,-65
helpertype = normal
name = "snow"
ID = 1402
stateno = 1402
postype = p2
ontop = 1
facing = -1

[State 1200, 2at]
type = helper
trigger1 = time = 1
pos = 3,-50
helpertype = normal
name = "snow"
ID = 1402
stateno = 1402
postype = p2
ontop = 1
facing = 1

[State 1200, 2at]
type = helper
trigger1 = time = 0
pos = 0,-45
helpertype = normal
name = "snow"
ID = 1402
stateno = 1402
postype = p2
ontop = 1
facing = 1

[State 1200, 2at]
type = helper
trigger1 = time = 1
pos = 2,-53
helpertype = normal
name = "snow"
ID = 1402
stateno = 1402
postype = p2
ontop = 1
facing = -1

[State 1200, 2at]
type = helper
trigger1 = time = 0
pos = 1,-33
helpertype = normal
name = "snow"
ID = 1402
stateno = 1402
postype = p2
ontop = 1
facing = -1

[State 1200, 2at]
type = helper
trigger1 = time = 1
pos = 3,-46
helpertype = normal
name = "snow"
ID = 1402
stateno = 1402
postype = p2
ontop = 1
facing = 1

[State 1001, 10]
type = Changestate
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[StateDef 1002]
type    = S
movetype= A
physics = S
juggle  = 2
ctrl = 0
velset = 0,0,0
anim = 1000

[State 1200, ZappySound]
type = PlaySnd
trigger1 = AnimElem = 7
value = 4, 4
channel = 3

[State 1200, Za]
type = VelSet
trigger1 = time = 1
trigger2 = Vel Y != 0
y = 0

[State 1200, BoltFat]
type = Projectile
trigger1 = AnimElem = 8
projanim = 1001
;projhitanim = 1230
;projremanim = 1211
offset = 60*const(size.xscale), -100*const(size.xscale)
velocity = 12, 0
remvelocity = 0, 0
; HitDef part of projectile info
attr = S, SP
damage    = 140, 23
animtype = Light
air.animtype = Back
air.fall = 1
guardflag = HL
pausetime = 0,2
sparkno = -1
guard.sparkno = -1
hitsound   = s94,3
ground.type = High
p2stateno = 1007
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 1200, 10]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0

;------------
[StateDef 12001]
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
value = 1006

;--------------

[Statedef 1007]
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
;-----------------------

; Double ice hits back
[Statedef 1009]
type    = S
movetype= H
physics = N
juggle  = 0
velset = 0,0
ctrl = 0
anim = 9998

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
value = 1006
;----------------------------------

[Statedef 1006]
type    = S
movetype= H
physics = N
velset = 0,4
ctrl = 0
anim = 5070

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

;--------------------------------

[Statedef 441]
type    = S
movetype= H
physics = S
juggle  = 4
ctrl = 0
anim = 441

[State 9010, 0.1]
type = Sprpriority
trigger1 = time = 1
value  >= 2

[State 1313, Bolt]
type = Explod
trigger1 = animelem = 4
anim = 442
shadow = -1,250,250
pos = -50*const(size.xscale),-65*const(size.xscale)
bindtime = -1
helpertype = normal
sprpriority = 3
ownpal = 1

[State 9399, 2]
type = Selfstate
trigger1 = AnimTime = 0
value = 5150

[State 9399, 3]
type = Lifeadd
trigger1 = Time = 1
Value = -9999


[State 5150, 8]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1
ctrl = 1
;------------------------

[Statedef 701]
type    = S
movetype= H
physics = S
juggle  = 4
ctrl = 0
anim = 701

[State 9010, 0.1]
type = Sprpriority
trigger1 = time = 1
value  >= 2

[State 1313, Bolt]
type = Explod
trigger1 = animelem = 1
anim = 703
shadow = -1,250,250
pos = 0*const(size.xscale),-75*const(size.xscale)
bindtime = -1
helpertype = normal
sprpriority = 3
ownpal = 1

[State 9399, 2]
type = Selfstate
trigger1 = AnimTime = 0
value = 5150

[State 9399, 3]
type = Lifeadd
trigger1 = Time = 1
Value = -9999


[State 5150, 8]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1
ctrl = 1

;--- TELEPORT
[Statedef 1100];teleport atras
type    = S
movetype= I
physics = N
juggle  = 1
anim = 1040
Velset = 0, 0
ctrl = 0

[State 9327, explod]
type = Explod
trigger1 = time%2=1
trigger1 = anim = 1040
;trigger1 = time < 25
;trigger2 = anim = 1001
anim = 9996
pos = 0,0;-30, 0
postype = p1
ownpal = 0

[State 1100]
type = VarRandom
trigger1 = 1
v = 13
range = 1105,1106

[State 1100]
type = Explod
trigger1 = anim = 1040
anim = var(13)
pos = -18+var(11),-50-35*(time > 6)+var(12)
random = 30, 70
vel = -1,0
postype = p1
facing = 1
sprpriority = 1

[State 1100]
type = Explod
trigger1 = anim = 1040
anim = var(13)
pos = -18+var(11),-50-35*(time > 6)+var(12)
random = 30, 70
vel = -2,0
postype = p1
facing = 1
sprpriority = 1

[State 1100]
type = Explod
trigger1 = anim = 1040
anim = var(13)
pos = -18+var(11),-50-35*(time > 6)+var(12)
random = 30, 70
vel = -3,0
postype = p1
facing = 1
sprpriority = 1

[State 2000, 0.5]
type = Playsnd
trigger1 = time = 0
value = 14,1

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
value = 1102

[State 2000, 6.1]
type = Changestate
trigger1 = time > 22
trigger1 = Pos Y = 0
trigger2 = Pos Y > 0
value = 0
ctrl = 1
;------------------------------------------------------------------------------------------
[Statedef 1102]
type    = S
movetype= A
physics = N
juggle = 6
anim = 1050
Velset = 0, 0
ctrl = 0

[State 9327, explod]
type = Explod
trigger1 = time%2=1
trigger1 = anim = 1050
;trigger1 = time < 25
;trigger2 = anim = 1001
anim = 9996
pos = 0,0;-30, 0
postype = p1
ownpal = 0

[State 1100]
type = VarRandom
trigger1 = 1
v = 13
range = 1105,1106

[State 1100]
type = Explod
trigger1 = anim = 1050
anim = var(13)
pos = -18+var(11),-50-35*(time > 6)+var(12)
random = 30, 70
vel = -1,0
postype = p1
facing = 1
sprpriority = 1

[State 1100]
type = Explod
trigger1 = anim = 1050
anim = var(13)
pos = -18+var(11),-50-35*(time > 6)+var(12)
random = 30, 70
vel = -2,0
postype = p1
facing = 1
sprpriority = 1

[State 1100]
type = Explod
trigger1 = anim = 1050
anim = var(13)
pos = -18+var(11),-50-35*(time > 6)+var(12)
random = 30, 70
vel = -3,0
postype = p1
facing = 1
sprpriority = 1

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
value = 1050

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
triggerall = animelem = 1
trigger1 = p2stateno != 12001
trigger2 = p2stateno != 1009
attr = A, SA
damage = 10, 0
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
hitsound   = s4,17
guardsound = 5,14
ground.type = High
ground.slidetime = 14
ground.hittime  = 16
air.juggle = 3
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 1050, 4]
type = HitDef
triggerall = animelem = 1
trigger1 = p2stateno = 12001
trigger2 = p2stateno = 1009
attr = A, SA
damage = -10, 0
animtype = Hard
air.animtype = Back
air.fall = 1
guardflag = HL
pausetime = 0,2
sparkno = -1
numhits = 0
air.juggle = 3
p2stateno = 1007
p1stateno = 1019
guard.sparkno = -1
hitsound   = s4,17
guardsound = 5,14
ground.type = High
ground.slidetime = 14
ground.hittime  = 16
air.juggle = 3
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 1050, 5]
type = PosSet
trigger1 = MoveGuarded = 1
Y = -5

[State 1050, 6]
type = Changestate
trigger1 = MoveGuarded = 1
value = 1103

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
;---------------------
[StateDef 1103]; Blocked
type    = A
movetype= I
physics = A
ctrl = 0
velset = 0,-7
anim = 1055

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
;----------------------------------------------

; Double ice hits back
[Statedef 1019]
type    = S
movetype= H
physics = N
juggle  = 0
velset = 0,0
ctrl = 0
anim = 9997

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
value = 1006
;----------------------------------

[StateDef 1200];empujon
type = S
movetype= A
physics = S
ctrl = 0
anim = 1100

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 14,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 14,1

[State 9327, explod]
type = Explod
trigger1 = time%2=1
trigger1 = anim = 1100
;trigger1 = time < 18
anim = 1103
vel = -0.2,0
pos = 0,0
postype = p1
ownpal = 0

[State 0, Explod]
type = Explod
trigger1 = anim = 1100
anim = 1104
pos = 0,0
postype = p1
sprpriority = 2

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
range = 1105,1106

[State 1100]
type = Explod
trigger1 = anim = 1100
anim = var(13)
pos = -18+var(11),-50-35*(time > 6)+var(12)
random = 30, 70
vel = -1,0
postype = p1
facing = 1
sprpriority = 1

[State 1100]
type = Explod
trigger1 = anim = 1100
anim = var(13)
pos = -18+var(11),-50-35*(time > 6)+var(12)
random = 30, 70
vel = -2,0
postype = p1
facing = 1
sprpriority = 1

[State 1100]
type = Explod
trigger1 = anim = 1100
anim = var(13)
pos = -18+var(11),-50-35*(time > 6)+var(12)
random = 30, 70
vel = -3,0
postype = p1
facing = 1
sprpriority = 1

[State 1100, change1]          ;si esta muy lejos, solo corre
type = ChangeState
trigger1 = BackEdgeDist < 13
trigger1 = p2bodydist X > 165
trigger2 = p2stateno = 9010
value = 1201                   ;state que lo deja cerca del enemigo

[State 1100, change2]          ;si el oponente esta saltando, o tirado en el piso
type = ChangeState             ;corre al otro lado
trigger1 = p2statetype != S
trigger1 = p2statetype != C
value = 1202                   ;state que lo deja del otro lado

[State 1100, hit]
type = HitDef
trigger1 = p2stateno != 130
trigger1 = p2stateno != 131
trigger1 = p2bodydist X < 40
attr = S,NA
sparkno = -1
p2stateno = 12001;no tiene control, solo defensa parado y agachado
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
value = 1209            ;vibra

[state 1100, plush]
type = playerpush
trigger1 = 1
value = 0

[State 1001, 10]
type = Changestate
trigger1 = p2bodydist X < -110
trigger2 = time > 33             ;porlas
value = 1205

[State 1100, aAccell]   ;lo hace correr
type = VelAdd
trigger1 = 1
x = 9

[StateDef 1201];si estaba lejos
type    = S
movetype= I
physics = S

[State 1100, aAccell]       ;lo hace correr
type = VelAdd
trigger1 = 1
x = 9

[State 9327, explod]
type = Explod
trigger1 = time%2=1
trigger1 = anim = 1100
;trigger1 = time < 18
anim = 1103
vel = -0.2,0
pos = 0,0
postype = p1
ownpal = 0

[State 0, Explod]
type = Explod
trigger1 = anim = 1100
anim = 1104
pos = 0,0
postype = p1
sprpriority = 2

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
range = 1105,1106

[State 1100]
type = Explod
trigger1 = anim = 1100
anim = var(13)
pos = -18+var(11),-50-35*(time > 6)+var(12)
random = 30, 70
vel = -1,0
postype = p1
facing = 1
sprpriority = 1

[State 1100]
type = Explod
trigger1 = anim = 1100
anim = var(13)
pos = -18+var(11),-50-35*(time > 6)+var(12)
random = 30, 70
vel = -2,0
postype = p1
facing = 1
sprpriority = 1

[State 1100]
type = Explod
trigger1 = anim = 1100
anim = var(13)
pos = -18+var(11),-50-35*(time > 6)+var(12)
random = 30, 70
vel = -3,0
postype = p1
facing = 1
sprpriority = 1

[State 1001, 10]
type = Changestate
trigger1 = p2bodydist X < 30
trigger2 = time = 21         ; porlas
value = 0
ctrl = 1
;---------------------
[StateDef 1202];si salta
type    = S
movetype= I
physics = S

[State 1100, aAccell]   ;lo hace correr
type = VelAdd
trigger1 = 1
x = 9

[State 9327, explod]
type = Explod
trigger1 = time%2=1
trigger1 = anim = 1100
;trigger1 = time < 18
anim = 1103
vel = -0.2,0
pos = 0,0
postype = p1
ownpal = 0

[State 0, Explod]
type = Explod
trigger1 = anim = 1100
anim = 1104
pos = 0,0
postype = p1
sprpriority = 2

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
range = 1105,1106

[State 1100]
type = Explod
trigger1 = anim = 1100
anim = var(13)
pos = -18+var(11),-50-35*(time > 6)+var(12)
random = 30, 70
vel = -1,0
postype = p1
facing = 1
sprpriority = 1

[State 1100]
type = Explod
trigger1 = anim = 1100
anim = var(13)
pos = -18+var(11),-50-35*(time > 6)+var(12)
random = 30, 70
vel = -2,0
postype = p1
facing = 1
sprpriority = 1

[State 1100]
type = Explod
trigger1 = anim = 1100
anim = var(13)
pos = -18+var(11),-50-35*(time > 6)+var(12)
random = 30, 70
vel = -3,0
postype = p1
facing = 1
sprpriority = 1

[state 999, plush]
type = playerpush
trigger1 = 1
value = 0

[State 1001, 10]
type = Changestate
trigger1 = p2bodydist X < -60
trigger2 = time > 33              ;porlas
value = 0
ctrl = 1
;-------------------------
[StateDef 1204]
type    = S
movetype= I
physics = S
anim = 0
ctrl = 0
velset = 0,0

[state 1104,null]       ;porlas modo team
type = changestate
trigger1 = time = 33
value = 0
ctrl = 1
;---------------------------
[StateDef 1205]
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
numhits = -1

[state 1107,ch]           ;porlas
type = changestate
trigger1 = time = 1
value = 0
ctrl = 1
;----------------------
[StateDef 1208]
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
[StateDef 1209]
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

;--------------------------
[StateDef 1401]
type    = S
movetype= I
physics = S
ctrl = 0
velset = 0,0

[State 1000, Accellw]
type = VelSet
trigger1 = time = 0
x = 0

[State 1200, 2at]
type = helper
trigger1 = time = 1
helpertype = normal
pos = 0,-80
name = "snow"
ID = 1402
stateno = 1402
postype = p2
ontop = 1
facing = 1

[State 1200, 2at]
type = helper
trigger1 = time = 0
helpertype = normal
pos = 0,-90
name = "snow"
ID = 1402
stateno = 1402
postype = p2
ontop = 1
facing = 1

[State 1200, 2at]
type = helper
trigger1 = time = 1
pos = 7,-114
helpertype = normal
name = "snow"
ID = 1402
stateno = 1402
postype = p2
ontop = 1
facing = 1

[State 1200, 2at]
type = helper
trigger1 = time = 0
pos = 5,-70
helpertype = normal
name = "snow"
ID = 1402
stateno = 1402
postype = p2
ontop = 1
facing = 1

[State 1200, 2at]
type = helper
trigger1 = time = 1
pos = 3,-85
helpertype = normal
name = "snow"
ID = 1402
stateno = 1402
postype = p2
ontop = 1
facing = 1

[State 1200, 2at]
type = helper
trigger1 = time = 0
pos = 1,-65
helpertype = normal
name = "snow"
ID = 1402
stateno = 1402
postype = p2
ontop = 1
facing = 1

[State 1200, 2at]
type = helper
trigger1 = time = 1
pos = 3,-50
helpertype = normal
name = "snow"
ID = 1402
stateno = 1402
postype = p2
ontop = 1
facing = 1

[State 1200, 2at]
type = helper
trigger1 = time = 0
pos = 0,-45
helpertype = normal
name = "snow"
ID = 1402
stateno = 1402
postype = p2
ontop = 1
facing = 1

[State 1200, 2at]
type = helper
trigger1 = time = 1
pos = 2,-53
helpertype = normal
name = "snow"
ID = 1402
stateno = 1402
postype = p2
ontop = 1
facing = 1

[State 1200, 2at]
type = helper
trigger1 = time = 0
pos = 1,-33
helpertype = normal
name = "snow"
ID = 1402
stateno = 1402
postype = p2
ontop = 1
facing = 1

[State 1200, 2at]
type = helper
trigger1 = time = 1
pos = 3,-46
helpertype = normal
name = "snow"
ID = 1402
stateno = 1402
postype = p2
ontop = 1
facing = 1

[State 1001, 10]
type = Changestate
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 1402]
type    = S
movetype= I
juggle  = 0
anim = 1107
velset = 0, 0
ctrl = 0

[State 7200, velset]
type = velset
trigger1  = time = 0
X = -2-(random%30)/10.0
;X = -0.8-(random%20)/10.0

[State 7200, velset]
type = velset
trigger1  = time = 0
Y = -2-(random%30)/10.0

[State 7200, vel]
type = veladd
trigger1 = time > 1
trigger1  = pos Y < root,var(57)
Y = .5;.4

[State 6000, 5]
type = Changestate
trigger1 = Pos Y > 0
value = 1403

;Nice Blood splat A lands
[Statedef 1403]
type    = S
movetype= I
juggle  = 0
velset = 0,0
ctrl = 0

[State 7200, velset]
type = velset
trigger1  = time = 0
X = -1-(random%30)/10.0
;X = -0.8-(random%20)/10.0

[State 7200, velset]
type = velset
trigger1  = time = 0
Y = -5-(random%30)/10.0

[State 7200, vel]
type = veladd
trigger1 = time > 1
trigger1  = pos Y < root,var(57)
Y = .5;.4

[State 6001, 1]
type = Destroyself
trigger1 = animtime = 0
