[Statedef 3000]
type    = S
movetype= A
physics = S
anim = 0
Velset = 0, 0
ctrl = 0

[State 235]
type = varset
trigger1 = 1
v = 4
value = 1

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = time = 60
value = 180

[State 0, Explod]
type = Explod
trigger1 = time = 70
anim = 3000
ID = 123456
pos = 0,60
postype = p2  ;p2,front,back,left,right
removetime = -1
ontop = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 71
value = 5, 14
volume = 0
channel = -1
freqmul = 1.0
loop = 0
pan = 0

[State 3100, helper]
type = Helper
trigger1 = time = 90
stateno = 3003
name = "winner"
postype = p1
pos = 0,0
sprpriority = 1
keyctrl = 0
ownpal = 0
under = 1

[State 3100, Pset]
type = varset
trigger1 = time = 91
v = 26
value = 1

[State 0, Helper]
type = Helper
trigger1 = time = 150
helpertype = normal
name = "killer"
ID = 1254
stateno = 3001
pos = 0,0
postype = p2    ;p2,front,back,left,right
facing = -1

[State 200, 7]
type = changestate
trigger1 = Time = 310
value = 0
ctrl = 1

[Statedef 3001]
type    = S
movetype= A
physics = S
anim = 3001
Velset = 0, 0
ctrl = 0

[State 1200, BoltFat]
type = HitDef
trigger1 = anim = 3001
trigger1 = animelem = 1
p2stateno = 6099
attr = S, NA
animtype  = Light
damage = 0
numhits = 0
guardflag = MA
hitflag = MAF
sparkno = -1
p2facing = 1
ground.type = high
guardsound = 5, 14
guard.velocity = 0;
guard.slidetime = 0;20
guard.ctrltime = 20
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 0, DestroySelf]
type = DestroySelf
trigger1 = time = 10

[Statedef 3003]
type    = S
movetype= I
physics = S
ctrl = 0
velset = 0,0,0

[State 200, 7]
type = changeanim
trigger1 = Time = 0
value = 800

;===================================================
[Statedef 3100]
type    = S
movetype= A
physics = S
juggle  = 1
anim = 0
Velset = 0, 0
ctrl = 0

[State 235]
type = explod
trigger1 = time = 60
trigger1 = var(17) = 0
anim = 2866
id = 2866
postype = p1
ownpal = 1

[State 235, sssf]
type = envshake
trigger1 = time = 80
time = 30
freq = 25
ampl = 3

[State 430]
type = playsnd
trigger1 = time = 61
value = 5,14
volume = 6000

[State 430, 31sdaa]
type = changeanim
trigger1 = Time = 60
value = 660

[State 9130, SetFatal]
type = Varset
trigger1 = movehit
V = 4
value = 1

[State 235]
type = playsnd
trigger1 = time = 60
value = 25,6

[State 1200, BoltFat]
type = Hitdef
trigger1 = time = 95
trigger1 = Anim = 660
velocity = 8, 0 
remvelocity = 0, 0
; HitDef part of projectile info
attr = S, NT
animtype = Hard
air.animtype = Back
air.fall = 1
numhits = 0
fall.recover = 0
guardflag = HL
pausetime = 0,0
sparkno = 16
sparkxy = -20,-125
p2stateno = 6003;661
guard.sparkno = -1
hitsound   = -1,-1
;guardsound = 5,0
ground.type = High
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

;Explosion P2
[State 1200]
type = explod
trigger1 = time = 93
postype = p2
anim = 1600
ontop = 1
ownpal = 1

;Boom SND
[State 1200]
type = playsnd
trigger1 = time = 93
value = 5,13
volume = 210

[State 200, 7]
type = changestate
trigger1 = Anim = 660
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;---------------------------------------------
;----------- Fatality 3 - The Rock -----------
;---------------------------------------------

[Statedef 3030]
type    = S
movetype= A
physics = S
juggle  = 1
anim = 0
Velset = 0, 0
ctrl = 0

[State 9130, SetFatal]
type = Varset
trigger1 = 1
V = 4
value = 1

[State 0, StopSnd]
type = StopSnd
trigger1 = time = 1
channel = -1

[State 210, 1]
type = Playsnd
trigger1 = time = 1
value = F5,11
volume = 60
channel = 1

[State 8000, sad]
type = BGPalFX
trigger1 = time = 1
time = 9999
add = -20, -20, -20

[State 8000, sadsd]
type = BGPalFX
trigger1 = time = 5
time = 9999
add = -50, -50, -50

[State 430, 31sdaa]
type = changeanim
trigger1 = Time = 60
value = 3381

[State 3100, helper]
type = Helper
trigger1 = time = 90
stateno = 3003
name = "winner"
postype = p1
pos = 0,0
sprpriority = 1
keyctrl = 0
ownpal = 0
under = 1

[State 3100, Pset]
type = varset
trigger1 = time = 91
v = 26
value = 1

[State 9130, SetFatal]
type = Varset
trigger1 = 1
V = 4
value = 1

[State 7200, Helper]
type = Helper
trigger1 = animelemtime(4) = 30 && anim = 3381
id = 7200
name = "THE ROCK"
pos = 0, -225
postype = P2
stateno = 3031;7200
helpertype = normal
keyctrl = 0
ownpal = 1
ignorehitpause = 1
supermovetime = 9999
pausemovetime = 9999
persistent = 0

[State 200, 7]
type = changeanim
trigger1 = AnimTime = 0
trigger1 = anim = 3381
value = 0

[State 200, 7]
type = changestate
trigger1 = time = 265
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;The Rock
[Statedef 3031];7200
type = A
movetype = A
physics = N
anim = 7200
ctrl = 0
sprpriority = 10

[State 7200, 1]
type = AssertSpecial
trigger1 = time <= 31
flag = noshadow

[State 7200, 1]
type = PalFX
trigger1 = time = 0
time = 30
add = -256, -256, -256
sinadd = 256, 256, 256, 120

[State 7200, pup]
type = PlaySnd
trigger1 = time = 31
value = F5,15
persistent = 0

[State 7200, VelSet]
type = VelSet
trigger1 = time = 31
y = 15

[State 7200, Gravity]
type = VelAdd
trigger1 = time >= 31
y = .5

[State 7200, BoltFat]
type = HitDef
trigger1 = animelem = 3
attr = A, SA
damage    = 0, 0
animtype = Back
air.animtype = Back
guardflag = HL
hitflag = MAF
priority = 1, Miss
pausetime = 0,1
sparkno = -1
guard.sparkno = -1
hitsound = 5, 0
guardsound = -1, -1
ground.type = Low
ground.slidetime = 0
ground.hittime  = 1
ground.velocity = 0,0
ground.cornerpush.veloff = 0
fall.recover = 0
fall = 1
p2stateno = 3384

[State 7200, ChangeState]
type = ChangeState
trigger1 = Pos Y >= -10
value = 3032;7201

;---------------------------------------------------------------------------
;The Rock 2nd State
[Statedef 3032];7201
type = A
movetype = I
physics = N
anim = 7201
ctrl = 0
velset = 0, 0
sprpriority = 10

[State 7200, shake]
type = envshake
trigger1 = time = 0
time = 20
freq = 250
ampl = 10

;--------------------------------------------------------
;Fatality END

[Statedef 3384]
type    = S
movetype= H
physics = S
ctrl = 0
velset = 0,0,0

[State 9130, Setdisappear]
type = Varset
trigger1 = 1
V = 2
value = 1

[State 3384, 123]
type = ChangeAnim2
Trigger1 = Time = 0
value = 888

[State 3384, 123]
type = Explod
trigger1 = time = 2
anim = F17
postype = p1
pos = 0,-10
facing = 1
;postype = front
bindtime = 1
facing = 1
sprpriority = -5
ownpal = 1

[State 3384, 123]
type = Explod
trigger1 = time = 1
anim = F17
postype = p1
pos = 0,-50
facing = 1
;postype = front
bindtime = 1
facing = 1
sprpriority = -5
ownpal = 1

[State 3384, 123]
type = Explod
trigger1 = time = 0
anim = F17
postype = p1
pos = 0, -90
facing = 1
;postype = front
bindtime = 1
facing = 1
sprpriority = -5
ownpal = 1

[State 3384, pup]
type = PlaySnd
trigger1 = time = 0
value = F5,16
volume = 255

[State 3384, pup]
type = PlaySnd
trigger1 = time = 1
value = F5,16
volume = 255

[State 3384, pughp]
type = PlaySnd
trigger1 = time = 2
value = F5, 17
volume = 255

[State 3384, pughp]
type = PlaySnd
trigger1 = time = 3
value = F5, 17
volume = 255

[State 3384, pughp]
type = PlaySnd
trigger1 = time = 4
value = F5, 18
volume = 255

[State 3384, pughp]
type = PlaySnd
trigger1 = time = 5
value = F5, 19
volume = 255

[State 3384, hp]
type = LifeSet
trigger1 = time >= 100
value = 0

[State 3384, 335]
type = SelfState
trigger1 = Time = 101
value = 5150


