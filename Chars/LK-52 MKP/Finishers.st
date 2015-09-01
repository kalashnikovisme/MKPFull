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

[State 430, 3451]
type = PAuse
trigger1 = Time = 3
time = 15

[State 430, 31]
type = changeanim
trigger1 = Time = 15
value = 3382

[State 210, 1]
type = Playsnd
trigger1 = time = 30
value = 4,14

[State 210, 156]
type = Playsnd
trigger1 = time = 10
value = 14,0

[State 210, 1]
type = Playsnd
trigger1 = time = 30
value = 4,14

[State 1200, BoltFat]
type = Hitdef
trigger1 = AnimElem = 3
remvelocity = 0, 0
; HitDef part of projectile info
attr = S, NT
animtype = Hard
air.animtype = Back
air.fall = 1
fall.recover = 0
guardflag = HL
pausetime = 0,0
sparkno = -1
p2stateno = 3001
p2facing = -1
snap = 0,0
guard.sparkno = -1
hitsound   = 5,14
;guardsound = s4,17
ground.type = High
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 210, 11]
type = Playsnd
trigger1 = time = 210
trigger2 = time = 216
trigger3 = time = 223
trigger4 = time = 100
value = F5,16

[State 210, 222f]
type = Playsnd
trigger1 = time = 210
trigger2 = time = 236
trigger3 = time = 243
trigger4 = time = 104
value = F5,17

[State 210, 333]
type = Playsnd
trigger1 = time = 214
trigger2 = time = 226
trigger3 = time = 233
trigger4 = time = 100
value = F5,18

[State 210, 333sd]
type = Playsnd
trigger1 = time = 104
trigger2 = time = 136
trigger3 = time = 153
trigger4 = time = 170
value = f5,19

[State 210, 3sd]
type = Playsnd
trigger1 = time = 104
trigger2 = time = 144
trigger3 = time = 184
value = 4,1
volume = 100

[State 1200, BoltFat]
type = Explod
trigger1 = time = 26
anim = 671
postype = p1
sprpriority  = -1
pos = 0, 0

[State 1200, BoltFat]
type = Explod
trigger1 = time = 100
anim = F17
postype = p1
sprpriority  = 4
pos = 10, -93

[State 1200, Bat]
type = Explod
trigger1 = time = 105
anim = F16
postype = p1
sprpriority  = 4
pos = 10, -103

[State 1200, asdBatd]
type = PosAdd
trigger1 = time = 98
x = -5

[State 1200, Batd]
type = Explod
trigger1 = time = 110
anim = F16
postype = p1
sprpriority  = 4
pos = 10, -83
facing = -1

;---------------------
[State 1200, Bsdatd]
type = Explod
trigger1 = time = 210
anim = F16
postype = p1
sprpriority  = 4
pos = 10, -87
facing = -1

[State 1200, Batxcvd]
type = Explod
trigger1 = time = 215
anim = F16
postype = p1
sprpriority  = 4
pos = 10, -103
facing = 1

[State 1200, sdBsdatd]
type = Explod
trigger1 = time = 210
anim = F2
postype = p1
sprpriority  = 4
pos = 10, -63
facing = -1

[State 1200, Bafdtxcvd]
type = Explod
trigger1 = time = 215
anim = F2
postype = p1
sprpriority  = 4
pos = 10, -93
facing = 1

[State 1200, Batd]
type = Explod
trigger1 = time = 210
trigger2 = time = 219
trigger3 = time = 226
anim = F47
vel = 7,-4
postype = p1
sprpriority  = 4
pos = 0, -83
facing = -1

[State 1200,dBatd]
type = Explod
trigger1 = time = 210
trigger2 = time = 219
trigger3 = time = 226
anim = F47
vel = 6,-.2
postype = p1
sprpriority  = 4
pos = 0, -83
facing = 1

[State 1200, Batdc]
type = Explod
trigger1 = time = 210
trigger2 = time = 219
trigger3 = time = 226
anim = F47
vel = 7,-1
postype = p1
sprpriority  = 4
pos = 0, -83
facing = -1

[State 1200,dBatds]
type = Explod
trigger1 = time = 210
trigger2 = time = 229
trigger3 = time = 236
anim = F47
vel = 6,-3
postype = p1
sprpriority  = 4
pos = 0, -83
facing = 1

[State 1200, Batdca]
type = Explod
trigger1 = time = 210
trigger2 = time = 219
trigger3 = time = 226
anim = F47
vel = 7,5
postype = p1
sprpriority  = 4
pos = 0, -83
facing = -1

[State 1200,dBatdss]
type = Explod
trigger1 = time = 210
trigger2 = time = 229
trigger3 = time = 236
anim = F47
vel = 6,-5
postype = p1
sprpriority  = 4
pos = 0, -83
facing = 1

[State 1200,dBatd]
type = Explod
trigger1 = time = 215
trigger2 = time = 227
trigger3 = time = 231
anim = F47
vel = 6,.2
postype = p1
sprpriority  = 4
pos = 0, -83
facing = 1

[State 1200, Batdc]
type = Explod
trigger1 = time = 220
trigger2 = time = 229
trigger3 = time = 256
anim = F47
vel = 7,-7
postype = p1
sprpriority  = 4
pos = 0, -83
facing = -1

[State 1200,dBatds]
type = Explod
trigger1 = time = 230
trigger2 = time = 249
trigger3 = time = 256
anim = F47
vel = 6,-8
postype = p1
sprpriority  = 4
pos = 0, -83
facing = 1

[State 1200, Batdca]
type = Explod
trigger1 = time = 220
trigger2 = time = 239
trigger3 = time = 246
anim = F47
vel = 7,8
postype = p1
sprpriority  = 4
pos = 0, -83
facing = -1


[State 200, 7]
type = changestate
trigger1 = AnimTime = 0
trigger1 = anim = 3382
value = 0
ctrl = 1

[Statedef 3001]
type    = S
movetype= H
physics = S
ctrl = 0
velset = 0,0,0

[State 22, roun]
type = changeanim2
trigger1 = time = 0
value = 672

[State 1200, ound]
type = PlaySnd
trigger1 = time = 50
value = 4, 1
volume = 100

[State 1200, oudnd]
type = Sprpriority
trigger1 = time = 1
value  = -2

[State 9399, 2]
type = Selfstate
trigger1 = time = 160
value = 6007

[State 9399, 3]
type = Lifeadd
trigger1 = Time = 155
Value = -9999

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
