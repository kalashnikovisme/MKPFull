[Statedef 1000]
type    = S
movetype= A
physics = S
juggle  = 2
velset = 0,0
anim = 1003
ctrl = 0

[State 1000, 1]
type = PlaySnd
trigger1 = AnimElem = 2 
value = 4, 6

[State 1000, 2]
type = Posset
trigger1 = Pos Y != 0
trigger1 = Time = 0
Y = 0

[State 1000, 3]
type = Helper
trigger1 = Time = 11
stateno = 1250
name = "Shot2"
pos = -6,-105
postype = p1

[State 1000, 4]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0
;________________________________________________________________

[StateDef 1100]
type    = A
movetype= A
physics = S
juggle  = 6
velset = 0,0
anim = 1010
ctrl = 0

[State 1100, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 4, 6

[State 1100, 2]
type = Helper
trigger1 = AnimElem = 3
stateno = 1260
name = "Shot1"
pos = 40,-130
postype = p1

[State 1100, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 1275
;________________________________________________________________

[StateDef 1200]
type    = S
movetype= A
physics = S
juggle  = 2
velset = 0,0,0
anim = 1004
ctrl = 0

[State 1200, 1]
type = PlaySnd
trigger1 = AnimElem = 2 
value = 4, 6

[State 1200, 2]
type = Posset
trigger1 = Pos Y != 0
trigger1 = Time = 0
Y = 0

[State 1200, 3]
type = Helper
trigger1 = AnimElem = 3
stateno = 1260
name = "Shot1"
pos = 24,-60
id = 900
postype = p1

[State 1200, 4]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0
;________________________________________________________________

[Statedef 1250]
type    = S
movetype= A
physics = N
sprpriority = 2

[State 1250, 1]
type = ChangeAnim
trigger1 = Time = 0
value = 1000

[State 1250, 2]
type = Velset
trigger1 = Time = 16
x = 7.5

[State 201, 347]
type = EnvShake
trigger1 = moveguarded = 1
time = 15
freq = 50
ampl = 3

[State 1250, 3]
type = Hitdef
trigger1 = Time = 0
attr = S, SA
damage = 200, 50
animtype = Light
guardflag = HL
pausetime = 0,2
sparkno = S4200
guard.sparkno = s4200
hitsound   = S5,13
guardsound = S5,13
ground.type = High
ground.slidetime = 20
ground.hittime  = 15
ground.velocity = -15,0
envshake.time = 15
envshake.freq = 50
envshake.ampl = 3
yaccel = 0.45
p2stateno = 21238
kill       = root, Var(9) = 0
fall.kill  = root, Var(9) = 0
guard.kill = root, Var(9) = 0

[State 1250, 4]
type = DestroySelf
trigger1 = MoveContact
trigger2 = AnimTime = 0
;________________________________________________________________

[Statedef 1260]
type    = S
movetype= A
physics = N
sprpriority = 2

[State 1260, 1]
type = ChangeAnim
trigger1 = Time = 0
value = 1002

[State 1260, 2]
type = Velset
trigger1 = Time = 14
x = 7.5

[State 201, 347]
type = EnvShake
trigger1 = moveguarded = 1
time = 15
freq = 50
ampl = 3

[State 1260, 3]
type = Hitdef
trigger1 = Time = 0
attr = S, SA
damage    = 200, 50
animtype = Light
air.animtype = Back
guardflag = HL
pausetime = 0,2
sparkno = S4200
guard.sparkno = s4200
hitsound   = S5,13
guardsound = S5,13
ground.type = High
ground.slidetime = 20
ground.hittime  = 15
ground.velocity = -15,0
air.velocity = -4,-6
air.fall = 1
air.juggle = 3
envshake.time = 15
envshake.freq = 50
envshake.ampl = 3
yaccel = 0.45
p2stateno = 21238
kill       = root, Var(9) = 0
fall.kill  = root, Var(9) = 0
guard.kill = root, Var(9) = 0

[State 1260, 4]
type = DestroySelf
trigger1 = MoveContact
trigger2 = AnimTime = 0
;________________________________________________________________

[Statedef 1275]
type    = A
movetype= I
physics = S
juggle  = 4
velset = 0,0
anim = 2244
ctrl = 0

[State 1275, 1]
type = Veladd
trigger1 = time > 0
y = .42

[State 1275, 2]
type = ChangeState
trigger1 = Pos Y >= -2
value = 52
;________________________________________________________________

[StateDef 1300]
type    = A
movetype= A
physics = S
juggle  = 2
velset = 0,-1.5
anim = 1300
ctrl = 0

[State 1300, 1]
type = VelSet
trigger1 = Time < 14
x = 3
y = -1.25

[State 1300, 2]
type = VelSet
trigger1 = Time > 14
trigger1 = Time < 18
x = 3
y = 1.65

[State 1300, 3]
type = VelSet
trigger1 = Time > 18
x = 3
y = 1.25

[State 1300, 4]
type = PlaySnd
trigger1 = Time = 1
value = 4, 9

[State 1300, 5]
type = HitDef
trigger1 = !MoveContact
trigger1 = P2StateNo != 11
attr = S, SA
animtype = Light                 
damage = 200,75
guardflag = HL
hitflag = MAF
priority = 2, Hit
pausetime = 2,2
sparkno = -1
guard.sparkno = -1
hitsound = 5,1
guardsound = 5,14             
ground.type = Low  
p2facing = 1
p1stateno = 1303
p2stateno = 1302
numhits = -1
ground.slidetime = 20
ground.hittime  = 20
guard.ctrltime = 20 
ground.velocity = -18,0
guard.velocity = -2
ground.cornerpush.veloff = -10
ground.slidetime = 10
air.fall = 1
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 1310, 9]
type = ChangeState
trigger1 = MoveGuarded = 1
value = 1301

[State 1300, 6]
type = VelAdd
trigger1 = Time > 2
x = 6.5

[State 1300, 7]
type = ChangeState
trigger1 = Time = 60
ctrl = 1
value = 0
;________________________________________________________________

[StateDef 1301]
type    = S
movetype= I
physics = S
velset = 0,-5.5
ctrl = 0

[State 1301, 1]
type = VelAdd
trigger1 = 1
x = -1
y= 0.25

[State 1301, 2]
type = ChangeState
trigger1 = Pos Y > 0
trigger1 = Time > 2
value = 0
ctrl = 1
;________________________________________________________________

[StateDef 1302]
type    = A
movetype= H
physics = S
velset = 0,0
anim = 21238
ctrl = 0

[State 1302, 1]
type = VarSet
trigger1 = var(17) = 1
v = 17 
value = 0

[state 1302, 2]
type = PlaySnd
trigger1 = (Time % 15) = 1
value = 3,(2 + (Random%2)*6)

[State 1302, 3]
type = Veladd
Trigger1 = Time < 60
x = -5

[State 1302, 2] ;Hit ground
type = SelfState
Trigger1 = p2stateno = 0
trigger1 = pos Y >= 0
trigger1 = alive = 1
value = 21238
ctrl = 1

[State 1302, 5]
type = Veladd
Trigger1 = Time > 49
Trigger1 = Pos Y < 0
x = -2

[State 1302, 6]
type = Changestate
trigger1 = Pos Y = 0
trigger1 = time = 55
value = 21238

[State 1302, 7]
type = SelfState
Trigger1 = P2StateNo = 0
Trigger1 = Pos Y != 0
value = 5050
;________________________________________________________________

[StateDef 1303]
type = A
movetype= A
physics = S
velset = 0,0
ctrl = 0

[State 1303, 1]
type = PlaySnd
trigger1 = MoveContact = 1
trigger2 = AnimElem = 3
trigger3 = AnimElem = 5
trigger4 = AnimElem = 7
trigger5 = AnimElem = 9
trigger6 = AnimElem = 11
trigger7 = AnimElem = 13
trigger8 = AnimElem = 15
trigger9 = AnimElem = 17
trigger10 = AnimElem = 19
value = 7,2

[State 1303, 2]
type = EnvShake
trigger1 = MoveContact = 1
trigger2 = AnimElem = 3
trigger3 = AnimElem = 5
trigger4 = AnimElem = 7
trigger5 = AnimElem = 9
trigger6 = AnimElem = 11
trigger7 = AnimElem = 13
trigger8 = AnimElem = 15
trigger9 = AnimElem = 17
trigger10 = AnimElem = 19
time = 8
freq = 150
ampl = 5

[State 1303, 3]
type = Veladd
Trigger1 = Time < 60
x = 5

[State 1303, 4]
type = ChangeState
trigger1 = time = 60
trigger2 = Alive = 0
ctrl = 1
value = 0
;________________________________________________________________

[StateDef 1310]
type    = A
movetype= A
physics = S
juggle  = 2
anim = 1300
ctrl = 0

[State 1310, 1]
type = VelSet
trigger1 = Time < 14
x = 3
y = -1.25

[State 1310, 2]
type = VelSet
trigger1 = Time > 14
trigger1 = Time < 18
x = 3
y = 1.65

[State 1310, 3]
type = VelSet
trigger1 = Time > 18
x = 3
y = 1.25

[State -3]
type = Explod
trigger1 = anim = 1300
trigger1 = TimeMod=2,1
anim = 1301
name = "humoarriba"
pos = 0,0
postype = p1
bindtime = 1
vel = -4,0
removetime = -2
sprpriority = -1

[State 1310, 5]
type = Velset
trigger1 = Time =3
y = -1

[State 1310, 6]
type = VelAdd
trigger1 = Time > 2
x = 8

[State 1310, 7]
type = PlaySnd
trigger1 = Time = 1
value = 4, 9

[State 1310, 8]
type = HitDef
trigger1 = !MoveContact
trigger2 = P2StateNo != 11
attr = S, SA
animtype = Light                 
damage = 250,75
guardflag = HL
hitflag = MAF
priority = 2, Hit
pausetime = 2,2
sparkno = -1
guard.sparkno = -1
hitsound = 5,1
guardsound = 5,14             
ground.type = Low  
p2facing = 1
p1stateno = 1304
p2stateno = 1302
numhits = -1
ground.slidetime = 20
ground.hittime  = 20
guard.ctrltime = 20 
ground.velocity = -18,0
guard.velocity = -2
ground.cornerpush.veloff = -10
air.fall = 1
fall.recover = 0
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 1310, 9]
type = ChangeState
trigger1 = MoveGuarded = 1
value = 1301

[State 1310, 10]
type = ChangeState
trigger1 = Time = 60
ctrl = 1
value = 0
;________________________________________________________________

[StateDef 1304]
type = A
movetype= A
physics = S
velset = 0,0
ctrl = 0

[State -3]
type = Explod
trigger1 = anim = 1300
trigger1 = TimeMod=2,1
anim = 1301
name = "humoarriba"
pos = 0,0
postype = p1
bindtime = 1
vel = -7,0
removetime = -2
sprpriority = -1

[State 1303, 1]
type = PlaySnd
trigger1 = MoveContact = 1
trigger2 = AnimElem = 3
trigger3 = AnimElem = 5
trigger4 = AnimElem = 7
trigger5 = AnimElem = 9
trigger6 = AnimElem = 11
trigger7 = AnimElem = 13
trigger8 = AnimElem = 15
trigger9 = AnimElem = 17
trigger10 = AnimElem = 19
value = 7,2

[State 1303, 2]
type = EnvShake
trigger1 = MoveContact = 1
trigger2 = AnimElem = 3
trigger3 = AnimElem = 5
trigger4 = AnimElem = 7
trigger5 = AnimElem = 9
trigger6 = AnimElem = 11
trigger7 = AnimElem = 13
trigger8 = AnimElem = 15
trigger9 = AnimElem = 17
trigger10 = AnimElem = 19
time = 8
freq = 150
ampl = 5

[State 1303, 3]
type = Veladd
Trigger1 = Time < 60
x = 5

[State 1303, 4]
type = ChangeState
trigger1 = time = 60
trigger2 = Alive = 0
ctrl = 1
value = 0
;________________________________________________________________

[StateDef 1400]
type    = A
movetype= A
physics = N
juggle  = 2
velset = 0,0
anim = 900
ctrl = 0

[State 1400, 1]
type = VelSet
trigger1 = Time < 14
x = 10
y = -1.25

[State 1400, 2]
type = VelSet
trigger1 = Time > 14
trigger1 = Time < 18
x = 10
y = 1.65

[State 1400, 3]
type = VelSet
trigger1 = Time > 18
x = 10
y = 1.25

[State 1400, 4]
type = PlaySnd
trigger1 = Time = 1
value = 5, 10

[State 1400, 5]
type = PlaySnd
trigger1 = Time = 1
value = 4, 17

[State 201, 347]
type = EnvShake
trigger1 = moveguarded = 1
time = 13
freq = 30
ampl = 3

[State 1400, 6]
type = HitDef
trigger1 = AnimElem = 3
trigger2 = P2StateNo != 11
attr = S, SA
animtype  = back
damage    = 232, 116
guardflag = HLMF
hitflag = AHLMF
pausetime = 15,2
sparkno = -1
guard.sparkno = -1
hitsound   = 5,0
p1stateno = 1401
guardsound = 5,14 
ground.type = High
ground.slidetime = 0
ground.hittime  = 0
ground.velocity = -5,-2.5
air.velocity = -3,-3
air.hittime = 17  
fall = 1
fall.recover = 0
envshake.time = 15
envshake.freq = 50
envshake.ampl = 4
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 1400, 7]
type = ChangeState
trigger1 = MoveGuarded = 1
value = 1401

[State 1400, 8]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0
;________________________________________________________________

[StateDef 1401]
type    = A
movetype= I
physics = N
ctrl = 0
velset = 0,0

[State 1401, 1]
type = VelSet
trigger1 = Time = 0
x = 0

[State 1401, 2]
type = Changestate
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;==================================================

[Statedef 1500]
type    = A
movetype= A
physics = S
juggle  = 3
velset = 5,0
ctrl = 0
anim = 1500
sprpriority = 2

[State 3443]
type = Veladd
trigger1 = time < 24
X = 5

[State 3443, 1]
type = PlaySnd
trigger1 = Time = 12
value = F5, 15

[State 181, DIED]
type = Explod
trigger1 = movehit
trigger1 = numexplod(7089) = 0
anim = 888
ID = 7089
pos = 168,100
postype = left
facing = 1
sprpriority = 1
ownpal = 1
removetime = 1820

[State 3443, 3]
type = HitDef
trigger1 = AnimElem = 4
trigger2 = AnimElem = 6
attr = S, NA
animtype  = Back
damage    = 150, 40
guardflag = HL
hitflag = MAF
pausetime = 3,2
sparkno = -1
guard.sparkno = -1
hitsound = 5,0
guardsound = 5,14
ground.type = High
ground.slidetime = 30
p2facing = 1
guard.ctrltime = 20
guard.slidetime = 20
ground.hittime  = 30
ground.velocity = -4,-5
air.velocity = -4,-5
air.hittime = 17
ground.cornerpush.veloff = -35
fall.recover = 0
envshake.time = 15
envshake.freq = 50
envshake.ampl = 6
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)
priority = 1, Miss

[State 3443, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
