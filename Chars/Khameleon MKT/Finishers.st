*****    Jade     *****

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

[State 0]
type = changestate
triggerall = Var(10) != 1
trigger1 = time = 5
value = 3680 + Var(10)*20

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

*****    Mileena     *****

[Statedef 3100]
type    = S
movetype= A
physics = S
juggle  = 1
anim = 10000
Velset = 0, 0
ctrl = 0

[State 9130, SetFatal]
type = Varset
trigger1 = movehit
V = 4
value = 1

[State 430, 31sdaa]
type = changeanim
trigger1 = Time = 60
value = 10222

[State 1200, BoltFat]
type = HitDef
trigger1 = !movecontact
attr = S, NT
damage    = 0, 0
animtype = Light
air.animtype = Back
p2stateno = 6003
air.fall = 1
numhits = -1
fall.recover = 0
guardflag = HL
pausetime = 40,10
sparkno = 16
sparkxy = 0,-145
guard.sparkno = -1
hitsound   = 5,0
guardsound = 5,0

[State 200, 7]
type = changestate
trigger1 = AnimTime = 0
trigger1 = anim = 10222;0
value = 0
ctrl = 1

; --- Friendship... friendship, again? ---
[Statedef 3720]
type    = S
movetype= A
physics = S
anim = 0
ctrl = 0

[State 3100, helper]
type = Helper
trigger1 = time = 55
stateno = 3721
name = "friendship"
postype = p1
pos = 0,0
sprpriority = 1
keyctrl = 0
ownpal = 0
under = 1

[State 3100, Pset]
type = varset
trigger1 = time = 56
v = 26
value = 1

[State 200, 7]
type = changestate
trigger1 = Time = 250
value = 0
ctrl = 1

[Statedef 3721]
type    = S
movetype= A
physics = S
ctrl = 0
anim = 13700

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

[State 0, PlaySnd]
type = Playsnd
trigger1 = animelem = 8
value = F5,31
volume = 600

[State 0, EnvShake]
type = EnvShake
trigger1 = animelem = 8
freq = 70
time = 15
ampl = 7

*****    Kitana     *****

[Statedef 3200]
type    = S
movetype= A
physics = S
juggle  = 1
anim = 20000
Velset = 0, 0
ctrl = 0

[State 9130, SetFatal]
type = Varset
trigger1 = movehit
V = 4
value = 1

[State 430, 31sdaa]
type = changeanim
trigger1 = Time = 60
value = 20222

[State 1200, BoltFat]
type = HitDef
trigger1 = !movecontact
attr = S, NT
damage    = 0, 0
animtype = Light
air.animtype = Back
p2stateno = 6003
air.fall = 1
numhits = -1
fall.recover = 0
guardflag = HL
pausetime = 40,10
sparkno = 16
sparkxy = 0,-145
guard.sparkno = -1
hitsound   = 5,0
guardsound = 5,0

[State 200, 7]
type = changestate
trigger1 = AnimTime = 0
trigger1 = anim = 20222;0
value = 0
ctrl = 1

; --- Animality ---

[Statedef 3800]
type    = S
movetype= A
physics = S
anim = 0
Velset = 0, 0
ctrl = 0

[State 210, 1]
type = StopSnd
trigger1 = time = 59
channel = -1

[State 210, 1]
type = Playsnd
trigger1 = time = 60
value = F5,52
volume = 600
loop = 1

[State 200, 7]
type = changestate
trigger1 = time = 60
value = 3801

[Statedef 3801]
type    = S
movetype= A
physics = S
Velset = 0, 0
anim = 23800
ctrl = 0

[State 2000, 0.6]
type = ScreenBound
trigger1 = time = [0, 1000]
value = 0
movecamera = 0,0

[State 9130, SetFatal]
type = velset
trigger1 = time > 107
x = 5
y = -6

[State 3010, Fire]
type = explod
trigger1 = Time = 0
anim = F11
pos = 0,0
shadow = -1,250,250
postype = p1
ontop = 1

[State 1200, BoltFat]
type = Hitdef
trigger1 = animelem = 15
attr = S, NA
hitflag = M
sparkno = -1
sparkxy = -20,-125
ground.cornerpush.veloff = 0    
p1stateno = 3802
p2stateno = 3803
p2facing = 1

[Statedef 3802]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 23801
ctrl = 0

[State 9130, SetFatal]
type = Varset
trigger1 = time = 0
V = 4
value = 4

[State 2000, 0.6]
type = ScreenBound
trigger1 = time = [0, 1000]
value = 0
movecamera = 0,0

[State 3100, Pset]
type = varset
trigger1 = time = 199
v = 26
value = 1

[State 9130, veladd]
type = veladd
trigger1 = time >= 0
x = 3

[State 9130, Setvel]
type = velset
trigger1 = time = 200
x = 0

[State 3105, cambiapos]
type = Posset
trigger1 = time = 200
X = 0

[State 200, 7]
type = changestate
trigger1 = Time = 200
value = 0
ctrl = 1

[Statedef 3803]
type    = S
movetype= H
physics = N
anim = 21238
ctrl = 0

[State 210, 1]
type = velset
trigger1 = time = 1
x = -3

[State 1601, ple]
type = Explod
triggerall = SelfAnimExist(21238)
trigger1 = time = 2
trigger2 = time = 110
trigger3 = time = 15
trigger4 = time = 120
trigger5 = time = 25
trigger6 = time = 130
trigger7 = time = 35
trigger8 = time = 140
trigger9 = time = 45
trigger10 = time = 150
trigger11 = time = 55
trigger12 = time = 160
trigger13 = time = 65
trigger14 = time = 170
trigger15 = time = 75
anim = F1
pos = 0, -70
postype = p1
facing = 1
sprpriority = 5
ownpal = 0

[State 1601, plesd]
type = Explod
triggerall = SelfAnimExist(21238)
trigger1 = time = 105
trigger2 = time = 7
trigger3 = time = 115
trigger4 = time = 20
trigger5 = time = 125
trigger6 = time = 30
trigger7 = time = 135
trigger8 = time = 40
trigger9 = time = 145
trigger10 = time = 50
trigger11 = time = 155
trigger12 = time = 60
trigger13 = time = 165
trigger14 = time = 70
trigger15 = time = 175
anim = F2
pos = 0, -50
postype = p1
facing = 1
sprpriority = 5
ownpal = 0

[State 1601, pd]
type = Explod
triggerall = SelfAnimExist(21238)
trigger1 = time = 0
anim = F2
pos = 0, -60
postype = p1
facing = 1
sprpriority = 3
ownpal = 0
ontop = 1

[State 210, 1]
type = Playsnd
trigger1 = time = 0
value = 2,1

[State 2000, 0.6]
type = ScreenBound
trigger1 = time = [0, 1000]
value = 0
movecamera = 0,0

[State 3100, Pset]
type = varset
trigger1 = time = 199
v = 26
value = 1

[State 3105, cambiapos]
type = Posset
trigger1 = time = 200
Y = 900
X = 0

[State 3105, end]
type = lifeadd
trigger1 = time = 200
value = -9999

[State 3105, end]
type = Selfstate
trigger1 = time = 200
value = 5150

; --- Friendship... friendship, again? ---
[Statedef 3740]
type    = S
movetype= A
physics = S
anim = 0
ctrl = 0

[State 3100, helper]
type = Helper
trigger1 = time = 55
stateno = 3741
name = "friendship"
postype = p1
pos = 0,0
sprpriority = 1
keyctrl = 0
ownpal = 0
under = 1

[State 3100, Pset]
type = varset
trigger1 = time = 56
v = 26
value = 1

[State 200, 7]
type = changestate
trigger1 = Time = 250
value = 0
ctrl = 1

[Statedef 3741]
type    = S
movetype= A
physics = S
ctrl = 0
anim = 23700

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

[State 3100, helper]
type = Helper
trigger1 = time = 45
stateno = 3742
postype = p1
pos = 0,0
sprpriority = 1
keyctrl = 0
ownpal = 0
under = 1

[Statedef 3742]
ctrl = 0
anim = 23701

[State 0, bubbles]
type = Helper
trigger1 = animelem = 4
stateno = 3743
name = "bubble"
postype = p1
pos = 0,0
sprpriority = 1
keyctrl = 0
ownpal = 0
under = 1

[State 0]
type = destroyself
trigger1 = time = 100

[Statedef 3743]
ctrl = 0
anim = 23702
velset = 4

[State 0]
type = VarRandom
trigger1 = time = 0
v = 11
range = -30, 0

[State 0]
type = velset
trigger1 = time = 0
y = var(11) *0.1

[State 0]
type = changeanim
trigger1 = time = 40
value = 23703

[State 0]
type = velset
trigger1 = time = 40
x = 0
y = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = anim = 23703
trigger1 = animtime = 0
value = F5,14

[State 0]
type = destroyself
trigger1 = anim = 23703
trigger1 = animtime = 0
