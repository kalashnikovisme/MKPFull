;************RAIN'S LIGHTNING**************
[Statedef 1560]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 50
velset = 0,0
anim = 1560
ctrl = 0

[State 1560,1]
type = PlaySnd
trigger1 = AnimElem = 5
value = 9002,0

[State 1560,1]
type = PlaySnd
trigger1 = AnimElem = 5
value = 9002,1

[State 1560, 2-1]
type = VarRandom
trigger1 = time = 0
v = 49
range = 50

[State 1560, 2-2]
type = helper
trigger1 = AnimElem = 5
trigger1 = var(49) = [0,24]
stateno = 1561
name = "Lightning Bolt"
id = 1561
pos = 0,0
postype = p2
sprpriority = 4
facing = 1

[State 1560, 2-3]
type = helper
trigger1 = AnimElem = 5
trigger1 = var(49) = [25,50]
stateno = 1561
name = "Lightning Bolt"
id = 1561
pos = 0,0
postype = p2
sprpriority = 4
facing = -1

[State 1560,3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

; The Lighting
[Statedef 1561]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 50
velset = 0,0
anim = 1561
ctrl = 0

[State 1561,1-1]
type = Hitdef
trigger1 = AnimElem >= 3
trigger1 = p2stateno != 1562
trigger1 = p2stateno != 1563
trigger1 = p2stateno != 1502
;trigger1 = Parent,Var(9) = 1
attr = S, SA
damage = 150,45
priority = 6
guardflag = MA
pausetime = 3,0
;hitsound = S4000,15
sparkno = -1
sparkxy = -10,-60
;guardsound = S4000,15
guard.ctrltime = 30
airguard.velocity = -3         ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
guard.velocity = -3         ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
envshake.time = 20
envshake.freq = 30
envshake.ampl = 15
p2facing = 1
p2stateno = 1562
kill = (root, Var(9) = 0)
fall.kill  = (root, Var(9) = 0)
guard.kill = (root, Var(9) = 0)
palfx.time = 60
palfx.sinadd = 120,120,120,30
palfx.color = 0
palfx.invertall = 1
;ground.velocity = 0,-12
;air.velocity = 0,-11
;yaccel = 0.38

[State 1561, 1-2] ;FOR HIT OVERRIDE OPPONENTS.
type = HitDef
trigger1 = AnimElem >= 3
trigger1 = root, var(7) >= 2
attr = S, SA
damage = 100,50
priority = 6
guardflag = MA
pausetime = 3,0
;hitsound = S4000,15
sparkno = -1
sparkxy = -10,-60
;guardsound = S4000,15
guard.ctrltime = 30
airguard.velocity = -3         ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
guard.velocity = -3         ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
envshake.time = 20
envshake.freq = 30
envshake.ampl = 15
palfx.time = 60
palfx.sinadd = 120,120,120,30
palfx.color = 0
palfx.invertall = 1
kill = 1

[State 1561, 2]
type = Explod
trigger1 = time = 0
anim = 1564
name = "HeightFix"
id = 1564
pos = 0,-346
postype = p1
HelperType = normal
facing = 1
sprpriority = 4
ownpal = 1
ontop = 1

[State 1561,3]
type = DestroySelf
trigger1 = AnimTime = 0

[State 1561,4]
type = PosSet
trigger1 = time = 0
Y = 0

[State 1561, 5]
type = AssertSpecial
trigger1 = 1
flag = NoAutoTurn

;-----------------------------------------------
; Struck Victum
[Statedef 1562]
type    = A
movetype= H
physics = N
juggle  = 4
poweradd= 50
velset = 0,-12 ;0
anim = 1562
ctrl = 0

[State 1562, NoTurn] ;Prevent from turning
type = AssertSpecial
trigger1 = 1
flag = NoAutoTurn

[State 1562, 1-1]
type = ChangeAnim2
trigger1 = time = 0
value = 1562

[State 1562, 1-2]
type = ChangeAnim2
trigger1 = Vel Y >= 0
trigger1 = anim = 1562
value = 1563

[State 1562, 2-1]
type = VelAdd
trigger1 = time >= 0
trigger1 = Pos Y < 0
Y = 0.38 ;-9

[State 1562, 2-2]
type = PosSet
trigger1 = time >= 0
trigger1 = Vel Y >= 0
trigger1 = Pos Y >= 0
Y = 0

[State 1562, 2-3]
type = VelSet
trigger1 = time >= 0
trigger1 = Vel Y >= 0
trigger1 = Pos Y >= 0
Y = 0
X = 0

[State 1562, 4]
type = SelfState
trigger1 = vel Y = 0
trigger1 = Pos Y = 0
value = 5100 ;Hit ground

;[State 1562, 3]
;type = ChangeState
;trigger1 = Pos Y < -178
;value = 1563

;-----------------------------------------------
;P2 falls from lightning
[Statedef 1563]
type    = A
movetype= H
physics = N
velset = 0,0
ctrl = 0
anim = 1563

[State 1563, 1]
type = VelSet
trigger1 = time = 0
Y = 5

[State 1563, 2]
type = ChangeAnim2
trigger1 = time = 0
value = 1563

;[State 1563, 3]
;type = Veladd
;trigger1 = Pos Y < 0
;trigger1 = time > 20
;Y = .75

[State 1563, 4]
type = Velset
trigger1 = Pos Y > 0
Y = 0

[State 1563, 5]
type = Posset
trigger1 = Pos Y > 0
trigger1 = Vel Y = 0
Y = 0

[State 1563, 6]
type = SelfState
trigger1 = vel Y = 0
trigger1 = Pos Y = 0
value = 5100 ;Hit ground

[State 1563, NoTurn] ;Prevent from turning
type = AssertSpecial
trigger1 = 1
flag = NoAutoTurn
;----------------------------------------
;----------------------------------------

;============================================================
[Statedef 8000];spear
type    = S
movetype= A
physics = S
;juggle  = 1
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
trigger1 = animelem = 4
stateno = 8010
name = "spear"
id = 8010
postype = p1
pos = 65, -104
helpertype = normal
sprpriority = -1
keyctrl = 0
ownpal = 0
under = 1

[State 1030, 1.54]
type = Destroyself
trigger1 = time = 125

[State 1000, 7]
type = ChangeState
triggerall = Time >= 45
trigger1 = p2stateno != 8020
trigger1 = p2stateno != 8021
value = 0
ctrl = 1

[State 1000, 8]
type = Changestate
trigger1 = p2stateno = 8020
trigger1 = time = 45
trigger2 = p2stateno = 8021
value = 8001
;---------------------------------------------------------------------------
;PULL EM IN
[Statedef 8001]
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
value = 4, 12
volume = 50

[State 200, Play]
type = PlaySnd
trigger1 = animelem = 1
triggerall = Var(2) = [0, 24]
trigger1 = 1
value = 4, 13
volume = 50

[State 1001, 7]
type = ChangeState
trigger1 = p2stateno = 8021
trigger1 = time > 12
value = 0
ctrl = 1

[State 1030, 1.54]
type = Destroyself
trigger1 = time = 30


[State 1001, 8]
type = Changestate
trigger1 = time > 30
value = 0
ctrl = 1
;---------------------------------------------------------------------------
; The flying spear
[Statedef 8010]
type    = S
movetype= A
physics = N
velset = 7,0
anim = 1001
ctrl = 0

[State 1030, 1.54]
type = Destroyself
trigger1 = time = 125

[State 1010, 1]
type = Playsnd
trigger1 = time = 0
value = 4,4

[State 1010, 1.2]
type = Helper
trigger1 = time = 0
stateno = 8011
name = "Rope"
pos = -22, 0
helpertype = normal
sprpriority = -2
keyctrl = 0
ownpal = 0
under = 1

[State 8010, 1.55]
type = Helper
trigger1 = timemod = 4,0
trigger1 = time = [0, 60]
trigger1 = Pos X > -190
trigger1 = Pos X < 190
;trigger1 = p2stateno != 9010
stateno = 8011
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
trigger1 = p2stateno != 5120
trigger1 = root,numexplod(7088) < 2
attr = SA, NA
damage    = 80,20
p2facing = 1
priority  = 6
hitflag = MAF
guardflag = M
forcestand = 1
sparkno = -1
hitonce = 1
sparkxy = 30, 20
pausetime = 0,2
hitsound   = S88,0
guardsound = 5,14
animtype = Light
;kill = 0
Fall = 0
;Air.fall = 0
fall.recover = 0
guard.slidetime = 5
guard.ctrltime = 20
snap = 0,0
p1stateno = 8030
p2stateno = 8020
kill       = root, Var(9) = 0
fall.kill  = root, Var(9) = 0
guard.kill = root, Var(9) = 0


[State 1010, 4]
type = Changestate
trigger1 = MoveGuarded = 1
value = 8013

[State 1030, 1.54]
type = Destroyself
trigger1 = time = 250

;-----------------------------------------------------------
;The hidden Rope
[Statedef 8011]
type    = S
movetype= I
physics = N
anim = 1015
ctrl = 0

[State 1030, 1.54]
type = Destroyself
trigger1 = time = 125

[State 1011, 1]
type = Changestate
trigger1 = p2stateno = 8020
value = 8012

[State 1011, 2]
type = Destroyself
trigger1 = root, stateno != [8000, 8001]
;------------------------------------------------------------------------
;The Rope Becomes visible
[Statedef 8012]
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
trigger1 = time = 125

[State 1011, 1]
type = Destroyself
trigger1 = p2stateno = 8021
trigger2 = Parentdist X = [-10, 10]
trigger2 = Parent, Vel X = -8
;------------------------------------------------------------------------
; WBJ's Less cheap thingy
[Statedef 8013]
type    = S
movetype= I
physics = N
anim = 10151
Velset = 0,0
ctrl = 0
sprpriority = -1

[State 8030, 1234]
type = PosSet
trigger1 = Animelem = 1
Y = -104

[State 8013, 1]
type = Destroyself
trigger1 = animtime = 0
;---------------------------------------------------------------------------
; P2's hit by spear state
[Statedef 8020]
type    = S
movetype= H
physics = S
ctrl = 0
Velset = 0,0,0

[State 1030, 1.54]
type = Destroyself
trigger1 = time = 125

[State 1020, bugfix]
type = varset
triggerall = var(17) = 1
trigger1 = name = "reptile"
trigger2 = name = "smoke"
trigger3 = name = "hsmoke"
v= 17
value = 0

[State 1020, .5]
type = Changeanim2
trigger1 = time = 0
value = 1012

[State 1020, .75]
type = PlayerPush
trigger1 = time >= 0
value = 0

[State 1010, 2331]
type = Nothitby
trigger1 = 1
value = CSA

[State 1020, 1]
type = PosAdd
trigger1 = timemod = 10,0
trigger1 = time = [0, 50]
X = -1

[State 1010, 231]
type = Playerpush
trigger1 = 1
value = 0

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
trigger1 = p2name = "chameleon"
trigger1 = p2statetype != A
value = 8021

[State 1030, 1.54]
type = Destroyself
trigger1 = time = 125

[State 1020, 3]
type = Selfstate
trigger1 = time = 400
value = 0
ctrl = 1
;-------------------------------------------------------------------------------
;P2  stunned by spear
[Statedef 8021]
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

[State 1020, 1.12353]
type = VelSET
trigger1 = 1
X = 0
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

[State 1021, 33]
type = Selfstate
trigger1 = Lose
trigger2 = Win
triggerall = time = 10
value = 5050
ctrl = 1

;--------------------------------------------------------------------------
;Spear latching onto target
[Statedef 8030]
type    = S
movetype= A
physics = N
;juggle  = 1
anim = 1003
Velset = 0, 0
ctrl = 0

[State 2, blood111]
type = Helper
trigger1 = time = 10
trigger1 = numhelper(27) < 1
ID = 27
stateno = 27
pos = 70, 95
postype = p1
persistent = 0
ignorehitpause = 1
facing = -1

[State 2, blood1111]
type = Helper
trigger1 = time = 5
trigger1 = numhelper(30) < 1
ID = 30
stateno = 30
pos = 70, 115
postype = p1
persistent = 0
ignorehitpause = 1
facing = -1

[State 2, blood1111]
type = Helper
trigger1 = time = 0
trigger1 = numhelper(31) < 1
ID = 31
stateno = 30
pos = 70, 115
postype = p1
persistent = 0
vel = 2,0
ignorehitpause = 1
facing = -1

[State 1030, 1]
type = targetbind
trigger1 = p2stateno = 8020
pos = 0,95

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
trigger1 = time = 30
X = -8

[State 1030, 1.1]
type = Velset
trigger1 = ParentDist X = [-40, 60]
X = 0

[State 1030, 1.4]
type = Changeanim
trigger1 = p2stateno = 8021
trigger1 = anim != 1015
value = 1015

[State 1030, 1.5]
type = Destroyself
trigger1 = p2stateno != 8021
trigger2 = p2stateno = 5000
trigger3 = p2stateno = 5030
trigger4 = p2stateno = 0
trigger5 = time = 200
trigger1 = anim = 8015
trigger1 = Parent, stateno != [8000, 8030]
;-------------------------------------------------------
[Statedef 1100];12000; Sektor/smoke teleport punch
type    = A
movetype= A
physics = N
juggle  = 8
velset = 0,15
anim = 2010
ctrl = 0

[State 2010, sound]
type = Playsnd
trigger1 = time = 0
value = 4,14

[State 2000]
type = AfterImage
trigger1 = time = 0
PalBright   = 0,0,0
PalContrast = 100,100,100
Trans = Add1
time = 50

[State 2000, changepos]
type = Posadd
trigger1 = Pos Y > 200
x = (P2Dist X) + 40

[State 2000, changestate]
type = Changestate
trigger1 = Pos Y > 200
value = 1101
;------------------------------------
[Statedef 1101]; Sek punch up
type    = A
movetype= A
physics = N
juggle  = 8
velset = 0,-18
anim = 2000
ctrl = 0

[State 2010, turn]
type = varset
trigger1 = time = 0
V = 46
value = 1

[State 2010, turn]
type = turn
trigger1 = time = 0

[State 2010, kill hit]
type = HitDef
trigger1 = time = 0
;trigger1 = p2statetype != C
trigger1 = numexplod(1100) < 2
attr = A, Na
damage    = 155, 77
p2facing = 1
animtype = Back
guardflag = CM
hitflag = MHAF
priority = 3, Hit
pausetime = 0,5
sparkno = -1
;sparkxy = -10,-70
hitsound = F5,0
guardsound = 5,14
ground.type = Low
ground.slidetime = 5
ground.hittime  = 20
ground.velocity = -1, -10
air.velocity = -1.5,-10
fall = 1
;air.fall = 1
fall.recover = 0
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 2010, change]
type = Changestate
;trigger1 = movecontact
trigger1 = Pos Y <= -80
value = 1102
;-------------------------------------
[Statedef 1102]; drop
type    = A
movetype= A
physics = N
;juggle  = 4
velset = 0,-1
anim = 2020
ctrl = 0

[State 2020]
type = Veladd
trigger1 = time > 3
y = .4

[State 2020]
type = Changestate
trigger1 = Pos Y >= -6
value = 0
ctrl = 1

;---------------------------------------;misil
[Statedef 1300]     ;un misil
type    = S
movetype= A
physics = S
juggle  = 2
velset = 0,0
anim = 4321
ctrl = 0

[State 10000, open]
type = PlaySnd
trigger1 = AnimElem = 2
value = 4, 6

[State 1000, 0.1]
type = Posset
trigger1 = Pos Y != 0
trigger1 = time = 0
Y = 0

[State 9251,misil]
type = Helper
trigger1 = animelem = 3;4;9
postype = p1
pos = 0,-90
stateno = 6611

[State 1000, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;---------------------------

[Statedef 6611]     ;un misil
type    = S
movetype= A
physics = S
juggle  = 2
velset = 9,0
anim = 4322

[State 10000, rakieta]
type = PlaySnd
trigger1 = time = 0;AnimElem = 4
value = 9, 4

[State 10000, rakieta]
type = veladd
trigger1 = 1
X = 9

[State 9327, explod]
type = Explod
trigger1 = time%2=1
trigger1 = anim = 4322
anim = F20020
pos = -30, 0
postype = p1
ownpal = 0
ID = 1030

[State 1601, Hit]
type = HitDef
trigger1 = time = 0;!movecontact
attr = S, HA
damage    = 200, 100
animtype = Light
air.animtype = Back
guardflag = HL
sparkno = 6
guard.sparkno = 6
hitsound   = S4,18
guardsound = S4,18
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -15,0
air.velocity = -4,-5
air.fall = 1
fall.recover = 0
air.juggle = 3
yaccel = .45
p2stateno = 21238
kill       = root, Var(9) = 0
fall.kill  = root, Var(9) = 0
guard.kill = root, Var(9) = 0

[State 10000, rakieta]
type = destroyself
trigger1 = movecontact
trigger2 = FrontEdgeDist < -100

;----------------------------------------------
[StateDef 1400];hielo
type    = S
movetype= A
physics = S
ctrl = 0
velset = 0,0,0
anim = 4321

[State 1401, 210]
type = VarSet
trigger1 = var(46) = 0
trigger2 = var(46) = 2
V = 46
value = (var(46)=0)*1 + (var(46)=2)*3

[State 1300, 0.5]
type = playsnd
trigger1 = animelem = 3
value = 14,0
channel = 3

[State 1400,Sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 9, 2
channel = 3
volume = 70

[State 1400, Za]
type = VelSet
trigger1 = time = 1
trigger2 = Vel Y != 0
y = 0

[State 1400, BoltFat]
type = Projectile
triggerall = AnimElem = 3
trigger1 = p2stateno != 14001
projanim = 4333
projhitanim = 4334
projremanim = 4334
offset = 5*const(size.xscale), -90*const(size.xscale)
ID = 997
velocity = 8, 0
remvelocity = 0, 0
attr = S, SP
animtype = Hard
air.animtype = Back
air.fall = 1
numhits = 0
guardflag = HL
pausetime = 0,2
sparkno = -1
p2stateno = 14001
guard.sparkno = -1
hitsound   = s9,5
guardsound = s9,5
ground.type = High
ground.slidetime = 1
ground.hittime  = 1
air.juggle = 3
kill       = parent,Var(9) = 0
fall.kill  = parent,Var(9) = 0
guard.kill = parent,Var(9) = 0

[State 1400, BoltFat]
type = Projectile
triggerall = AnimElem = 3
trigger1 = p2stateno = 14001
projanim = 4333
offset = 5*const(size.xscale), -90*const(size.xscale)
ID = 997
velocity = 8, 0
remvelocity = 0, 0
attr = S, NT
animtype = Hard
air.animtype = Back
air.fall = 1
guardflag = HL
pausetime = 0,2
sparkno = -1
numhits = -1
p2stateno = 1081
p1stateno = 14001
guard.sparkno = -1
hitsound   = s9,5
guardsound = S9,5
ground.type = High
ground.slidetime = 14
ground.hittime  = 16
air.juggle = 3
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 1400, 10]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0
;----------------------
[StateDef 14001]
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
value = 1082
;--------------
[Statedef 1081]
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
value = 1082
;------------------------
[Statedef 1082]
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
value = 5100
;--------------------------------;ice clown;----------------------
[StateDef 1900]
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
anim = 10157
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
trigger2 = p2stateno = 14001
trigger2 = time = 0
trigger3 = moveguarded
trigger3 = time = 0
value = 9, 1
channel = 3

[State 1200, Zapp]
type = PlaySnd
trigger1 = time = 1
value = 9, 1
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
stateno = 1901
ownpal = 1
size.shadowoffset = -1000
;-------------------------
[Statedef 1901]
type    = A
movetype= A
physics = N
ctrl = 0
velset = 0,0

[State 1001, 10a]
type = Changeanim
trigger1 = Time = 0
value = 1016

[State 1200, BoltFat]
type = HitDef
trigger1 = animelem  = 1
triggerall = p2stateno != 14001
triggerall = p2stateno != 1001
attr = S, SP
animtype = Hard
air.animtype = Back
air.fall = 1
numhits = 0
guardflag = HL
pausetime = 0,2
sparkno = -1
p2stateno = 14001
guard.sparkno = -1
hitsound   = s9,5
guardsound = s9,5
ground.type = High
ground.slidetime = 1
ground.hittime  = 1
air.juggle = 3
kill       = parent,Var(9) = 0
fall.kill  = parent,Var(9) = 0
guard.kill = parent,Var(9) = 0

[State 1005, Frosty color]
type = palFX
trigger1 = 1
;trigger1 = var(23) = 1
add = 100,150,250
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
stateno = 1902
ownpal = 1

[State end]
type = destroyself
trigger1 = time = 200
trigger2 = moveguarded
trigger3 = moveguarded
trigger3 = time >= 10
trigger4 = movecontact

;----------------------------------------------------
[Statedef 1902]
type    = A
movetype= I
physics = N
ctrl = 0
velset = 0,0

[State 1009, Frosty color]
type = palFX
trigger1 = 1
add = 100,150,250
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
trigger2 = p2stateno = 14001
trigger3 = numhelper(7003) < 1
anim = 10157
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
;------------------------------------------------------------------
[Statedef 1910]
Type = S
Movetype = A
Physics = S
Anim = 1300
ctrl = 0

[State 1300, 0.5]
type = playsnd
trigger1 = animelem = 4
value = 9,0
channel = 3

[State 1300, 0.5]
type = playsnd
trigger1 = animelem = 2
value = 14,0
channel = 2

[State 1300, 1]
type = helper
trigger1 = animelem = 5;9
stateno = 1911
name = "Puddle"
id = 1301
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
anim = 1301
sprpriority = 0
ontop = 1

[State 1300, CS]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1
;----------------
[Statedef 1911];helper
Type = S
MoveType = A
Physics = N
anim = 2301

[State 1301, CA]
type = Changestate
trigger1 = p2stateno = 9010
value = 1912

[State 1301, CAAA]
type = SprPriority
trigger1 = time != 0
value = 0

[State 1301, CB]
type = HitDef
trigger1 = p2stateno != 1980
trigger1 = time = [0, 30]
attr = S, NA
damage    = 0
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
p2stateno = 1980

[State Destroy]
type = changestate
trigger1 = animtime = 0
trigger2 = root, movetype = H
trigger3 = moveguarded
trigger4 = root, movecontact
trigger5 = (p2movetype = H)&&(p2stateno!=1980)
value = 1912
;-------------------------------------------------------------------
[Statedef 1912];Change the slipping fool back to normal
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
trigger1 = p2stateno = 1980
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
p2stateno = 1981

[State 1302, CS]
type = destroyself
trigger1 = animtime = 0
;-------------------------------------------------------------------
[Statedef 1980];DUDE IS SLIPPING!
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
[Statedef 1981];DUDE IS SLIPPING!
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
;-------------------------------------------------------------------

[Statedef 1000]
type    = S
movetype= A
physics = S
juggle  = 4
velset = 0,0
anim = 7777
ctrl = 0

[State 1000, sound]
type = Playsnd
trigger1 = Animelem = 1
value = 14, 0

[State 1000, ssound]
type = Playsnd
trigger1 = time = 20
value = 9, 7

[State 1000, 1]
type = Helper
trigger1 = animelem = 2
triggerall = p2stateno != 9010
stateno = 1010
name = "net"
id = 1010
postype = p1
pos = 25, -95
helpertype = normal
sprpriority = 4
keyctrl = 0
ownpal = 1
under = 1

[State 1030, 1.54]
type = Destroyself
trigger1 = time = 250
trigger2 = p2stateno = 9010


[State 1000, 7]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

[State 1000, 8]
type = Changestate
trigger1 = p2stateno = 1020
trigger2 = p2stateno = 1021
value = 1001

;---------------------------------------------------------------------------
; Net has hit
[Statedef 1001]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 77777
ctrl = 0

[State 1030, 1.54]
type = Destroyself
trigger1 = time = 150
trigger2 = p2stateno = 9010

[State 1001, 8]
type = Changestate
trigger1 = time = 10
trigger2 = p2life = 1
trigger3 = p2stateno = 9010
trigger2 = roundno != 1
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; The Net itself
[Statedef 1010]
type    = S
movetype= A
physics = N
juggle  = 4
velset = 5,0
anim = 5555
ctrl = 0

[State 1030, 1.65]
type = changestate
trigger1 = p2stateno != 1020
trigger1 = anim = 1002
trigger1 = Parent, stateno != [1000, 1030]
value = 1013

[State 1030, 1.54]
type = Destroyself
trigger1 = time = 150
trigger3 = p2stateno = 9010

[State 700, Go2]
type = PLAYERPUSH
trigger1 = Time = 0
VALUE = 0

[State 1010, 2.1]
type = HitDef
trigger1 = time > 0
triggerall = p2stateno != 9010
attr = S, HA
damage    = 0
priority  = 6
guardflag = HL
sparkno = -1
p2facing = 1
hitonce = 1
hitsound   = 5,1
guardsound = 5,14
guard.slidetime = 20
guard.ctrltime = 10
p1stateno = 1030
p2stateno = 1020
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 1010, 4]
type = Changestate
trigger1 = MoveGuarded = 1
trigger3 = p2stateno = 9010
value = 1013

;------------------------------------------------------------------------
; WBJ's Less cheap thingy
[Statedef 1013]
type    = S
movetype= I
physics = N
anim = 777777
Velset = 0,0
ctrl = 0

[State 1000, nd]
type = Playsnd
trigger1 = time = 1
value = 9, 6

[State 1013, 1]
type = Destroyself
trigger1 = animtime = 0
trigger2 = p2stateno = 9010

;---------------------------------------------------------------------------
; P2's hit by net state
[Statedef 1020]
type    = S
movetype= H
physics = S
ctrl = 0
velset = 0,0
anim = 21238
sprpriority = -2

[State 1020, bugfix]
type = varset
triggerall = var(17) = 1
trigger1 = name = "reptile"
trigger2 = name = "smoke"
trigger3 = name = "hsmoke"
v= 17
value = 0

[State 700, Go2]
type = PLAYERPUSH
trigger1 = Time = 0
VALUE = 0

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

[State 1020, 2]
type = Changestate
trigger1 = P2dist X = [30, 40]
value = 1021

[State 1020, 3]
type = Selfstate
trigger1 = time = 120
value = 0
ctrl = 1
;-------------------------------------------------------------------------------
;P2  stunned by spear
[Statedef 1021]
type    = S
movetype= H
physics = N
velset = 0,0
;anim = 21238
ctrl = 0

[State 700, Go2]
type = PLAYERPUSH
trigger1 = 1
VALUE = 0

[State 1021, 1]
type = Changeanim
trigger1 = time = 0
value = 21238;5000

;[State 1021, 3]
;type = LifeAdd
;trigger1 = time = 49
;trigger1 = life <=2
;value = -2

[State 1030, 1.013]
type = Velset
trigger1 = 1
X = 0
Y = 0

[State 1021, 3]
type = Selfstate
trigger1 = time = 50
value = 0
ctrl = 1

;--------------------------------------------------------------------------
; Net latching onto target
[Statedef 1030]
type    = S
movetype= A
physics = N
juggle  = 1
anim = 7788
removeongethit = 1
Velset = 0, 0
ctrl = 0

[State 1030, 1.54]
type = Destroyself
trigger1 = time = 120
trigger2 = p2bodydist Y = -5

[State 1030, 1]
type = targetbind
trigger1 = p2stateno = 1020
pos = 0,95

[State 1030, 1.01]
type = Velset
trigger1 = time = 10
X = -3

[State 1030, 1.1]
type = Velset
trigger1 = ParentDist X = [-30, 80]
X = 0

[State 1030, 1.01]
type = Velset
trigger1 = P2dist X = [5, 30]
X = 0

[State 1030, 1.4]
type = Changeanim
trigger1 = p2stateno = 1021
trigger1 = anim != 1102
value = 1102

[State 1030, 1.5]
type = changestate
trigger1 = p2stateno != 1021
trigger1 = anim = 1102
trigger1 = Parent, stateno != [1000, 1030]
;trigger2 = Movecontact = 1
trigger2 = p2stateno != 1020
trigger2 = p2stateno != 1021
value = 1013

;-------------------------------------------------------
; LightningFAT
[StateDef 12001]
type = S
movetype= H
physics = N
velset = 0,0

[State 1005, CSZ4]
type = LifeAdd
trigger1 = Life < 2
value = -10

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

[State 1005, freeze in anim]
type = Changeanim
trigger1 = time != 0
value = Var(23)

[State 1005, Frosty color]
type = palFX
trigger1 = time != 0
;trigger1 = var(23) = 1
add = 100,150,250
mul = 200,200,200
time = 2

[State 1005, VELSET]
type = velset
trigger1 = time = 0
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
trigger1 = time = 200
trigger1 = Pos Y > -1
value = 0
ctrl = 1

[State 1005, CSZ]
type = Changestate
trigger1 = time = 200
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


;------------------------

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
;---------------------

[Statedef 2990]  ;Misil Teledirigido
type    = S
movetype= A
physics = S
juggle  = 4
velset = 0,0
anim = 4321
sprpriority = 3
ctrl = 0

[State 10000, open]
type = PlaySnd
trigger1 = AnimElem = 2
value = 111, 2

[State 10000, rakieta]
type = PlaySnd
trigger1 = AnimElem = 4
value = 9, 4

[State 1600, misil Helper]
type = Helper
trigger1 = time = 14
trigger1 = numhelper(1610) < 2
;trigger1 = p2stateno != 9010
;trigger1 = p2life > 10
trigger2 = time = 14
trigger2 = numhelper(1601) < 2
trigger2 = numenemy = 2
trigger2 = p2life < 10
stateno = 2991
name = "misilteled"
id = 1610
postype = p1
pos = 20,-95
helpertype = normal
sprpriority = 3
keyctrl = 0
ownpal = 0
under = 1

[State 1600, standing state]; vuelve a normalidad
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1
;-----------------
[Statedef 2991];helper de misil
type = S
movetype = A
physics = N
anim = 1630
velset = 6,0
ctrl = 0
sprpriority = 2

[State 1601, mira Helper]
type = Helper
trigger1 = AnimElem = 1
trigger1 = numhelper(1610) = 0
;trigger1 = p2stateno != 9010
;trigger1 = p2life > 10
stateno = 2992
name = "mira"
id = 1610
postype = p2
pos = 20,-65
helpertype = normal
sprpriority = 3
keyctrl = 0
ownpal = 0
under = 1

[State 1601]
type = changeanim
trigger1 = time <= 5
value = anim
elem = 1

[State 1601]
type = changeanim
trigger1 = time = (5,10]
value = anim
elem = 2

[State 1601]
type = changeanim
trigger1 = time = (10,15]
value = anim
elem = 3

[State 1601]
type = changeanim
trigger1 = time = (15,25]
value = anim
elem = 4

[State 1601, t15]
type = velset
trigger1 = time = 5
y = -2.25

[State 1601, t25]
type = velset
trigger1 = time = 10
x = 2.25
y = -3

[State 1601, t35]
type = velset
trigger1 = time = 15
x = 0
y = -3

; BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB

[State 1601, 0]
type = VelSet
triggerall = time > 25
trigger1 = Abs(p2dist X / (p2dist Y + 70)) > 4
trigger2 = p2dist Y = [69,71]
x = IfElse(p2dist X > 0, 3, -3)
y = 0

[State 1601, 30]
type = VelSet
triggerall = time > 25
triggerall = Abs(p2dist X / (p2dist Y + 70)) = [1, 4]
trigger1 = p2dist Y > 71
trigger2 = p2dist Y < 69
x = IfElse(p2dist X > 0, 3, -3)
y = IfElse(p2dist Y > 70,2.25,-2.25)

[State 1601, 60]
type = VelSet
triggerall = time > 25
triggerall = Abs(p2dist X / (p2dist Y + 70)) = [0.2, 1)
trigger1 = p2dist Y > 71
trigger2 = p2dist Y < 69
x = IfElse(p2dist X > 0,2.25,-2.25)
y = IfElse(p2dist Y > 70, 3, -3)

[State 1601, 90]
type = VelSet
triggerall = time > 25
triggerall = p2dist X / (p2dist Y + 70) = [-0.2, 0.2]
trigger1 = p2dist Y > 71
trigger2 = p2dist Y < 69
x = 0
y = IfElse(p2dist Y > 70, 3, -3)

[State 1601, 0A]
type = changeanim
triggerall = time > 25
trigger1 = Abs(p2dist X / (p2dist Y + 70)) > 4
trigger2 = p2dist Y = [69,71]
value = anim
elem = 1 + 6*(p2dist X < 0)

[State 1601, 30A]
type = changeanim
triggerall = time > 25
triggerall = Abs(p2dist X / (p2dist Y + 70)) = [1, 4]
trigger1 = p2dist Y > 71
trigger2 = p2dist Y < 69
value = anim
elem = IfElse(p2dist Y > 70,12 - 4*(p2dist X < 0), 2 + 4*(p2dist X < 0))

[State 1601, 60A]
type = changeanim
triggerall = time > 25
triggerall = Abs(p2dist X / (p2dist Y + 70)) = [0.2, 1)
trigger1 = p2dist Y > 71
trigger2 = p2dist Y < 69
value = anim
elem = IfElse(p2dist Y > 70,11 - 2*(p2dist X < 0), 3 + 2*(p2dist X < 0))

[State 1601, 90A]
type = changeanim
triggerall = time > 25
triggerall = p2dist X / (p2dist Y + 70) = [-0.2, 0.2]
trigger1 = p2dist Y > 71
trigger2 = p2dist Y < 69
value = anim
elem = 4 + 6*(p2dist Y > 70)

; EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE

[State 1601, Hit]
type = HitDef
trigger1 = time = 0
trigger1 = Var(4) = 0
attr = S, SP
damage    = 200, 100
animtype = Light
air.animtype = Back
guardflag = HL
pausetime = 0,2
sparkno = -1
guard.sparkno = -1
hitsound   = S4,18
guardsound = S4,18
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -15,0
air.velocity = -4,-5
air.fall = 1
fall.recover = 0
air.juggle = 3
yaccel = .45
p2stateno = 21238
kill       = root, Var(9) = 0
fall.kill  = root, Var(9) = 0
guard.kill = root, Var(9) = 0

[State 1601, explosion]
type = Explod
trigger1 = moveguarded = 1
trigger2 = movehit = 1
trigger3 = Time = 200
trigger4 = p2dist X= [-1,1]
trigger4 = p2dist Y= [69,71]
trigger5 = p2life = 0
anim = 1612
pos = 10,0
postype = p1
sprpriority = 5

;chau helper cohete
[State 1601, destroyself]
type = DestroySelf
trigger1 = Time = 200
trigger2 = MoveGuarded = 1
trigger3 = MoveContact = 1
trigger4 = stateno = 712
trigger5 = stateno = 713
trigger6 = p2stateno = 712
trigger7 = p2stateno = 713
trigger8 = p2dist X= [-1,1]
trigger8 = p2dist Y= [69,71]
trigger9 = p2life = 0

;Mira seguidora ;)
[Statedef 2992]
type = S
physics = N
movetype = I
juggle  = 1
velset = 0,0
ctrl = 0
anim = 1610

[State 1610, 2]
type = SprPriority
trigger1 = Time >= 0
value = 21

;sigue ke te sigue
[State 1610, 1]
type = PosAdd
trigger1 = P2Dist X > -20
x = 6

[State 1610, 1]
type = PosAdd
trigger1 = P2Dist X < -20
x = -6

[State 1610, 1]
type = PosAdd
trigger1 = P2Dist Y > 70
y = 6

[State 1610, 1]
type = PosAdd
trigger1 = P2Dist Y < 70
y = -6

;desaparece el helper de la mira
[State 1610, destroyself]
type = DestroySelf
trigger1 = numhelper(1601) = 0
trigger2 = p2life = 0
trigger4 = stateno = 712
trigger5 = stateno = 713
trigger6 = p2stateno = 712
trigger7 = p2stateno = 713

[Statedef 2800];-- 2 misiles ----------
type    = S
movetype= A
physics = S
juggle  = 2
velset = 0,0
anim = 4321
ctrl = 0

[State 10000, open]
type = PlaySnd
trigger1 = AnimElem = 2
value = 14, 0

[State 10000, rakieta]
type = PlaySnd
trigger1 = AnimElem = 4
trigger2 =  AnimElem = 4, =15
value = 9, 4

[State 1000, 0.1]
type = Posset
trigger1 = Pos Y != 0
trigger1 = time = 0
Y = 0

[State 9251,misil]
type = Helper
trigger1 = AnimElem = 3;4
trigger2 =  AnimElem = 3, =15
postype = p1
pos = 0,-90
stateno = 6611

[State 1000, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;--------------------------------------------
; Bomb
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
velset = 6, 0
anim = 1010
ctrl = 0

[State 2000, soundss]
type = Playsnd
trigger1 = time = 30
trigger2 = time = 40
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

;--------------------------------------------
;Freeze bomb eject far
[Statedef 2300]
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
stateno = 2302
name = "Bomb1"
id = 2301
pos = 0, -90
postype = p1

[State 2000, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;--------------------------------------
; Freeze bomb eject close
[Statedef 2310]
type    = S
movetype= A
physics = S
juggle  = 4
velset = 0,0
anim = 1200
ctrl = 0

[State 2310, sound]
type = Playsnd
trigger1 = time = 0
value = 14,0


[State 2310, killing helper]
type = helper
trigger1 = AnimElem = 2
;trigger1 = Var(9) = 0
stateno = 2311
name = "Shot2"
id = 2301
pos = 0, -90
postype = p1

[State 2310, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-------------------------------------
; Far bomb (killer)
[Statedef 2301]
type    = S
movetype= A
physics = N
velset = 10, 0
anim = 1090
ctrl = 0

[State 2301, nonkilling helper]
type = helper
trigger1 = time = 119
stateno = 2320
name = "Killbomb"
id = 2320
pos = 0, 0
postype = p1

[State 2301, drop]
type = Veladd
trigger1 = time > 0
y = .2

[State 2301, slow]
type = veladd
trigger1 = p2bodydist X < 70
x = -.1

[State 2301, stopx]
type = velset
trigger1 = p2dist X < 1
x = 0

[State 2301, slow]
type = veladd
trigger1 = p2bodydist X < 35
x = -.2

[State 2301, stop]
type = velset
trigger1 = Pos Y >= 0
x = 0
y = 0

[State 2301, gone]
type = Destroyself
trigger1 = time = 120

;-------------------------------------
; Far bomb (nonkiller)
[Statedef 2302]
type    = S
movetype= A
physics = N
velset = 6, 0
anim = 1090
ctrl = 0

[State 2300, soundss]
type = Playsnd
trigger1 = time = 30
trigger2 = time = 40
value = 0,4

[State 2302, nonkilling helper]
type = helper
trigger1 = time = 119
stateno = 2321
name = "NoKillbomb"
id = 2321
pos = 0, 0
postype = p1

[State 2302, drop]
type = Veladd
trigger1 = time > 0
y = .2

[State 2302, stop]
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

[State 2302, gone]
type = Destroyself
trigger1 = time = 120

;-------------------------------------
; Close bomb (killer)
[Statedef 2311]
type    = S
movetype= A
physics = N
velset = 3, 0
anim = 1090
ctrl = 0

[State 2000, soundss]
type = Playsnd
trigger1 = time = 20
trigger2 = time = 30
value = 0,4

[State 2011, killing helper]
type = helper
trigger1 = time = 129
stateno = 2320
name = "Killbomb"
id = 2320
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


[State 2311, gone]
type = Destroyself
trigger1 = time = 130

;-------------------------------------
; Close bomb (nonkiller)
[Statedef 2312]
type    = S
movetype= A
physics = N
velset = 4, 0
anim = 1090
ctrl = 0

[State 2312, nonkilling helper]
type = helper
trigger1 = time = 129
stateno = 2321
name = "NoKillbomb"
id = 2321
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

[State 2312, gone]
type = Destroyself
trigger1 = time = 130

;-------------------------------------
; Killer BOMB
[Statedef 2320]
type    = S
movetype= A
physics = N
juggle = 0
anim = 1011
ctrl = 0

[State 2320, snd]
type = playsnd
trigger1 = time = 0
value = 4,19

[State 2320, plume]
type = Explod
trigger1 = time = 0
anim = 1190
pos = 0, 0
postype = p1
facing = 1
sprpriority = 3
ownpal = 0
ontop = 1

[State 2320, hit]
type = HitDef
trigger1 = time = 0
;trigger1 = p2life >= 90
trigger1 = p2name !="shao kahn,"
attr = S, SP
animtype = Hard
air.animtype = Back
air.fall = 1
numhits = 0
guardflag = HL
pausetime = 0,2
sparkno = -1
p2stateno = 14001
guard.sparkno = -1
hitsound   = s9,5
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

[State 2320, des]
type = destroyself
trigger1 = animtime = 0

;--------------------------------------
; NonKiller BOMB
[Statedef 2321]
type    = S
movetype= A
physics = N
juggle = 0
anim = 1011
ctrl = 0

[State 2321, snd]
type = playsnd
trigger1 = time = 0
value = 4,19

[State 2321, plume]
type = Explod
trigger1 = time = 0
anim = 1190
pos = 0, 0
postype = p1
facing = 1
sprpriority = 3
ownpal = 0
ontop = 1

[State 2321, hit]
type = HitDef
trigger1 = time = 0
;trigger1 = p2life >= 90
;trigger1 = p2statetype != A
trigger1 = p2name !="shao kahn,"
attr = S, SP
animtype = Hard
air.animtype = Back
air.fall = 1
numhits = 0
guardflag = HL
pausetime = 0,2
sparkno = -1
p2stateno = 14001
guard.sparkno = -1
hitsound   = s9,5
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

[State 2321, des]
type = destroyself
trigger1 = animtime = 0
;--------------------------------------------

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
;--------------------------
[Statedef 1500];teleport punch
type    = A
movetype= A
physics = N
juggle  = 6
velset = 0,0
anim = 1500
ctrl = 0

[State 2000, changepos]
type = Posadd
trigger1 = animtime = 0
x = (P2Dist X) + 40

[State 2000, changestate]
type = Changestate
trigger1 = animtime = 0
value = 1501
;------------------------------------
; Sek punch up
[Statedef 1501]
type    = A
movetype= A
physics = N
juggle  = 7
velset = 0,0
anim = 1501
ctrl = 0

[State 2010, sound]
type = Playsnd
trigger1 = time = 0
value = 9,8

[State 0, Turn]
type = Turn
trigger1 = time = 0


[State 2010, kill hit]
type = HitDef
trigger1 = !MoveContact
attr = C, NA
damage    = 200
animtype  = Back
hitflag = MAF ;HAF
guardflag = HL
pausetime = 0,2
sparkno = -1
sparkxy = -18,-100
guard.sparkno = -1
hitsound   = 5,0
p2facing = 1
guardsound = 5,14
ground.cornerpush.veloff = -30
ground.type = High
guard.ctrltime = 20
guard.slidetime = 20
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -1.8,-11
air.velocity = -1.8,-12
yaccel = 0.38
envshake.time = 15
envshake.freq = 70
envshake.ampl = 7
fall.recover = 0
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)
priority = 1, Miss

[State 1200, 10]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0
