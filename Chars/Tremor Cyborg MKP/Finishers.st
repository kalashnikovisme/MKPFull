[Statedef 3000]
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
value = 3381

[State 9130, SetFatal]
type = Varset
trigger1 = time = 0
V = 4
value = 1

[State 7200, Helper]
type = Helper
trigger1 = animelemtime(5) = 30 && anim = 3381
id = 7200
name = "THE ROCK"
pos = 0, -225
postype = P2
stateno = 3001;7200
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
The Rock
[Statedef 3001];7200
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
value = 3002;7201

;---------------------------------------------------------------------------
The Rock 2nd State
[Statedef 3002];7201
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
