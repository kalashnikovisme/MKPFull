[Statedef 3000]
type    = S
movetype= A
physics = S
juggle  = 2
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
trigger1 = time = 20
value = 3000

[State 9251,fuego]
type = Helper
trigger1 = time = 45
trigger1 = p2name != "shao kahn,"
postype = p1
pos = 64,-75
stateno = 3001

[State 9251,fuego]
type = Helper
trigger1 = time = 45
trigger1 = p2name = "shao kahn,"
postype = p1
pos = 64,-75
stateno = 3003

[State 1200, play]
type = playsnd
trigger1 = time = 46
value = 20,0
channel = 4

[State 200, 7]
type = screenbound
trigger1 = time > 70
value = 0

[State 200, 7]
type = changestate
trigger1 = time > 140;30
value = 3010
ctrl = 1
;-------------------------------
[Statedef 3010]  
type    = S
movetype= I
physics = S
;anim = 3001
ctrl = 1

[State 200, 7]
type = screenbound
trigger1 = 1
value = 0
;---------------------------
[Statedef 3001]     ;fuego
type    = S
movetype= A
physics = S
anim = 3001

[State 1601, Hit]
type = HitDef
trigger1 = !movecontact
attr = S, NA
sparkno = -1
numhits = - 1
p2stateno = 3002

[State 1601, Hit]
type = sprpriority
trigger1 = time=0
value = 2

[State 10000, rakieta]
type = destroyself
trigger1 = animtime = 0
;-------------------------
[Statedef 3002]     ;p2
type    = S
movetype= H
physics = S

[State 9251,misil]
type = explod
trigger1 = time = 0
anim = F50
postype = p1
pos = 0,0
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

[State 5, Vel XY]
type = veladd
trigger1 = Time > 10
trigger1 = time < 72
X = -1.5

[State 200, 7]
type = screenbound
trigger1 = time > 70
value = 0

[State 45, fff]
type = LifeSet
trigger1 = time = 50
value = 0

[State 1200, sound]
type = playsnd
trigger1 = time = 5
value = 4,1

[State 1200, chau]
type = posset
trigger1 = time = 99
X = 50

[State 45, 34fff]
type = Selfstate
trigger1 = time = 100
value = 5150
;---------------------------
[Statedef 3003]     ;fuego para shao khan
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

[State 10000, rakieta]
type = destroyself
trigger1 = animtime = 0
;-------------------------
[Statedef 3004]     ;p2 para shao khan
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
