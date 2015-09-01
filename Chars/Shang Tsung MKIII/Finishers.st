;==========================
;Knock his block off, Goro
;==========================
[Statedef 3000]
type    = S
movetype= A
physics = S
juggle  = 1
anim = 0
Velset = 0, 0
ctrl = 0

[State 3000, 1]
type = changeanim
trigger1 = Time = 60
value = 180

[State 3000, 2]
type = explod
trigger1 = time = 110
anim = F11
postype = p1
pos = 0,0
sprpriority = 4

[State 3000, 3]
type = changeanim
trigger1 = Time = 120
value = 660

[State 3000, 4]
type = playsnd
trigger1 = time = 120
value = 6, 4

[State 3000, 5]
type = playsnd
trigger1 = time = 150
value = 6,3

[State 3000, 6]
type = Varset
trigger1 = movehit
V = 4
value = 1

[State 3000, 7]
type = Hitdef
trigger1 = AnimElem = 12
trigger1 = Anim = 660
velocity = 8, 0 
remvelocity = 0, 0
; HitDef part of projectile info
attr = S, NT
animtype = Hard
air.animtype = Back
air.fall = 1
fall.recover = 0
guardflag = HL
pausetime = 0,0
sparkno = 16
sparkxy = -20,-125
p2stateno = 6003
guard.sparkno = -1
hitsound   = 5,0
ground.type = High
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 3000, 8]
type = explod
trigger1 = anim = 660
trigger1 = animtime = 0
anim = F11
postype = p1
pos = 0,0
sprpriority = 3

[State 3000, 9]
type = playsnd
trigger1 = anim = 660
trigger1 = animtime = 0
value = 4,4	

[State 3000, 10]
type = changestate
trigger1 = Anim = 660
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;==========================
;Light 'em up, Kintaro.
;==========================
[Statedef 3100]
type    = S
movetype= A
physics = S
ctrl = 0
velset = 0,0,0
anim = 0

[State 3100, 1]
type = changeanim
trigger1 = Time = 60
value = 180

[State 3100, 2]
type = explod
trigger1 = time = 104
anim = F11
postype = p1
pos = 0,0
sprpriority = 4

[State 3100, 3]
type = changeanim
trigger1 = Time = 120
value = 6002

[State 3100, 4]
type = playsnd
trigger1 = time = 110
value = 5,13		

[State 3000, 5]
type = playsnd
trigger1 = time = 140
value = 6,3

[State 3100, 5]
type = Varset
trigger1 = time = 1
V = 4
value = 1

[State 3100, 6]
type = Helper
trigger1 = time = 202
trigger1 = p2name != "shao kahn,"
postype = p1
pos = 48,-86
stateno = 3001

[State 3100, 6]
type = Helper
trigger1 = time = 202
trigger1 = p2name = "shao kahn,"
postype = p1
pos = 48,-86
stateno = 30010

[State 3100, 8]
type = explod
trigger1 = anim = 6002
trigger1 = animtime = 0
anim = F11
postype = p1
pos = 0,0
sprpriority = 3

[State 3100, 9]
type = playsnd
trigger1 = anim = 6002
trigger1 = animtime = 0
value = 4,4	

[State 3100, 10]
type = changestate
trigger1 = Anim = 6002
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 3001]     ;The fire
type    = S
movetype= A
physics = S
anim = 6003

[State 3001, 1]
type = playsnd
trigger1 = time = 20
value = 4, 14
volume = 60

[State 3001, 2]
type = sprpriority
trigger1 = time=0
value = 5

[State 3001, 3]
type = HitDef
trigger1 = !movecontact
attr = S, NA
sparkno = -1
numhits = - 1
p2stateno = 3002

[State 3001, 4]
type = destroyself
trigger1 = animtime = 0

[Statedef 3002]     ;The other guy
type    = S
movetype= H
physics = S
anim = 4702

[State ,misil]
type = explod
trigger1 = time = 40
anim = F50
postype = p1
pos = 0,0
sprpriority = 4

[State 1601, Hit]
type = sprpriority
trigger1 = time=0
value = 1

[State 1200, chau]
type = varset
trigger1 = time = 53
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
trigger1 = time = 40
value = 4,1

[State 45, 34fff]
type = Selfstate
trigger1 = time = 121
value = 5150

[Statedef 30010]
type    = S
movetype= A
physics = S
anim = 6003

[State 3001, 1]
type = playsnd
trigger1 = time = 20
value = 4, 14
volume = 60

[State 3001, 2]
type = sprpriority
trigger1 = time=0
value = 5

[State 3001, 3]
type = HitDef
trigger1 = !movecontact
attr = S, NA
sparkno = -1
numhits = - 1
p2stateno = 30020

[State 3001, 4]
type = destroyself
trigger1 = animtime = 0

[Statedef 30020]     ;The other guy is Shao Kahn
type    = S
movetype= H
physics = S
anim = 4702

[State ,misil]
type = explod
trigger1 = time = 40
anim = F50
postype = p1
pos = 0,0
scale = 1.1,1.1
sprpriority = 4

[State 1601, Hit]
type = sprpriority
trigger1 = time=0
value = 1

[State 1200, chau]
type = varset
trigger1 = time = 53
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
trigger1 = time = 40
value = 4,1

[State 45, 34fff]
type = Selfstate
trigger1 = time = 121
value = 5150

;================================
; Friendship... Pump it, old man!
;================================
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
trigger1 = time = 0
value = 4,21
volume = 600

[State 210, 1]
type = Playsnd
trigger1 = time = 55
value = 7,1
volume = 600

[State 9130, SetFatal]
type = ParentVarSet
trigger1 = movehit
V = 4
value = 3

[State 210, 1]
type = Playsnd
trigger1 = time = 231
value = F5,50
volume = 600

[State 3102, golpearalpl2]
type = HitDef
trigger1 = time = 0
attr = S, NA
sparkno = -1
guard.sparkno = -1
p2stateno = 6002;3702

;==============================
; Animality, A Murder of Crows
;==============================

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
value = 7,2

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
ignorehitpause = 0

[State 1200, BoltFat]
type = Hitdef
trigger1 = time = 0
attr = S, NA
hitflag = M
animtype = Hard
damage = 9999,0
sparkno = -1
sparkxy = -60,-185
guard.sparkno = -1
ground.velocity = 10,0
ground.type = High
ground.cornerpush.veloff = 0    
p2facing = 1
p2stateno = 3803

[State 9130, SetFatal]
type = velset
trigger1 = movecontact
x = 4

[State 200, 7]
type = changestate
trigger1 = time = 260
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

;==========================
; Hara Kiri - All lit up
;==========================
[Statedef 3503]
type    = S
movetype= A
physics = S
anim = 0
ctrl = 0

[State 210, 1]
type = SprPriority
trigger1 = time = 0
value = 2

[State 3105, end]
type = changeanim
trigger1 = time = 60
value = 3500

[State 430, 31sdaa]
type = changestate
trigger1 = anim = 3500
trigger1 = animelem = 1
value = 3002

[State 1200, sound]
type = playsnd
trigger1 = time = 54
value = 7,3

[Statedef 3002]     ;For the Hari
type    = S
movetype= H
physics = S
anim = 4702

[State 3002,misil]
type = explod
trigger1 = time = 10
anim = F50
postype = p1
pos = 0,0
sprpriority = 4

[State 1601, Hit]
type = sprpriority
trigger1 = time=0
value = 1

[State 1200, chau]
type = varset
trigger1 = time = 16
V = 26
value = 1

[State 45, fff]
type = LifeSet
trigger1 = time = 34
value = 0

;======================
; Babality 
;======================
[Statedef 3300]
type    = S
movetype= A
physics = S
anim = 0
Velset = 0, 0
ctrl = 0

[State 3300, 1]
type = Varset
trigger1 = movehit
V = 4
value = 2

[State 3300, 2]
type = changeanim
trigger1 = Time = 60
value = 1452

[State 3300, 3]
type = Hitdef
trigger1 = AnimElem = 7
trigger1 = Anim = 1452
velocity = 0, 0 
remvelocity = 0, 0
attr = S, NT
animtype = Hard
air.animtype = Back
air.fall = 1
fall.recover = 0
guardflag = HL
pausetime = 0,0
sparkno = 11
sparkxy = 0,0
p2stateno = 6009
guard.sparkno = -1
hitsound   = F5,35
ground.type = High
kill       = (Var(9) = 1)
fall.kill  = (Var(9) = 1)
guard.kill = (Var(9) = 1)

[State 3300, 4]
type = changestate
trigger1 = Anim = 1452
trigger1 = AnimTime = 0
value = 0
ctrl = 1

