; --- Animality ---
[Statedef 3800]
type    = S
movetype= A
physics = S
juggle  = 1
anim = 0
Velset = 0, 0
ctrl = 0

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

[State 200, 7]
type = changestate
trigger1 = Anim = 3800
trigger1 = AnimTime = 0
value = 3801
;------------------------
[Statedef 3801]
type    = S
movetype= A
physics = S
anim = 3801

[State 9130, SetFatal]
type = velset
trigger1 = 1
x = 4;.5

[State 9130, SetFatal]
type = Varset
trigger1 = movehit
V = 4
value = 4

[State 2, Upperblood]
type = Helper
trigger1 = movehit
ID = 28
stateno = 28
pos = 130, 0
postype = p1
persistent = 0
ignorehitpause = 1

[State 1200, BoltFat]
type = Hitdef
trigger1 = time = 0
attr = S, NA
hitflag = M
animtype = Hard
damage = 9999,0
;pausetime = 40,0
sparkno = -1
sparkxy = -20,-125
guard.sparkno = -1
ground.velocity = -10,0
;hitsound   = 5,0
;guardsound = 5,0
ground.type = High
ground.cornerpush.veloff = 0    
p2facing = 1
p2stateno = 3803

[State 9130, SetFatal]
type = velset
trigger1 = movecontact
x = 0

[State 200, 7]
type = changestate
trigger1 = Anim = 3801
trigger1 = AnimTime = 0
value = 3802

[Statedef 3802]
type    = S
movetype= A
physics = S
anim = 3802

[State 200, 7]
type = changestate
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 3803]
type    = S
movetype= H
physics = N
anim = 5030
ctrl = 0

[State 210, 1]
type = velset
trigger1 = time = 1
x = -9

[State 210, 1]
type = Playsnd
trigger1 = time = 0
value = 4,1

[State 2000, 0.6]
type = ScreenBound
trigger1 = time = [0, 1000]
value = 0
movecamera = 0,0

[State 3105, cambiapos]
type = Posset
trigger1 = time = 30
Y = 900
X = 0

[State 3105, end]
type = Selfstate
trigger1 = time = 30
value = 5150
; --- Fatality 1 ---
[Statedef 3000]
type    = S
movetype= A
physics = S
;juggle  = 1
anim = 0
Velset = 0, 0
ctrl = 0

[State 9130, SetFatal]
type = Varset
trigger1 = time = 0
V = 4
value = 1

[State 430, 31sdaa]
type = changeanim
trigger1 = Time = 60
value = 3000

[State 210, 1]
type = Playsnd
triggerall = anim = 3000
trigger1 = animelem = 1
trigger2 = animelem = 10
value = 7,0+(animelem = 10)

[State 1200, BoltFat]
type = Hitdef
trigger1 = !movecontact
attr = S, NA
hitflag = M
animtype = Hard
sparkno = -1
sparkxy = -20,-125
guard.sparkno = -1
;hitsound   = 5,0
;guardsound = 5,0
ground.type = High
ground.cornerpush.veloff = 0    
p2facing = 1
p2stateno = 3002
numhits = -100

[State 9251,cyrax]
type = Helper
trigger1 = time = 109
postype = p1
pos = 126,-152
stateno = 3001

[State 200, 7]
type = changestate
trigger1 = time = 250
value = 0
ctrl = 1
;-------------------
[Statedef 3001]
type    = S
movetype= A
physics = N
anim = 3001
velset = 0,1.5

[State 1200, BoltFat]
type = Hitdef
trigger1 = !movecontact;time = 0
attr = S, NA
hitflag = M
animtype = Hard
sparkno = -1
sparkxy = -20,-125
guard.sparkno = -1
;ground.velocity = -10,0
;hitsound   = 5,0
;guardsound = 5,0
ground.type = High
ground.cornerpush.veloff = 0    
p2facing = 1
p2stateno = 3003
numhits = -100

[State 200, 7]
type = destroyself
trigger1 = movecontact
;-----------
[Statedef 3002]
type    = S
movetype= H
physics = N
ctrl = 0

[State 430, 31sdaa]
type = changeanim2
trigger1 = Time = 5;6
value = 3002
;-----------
[Statedef 3003]
type    = S
movetype= H
physics = N
;anim = 5030
ctrl = 0

[State 210, 1]
type = posadd
trigger1 = (time=11 || time=15 || time =19)
Y = 2

[State 210, 1]
type = posadd
trigger1 = (time=13 || time=18 || time =21)
Y = -2

[State 9251,cyrax]
type = explod
trigger1 = time = 50
postype = p1
pos = 0,-70
anim = F17
removetime = 14*3

[State 3105, cambiapos]
type = varset
trigger1 = time = 50
V = 26
value = 1

[State 210, 1]
type = Playsnd
trigger1 = time = 12
value = 4,1

[State 210, 1]
type = Playsnd
trigger1 = time = 50
value = F5,27

[State 235, sssa]
type = envshake
trigger1 = time = 50
time = 20;15
freq = 150
ampl = 10;7

;[State 3105, cambiapos]
;type = Posset
;trigger1 = time = 30
;Y = 900
;X = 0

[State 9399, 3]
type = Lifeadd
trigger1 = Time = 50
Value = -9999

[State 3105, end]
type = Selfstate
trigger1 = time = 55
value = 5150

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

[State 210, 1]
type = StopSnd
trigger1 = time = 0
channel = -1

[State 210, 1]
type = Playsnd
trigger1 = time = 1
value = F5,50
volume = 600

[State 210, 1]
type = Playsnd
trigger1 = time = 34
value = 7,2
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
p2stateno = 6002;3702
