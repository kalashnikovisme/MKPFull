;=====================
;Fatality : On a Pike
;=====================
[Statedef 3000]
type    = S
movetype= A
physics = S
anim = 0
ctrl = 0

[State 3000, 1]
type = ScreenBound
trigger1 = time = [0, 1000]
value = 0
movecamera = 0,0

[State 3000, 2]
type = changeanim
trigger1 = Time = 60
value = 430

[State 3000, 3]
type = Helper
trigger1 = movehit
ID = 28
stateno = 28
pos = 0, 0
postype = p1
persistent = 0
ignorehitpause = 1

[State 3000, 4]
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

[State 3000, 5]
type = changestate
trigger1 = Anim = 430
trigger1 = AnimTime = 0
value = 3001

[Statedef 3001]
type    = S
movetype= A
physics = S
anim = 3000

[State 3001, 1]
type = playsnd
trigger1 = time = 1
value = 3,3
volume = 60

[State 3001, 2]
type = sprpriority
trigger1 = time=0
value = 2

[State 3001, 3]
type = ScreenBound
trigger1 = time = [0, 1000]
value = 1
movecamera = 0,0

[State 3001, 4]
type = Varset
trigger1 = movehit
V = 4
value = 1

[State 3001, 5]
type = playsnd
trigger1 = movehit
value = F5,17
volume = 60

[State 3001, 6]
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

[State 3001, 7]
type = Helper
trigger1 = movehit
stateno = 3011
name = "hornwin"
postype = p1
pos = 0,0

[State 3001, 8]
type = changestate
trigger1 = movehit
value = 0
ctrl = 1

[Statedef 3011]
type    = S
movetype= A
physics = S
anim = 3001

[State 3011, 1]
type = sprpriority
trigger1 = time=0
value = 2

[State 3011, 2]
type = playsnd
trigger1 = time = 2
value = F5,60
volume = 60

[Statedef 3003]
type    = S
movetype= H
physics = S

[State 3003, 1]
type = changeanim
trigger1 = Time = 0
value = 6001

[State 3003, 2]
type = sprpriority
trigger1 = time=0
value = 5

[State 3003, 3]
type = velset
trigger1 = Time = 0
Y = 0

[State 3003, 4]
type = varset
trigger1 = time = 1
v = 45
value = anim

[State 3003, 5]
type = selfstate
trigger1 = Time = 1
value = 6001

;===========================
;Fatality : Off wit'da head
;===========================
[Statedef 3100]
type    = S
movetype= A
physics = S
juggle  = 1
anim = 0
Velset = 0, 0
ctrl = 0

[State 3100, 1]
type = playsnd
trigger1 = time = 140
VALUE = 3,7

[State 3100, 2]
type = varset
trigger1 = time = 0
v = 46
value = 1

[State 3100, 3]
type = playsnd
trigger1 = anim = 251
trigger1 = animelem = 4
value = 3,3

[State 3100, 4]
type = changeanim
trigger1 = Time = 60
value = 251

[State 3100, 3]
type = playsnd
trigger1 = anim = 251
trigger1 = animelem = 15
value = 3,3

[State 3100, 3]
type = playsnd
trigger1 = anim = 251
trigger1 = animelem = 11
value = F5,16

[State 3100, 5]
type = Varset
trigger1 = movehit
V = 4
value = 1

[State 3100, 6]
type = Hitdef
trigger1 = animelem = 10
velocity = 8, 0 
remvelocity = 0, 0
; HitDef part of projectile info
attr = S, NT
animtype = Hard
air.animtype = Back
air.fall = 1
fall.recover = 0
damage = 99999
guardflag = HL
pausetime = 30,30
sparkno = 1
sparkxy = 3,-88
p2stateno = 1020
guard.sparkno = -1
hitsound   = 5,17
ground.type = High

[State 3100, 7]
type = changestate
trigger1 = Anim = 251
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 1020]
type    = S
movetype= H
physics = S
ctrl = 0
Velset = 0,0,0

[State 1020, bugfix]
type = varset
triggerall = var(17) = 1
trigger1 = name = "reptile"
trigger2 = name = "smoke"
trigger3 = name = "hsmoke"
v= 17
value = 0

[State 1020, 1]
type = Changeanim2
trigger1 = time = 0
value = 1012

[State 1020, 2]
type = playsnd
trigger1 = time = 16
VALUE = 4,1

[State 1020, 3]
type = PlayerPush
trigger1 = time >= 0
value = 0

[State 1020, 4]
type = Nothitby
trigger1 = 1
value = CSA

[State 1020, 5]
type = PosAdd
trigger1 = timemod = 10,0
trigger1 = time = [0, 50]
X = -1

[State 1020, 6]
type = Changestate
trigger1 = time = 60
value = 6003

;=========================
; Animality : The Hornets
;=========================
[Statedef 3800]
type    = S
movetype= A
physics = S
anim = 0
ctrl = 0

[State 3800, 1]
type = changeanim
trigger1 = time = 20
value = 3800

[State 3800, 2]
type = playsnd
trigger1 = time = 80
value = 3,3

[State 3800, 3]
type = Varset
trigger1 = movehit
V = 4
value = 4

[State 3800, 4]
type = Hitdef
trigger1 = !movecontact
velocity = 8, 0 
remvelocity = 0, 0
; HitDef part of projectile info
attr = S, NT
animtype = Hard
air.animtype = Back
air.fall = 1
fall.recover = 0
damage = 99999
guardflag = HL
pausetime = 30,30
sparkno = -1
sparkxy = 3,-88
p2stateno = 3805
guard.sparkno = -1
hitsound   = 4, 1
ground.type = High

[State 3800, 5]
type = Helper
trigger1 = anim = 3800
trigger1 = animelem = 14
stateno = 3804
name = "hornbuckle wins"
postype = p1
pos = 0,0

[State 3800, 6]
type = Helper
trigger1 = time = 238
stateno = 3803
name = "meat"
postype = p2
p1facing = 0
pos = 0,0

[State 3800, 7]
type = Explod
trigger1 = time = 130
anim = 3801
name = "the hornets"
postype = p1
pos = 0,0
sprpriority = 5

[State 3100, 8]
type = playsnd
trigger1 = time = 106
value = 3,5
volume = 120

[State 3800, 9]
type = Explod
trigger1 = time = 158
anim = F0
postype = p2
pos = 3,-88

[State 3800, 10]
type = Explod
trigger1 = time = 159
anim = F3
postype = p2
pos = 3,-91

[State 3800, 11]
type = Explod
trigger1 = time = 165
anim = F0
postype = p2
pos = 3,-74

[State 3800, 12]
type = Explod
trigger1 = time = 169
anim = F3
postype = p2
pos = 3,-80

[State 3800, 13]
type = Explod
trigger1 = time = 171
anim = F0
postype = p2
pos = 3,-84

[State 3800, 14]
type = Explod
trigger1 = time = 176
anim = F3
postype = p2
pos = 3,-69

[State 3800, 15]
type = Explod
trigger1 = time = 179
anim = F0
postype = p2
pos = 3,-85

[State 3800, 16]
type = Explod
trigger1 = time = 184
anim = F3
postype = p2
pos = 3,-87

[State 3800, 17]
type = Explod
trigger1 = time = 186
anim = F0
postype = p2
pos = 3,-74

[State 3800, 18]
type = Explod
trigger1 = time = 189
anim = F3
postype = p2
pos = 3,-72

[State 3800, 19]
type = Explod
trigger1 = time = 170
anim = 3803
name = "the hornet"
postype = p1
pos = 0,0

[State 3800, 20]
type = varset
trigger1 = anim = 3800
trigger1 = animelem = 14
v = 26
value = 1

[State 3800, 21]
type = changestate
trigger1 = Time = 260
value = 0
ctrl = 1

;meat
[Statedef 3803]
type    = S
movetype= A
physics = S

[State 3803, 1]
type = Changeanim
trigger1 = time = 0
triggerall = p2name != "shao kahn,"
triggerall = p2name != "kintaro"
triggerall = p2name != "goro"
triggerall = p2name != "sheeva"
triggerall = p2name != "motaro"
value = 3805

[State 3803, 1]
type = Changeanim
trigger1 = time = 0
triggerall = p2name = "shao kahn,"
value = 3806

[State 3803, 1]
type = Changeanim
trigger1 = time = 0
triggerall = p2name = "sheeva"
value = 3807

;hornbuckle wins
[Statedef 3804]
type    = S
movetype= A
physics = S

[State 3804, 1]
type = Changeanim
trigger1 = time = 0
value = 3804

;P2 Stung
[Statedef 3805]
type    = S
movetype= H
physics = S

[State 3805, 1]
type = changeanim
trigger1 = Time = 100
value = 21238

[State 3805, 2]
type = playsnd
trigger1 = anim = 21238
trigger1 = animelem = 1
value = 4,1

[State 3805, 3]
type = changeanim
trigger1 = Time = 180
value = 888

[State 3805, 4]
type = changestate
trigger1 = Time = 260
value = 6007

;==========
; Babality 
;==========
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
value = 1003

[State 3300, 3]
type = Hitdef
trigger1 = AnimElem = 3
trigger1 = Anim = 1003
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
type = playsnd
trigger1 = time = 100
value = F5,47

[State 3300, 5]
type = changestate
trigger1 = Anim = 1003
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;======================
; Friendship: The Horn
;======================
[Statedef 3700]
type    = S
movetype= A
physics = S
anim = 0
ctrl = 0

[State 3700, 1]
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

[State 3700, 2]
type = varset
trigger1 = time = 60
v = 26
value = 1

[State 3700, 3]
type = changestate
trigger1 = Time = 100
value = 0
ctrl = 1

[Statedef 3701]
type    = S
movetype= A
physics = S
ctrl = 0
anim = 3700

[State 3701, 1]
type = StopSnd
trigger1 = time = 0
channel = -1

[State 3701, 2]
type = Playsnd
trigger1 = time = 0
value = 4,18
volume = 600

[State 3701, 3]
type = Playsnd
trigger1 = anim = 3700
trigger1 = animelem = 9
value = 3,6
volume = 800

[State 3701, 4]
type = ParentVarSet
trigger1 = movehit
V = 4
value = 3

[State 3701, 5]
type = Playsnd
trigger1 = anim = 3700
trigger1 = animelem = 17
value = F5,34
volume = 600

[State 3701, 6]
type = Playsnd
trigger1 = time = 160
value = F5,50
volume = 600

[State 3701, 7]
type = HitDef
trigger1 = time = 0
attr = S, NA
sparkno = -1
guard.sparkno = -1
p2stateno = 6002

;======================
; Hara Kiri: Splitting
;======================
[Statedef 3503]
type    = S
movetype= A
physics = S
anim = 0
ctrl = 0

[State 3503, 1]
type = SprPriority
trigger1 = time = 0
value = 2

[State 3503, 2]
type = changeanim
trigger1 = time = 10
value = 3505

[State 3503, 3]
type = Explod
trigger1 = time = 70
anim = 2050
name = "zap"
postype = p1
pos = 0,0
sprpriority = 3

[State 3503, 4]
type = Explod
trigger1 = time = 94
anim = F15
postype = p1
pos = 0,-40
sprpriority = 3

[State 3503, 5]
type = Explod
trigger1 = time = 94
anim = F16
postype = p1
pos = 0,-90
sprpriority = 3

[State 3503, 6]
type = Playsnd
trigger1 = time = 94
value = 3,2
volume = 600

[State 3503, 7]
type = changestate
trigger1 = time = 94
value = 3002

[State 3503, 8]
type = playsnd
trigger1 = anim = 3505
trigger1 = animtime = 60
value = 4,19

[Statedef 3002]    
type    = S
movetype= H
physics = S
anim = 3503
ctrl = 0

[State 3002, 1]
type = Playsnd
trigger1 = time = 45
value = F5,14
volume = 600

[State 3002, 2]
type = Playsnd
trigger1 = time = 50
value = F5,16
volume = 600

[State 3002, 3]
type = Playsnd
trigger1 = time = 79
value = F7,0
volume = 600

[State 3002, 4]
type = varset
trigger1 = anim = 3503
trigger1 = animelem = 10
v = 26
value = 1

[State 3002, 5]
type = Helper
trigger1 = anim = 3503
trigger1 = animelem = 10
stateno = 30020
name = "hornbuckle splits"
postype = p1
pos = 0,0

[State 3002, 6]
type = lifeadd
trigger1 = anim = 3503
trigger1 = animelem = 10
value = -9999

[State 3002, 7]
type = changestate
trigger1 = anim = 3503
trigger1 = animelem = 10
value = 5150

;hornbuckle splits
[Statedef 30020]
type    = S
movetype= A
physics = S

[State 30020, 1]
type = Changeanim
trigger1 = time = 0
value = 3504

