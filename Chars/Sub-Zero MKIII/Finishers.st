;-------FATAL
[Statedef 3000]
type    = S
movetype= A
physics = S
velset = 0,0,0
anim = 3380
ctrl = 0

[State 1200, BoltFat]
type = Explod
trigger1 = time = 17
anim = 3381
postype = p1
sprpriority  >= 2

[State 9130, SetFatal]
type = Varset
trigger1 = movehit
V = 4
value = 1

[State 1200, ZappySound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 5, 13
;channel = 4

[State 1200, Za]
type = VelSet
trigger1 = time = 1
trigger2 = Vel Y != 0
y = 0

[State 1200, BoltFat]
type = Hitdef
trigger1 = AnimElem = 5
velocity = 8, 0 
remvelocity = 0, 0
; HitDef part of projectile info
attr = S, NT
animtype = Hard
air.animtype = Back
air.fall = 1
fall.recover = 0
numhits = - 1
guardflag = HL
pausetime = 0,0
sparkno = -1
p2stateno = 3384
guard.sparkno = -1
hitsound   = s4,17
guardsound = s4,17
ground.type = High
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 1200, BoltFat]
type = Explod
trigger1 = time = 96
anim = 3382
postype = p2
sprpriority  >= 2
pos = -30, -5

[State 200, 7]
type = Selfstate
trigger1 = Animtime = 0
value = 0
ctrl = 1

;-------FATAL1111111111111111
[Statedef 3100]
type    = S
movetype= A
physics = S
velset = 0,0,0
anim = 512
ctrl = 0

[State 9130, SetFatal]
type = Varset
trigger1 = movehit
V = 4
value = 1

[State 1200, ZappySound]
type = PlaySnd
trigger1 = AnimElem = 6
value = 4, 19

[State 1200, ound]
type = PlaySnd
trigger1 = AnimElem = 6
value = 4, 22

[State 235, sssf]
type = envshake
trigger1 = AnimElem = 6
time = 35
freq = 99
ampl = 22

[State 1200, Za]
type = VelSet
trigger1 = time = 1
trigger2 = Vel Y != 0
y = 0

[State 1200, BoltFat]
type = Hitdef
trigger1 = AnimElem = 1
velocity = 8, 0 
remvelocity = 0, 0
; HitDef part of projectile info
attr = S, NT
animtype = Hard
air.animtype = Back
air.fall = 1
fall.recover = 0
numhits = - 1
guardflag = HL
pausetime = 0,0
sparkno = -1
p2facing = 1
p2stateno = 513
guard.sparkno = -1
hitsound   = s4,17
ground.type = High
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 1200, BoltFat]
type = Explod
trigger1 = Animelem = 4
anim = 515
postype = p1
sprpriority  >= 4
pos = 0, 0
;ontop = 1

[State 1200, BoltFat]
type = Explod
trigger1 = Animelem = 6
anim = F17
postype = p1
sprpriority  >= 4
pos = 0, -140
;ontop = 1

[State 200, 7sda]
type = Changeanim
trigger1 = AnimTime = 0
trigger1 = Anim = 512
value = 0

[State 200, 7]
type = Changestate
trigger1 = Time = 150
value = 0
ctrl = 1

[Statedef 513]
type    = S
movetype= H
physics = S
ctrl = 0
velset = 0,0,0

[State 1005, VEL1]
type = posadd
trigger1 = time = 0
trigger2 = time = 10
;trigger3 = time = 20
X = 2.5

[State 1005, VEL2]
type = posadd
trigger1 = time = 5
trigger2 = time = 15
;trigger3 = time = 25
X = - 2.5

[State 820, 435E1]
type = PosAdd
Trigger1 = time = 1
X = -40

[State 820, 4r35E1]
type = PosSet
Trigger1 = Animtime = 0
Y = 900

[State 810, nd]
type = TURN
trigger1 = time =  0

[State 820, 1]
type = ChangeAnim2
Trigger1 = Time = 1
value = 513

[State 22, round hit]
type = EnvShake
trigger1 = animelem = 6
freq = 40
time = 10
ampl = 15

[State 1200, ound]
type = PlaySnd
trigger1 = AnimElem = 7
value = 4, 21

[State 1009, Frosty color]
type = palFX
trigger1 = time = 1
add = 100,150,250	
mul = 200,200,200
time = 300

[State 9010, 0.1]
type = Sprpriority
trigger1 = time = 1
value  >= 2

[State 9399, 2]
type = Selfstate
trigger1 = Animtime = 0
value = 5150

[State 9399, 3]
type = Lifeadd
trigger1 = Time = 1
Value = -9999

[State 5150, 8]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1
ctrl = 1

; --- Friendship... friendship, again? ---
[Statedef 3700]
type    = S
movetype= A
physics = S
anim = 0
ctrl = 0

[State 3100, helper]
type = Helper
trigger1 = time = 100
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
trigger1 = time = 101
v = 26
value = 1

[State 200, 7]
type = changestate
trigger1 = Time = 140
value = 0
ctrl = 1

[Statedef 3701]
type    = S
movetype= A
physics = S
ctrl = 0
anim = 3700

[State 210, 1]
type = Playsnd
trigger1 = time = 1
value = F5,50
volume = 600

[State 210, 1]
type = Playsnd
trigger1 = time = 17
value = 9,9

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
