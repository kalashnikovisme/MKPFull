; --- Fatality ---
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
trigger1 = Time = 60
value = 10113
[State 1200, BoltFat]
type = HitDef
trigger1 = !movecontact
attr = S, NT
damage    = 0, 0
animtype = Light
air.animtype = Back
p2stateno = 6003;661
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
trigger1 = anim = 10113;0
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
anim = 3800
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
anim = 3801
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
value = 4,1

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