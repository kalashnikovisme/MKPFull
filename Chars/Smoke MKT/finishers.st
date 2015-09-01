;======================
;Fatality : Tele-Death
;======================
[Statedef 3000]
type    = S
movetype= I
physics = N
anim = 0
ctrl = 0

[State 210, 1]
type = Playsnd
trigger1 = time = 1
value = F5,11
volume = 60
channel = 1

[State 430, 31sdaa]
type = changestate
trigger1 = Time = 60
value = 3001

[Statedef 3001]
type    = S
movetype= I
physics = N
juggle  = 1
anim = 1040
Velset = 0, 0
ctrl = 0

[State 2000, 55]
type = Helper
trigger1 = time = 0
trigger1 = Pos Y = 0
stateno = 3003
name = "AfterImage"
pos = 0, 0
postype = P1
helpertype = normal
sprpriority = 1
keyctrl = 0
ownpal = 0
under = 1

[State 2000, 0.6]
type = ScreenBound
trigger1 = time = [1, 1000]
value = 0
movecamera = 0,0


[State 2000, 0.7]
type = Veladd
trigger1 = Pos Y < 0
Y = .65

[State 2000, 1]
type = turn
trigger1 = animelem = 1

[State 2000, 2]
type = Velset
trigger1 = animelem = 1
X = 8.5

[State 1050, 5]
type = VelAdd
trigger1 = Time < 4 
trigger1 = Vel Y > -3
Y = -3.3

[State 2000, 4]
type = Changestate
triggerall = time > 9
trigger1 = Pos X > 140
value = 3004

[State 2000, 5]
type = Changestate
triggerall = time > 9
trigger1 = Pos X < -140
value = 3004

[State 2000, 6.1]
type = Changestate
trigger1 = Pos Y > 0
value = 0
ctrl = 1

[State 2000, 7]
type= Changestate
trigger1 = time > 22
trigger1 = Pos Y = 0
value = 0
ctrl = 1

[Statedef 3002]
type    = S
movetype= I
physics = N
anim = 1045
Velset = 0, 0
ctrl = 0

[State 1045, 1]
type = turn
trigger1 = time = 0

[State 1045, 3]
type = Destroyself
trigger1 = animtime = 0
;------------------------------------------------------------------------------------------
; Dissappear (stand)
[Statedef 3003]
type    = S
movetype= I
physics = N
anim = 1046
Velset = 0, 0
ctrl = 0

[State 1045, 3]
type = Destroyself
trigger1 = animtime = 0
trigger2 = Parent, FrontEdgedist = [0, 10]
trigger3 = Parent, BackEdgedist = [0, 10]
;------------------------------------------------------------------------------------------
[Statedef 3004]
type    = S
movetype= A
physics = N
juggle = 6
anim = 1050
Velset = 0, 0
ctrl = 0

[State 9130, SetFatal]
type = Varset
trigger1 = movehit
V = 4
value = 1

[State 1040, 0.6]
type = ScreenBound
trigger1 = time = [1, 1000]
value = 0
movecamera = 0,0

[State 1050, 2]
type = Posset
triggerall = Time = 1
trigger1 = Pos X > 140
trigger1 = Pos X != 150
X = -150

[State 1050, 2]
type = Posset
triggerall = Time = 1
trigger1 = Pos X < -140
trigger1 = Pos X != -150
X = 150

[State 1050, 2.5]
type = Turn
trigger1 = Time = 2
trigger1 = Pos X = 150
trigger1 = Facing = 1

[State 1050, 2.8]
type = Turn
trigger1 = Time = 2
trigger1 = Pos X = -150
trigger1 = Facing = -1

[State 1050, 3]
type = Changeanim
triggerall = time = 3
trigger1 = Pos X = 150
trigger2 = Pos X = -150
value = 1050

[State 1050, 3]
type = Velset
trigger1 = time = 1
X = 4.6

[State 1040, 0.7]
type = Veladd
trigger1 = Pos Y < 0
Y = .65

[State 1050, 4]
type = HitDef
trigger1 = time = 0 ;> 0
trigger1 = !movecontact
attr = A, SA
pausetime = 20, 0;2
sparkno = -1
guard.sparkno = -1
sparkxy = 18,-60
p2stateno = 6004;6612
hitsound   = 5,1
numhits = 0
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 181, DIED]
type = Explod
trigger1 = time = 7
;trigger1 = numexplod(7089) = 0
anim = 888
ID = 7089
pos = 168,100
postype = left
facing = 1
sprpriority = 1
ownpal = 1
removetime = 1820

[State 1050, 6.9]
type = Velset
trigger1 = Pos Y > 0
Y = 0

[State 1050, 6.6]
type = Posset
trigger1 = Pos Y > 0
trigger1 = time = 20
Y = 0

[State 1040, 0.7f]
type = Veladd
trigger1 = movehit
Y = .5

[State 1040, 0.erf7]
type = VelSet
trigger1 = !movecontact
;trigger1 = movehit
trigger1 = time = 0;>= 1
X = 0

[State 1050, 7]
type= Changestate
trigger1 = time > 18
trigger1 = Pos Y >= -6
trigger2 = movehit
trigger2 = time > 8
trigger2 = Pos Y >= -6
value = 52
ctrl = 1


;===============================
;Fatality : Summon The Lin Kuei
;===============================
[Statedef 3100]
type    = S
movetype= A
physics = S
anim = 0
ctrl = 0

[State 3100, 1]
type = Varset
trigger1 = 1
V = 4
value = 1

[State 3100, 2]
type = Playsnd
trigger1 = time = 30
value = 7,3

[State 3100, 3]
type = changeanim
trigger1 = time = 24
value = 3100
sprpriority = -2

[State 3100, 4]
type = Helper
trigger1 = time = 113
trigger2 = time = 142
;ID = The Whackers
postype = p1
pos = -200,-1
stateno = 3110
sprpriority = 0

[State 3100, 5]
type = Helper
trigger1 = time = 100
trigger2 = time = 161
;ID = The Whackers
postype = p1
pos = -200,-7
stateno = 3110
sprpriority = 5

[State 3100, 6]
type = Helper
trigger1 = time = 150
trigger2 = time = 185
;ID = The Whackers
postype = p1
pos = -200,2
stateno = 3110
sprpriority = 3

[State 3100, 7]
type = Playsnd
trigger1 = time = 101
trigger2 = time = 114
trigger3 = time = 121
trigger4 = time = 143
trigger5 = time = 156
trigger6 = time = 162
trigger7 = time = 188
value = F5,30

[State 3100, 8]
type = Playsnd
trigger1 = time = 110
trigger2 = time = 123
trigger3 = time = 130
trigger4 = time = 152
trigger5 = time = 165
trigger6 = time = 171
trigger7 = time = 197
trigger8 = time = 205
trigger9 = time = 211
trigger10 = time = 220
trigger11 = time = 226
trigger12 = time = 252
value = F5,23

[State 3100, 9]
type = Helper
trigger1 = time = 187
;ID = The Killer
postype = p1
pos = -200,0
stateno = 3120
sprpriority = 5

[State 3100, 10]
type = changestate
trigger1 = time = 330
value = 0
ctrl = 1
sprpriority = 5

[Statedef 3110]
type    = S
movetype= A
physics = S
anim = 3101

[State 3110, 1]
type = veladd
trigger1 = 1
x = 12

[State 3110, 2]
type = HitDef
trigger1 = p2bodydist X < 40
attr = S,NT
damage = 0,0
sparkno = -1
p1stateno = 3130
p2stateno = 21241
numhits = -1

[Statedef 3130]
type    = S
movetype= A
physics = S
anim = 3102
ctrl = 0

[State 3130, 1]
type = HitDef
trigger1 = anim = 3102
trigger1 = animelem = 7
attr = S,NT
damage = 200,7
hitsound   = F20,0
sparkno = -1
p2stateno = 21241

[State 3130, 2]
type = Explod
trigger1 = anim = 3102
trigger1 = animelem = 7
anim = F16
pos = 0, -104
postype = p2
facing = 1
sprpriority = 1
ownpal = 0

[State 3130, 3]
type = HitDef
trigger1 = anim = 3102
trigger1 = animelem = 11
attr = S,NT
damage = 200,7
hitsound   = F5,14
sparkno = -1
p2stateno = 21241

[State 3130, 4]
type = Explod
trigger1 = anim = 3102
trigger1 = animelem = 11
anim = F15
pos = 0, -83
postype = p2
facing = 1
sprpriority = 0
ownpal = 0

[Statedef 3120]
type    = S
movetype= A
physics = S
anim = 3101

[State 3120, 1] 
type = veladd
trigger1 = 1
x = 12

[State 3120, 2]
type = HitDef
trigger1 = p2bodydist X < 40
attr = S,NT
damage = 0,0
hitsound   = F20,0
sparkno = -1
p1stateno = 3131
p2stateno = 21241
numhits = -1

[Statedef 3131]
type    = S
movetype= A
physics = S
anim = 3102
ctrl = 0

[State 3131, 1]
type = HitDef
trigger1 = anim = 3102
trigger1 = animelem = 7
attr = S,NT
hitsound   = F20,0
damage = 200,7
sparkno = -1
p2stateno = 21241

[State 3131, 2]
type = Explod
trigger1 = anim = 3102
trigger1 = animelem = 7
anim = F16
pos = 0, -104
postype = p2
facing = 1
sprpriority = 0
ownpal = 0

[State 3131, 3]
type = HitDef
trigger1 = anim = 3102
trigger1 = animelem = 11
attr = S,NT
damage = 9999
sparkno = -1
p2stateno = 2110

[Statedef 2110] ; Exploding body code courtesy the MKP team
type    = S                      
movetype= H                      
physics = S     

[State 45, fff]
type = LifeSet
trigger1 = time = 30
value = 0

[state 3404,play1]
type = playsnd
trigger1 = time = 1
value = F5,35
channel = 1

[state 3404,play1]
type = playsnd
trigger1 = time = 2
value = 4,1
channel = 2

[State 45, 34fff]
type = Selfstate
trigger1 = time = 30
value = 5150

[State 5, Vel XY]
type = PosSet
trigger1 = Time = 0
Y = 900;-140

[State 235, sss]
type = envshake
trigger1 = time = 0;228
time = 10
freq = 40
ampl = 4

[State 235, sssa]
type = envshake
trigger1 = animelem = 22
time = 15
freq = 150
ampl = 7

[State 9000, 123]
type = Explod
trigger1 = time = 0;228
anim = F16
postype = p1
pos = 0,-990
facing = 1
sprpriority = 2
;ontop = 1
ownpal = 1

[State 9000, 123]
type = Explod
trigger1 = time = 7;235
anim = F16
postype = p1
pos = 10,-1030
facing = 1
sprpriority = 2
;ontop = 1
ownpal = 1

[State 9000, 1]
type = Explod
trigger1 = time = 0;228
anim = F17
postype = p1
pos = 0,-1010
facing = 1
sprpriority = 2
ontop = 1
ownpal = 1

[State 9000, 1]
type = Explod
trigger1 = time = 0;228
anim = F17
postype = p1
pos = 0,-980
facing = 1
sprpriority = 2
;ontop = 1
ownpal = 1

[State 9000, 1]
type = Explod
trigger1 = time = 0;228
anim = F17
postype = p1
pos =0,-960
facing = 1
sprpriority = 2
ontop = 1
ownpal = 1

[State 9000, 123]
type = Explod
trigger1 = time = 3;231
anim = 43051
postype = p1
pos = 0,-1010
vel = -2 , 2
;postype = front
bindtime = 1
facing = 1
sprpriority = 3
ontop = 1
ownpal = 1
removetime = -1

[State 9000, 123]
type = Explod
trigger1 = time = 4;232
anim = 43052
postype = p1
pos = 0,-1050
vel = 9 , -6
;postype = front
bindtime = 1
facing = 1
sprpriority = 3
ontop = 1
ownpal = 1
removetime = -1

[State 9000, 123]
type = Explod
trigger1 = time = 6;234
anim = 43052
postype = p1
facing = -1
pos = 40,-1050
vel = -10 , -8
;postype = front
bindtime = 1
facing = 1
sprpriority = 3
ontop = 1
ownpal = 1
removetime = -1

[State 9000, 123]
type = Explod
trigger1 = time = 4;232
anim = 43053
postype = p1
pos = 0,-990
vel = -7 , -6
;postype = front
bindtime = 1
facing = 1
sprpriority = 3
ontop = 1
ownpal = 1
removetime = -1

[State 9000, 123]
type = Explod
trigger1 = time = 4;232
anim = 43053
postype = p1
pos = 50,-990
vel = 14 , -2
facing = -1
;postype = front
bindtime = 1
facing = 1
sprpriority = 3
ontop = 1
ownpal = 1
removetime = -1

[State 9000, 123]
type = Explod
trigger1 = time = 4;232
anim = 43054
postype = p1
pos = 0,-1030
vel = 1,3
;postype = front
bindtime = 1
facing = 1
sprpriority = 2
ontop = 1
ownpal = 1
removetime = -1

[State 9000, 123]
type = Explod
trigger1 = time = 6;234
anim = F16
postype = p1
pos = 80,-1080
facing = 1
sprpriority = 2
ontop = 1
ownpal = 1

[State 9000, 000]
type = Explod
trigger1 = time = 4;232
anim = 888
ID = 333
postype = p1
pos = -50,-990
facing = 1
sprpriority = 2
removetime = -1
ontop = 1
ownpal = 1



;==============================
;Fatality : Smoke In Their Ear
;==============================
[Statedef 3200]
type    = S
movetype= A
physics = S
anim = 0
ctrl = 0

[State 3200, 1]
type = Varset
trigger1 = 1
V = 4
value = 1

[State 3200, 2]
type = changeanim
trigger1 = time = 60
value = 3200
sprpriority = 2

[State 3200, 3]
type = Playsnd
trigger1 = time = 62
value = F5,19

[State 3200, 4]
type = Playsnd
trigger1 = time = 75
value = F7,0

[State 3200, 5]
type = Playsnd
trigger1 = time = 96
value = F5,15

[State 3200, 6]
type = HitDef
trigger1 = anim = 3200
trigger1 = animelem = 8
attr = S,NT
hitsound   = -1
damage = 9999
sparkno = -1
p2stateno = 3201

[State 3200, 7]
type = varset
trigger1 = movehit
v = 26
value = 1

[State 3200, 8]
type = Explod
trigger1 = time = 60
anim = 3201
postype = p1
pos = 0,0
sprpriority = 3

[State 3200, 9]
type = Explod
trigger1 = time = 233
anim = F20020
postype = p2
pos = 0,-113
sprpriority = 5

[State 3200, 10]
type = changestate
trigger1 = time = 240
;trigger1 = Anim = 3200
;trigger1 = Animelem = 9
value = 0
ctrl = 1

[Statedef 3201]     ;The other guy
type    = S
movetype= H
physics = S
anim = 21238

[State 3201, 1]
type = Playsnd
trigger1 = time = 4
value = 4,1
channel = 1

[State 3201, 2]
type = Stopsnd
trigger1 = time = 60
value = 4,1
channel = 1

[State 3201, 3]
type = Playsnd
trigger1 = time = 60
value = F5,17
channel = 1

[State 3201, 4]
type = LifeSet
trigger1 = time = 60
value = 0

[State 3201, 5]
type = Selfstate
trigger1 = time = 60
value = 6004

;=========================
; Friendship : No Smoking
;=========================
[Statedef 3700]
type    = S
movetype= A
physics = S
anim = 0
ctrl = 0

[State 3700, 1]
type = Varset
trigger1 = 1
V = 4
value = 3

[State 3700, 2]
type = changeanim
trigger1 = time = 60
value = 3700
sprpriority = 3

[State 3700, 3]
type = Playsnd
trigger1 = time = 75
value = F5,15

[State 3700, 4]
type = HitDef
trigger1 = anim = 3700
trigger1 = animelem = 10
attr = S,NT
hitsound   = -1
damage = 0
sparkno = -1
p2stateno = 0

[State 3700, 5]
type = explod
trigger1 = anim = 3700
trigger1 = animelem = 4
anim = 3701
postype = p1
pos = 0,0
sprpriority = 4

[State 3700, 6]
type = removeExplod
trigger1 = time = [100,300]
ID = 1119

[State 3700, 7]
type = explod
trigger1 = time = 120
anim = 3704
ID = 38023
postype = left
pos = 184,61
sprpriority = 5

[State 3700, 8]
type = Playsnd
trigger1 = time = 122
value = 6,0
channel = 1

[State 3700, 9]
type = explod
trigger1 = time = 180
anim = F203
ID = 38022
postype = left
pos = 164,94
sprpriority = 5

[State 3700, 10]
type = Playsnd
trigger1 = time = 200
value = F200,3
channel = 1

[State 3700, 11]
type = Stopsnd
trigger1 = time = 244
value = F200,3
channel = 1

[State 3700, 12]
type = VelSet
trigger1 = time = 1
trigger2 = Vel Y != 0
y = 0

[State 3700, 13]
type = Playsnd
trigger1 = time = 280
value = 1,0
channel = 1

[State 3700, 14]
type = removeExplod
trigger1 = anim = 3700
trigger1 = animelem = 11
ID = 38022

[State 3700, 15]
type = removeExplod
trigger1 = anim = 3700
trigger1 = animelem = 11
ID = 38023

[State 3700, 16]
type = Playsnd
trigger1 = anim = 3700
trigger1 = animelem = 12
value = 7,1

[State 3700, 17]
type = Projectile
trigger1 = anim = 3700
trigger1 = animelem = 13
projanim = 3702
projhitanim = 3703
projremanim = 3703
offset = 70*const(size.xscale), -99*const(size.xscale)
ID = 998
velocity = 10, 0 
remvelocity = 0, 0
; HitDef part of projectile info
attr = S, SP
animtype  = Light
damage    = 9999, 9999
guardflag = HL
hitflag = MAF
pausetime = 0, 2
sparkno = S3703
sprpriority = -2
sparkxy = 15,-10
guard.sparkno = 7
hitsound = 5,0
guardsound = 5,14
p2facing = 1
ground.type = High
ground.slidetime = 20
ground.hittime  = 15
guard.ctrltime = 20 
ground.velocity = -15,0
air.velocity = -4,-5
air.fall = 1
air.juggle = 3
fall.recover = 0
p2stateno = 3704
yaccel = 0.45
kill       = (Var(9) = 1)
fall.kill  = (Var(9) = 1)
guard.kill = (Var(9) = 1)

[State 3700, 18]
type = Playsnd
trigger1 = time = 349
value = F5,50

[State 3700, 19]
type = changestate
trigger1 = time = 350
value = 0
ctrl = 1

[Statedef 3704]     ;The other guy
Type = S
MoveType = H
Physics = N

[State 3704, 1]
type = Playsnd
trigger1 = 1
value = 3,0

[State 3704, 2]
type = Playsnd
trigger1 = 1
value = F1,2

[State 3704, 3]
type = explod
trigger1 = 1
anim = F1
pos = 0,-110
sprpriority = 3

[State 3704, 4]
type = VarSet
trigger1 = var(17) = 1
v = 17 
value = 0

[State 3704, 5]
type = changestate
trigger1 = Pos Y != 0
trigger1 = time = 0
value = 21240

[State 3704, 6]
type = changestate
trigger1 = Pos Y = 0
trigger1 = time = 0
value = 21239


;=======================
; Animality : Joe Camel
;=======================
[Statedef 3800]
type    = S
movetype= A
physics = S
anim = 0
ctrl = 0

[State 3800, 1]
type = Varset
trigger1 = 1
V = 4
value = 4

[State 3800, 2]
type = changeanim
trigger1 = time = 60
value = 3800

[State 3800, 3]
type = Playsnd
trigger1 = time = 61
value = F5,51

[State 3800, 4]
type = HitDef
trigger1 = anim = 3800
trigger1 = animelem = 16
attr = S,NT
hitsound   = F5,35
damage = 9999
sparkno = -1
p2stateno = 3802

[State 3800, 5]
type = changestate
trigger1 = movehit
value = 3801

[Statedef 3801]
type    = S
movetype= A
physics = S
anim = 3801
ctrl = 0

[State 3801, 1]
type = Playsnd
trigger1 = time = 1
value = F5,51

[State 3801, 2]
type = changestate
trigger1 = Anim = 3801
trigger1 = Animelem = 8
value = 0
ctrl = 1

[Statedef 3802]     ;The other guy
type    = S
movetype= H
physics = S
anim = 4702

[State 3802, 1]
type = playsnd
trigger1 = time = 0
value = 4,1

[State 3802, 2]
type = explod
trigger1 = time = 1
anim = F50
postype = p1
pos = 0,0
sprpriority = 4

[State 3802, 3]
type = sprpriority
trigger1 = time=0
value = 1

[State 3802, 4]
type = varset
trigger1 = time = 10
V = 26
value = 1

[State 3802, 5]
type = LifeSet
trigger1 = time = 120
value = 0

[State 3802, 6]
type = playsnd
trigger1 = time = 120
value = F5,32

[State 3802, 7]
type = Selfstate
trigger1 = time = 121
value = 5150


;====================
; Hara Kiri - Smoked											
;====================
[Statedef 3503]
type    = S
movetype= A
physics = S
anim = 0
ctrl = 0

[State 3503, 1]
type = changeanim
trigger1 = time = 60
value = 3500
sprpriority = 3

[State 3503, 2]
type = removeExplod
trigger1 = time = [70,200]
ID = 1119

[State 3503, 3]
type = Playsnd
trigger1 = time = 60
value = 0,4

[State 3503, 4]
type = Playsnd
trigger1 = time = 120
value = 1,0
channel = 1

[State 3503, 5]
type = Stopsnd
trigger1 = time = 167
value = 1,0
channel = 1

[State 3503, 6]
type = Playsnd
trigger1 = time = 167
value = F5,17
channel = 1

[State 3503, 7]
type = LifeSet
trigger1 = time = 167
value = 0

[State 3503, 8]
type = Selfstate
trigger1 = anim = 3500
trigger1 = animtime = 0
value = 6004

;========================
; Hara Kiri - Axe Tricks
;========================
[Statedef 3505]
type    = S
movetype= A
physics = S
anim = 0
ctrl = 0

[State 3505, 1]
type = VarSet
trigger1 = time = 20
V = 26
value = 1

[State 3505, 2]
type = LifeAdd
trigger1 = time = 50
value = -999

[State 3505, 3]
type = Helper
trigger1 = time = 20
stateno = 3506
name = "smokefall"
postype = p1
pos = 0,0

[Statedef 3506]
type    = S
movetype= I
physics = S

[State 3506, 1]
type = Changeanim
trigger1 = time = 0
value = 3505

[State 3506, 2]
type = Playsnd
trigger1 = anim = 3505
trigger1 = animelem = 6
value = 4,23

[State 3506, 3]
type = explod
trigger1 = anim = 3505
trigger1 = animelem = 8
anim = 3506
postype = p1
pos = 0,0
sprpriority = 4

[State 3506, 4]
type = Playsnd
trigger1 = anim = 3505
trigger1 = animelem = 8
value = 7,1

[State 3506, 5]
type = explod
trigger1 = anim = 3505
trigger1 = animelem = 11
anim = F16
postype = p1
pos = 0,-104
sprpriority = 5

[State 3506, 6]
type = Playsnd
trigger1 = anim = 3505
trigger1 = animelem = 11
value = F5,16

[State 3506, 7]
type = Playsnd
trigger1 = anim = 3505
trigger1 = animelem = 11
value = 4,1

[State 3506, 8]
type = Playsnd
trigger1 = anim = 3505
trigger1 = animelem = 17
value = F5,14

[State 3506, 9]
type = Playsnd
trigger1 = anim = 3505
trigger1 = animelem = 17
value = F5,23

[State 3506, 10]
type = Selfstate
trigger1 = anim = 3505
trigger1 = animtime = 0
value = 6007

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
trigger1 = 1
V = 4
value = 2

[State 3300, 2]
type = changeanim
trigger1 = Time = 60
value = 1452

[State 3300, 4]
type = Hitdef
trigger1 = AnimElem = 5
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

[State 3802, 6]
type = playsnd
trigger1 = time = 80
value = F5,47

[State 3300, 5]
type = changestate
trigger1 = Anim = 1452
trigger1 = AnimTime = 0
value = 0
ctrl = 1
