[Statedef 3200]
type    = S
movetype= A
physics = S
juggle  = 1
Velset = 0, 0
anim = 0
ctrl = 0

[State 3200, 1]
type = ChangeAnim
trigger1 = Time > 0
value = anim

[State 3200, 2]
type = changestate
trigger1 = Time = 20
value = 3250
ctrl = 1
;________________________________________________

[Statedef 3250]
type    = S
movetype= A
physics = S
juggle  = 1
Velset = 0, 0
anim = 3100
ctrl = 0

[State 3250, 1]
type = VarSet
trigger1 = Time = 20
V = 4
value = 1

[State 3250, 2]
type = Helper
trigger1 = Anim = 3100
trigger1 = AnimElem = 7
postype = P2
stateno = 3275
helpertype = normal
ignorehitpause = 1
ownpal = 1

[State 3250, 3]
type = HitDef
trigger1 = AnimElem = 1
attr = A, NA
sparkno = -1
guard.sparkno = -1
p2stateno = 3295

[State 3250, 4]
type = PlaySnd
trigger1 = Time = 20
value = 1,0

[State 3250, 5]
type = changeanim
trigger1 = Time = 167
value = 3101

[State 3250, 6]
type = PlaySnd
trigger1 = Time = 10
trigger2 = Time = 157
value = 7,0

[State 3250, 7]
type = changestate
trigger1 = Anim = 3101
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;________________________________________________

[Statedef 3275]
type = A
movetype = A
physics = N
sprpriority = 10
velset = 0, 0
anim = 3200
ctrl = 0

[State 3275, 1]
type = HitDef
trigger1 = !movecontact
attr = S, NA
damage    = 9999, 0
animtype = Back
air.animtype = Back
guardflag = HL
hitflag = MAF
priority = 1, Miss
p2stateno = 3285
pausetime = 0,1
sparkno = -1
guard.sparkno = -1
guardsound = -1, -1
ground.type = Low
ground.slidetime = 0
ground.hittime  = 1
ground.velocity = 0,0
ground.cornerpush.veloff = 0
fall.recover = 0
fall = 1

[State 3275, 2]
type = PlaySnd
trigger1 = time = 5
value = F1200,0

[State 3275, 3]
type = DestroySelf
trigger1 = animtime = 0
;________________________________________________

[Statedef 3285]
type    = S
movetype= H
physics = S

[State 3285, 1]
type = ChangeAnim
trigger1 = Time > 0
elem = animelemno(0)
value = anim

[State 3285, 2]
type = Explod
trigger1 = time = 0
anim = F50
postype = p1
pos = 0,0
sprpriority = 2

[State 3285, 3]
type = SprPriority
trigger1 = time=0
value = 1

[State 3285, 4]
type = VarSet
trigger1 = time = 10
V = 26
value = 1

[State 3285, 5]
type = VelAdd
trigger1 = Time > 10
trigger1 = Time < 72
X = -50.5

[State 3285, 6]
type = LifeSet
trigger1 = Time = 50
value = 0

[State 3285, 7]
type = PlaySnd
trigger1 = Time = 5
value = 4,1

[State 3285, 8]
type = PlaySnd
trigger1 = Time = 190
value = F1200,1

[State 3285, 9]
type = PosSet
trigger1 = Time = 99
X = 50

[State 3285, 10]
type = SelfState
trigger1 = Time = 195
value = 5150
;________________________________________________

[Statedef 3295]
type    = S
movetype= A
physics = S
juggle  = 1
Velset = 0, 0
ctrl = 0

[State 3295, 1]
type = ChangeAnim
trigger1 = Time > 0
elem = AnimElemNo(0)
value = anim
;________________________________________________

[Statedef 3400]
type    = S
movetype= A
physics = S
juggle  = 1
Velset = 0, 0
anim = 0
ctrl = 0

[State 3200, 1]
type = ChangeAnim
trigger1 = Time > 0
value = anim

[State 3200, 2]
type = changestate
trigger1 = Time = 20
value = 3425
ctrl = 1
;________________________________________________

[Statedef 3425]
type    = S
movetype= A
physics = S
juggle  = 1
Velset = 0, 0
anim = 3100
ctrl = 0

[State 3425, 1]
type = VarSet
trigger1 = Time = 20
V = 4
value = 1

[State 3425, 2]
type = Helper
trigger1 = Anim = 3100
trigger1 = AnimElem = 7
pos = 0, -225
postype = P2
stateno = 3435
helpertype = normal
ignorehitpause = 1
persistent = 0
keyctrl = 0
ownpal = 1

[State 3425, 3]
type = HitDef
trigger1 = AnimElem = 1
attr = A, NA
p2stateno = 3455
sparkno = -1
guard.sparkno = -1

[State 3425, 4]
type = ChangeAnim
trigger1 = Time = 200
value = 3101

[State 3425, 5]
type = playsnd
trigger1 = Time = 10
trigger2 = Time = 200
value = 7,0

[State 3425, 6]
type = changestate
trigger1 = Anim = 3101
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;________________________________________________

[Statedef 3435]
type = A
movetype = A
physics = N
sprpriority = 10
velset = 0, 10
anim = 3102
ctrl = 0

[State 3435, 1]
type = VelAdd
trigger1 = Pos Y < 0
y = .012

[State 3435, 2]
type = HitDef
trigger1 = animelem = 2
attr = A, NA
p2stateno = 10
sparkno = -1
guard.sparkno = 3455
numhits = 0

[State 3435, 3]
type = HitDef
trigger1 = animelem = 3
attr = A, NA
damage = 0, 0
animtype = Back
air.animtype = Back
guardflag = HL
hitflag = MAF
priority = 1, Miss
p2stateno = 3445
pausetime = 0,1
sparkno = -1
guard.sparkno = -1
hitsound = S1200, 1
guardsound = -1, -1
ground.type = Low
ground.slidetime = 0
ground.hittime = 1
ground.velocity = 0,0
ground.cornerpush.veloff = 0
fall.recover = 0
fall = 1

[State 3435, 4]
type = VelSet
trigger1 = Pos Y >= 0
y = 0
;________________________________________________

[Statedef 3445]
type    = S
movetype= H
physics = N
ctrl = 0

[State 3445, 1]
type = explod
trigger1 = Time = 0
removetime = 14*3
postype = p1
pos = 0,0
anim = F17

[State 3445, 2]
type = varSet
trigger1 = Time = 0
V = 26
value = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 4,21

[State 3445, 3]
type = EnvShake
trigger1 = Time = 0
time = 15
freq = 70
ampl = 7

[State 3445, 4]
type = LifeAdd
trigger1 = Time = 0
Value = -9999

[State 3445, 5]
type = Selfstate
trigger1 = Time = 1
value = 5150
;________________________________________________

[Statedef 3455]
type    = S
movetype= H
physics = S

[State 3285, 1]
type = ChangeAnim
trigger1 = Time > 20
elem = animelemno(0)
value = anim
;________________________________________________

[Statedef 3800]
type    = S
movetype= A
physics = S
juggle  = 1
anim = 10
ctrl = 0

[State 3800, 1]
type = ChangeAnim
trigger1 = Time > 0
value = anim

[State 200, 7]
type = changestate
trigger1 = Time = 45
value = 3803
ctrl = 1
;________________________________________________

[Statedef 3803]
type    = S
movetype= A
physics = S
juggle  = 1
anim = 3800
ctrl = 0

[State 3800, 1]
type = Playsnd
trigger1 = time = 10
value = F5,52
volume = 600

[State 0]
type = VarSet
trigger1 = time = 60
v = 4
value = 4

[State 430, sound]
type = playsnd
trigger1 = time = 60
trigger2 = time = 240
value = 7,1

[State 430, sound2]
type = playsnd
trigger1 = time = 60
value = F1200,3

[State 0]
type = Hitdef
trigger1 = AnimElem = 1
attr = S, NA
animtype = Hard
air.animtype = Back
air.fall = 1
fall.recover = 0
guardflag = HL
pausetime = 0,0
sparkno = 16
sparkxy = -20,-125
p2stateno = 6100
guard.sparkno = -1
ground.type = High
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 1]
type = ChangeAnim
trigger1 = anim = 3800
trigger1 = animtime = 0
value = 3801

[State 3]
type = ChangeState
trigger1 = anim = 3801
trigger1 = animtime = 0
ctrl = 1
value = 0
;________________________________________________

[Statedef 6100]
type    = S
movetype= H
physics = S
ctrl = 0
velset = 0,0,0
anim = 0

[State 9399, 2]
type = varSet
trigger1 = time = 0
v = 26
value = 1

[State 1200, 2at]
type = Explod
trigger1 = time = 0
anim = 6100
pos = 0, 0
postype = p1
sprpriority  = 1

[State 1200, 2at]
type = playsnd
trigger1 = time = 0
value = F1200,4

[State 1200, 2at]
type = Explod
trigger1 = time = 0
anim = 6101
pos = 0, 0
postype = p1
sprpriority  = 2

[State 9399, 2]
type = Selfstate
trigger1 = Time = 1
value = 5150

[State 9399, 3]
type = Lifeadd
trigger1 = Time = 0
Value = -9999

[State 5150, 8]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1
ctrl = 1
;________________________________________________

[Statedef 3600]
type    = S
movetype= A
physics = S
anim = 0
ctrl = 0

[State 3100, helper]
type = Helper
trigger1 = time = 60
stateno = 3601
name = "babality"
postype = p1
pos = 0,0
sprpriority = 1
keyctrl = 0
ownpal = 0
under = 1

[State 200, 7]
type = changestate
trigger1 = Time = 235
value = 0
ctrl = 1

[Statedef 3601]
type    = S
movetype= A
physics = S
ctrl = 0
anim = 9000

[State 210, 1]
type = StopSnd
trigger1 = time = 0
channel = -1

[State 9130, SetFatal]
type = ParentVarSet
trigger1 = movehit
V = 4
value = 2

[State 3010, Fire]
type = explod
trigger1 = Time = 0
anim = F11
ID = 36
pos = -10,7
postype = p2
ontop = 1

[State 3010, 1]
type = Playsnd
trigger1 = time = 0
value = 4,22
volume = 600

[State 3102, golpearalpl2]
type = HitDef
trigger1 = time = 0
attr = S, NA
sparkno = -1
guard.sparkno = -1
p2stateno = 3602

[Statedef 3602]
type = S
movetype = A

[State 0]
type = VarSet
trigger1 = time = 0
v = 26
value = 1

[State 210, 1]
type = Playsnd
trigger1 = time = 1
value = F5,47
volume = 600

[State 0]
type = explod
trigger1 = time = 0
anim = 3600

[State 0]
type = changestate
trigger1 = time = 1
value = 6002
;________________________________________________

[Statedef 3700]
type    = S
movetype= A
physics = S
ctrl = 0
anim = 10

[State 3700, 1]
type = ChangeAnim
trigger1 = Time > 0
value = anim

[State 1005, attempt]
type = VarSet
trigger1 = Time = 0
V = 23
Value = Anim

[State 3100, helper]
type = Helper
trigger1 = time = 60
stateno = 3701
postype = p1
pos = 0,0

[State 3100, helper]
type = Helper
trigger1 = time = 60
stateno = 3701
name = "friendship"
ID = 3700
postype = p1
pos = 0,0
sprpriority = 1
keyctrl = 0
ownpal = 0
under = 1

[State 3100, Pset]
type = varSet
trigger1 = time = 60
v = 26
value = 1

[State 200, 7]
type = changestate
trigger1 = Time = 250
value = 0
ctrl = 1
;________________________________________________

[Statedef 3701]
type    = S
movetype= A
physics = S
ctrl = 0
anim = 3700

[State 442, 3.3]
type = hitAdd
trigger1 = time = 0
value = -1

[State 210, 1]
type = StopSnd
trigger1 = time = 0
channel = -1

[State 210, 1]
type = Playsnd
trigger1 = time = 1
value = F5,50
volume = 600

[State 9130, SetFatal]
type = ParentVarSet
trigger1 = movehit
V = 4
value = 3

[State 3102, golpearalpl2]
type = HitDef
trigger1 = time = 0
attr = S, NA
sparkno = -1
guard.sparkno = -1
p2stateno = 6002

[State 1200, BoltFat]
type = Explod
trigger1 = time = 0
anim = 3701
postype = p1
pos = 49,-88
