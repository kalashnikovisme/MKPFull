
[Statedef 3000]
type    = S
movetype= A
physics = S
ctrl = 0
velset = 0,0,0
anim = 0

[State 9130, SetFatal]
type = Varset
trigger1 = time = 1
V = 4
value = 1

[State 1200, chg]
type = changeanim
trigger1 = time = 7
value = 6000

[State 9251,fuego]
type = Helper
trigger1 = time = 60;50
postype = p1
pos = 43,-100;56,-60
stateno = 3001

[State 1200, play]
type = playsnd
trigger1 = time = 45
value = 5,14;
channel = 4

[State 200, 7]
type = varset
trigger1 = 10
fV = 1
Value = 1 

;[State 1200, play]
;type = playsnd
;trigger1 = time = 250
;value = F5,39

[State 200, 7]
type = changestate
trigger1 = time = 260
value = 0;3010
ctrl = 1
;---------------------------
[Statedef 3001]     
type    = S
movetype= A
physics = S
anim = 6003;2

;[State 1200, sound]
;type = playsnd
;trigger1 = time = 0;77
;value = F5,60
;volume = 60

[State 1601, Hit]
type = sprpriority
trigger1 = time=0
value = 5

[State 1601, Hit]
type = HitDef
trigger1 = !movecontact
attr = S, NA
sparkno = -1
numhits = - 1
p2stateno = 3002

[State 10000, ]
type = destroyself
trigger1 = animtime = 0
;-------------------------
[Statedef 3002]     ;p2
type    = S
movetype= H
physics = S
anim = 131321

[State 9251,misil]
type = explod
trigger1 = time = 77;80
anim = F11
postype = p1
pos = -10,10
sprpriority = 5

[State 1200, sound]
type = playsnd
trigger1 = time = 46
trigger2 = time = 77
value = F5,60
volume = 60

[State ,misil]
type = explod
trigger1 = time = 82;85
anim = F50
postype = p1
pos = 0,0
sprpriority = 4

[State 1601, Hit]
type = sprpriority
trigger1 = time=0
value = 1

[State 1200, ]
type = varset
trigger1 = time = 90
V = 26
value = 1

[State 5, Vel XY]
type = veladd
trigger1 = Time > 90
trigger1 = time < 120
X = -1.5

[State 45, fff]
type = LifeSet
trigger1 = time = 120
value = 0

[State 1200, sound]
type = playsnd
;trigger1 = time = 0
trigger1 = time = 80
value = 4,1

[State 45, 34fff]
type = Selfstate
trigger1 = time = 121
value = 5150
;---------------------------
[Statedef 3003]     
type    = S
movetype= A
physics = S
anim = 3001

[State 1601, Hit]
type = HitDef
trigger1 = !movecontact
attr = S, NA
sparkno = -1;50;-1
numhits = - 1
p2stateno = 3004

[State 1601, Hit]
type = sprpriority
trigger1 = time=0
value = 2

[State 10000, ]
type = destroyself
trigger1 = animtime = 0
;-------------------------
[Statedef 3004]     
type    = S
movetype= H
physics = S

[State 9251,misil]
type = explod
trigger1 = time = 0
anim = F50
postype = p1
pos = 0,0
scale = 1.1,1.1
sprpriority = 2

[State 1601, Hit]
type = sprpriority
trigger1 = time=0
value = 1

[State 1200, chau]
type = varset
trigger1 = time = 10
V = 26
value = 1

[State 200, 7]
type = screenbound
trigger1 = time > 80
value = 0

[State 5, Vel XY]
type = veladd
trigger1 = Time > 10
trigger1 = time < 82
X = -1.5

[State 45, fff]
type = LifeSet
trigger1 = time = 50
value = 0

[State 1200, sound]
type = playsnd
trigger1 = time = 5
value = 4,1

[State 45, 34fff]
type = Selfstate
trigger1 = time = 100
value = 5150

[State 1200, chau]
type = posset
trigger1 = time = 99
X = 50

; --- Animality ---
[Statedef 3800]
type    = S
movetype= A
physics = S
juggle  = 1
anim = 0
ctrl = 0

[State 430, 31sdaa]
type = helper
trigger1 = Time = 0
stateno = 3804

[State 2000, 0.6]
type = ScreenBound
trigger1 = time > 60
value = 0
movecamera = 0,0

[State 430, 31sdaa]
type = changeanim
trigger1 = Time = 60
value = 3800

[State 210, 1]
type = Playsnd
trigger1 = time = 60
value = F5,51

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

[State 200, ]
type = playsnd
trigger1 = time = 115
trigger2 = time = 128
value = 3800,0

[State 9130, ]
type = velset
trigger1 = time >= 92
x = 6
y = -3

[State 200, 7]
type = changestate
trigger1 = time = 150
value = 3801

[Statedef 3801]
type    = S
movetype= A
physics = S

[State 200, ruido]
type = playsnd
trigger1 = time = 31
trigger2 = time = 44
trigger3 = time = 57
trigger4 = time = 70
value = 3800,0

[State 2000, 0.6]
type = ScreenBound
trigger1 = time = [0, 1000]
value = 0
movecamera = 0,0

[State 9130, SetFatal]
type = posset
trigger1 = time = 0
trigger1 = Facing = 1
x = -500
y = -90

[State 9130, SetFatal]
type = posset
trigger1 = time = 0
trigger1 = Facing = -1
x = 500
y = -90

[State 9130, pasa]
type = velset
trigger1 = 1
x = 9
y = 0

[State 9130, SetFatal]
type = Varset
trigger1 = movehit
V = 4
value = 4

[State 1200, BoltFat]
type = Hitdef
trigger1 = !movecontact
attr = S, NA
hitflag = M
sparkno = -1
p2stateno = 3805

[State 200, 7]
type = changestate
trigger1 = time = 150
value = 3802

[Statedef 3802]
type    = S
movetype= I
physics = S

[State 2000, 0.6]
type = ScreenBound
trigger1 = time = [0, 1000]
value = 1
movecamera = 1,0

[State 9130, SetFatal]
type = posset
trigger1 = time = 0
trigger1 = Facing = 1
x = -80
y = -240

[State 9130, SetFatal]
type = posset
trigger1 = time = 0
trigger1 = Facing = -1
x = 80
y = -240

[State 9130, ]
type = velset
trigger1 = 1
x = 0
y = 2

[State 200, 7]
type = changestate
trigger1 = pos Y >= 0
value = 3803

[Statedef 3803]
type    = S
movetype= I
physics = N

[State 9130, ]
type = velset
trigger1 = time = 0
y = 0

[State 1200, ]
type = posset
trigger1 = time = 13
y = 0

[State 3105, end]
type = changeanim
trigger1 = time = 13
value = 3801

[State 3105, end]
type = changestate
trigger1 = animtime = 0
trigger1 = anim = 3801
value = 0
ctrl = 1

[Statedef 3804]
type    = S
movetype= A
physics = N
anim = 888

[State 9130, ]
type = velset
trigger1 = 1
x = 3

[State 2000, 0.6]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,0

[State 3105, end]
type = destroyself
trigger1 = time = 50


[Statedef 3805]
type    = S
movetype= H
physics = N

[State 200, ]
type = playsnd
trigger1 = Time = 0
value = 4,1

[State 3105, end]
type = selfstate
trigger1 = time = 0
value = 6003