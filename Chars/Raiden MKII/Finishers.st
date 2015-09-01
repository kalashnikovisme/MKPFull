;-------FATAL
[Statedef 3000]
type    = S
movetype= A
physics = S
juggle  = 2
ctrl = 0
velset = 0,0,0
anim = 0

[State 430, 1]
type = PlaySnd
trigger1 = time = 47
trigger2 = Time = 83
trigger3 = time = 250
trigger4 = time = 300
value = 4, 8

[State 60, 1]
type = PlaySnd
trigger1 = time = 80
value = 4, 17
volume = 80

[State 4430, 1]
type = PlaySnd
trigger1 = Time = 163
value = 4, 6

[State 44230, 31]
type = VelAdd
trigger1 = Time >= 70
trigger1 = Time <= 85
X = 5

[State 440, 31]
type = VelSet
trigger1 = Time = 95
X = 0


[State 430, 3451]
type = PAuse
trigger1 = Time = 25
time = 15

[State 430, 31]
type = changeanim
trigger1 = Time = 45
value = 777

[State 430, 31]
type = changeanim
trigger1 = AnimTime = 0
trigger1 = anim = 777
value = 888

[State 181, ED]
type = Explod
trigger1 = time = 80
;trigger1 = anim = 888
anim = 660
postype = p2
pos = 0,-2
;facing = 1
sprpriority = -3
ownpal = 1
scale = .95,.95

[State 181, ErtD]
type = Explod
trigger1 = time = 110
;trigger1 = anim = 888
anim = 6601
postype = p2
pos = 0,-2
;facing = 1
sprpriority = 2 
ownpal = 1
scale = .95,.95 

[State 1200, BoltFat]
type = Projectile
trigger1 = time = 165
projanim = 6601
projhitanim = 6601
;projremanim = 1610
offset = 0, 23
postype = p2
scale = .95,.95
velocity = 0, 0 
remvelocity = 0, 0
; HitDef part of projectile info
attr = S, NT
projID = 1234
damage    = 140, 23
animtype = Light
air.animtype = Back
p2stateno = 6004;6612
air.fall = 1
numhits = -1
fall.recover = 0
guardflag = HL
pausetime = 0,10
sparkno = 16
sparkxy = 0,-145
guard.sparkno = -1
hitsound   = 5,0
guardsound = 5,0

[State 9130, SetFatal]
type = Varset
trigger1 = time = 1
V = 4
value = 1

[State 1200, Za]
type = VelSet
trigger1 = time = 1
trigger2 = Vel Y != 0
y = 0

[State 430, 31]
type = changeanim
trigger1 = Time = 300
value = 778

[State 200, 7]
type = changestate
trigger1 = AnimTime = 0
trigger1 = anim = 778
value = 0
ctrl = 1
;-------------------------------------

[Statedef 3100]
type    = S
movetype= A
physics = S
anim = 0
ctrl = 0

[State 3100, 1]
type = Varset
trigger1 = time = 1
V = 4
value = 1

[State 3100, 2]
type = changeanim
trigger1 = Time = 60
value = 4300

[State 5510, 1]
type = BGPalFX
trigger1 = anim = 4300
trigger1 = animelem = 1
time = 9999
add = -50, -50, -50
ignorehitpause = 1

[State 5510, 1]
type = BGPalFX
trigger1 = anim = 4300
trigger2 = animelem = 9
time = 9999
add = -50, -50, -50
ignorehitpause = 1

[State 0, AllPalFX]
type = BGPalFX
trigger1 = anim = 4300
trigger1 = animelem = 8
time = 10
add = 255,255,255
mul = 255,255,255
sinadd = 255,255,255

[State 3100, 6]
type = HitDef
trigger1 = anim = 4300
trigger1 = animelem = 9
attr = S, NA
animtype = Light
air.animtype = Back
guardflag = HL
hitflag = MAF
priority = 2, Hit
pausetime = 0,0
sparkno = -1
hitsound   = 5,0
ground.type = High
p2stateno = 2410
ground.slidetime = 15
ground.hittime  = 10
ground.velocity = -10,0
air.velocity = -3,-4
air.fall = 1
fall.recover = 0
air.juggle = 3
yaccel = 0.1
envshake.time = 15
envshake.freq = 70
envshake.ampl = 7
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)
p2facing = 1

[State 181, DerI]
type = Helper
trigger1 = anim = 4300
trigger1 = animelem = 9
stateno = 6900
postype = p2
pos = 0, -100

[State ò_ó]
type = Explod
trigger1 = anim = 4300
trigger1 = animelem = 8
anim = 7007
id = 7007
Postype = p2
pos = 0,0
sprpriority = 4
bindtime = 1
ontop = 1

[State 3100, 8]
type = changestate
trigger1 = Anim = 4300
trigger1 = AnimTime = 0
value = 0
ctrl = 1
