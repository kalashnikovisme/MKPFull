[Statedef 3000]
type    = S
movetype= A
physics = S
juggle  = 1
anim = 0
Velset = 0, 0
ctrl = 0

[State 9130, SetFatal]
type = Varset
trigger1 = movehit
V = 4
value = 1

[State 430, 31sdaa]
type = changeanim
trigger1 = Time = 45
value = 660

[State 200, Plaay]
type = PlaySnd
trigger1 = animelem = 1
triggerall = anim = 660
trigger2 = Animelem = 18
value = F5, 20

[State 200, Plaayd]
type = PlaySnd
trigger1 = animelem = 21
trigger1 = anim = 660
value = F5, 0

[State 22, round hit]
type = EnvShake
trigger1 = animelem = 22
freq = 78
time = 10
ampl = 6

[State 810, Bind 7]
type = TargetBind
trigger1 = movehit
pos = 65, 0

[State 430, 1]
type = PlaySnd
trigger1 = animelem = 18
value = F5, 15

[State 430, 14]
type = PlaySnd
trigger1 = animelem = 23
value = F5, 16

[State 430, 13]
type = PlaySnd
trigger1 = animelem = 22
value = F5, 17

[State 430, 12]
type = PlaySnd
trigger1 = animelem = 23
value = F5, 18

[State 181, 6]
type = Explod
trigger1 = animelem = 5
trigger1 = anim = 660
anim = 665
pos = 0,0
postype = p1
;facing = 1
sprpriority = 2
ownpal = 1

[State 181, 62]
type = Explod
trigger1 = animelem = 23
trigger1 = anim = 660
anim = F16
pos = 79,-135
postype = p1
facing = 1
sprpriority = 2
ownpal = 1

[State 181, 623]
type = Explod
trigger1 = animelem = 23
trigger1 = anim = 660
anim = F16
pos = 70,-120
postype = p1
facing = -1
ontop  =1
ownpal = 1


[State 1200, BoltFat]
type = Hitdef
trigger1 = AnimElem = 5
velocity = 8, 0 
attr = S, NT
animtype = Hard
air.animtype = Back
air.fall = 1
fall.recover = 0
guardflag = HL
pausetime = 0,0
sparkno = -1
p2stateno = 3001;6006;6614
guard.sparkno = -1
hitsound   = 5,0
guardsound = s4,17
ground.type = High
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 200, 7]
type = changestate;Selfstate
trigger1 = AnimTime = 0
trigger1 = anim = 660
value = 0
ctrl = 1

[Statedef 3001];6614
type    = S
movetype= H
physics = S
ctrl = 0
velset = 0,0,0
anim = 661

[State 210, 1]
type = Playsnd
trigger1 = time = 0
value = F5,17
volume = 100

[State 210, 12]
type = Playsnd
trigger1 = time = 0
value = F5,16
volume = 100

[State 210, 21]
type = Playsnd
trigger1 = time = 0
value = F5,18
volume = 100

[State 181, 6]
type = Explod
trigger1 = time = 0
anim = 664
pos = 0,0
postype = p2
facing = 1
sprpriority = 3
ownpal = 1

[State 1200, 2at]
type = Explod
trigger1 = time = 0
anim = F16
pos = 10,-117
postype = p1
sprpriority  >= 4

[State 1200, at]
type = Explod
trigger1 = time = 5
trigger2 = time = 12
trigger3 = time = 22
trigger4 = time = 28
trigger5 = time = 34
trigger6 = time = 40
trigger7 = time = 45
trigger8 = time = 50
trigger9 = time = 55
anim = F1
pos = 0,-105
postype = p1
;facing = 1
sprpriority  >= 3

[State 1200, at]
type = Explod
trigger1 = time = 8
trigger2 = time = 14
trigger3 = time = 22
trigger4 = time = 28
trigger5 = time = 34
trigger6 = time = 40
trigger7 = time = 45
trigger8 = time = 50
trigger9 = time = 55
anim = F1
pos = 0,-105
postype = p1
facing = -1
sprpriority  >= 3

[State 1200, 45ound]
type = PlaySnd
trigger1 = time = 8
trigger2 = time = 14
trigger3 = time = 22
trigger4 = time = 28
trigger5 = time = 34
trigger6 = time = 40
trigger7 = time = 45
trigger8 = time = 50
trigger9 = time = 55
value = F5, 19

[State 9010, 0.1]
type = Sprpriority
trigger1 = time = 50
value  >= 4

[State 9399, 2]
type = Selfstate
trigger1 = Animtime = 0
value = 6006

[State 9399, 3]
type = Lifeadd
trigger1 = Time = 30
Value = -9999

[State 5150, 8]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1
ctrl = 1

[Statedef 3700]
type    = S
movetype= A
physics = S
anim = 0
ctrl = 0

[State 3100, helper]
type = Helper
trigger1 = time = 50
stateno = 3701
name = "friendship"
postype = p1
pos = 0,0
sprpriority = 1
keyctrl = 0
ownpal = 0
under = 1

[State 3100, Pset]
type = varset
trigger1 = time = 50
v = 26
value = 1

[State 200, 7]
type = changestate
trigger1 = Time = 50
value = 0
ctrl = 1

[Statedef 3701]
type    = S
movetype= A
physics = S
ctrl = 0
anim = 3700

[State 210, 1]
type = Playsnd
trigger1 = time = 1
value = 5,20
volume = 600

[State 210, 1]
type = Playsnd
trigger1 = timemod = 18,3
value = 37,1
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

;----------------------------------------------------
[Statedef 3300]
type    = S
movetype= A
physics = S
anim = 0
ctrl = 0

[State 1001, 10]
type = Changeanim
trigger1 = time = 60
value = 2245

[State 1000, bber]
type = PlaySnd
trigger1 = Time = 1
value = 5, 13
volume = 70

[State 9130, SetFatal]
type = Varset
trigger1 = movehit
V = 4
value = 1

[State 1000, 10]
type = HitDef
trigger1 = !movecontact
attr = S, NA
hitflag = M
sparkno = -1
p2stateno = 3009
numhits = 0
fall = 1

[State 1001, 10]
type = Changeanim
trigger1 = AnimTime = 0
trigger1 = Anim = 2245
value = 0

[State 1001, 10]
type = Changestate
trigger1 = Time = 190
value = 0
ctrl = 1

[Statedef 3009]
type    = S
movetype= H
physics = S
ctrl = 0

[State 1200, ound]
type = PlaySnd
trigger1 = time = 0
value = F5, 29
volume = 50

[State 9130, SetFatal]
type = posadd
trigger1 = time = 0
x = - 35

[State 1001, 10]
type = selfstate
trigger1 = Time = 1
value = 6004