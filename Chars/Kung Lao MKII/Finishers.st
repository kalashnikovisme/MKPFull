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
value = 224

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
trigger1 = anim = 224;0
value = 0
ctrl = 1
;------------------------------------------------------
; --- Fatality1111111 ---
[Statedef 3300]
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
value = 231

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
trigger1 = anim = 231;0
value = 0
ctrl = 1

; --- Hara Kiri ---
; Hace el Hara Kiri y muere
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

[State 9251,misil]
type = explod
trigger1 = time = 65;80
anim = F16
postype = p1
pos = 5,-110
sprpriority = 5

[State 9251,misil]
type = explod
trigger1 = time = 66;80
anim = F16
postype = p1
pos = 5,-90
sprpriority = 4

[State 430, 31sdaa]
type = changestate
trigger1 = anim = 3500
trigger1 = animtime = 0
value = 3504

[State 210, 1]
type = Playsnd
trigger1 = anim = 3500
trigger1 = animelem = 1
value = 4,1

[Statedef 3504]
type    = S
movetype= A
physics = S
anim = 3501

[State 3100, helper]
type = Helper
trigger1 = time = 0
stateno = 3505
postype = p1
pos = 0,0

[State 3100, Pset]
type = varset
trigger1 = time = 0
v = 26
value = 1

[State 3105, end]
type = lifeadd
trigger1 = time = 1
value = -9999

[State 430, 31sdaa]
type = changestate
trigger1 = time = 1
value = 5150

[Statedef 3505]
type    = S
movetype= A
physics = S

[State 210, 1]
type = SprPriority
trigger1 = time = 0
value = 2

[State 430, 31sdaa]
type = changeanim
trigger1 = time = 0
value = 3501
