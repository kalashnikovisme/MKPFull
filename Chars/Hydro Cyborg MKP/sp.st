;============================================================
;frezze ball
;============================================================
[StateDef 1000];hielo
type    = S
movetype= A
physics = S
ctrl = 0
velset = 0,0,0
anim = 1003

[State 1001, 210]
type = VarSet
trigger1 = var(46) = 0
trigger2 = var(46) = 2
V = 46
value = (var(46)=0)*1 + (var(46)=2)*3

[State 1200,Sound]
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

[State 1200, BoltFat]
type = Projectile
triggerall = AnimElem = 3
trigger1 = p2stateno != 12001
projanim = 1001
projhitanim = 1000
projremanim = 1000
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
triggerall = AnimElem = 3
trigger1 = p2stateno = 12001
projanim = 1001
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
p1stateno = 12001
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

[State 1200, 10]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0
;----------------------
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
;===============================================
;end frezze ball
;===============================================

;==================================
;ice clone
;==================================
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
helpertype = Normal
ID = 7003
name = "clone" 
postype = p1
pos = 0,0
stateno = 1901
ownpal = 1
size.shadowoffset = -1000
;-----------------
[Statedef 1901]
type    = A
movetype= A
physics = N
ctrl = 0
velset = 0,0

[State 1001, 10a]
type = Changeanim
trigger1 = Time = 0
trigger1 = pos Y > -5
value = 1016

[State 1001, 10a]
type = Changeanim
trigger1 = pos Y < -4
trigger1 = Time = 0
value = 1017

[State 1200, BoltFat]
type = HitDef
trigger1 = animelem  = 1
triggerall = p2stateno != 12001
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
;===========================================================
;end ice clone
;===========================================================

;===========================================================
; GROUND FREEZE
;===========================================================
[Statedef 1910]
Type = S
Movetype = A
Physics = S
Anim = 1300
ctrl = 0

[State 1300, 0.5]
type = playsnd
trigger1 = animelem = 4
value = 4,14
channel = 3

[State 1300, 0.5]
type = playsnd
trigger1 = animelem = 2
value = 4,6
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
;============================================================
;end ground frezze
;============================================================

;============================================================
;slide punch
;============================================================
[statedef 1500]
type = S
physics = S
movetype = A
juggle = 2
anim = 1100; se derrite
ctrl = 0
velset = 0,0

[State 700, 1]
type = PlaySnd
trigger1 = Time = 0
value = 4, 26  ;derrite
channel = 1

[state 1020, ddd]
type = ChangeState
trigger1 = animtime = 0
value =1501
ctrl = 0
;------------------
[statedef 1501]
type = S
physics = S
movetype = A
juggle = 2
anim = 1101
ctrl = 0

[State 700, 1sd]
type = nothitby
trigger1 = 1
value = CSA

[state 1100, plush]
type = playerpush
trigger1 = anim = 1101
value = 0

[state 1020, a]
type = velset
trigger1 = 1
x = 10
ctrl = 0

[state 1020, 1]
type = ChangeState
triggerall = ( (numexplod(1500) < 1) || p2statetype = S)
trigger1 = P2BodyDist X < 10
trigger1 = P2BodyDist X > -5
trigger1 = command = "sp1"
value =1502
ctrl = 0

[state 1020, 1]
type = Changestate
triggerall = ( (numexplod(1500) < 1) || p2statetype = S)
trigger1 = P2BodyDist X < -50
trigger1 = command = "sp1"
value =1503

[state 1020, 1]
type = Changestate
trigger1 = FrontEdgeDist < 1
value =1580

[state 1020, 1]
type = Changestate
trigger1 = P2BodyDist X < -50
value =1581

;------------------------------------
[Statedef 1502]  ; Sek punch up
type    = S
movetype= A
physics = N
juggle  = 7
velset = 0
anim = 1103
ctrl = 0

[State 700, 1]
type = PlaySnd
trigger1 = AnimelemTime(3) = 0
value = 4, 27       ;desderrite
channel = 1

[State 2, blood111]
type = Helper
trigger1 = movehit
trigger1 = numhelper(25) < 1
ID = 25
stateno = 27
pos = 0, 0
postype = p1
persistent = 0
ignorehitpause = 1

[State 2010, turn]
type = turn
trigger1 = P2BodyDist X < 0
trigger1 = time = 1

[State 2010, kill hit]
type = HitDef
trigger1 = !movecontact
attr = A, NP   
damage    = 155, 77
p2facing = 1
animtype = Back
guardflag = CM
hitflag = MHAF
priority = 3, Hit
pausetime = 0,5
sparkno = -1
hitsound = F5,0
guardsound = 5,14
ground.type = Low
ground.slidetime = 5
ground.hittime  = 20
ground.velocity = -1, -10
air.velocity = -1.5,-10
fall.recover = 0
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 1200, exp]
type = explod
trigger1 = animtime = 0
trigger1 = p2statetype = A
anim = 888
id = 1500
removetime = 130

[State 2010, change]
type = Changestate
trigger1 = animtime = 0
value = 0
ctrl = 1
;-------------------------------------
[Statedef 1503]
type    = S
movetype= A
physics = N

[State 2010, turn]
type = turn
trigger1 = P2BodyDist X < -37
trigger1 = time = 0

[State 2020]
type = Changestate
trigger1 = time = 0
value = 1502
;-----------------
[StateDef 1580]
type    = S
movetype= I
physics = S
velset = 0,0,0
anim = 1102
ctrl = 0

[State 700, 1]
type = PlaySnd
trigger1 = anim = 1102
trigger1 = AnimelemTime(1) = 0
value = 4, 27       ;desderrite
channel = 2

[State 700, 4]
type = ChangeState
trigger1 = AnimelemTime(6) = 0
ctrl = 1
value = 0
;------------------------------
[StateDef 1581]
type    = S
movetype= I
physics = S
velset = 0,0,0
anim = 1102
ctrl = 0

[State 2010, turn]
type = turn
trigger1 = time = 0

[State 700, 1]
type = PlaySnd
trigger1 = anim = 1102
trigger1 = AnimelemTime(1) = 0
value = 4, 27       ;desderrite
channel = 2

[State 700, 4]
type = ChangeState
trigger1 = AnimelemTime(6) = 0
ctrl = 1
value = 0
;====================================
;end slide punch
;====================================