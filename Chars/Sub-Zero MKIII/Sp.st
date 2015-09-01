[Statedef 2900]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 1                      ;Number of air juggle points move takes
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0
anim = 1100                ;Change animation (Def: no change)

[State 200, Play]
type = PlaySnd
trigger1 = animelem = 2
value = 10, 4

[State 201, 1]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage    = 240, 75                   ;Damage that move inflicts
animtype = Light                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
air.animtype = Back
guardflag = HL
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 2, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default
pausetime = 15,2                  ;Time attacker pauses, time victim shakes
sparkno = 3
sparkxy = -20,-70
guard.sparkno = -1
ground.type = High                 ;Type: High, Low, Trip (def: Normal)
p2facing = 1
ground.slidetime = 5
ground.hittime  = 20
guard.velocity = -15
ground.cornerpush.veloff = 0
guard.slidetime = 20
guard.ctrltime = 20
ground.velocity = -30,0              ;Time to regain control after guard (def: guard.slidetime)
guard.velocity = -2
air.velocity = -2, 1
airguard.velocity = -1.9            ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.fall = 1
fall.recover = 0
p2stateno = 21238
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 201, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

----------------------------

[StateDef 1000];hielo
type    = S
movetype= A
physics = S
juggle  = 2
ctrl = 0
velset = 0,0,0
anim = 1003

[State 1001, 210]
type = VarSet
trigger1 = var(46) = 0
trigger2 = var(46) = 2
V = 46
value = (var(46)=0)*1 + (var(46)=2)*3

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
trigger1 = animelem = 3
anim = 1002
pos = 0,0
postype = p1
ID = 112
sprpriority  = 2

[State 1200, 2at]
type = Explod
trigger1 = animelem = 3;1
anim = 910
pos = 48,-65
postype = p1
ID = 112
sprpriority  >= 2

[State 1200, BoltFat]
type = Projectile
triggerall = time = 16
trigger1 = p2stateno != 12001
trigger2 = p2stateno != 1001
projanim = 1001
projhitanim = 1000
projremanim = 1000
offset = 20*const(size.xscale), -65*const(size.xscale)
ID = 997
velocity = 9, 0
remvelocity = 0, 0
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
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 1200, BoltFat]
type = Projectile
triggerall = time = 16
trigger1 = p2stateno = 12001
trigger2 = p2stateno = 1001
projanim = 1001
projhitanim = 1000
projremanim = 1000
offset = 20*const(size.xscale), -65*const(size.xscale)
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
numhits = -1
p2stateno = 1002
p1stateno = 1001
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
;----------------------

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
value = 1003
;--------------
[Statedef 1002]
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
value = 1003
;-----------------------
; Double ice hits back
[Statedef 1001]
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
value = 1003
;------------------------
[Statedef 1003]
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
[StateDef 1100]
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
anim = 1014
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
stateno = 1102
ownpal = 1
size.shadowoffset = -1000
;-------------------------
[Statedef 1102]
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
triggerall = p2stateno != 12001
triggerall = p2stateno != 1001
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
stateno = 1011
ownpal = 1

[State end]
type = destroyself
trigger1 = time = 200
trigger2 = moveguarded
trigger3 = moveguarded
trigger3 = time >= 10
trigger4 = movecontact

;----------------------------------------------------
[Statedef 1011]
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
;============================================================
[StateDef 1200]
type    = S
movetype= A
physics = S
juggle  = 2
ctrl = 0
velset = 0,0,0
anim = 900

[State 1200, 2at]
type = Explod
trigger1 = animelem = 3
anim = 903
pos = 0,0
postype = p1
ID = 112
sprpriority  = 2

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



[State 1200, BoltFat]
type = Projectile
triggerall = AnimElem = 3
trigger1 = p2stateno = 12001
;trigger1 = p2stateno = 1001
projanim = 901
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
p1stateno = 1201
p2stateno = 1002
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

[State 1000, Bounf]
type = ChangeState
trigger1 = projcontact = 1
value = 1404

[State 1200, 10]
type = ChangeState
trigger1 = Movehit = 1
trigger1 = p2stateno = 12001
value = 1001

[State 1200, 10]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0
------------
; Double ice hits back22222222
[Statedef 1201]
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
value = 1003
;---------------------------------
[StateDef 1300]
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
trigger1 = time < 20
anim = 1104
pos = 0,0
postype = p1
sprpriority = 2

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
[StateDef 1301]
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
[StateDef 1210]
type    = S
movetype= A
physics = S
juggle  = 2
ctrl = 0
velset = 0,0,0
anim = 900

[State 1200, 2at]
type = Explod
trigger1 = animelem = 3
anim = 903
pos = 0,0
postype = p1
ID = 112
sprpriority  = 2

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

[State 1200, BoltFat]
type = Projectile
triggerall = AnimElem = 3
trigger1 = p2stateno = 12001
;trigger1 = p2stateno = 1001
projanim = 901
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
p1stateno = 1201
p2stateno = 1002
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

[State 1000, Bounf]
type = ChangeState
trigger1 = projcontact = 1
value = 1404

[State 1200, 10]
type = ChangeState
trigger1 = Movehit = 1
trigger1 = p2stateno = 12001
value = 1001

[State 1200, 10]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0
------------

;============================================================
[StateDef 1220]
type    = S
movetype= A
physics = S
juggle  = 2
ctrl = 0
velset = 0,0,0
anim = 900

[State 1200, 2at]
type = Explod
trigger1 = animelem = 3
anim = 903
pos = 0,0
postype = p1
ID = 112
sprpriority  = 2

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

[State 1200, BoltFat]
type = Projectile
triggerall = AnimElem = 3
trigger1 = p2stateno = 12001
;trigger1 = p2stateno = 1001
projanim = 901
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
p1stateno = 1201
p2stateno = 1002
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

[State 1000, Bounf]
type = ChangeState
trigger1 = projcontact = 1
value = 1404

[State 1200, 10]
type = ChangeState
trigger1 = Movehit = 1
trigger1 = p2stateno = 12001
value = 1001

[State 1200, 10]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0
------------

[StateDef 1400]
type    = S
movetype= A
physics = S
juggle  = 2
ctrl = 0
anim = 1300

[State 1100, aAccell]
type = VelAdd
trigger1 = Time < 15
;trigger1 = Time > 10
x = 9;10

[State 1100]
type = VarRandom
trigger1 = 1
v = 13
range = 1105,1106

[State 1100]
type = Explod
trigger1 = anim = 1300
trigger1 = time < 15
anim = var(13)
pos = 0,-50
random = 0, 70
vel = -1,0
postype = p1
facing = 1
sprpriority = 1

[State 1100]
type = Explod
trigger1 = anim = 1300
trigger1 = time < 15
anim = var(13)
pos = 0,-50
random = 0, 70
vel = -2,0
postype = p1
facing = 1
sprpriority = 1

[State 1100]
type = Explod
trigger1 = anim = 1300
trigger1 = time < 15
anim = var(13)
pos = 0,-50
random = 0, 70
vel = -3,0
postype = p1
facing = 1
sprpriority = 1

[State 0, Explod]
type = Explod
trigger1 = anim = 1300
trigger1 = time < 15
anim = 1005
pos = 0,0
postype = p1
sprpriority = 2

[State 1000, bber]
type = PlaySnd
trigger1 = Time = 0
value = 14,0

[State 1000, 10]
type = HitDef
trigger1 = AnimElem = 3
attr = S, SA
animtype  = back
damage    = 200, 95
guardflag = HLMF
hitflag = AHLMF
pausetime = 2,2
sparkno = -1
guard.sparkno = -1
hitsound   = 5,0
p1stateno = 1401
guardsound = 5,14
ground.type = High
ground.slidetime = 0
ground.hittime  = 0
ground.velocity = -3,-5
air.velocity = -3,-5
air.hittime = 17
yaccel = 0.5
fall = 1
fall.recover = 0
envshake.time = 10
envshake.freq = 30
envshake.ampl = 5
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 1000, Bounf]
type = ChangeState
trigger1 = Moveguarded = 1
value = 1401

[State 1000, BounceOff]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0

;--------------------------------------------
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

