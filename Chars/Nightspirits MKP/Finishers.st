
;---------------------------------------------
;----------- Fatality 3 - atari -----------
;---------------------------------------------

[Statedef 3030]
type    = S
movetype= A
physics = S
juggle  = 100
anim = 666888
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
trigger1 = time = 4
value = F5,11
volume = 60
channel = 1

[State 210, bber]
type = PlaySnd
trigger1 = Time = 1
value = 7, 5

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
value = 0



[State 9130, SetFatal]
type = Varset
trigger1 = 1
V = 4
value = 1

[State 7200, Helper]
type = Helper
trigger1 = animelemtime(4) = 30 && anim = 0
id = 4004
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
trigger1 = anim = 0
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
anim = 4004
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
p2stateno = 1

[State 7200, ChangeState]
type = ChangeState
trigger1 = Pos Y >= -10
value = 4005;7201

;---------------------------------------------------------------------------
;The Rock 2nd State
[Statedef 4005];7201
type = A
movetype = I
physics = N
anim = 4005
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

[Statedef 1]
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

[State 1, 123]
type = ChangeAnim2
Trigger1 = Time = 0
value = 888

[State 1, 123]
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

[State 1, 123]
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

[State 1, 123]
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

[State 1, pup]
type = PlaySnd
trigger1 = time = 0
value = F5,16
volume = 255

[State 1, pup]
type = PlaySnd
trigger1 = time = 1
value = F5,16
volume = 255

[State 1, pughp]
type = PlaySnd
trigger1 = time = 2
value = F5, 17
volume = 255

[State 1, pughp]
type = PlaySnd
trigger1 = time = 3
value = F5, 17
volume = 255

[State 1, pughp]
type = PlaySnd
trigger1 = time = 4
value = F5, 18
volume = 255

[State 1, pughp]
type = PlaySnd
trigger1 = time = 5
value = F5, 19
volume = 255

[State 1, hp]
type = LifeSet
trigger1 = time >= 100
value = 0

[State 1, 335]
type = SelfState
trigger1 = Time = 101
value = 5150

;-----------------------------------------------------------------
; --- Friendship... friendship, again? ---
; --- Friendship... friendship, again? ---
[Statedef 3700]
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
anim = 567895

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
anim = 888

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




[State 0]
type = velset
trigger1 = time = 40
x = 0
y = 0

[State 0, PlaySnd]
type = Playsnd
trigger1 = animelem = 1
value = F5,68
volume = 2

[State 0, EnvShake]
type = EnvShake
trigger1 = animelem = 8
freq = 70
time = 15
ampl = 7

