[Statedef 3000]
type    = S
movetype= A
physics = S
anim = 0
ctrl = 0

[State 2000, 0.6]
type = ScreenBound
trigger1 = time = [0, 1000]
value = 0
movecamera = 0,0

[State 430, 31sdaa]
type = changeanim
trigger1 = Time = 60
value = 430

[State 2, Upperblood]
type = Helper
trigger1 = movehit
ID = 28
stateno = 28
pos = 0, 0
postype = p1
persistent = 0
ignorehitpause = 1

[State 430, 2]
type = HitDef
trigger1 = !MoveContact
attr = S, NA
animtype  = Back
hitflag = H
sparkno = -1
sparkxy = -18,-100
guard.sparkno = -1
hitsound   = 5,0
ground.type = High
ground.velocity = 0,-16
envshake.time = 15
envshake.freq = 70
envshake.ampl = 7
numhits = 0
p2facing = 1

[State 200, 7]
type = changestate
trigger1 = Anim = 430
trigger1 = AnimTime = 0
value = 3001

[Statedef 3001]
type    = S
movetype= A
physics = S
anim = 3000

[State 2000, 0.6]
type = ScreenBound
trigger1 = time = [0, 1000]
value = 0
movecamera = 0,0

[State 9130, SetFatal]
type = Varset
trigger1 = movehit
V = 4
value = 1

[State 430, 2]
type = HitDef
trigger1 = !MoveContact
attr = S, NA
animtype  = Back
hitflag = MAFD
guardflag = L
sparkno = -1
sparkxy = -18,-100
guard.sparkno = -1
envshake.time = 15
envshake.freq = 70
envshake.ampl = 7
numhits = 0
p2stateno = 3003

[State 3100, helper]
type = Helper
trigger1 = movehit
stateno = 3002
name = "jadewin"
postype = p1
pos = 0,0

[State 3100, Pset]
type = varset
trigger1 = movehit
v = 26
value = 1

[State 200, 7]
type = changestate
trigger1 = Time = 190
value = 0
ctrl = 1

;jade wins
[Statedef 3002]
type    = S
movetype= I
physics = S

[State 1005, FREEZE]
type = Changeanim
trigger1 = time = 0
value = 3001

;clavado
[Statedef 3003]
type    = S
movetype= H
physics = S

[State 200, 7]
type = changeanim
trigger1 = Time = 0
value = 6001

[State 200, 7]
type = velset
trigger1 = Time = 0
Y = 0

[State 3100, asignar anim]
type = varset
trigger1 = time = 1
v = 45
value = anim

[State 200, 7]
type = selfstate
trigger1 = Time = 1
value = 6001

; --- Friendship... friendship, again? ---
[Statedef 3700]
type    = S
movetype= A
physics = S
anim = 0
ctrl = 0

[State 3100, helper]
type = Helper
trigger1 = time = 60
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
trigger1 = time = 61
v = 26
value = 1

[State 200, 7]
type = changestate
trigger1 = Time = 250
value = 0
ctrl = 1

[Statedef 3701]
type    = S
movetype= A
physics = S
ctrl = 0
anim = 3700

[State 2000, 0.6]
type = ScreenBound
trigger1 = time > 0
value = 1
;movecamera = 0,0

[State 0]
type = VarRandom
trigger1 = pos y = 0
trigger1 = time >= 15
v = 11
range = -12, -8

[State 0]
type = VarRandom
trigger1 = pos y = 0
trigger1 = time >= 15
v = 12
range = -10, 10

[State 0]
type = velset
trigger1 = pos y = 0
trigger1 = time >= 15
y = var(11)

[State 0, PlaySnd]
type = PlaySnd
trigger1  = pos y = 0
trigger1 = time > 15
volume = 600
value = F20,0

[State 0]
type = veladd
trigger1 = time >= 15
y = 0.5
x = var(12)*(var(11)+7)*0.05

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
