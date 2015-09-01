[Statedef 3500]
type    = S
movetype= A
physics = S
ctrl = 0

[State 3500, 1]
type = AssertSpecial
trigger1 = 1
flag = timerfreeze

[State 3500, 2]
type = helper
trigger1 = time = 0
stateno = 3501
postype = p1

[State 3500, 3]
type = changestate
trigger1 = Time = 0
value = 3503

[State 3500, 4]
type = NotHitBy
trigger1 = 1
value = SCA
;________________________________________________

[Statedef 3501]
type    = S
movetype= A
physics = S
anim = 43050
ctrl = 0

[State 3501, 1]
type = HitDef
trigger1 = p2statetype = S
p2stateno = 3502
attr = S, NT
hitflag = MAFD
guardflag = A
sparkno = -1

[State 3501, 2]
type = destroyself
trigger1 = movehit
;________________________________________________

[Statedef 3502]
movetype= H
ctrl = 0

[State 3502, 1]
type = Varset
trigger1 = time = 0
value = 6
V = 4

[State 3502, 2]
type = changeanim
trigger1 = time = 0
value = 0

[State 3502, 3]
type = selfstate
trigger1 = p2life <=0
value = 0
ctrl = 1
;________________________________________________

[Statedef 3997]
type    = S
movetype= I
physics = S
anim = 0
ctrl = 0

[State 3997, 1]
type = Playsnd
trigger1 = time = 55
value = F1200,6
volume = 60

[State 3997, 2]
type = Playsnd
trigger1 = time = 55
value = 6,1
volume = 60

[State 3997, 3]
type = Explod
trigger1 = time = 60
ID = 200
anim = F200
pos = 156,0
postype = left
removetime = -2
bindtime = -1
facing = 1
sprpriority = 2
ontop = 1
ownpal = 1

[State 3997, 4]
type = Explod
trigger1 = time = 0
removetime = -1
ID = 3800
anim = 43050

[State 3997, 5]
type = helper
trigger1 = time = 0
stateno = 3998
postype = p1

[State 3997, 6]
type = lifeset
trigger1 = life < 2
value = 2

[State 3997, 7]
type = Varset
trigger1 = time = 0
value = 0
V = 3

[State 3997, 8]
type = Varset
trigger1 = time = 0
value = 0
V = 13

[State 3997, 9]
type = Varset
trigger1 = time = 0
value = 0
V = 9

[State 3997, 10]
type = Varset
trigger1 = time = 0
value = 0
V = 19

[State 3997, 11]
type = Varset
trigger1 = time = 0
value = 0
V = 4

[State 3997, 12]
type = BGPalFX
trigger1 = numexplod(200)=1
time = 9999
add = 0, 0, 0

[State 3997, 13]
type = changestate
trigger1 = time > 60
trigger1 = numexplod(200)=0
value = 0
ctrl = 1
;________________________________________________

[Statedef 3998]
type    = S
movetype= A
physics = S
anim = 43050
ctrl = 0

[State 3998, 1]
type = HitDef
trigger1 = time = 0
p2stateno = 3999
attr = S, NT
hitflag = MAFD
guardflag = A
damage = -60
sparkno = -1

[State 3998, 2]
type = destroyself
trigger1 = movehit
;________________________________________________

[Statedef 3999]
type    = S
movetype= H
physics = S
ctrl = 0

[State 3999, 1]
type = selfstate
trigger1 = time = 138
value = 0
ctrl = 1
;________________________________________________

[Statedef 6001]
type    = S
movetype= I
physics = N
velset = 0, 0
ctrl = 0

[State 6001, 1]
type = Explod
trigger1 = time = 0
anim = 6001
pos = 0,0
postype = p1
sprpriority = 1

[State 6001, 2]
type = Explod
trigger1 = time = 0
trigger2 = time = 10
trigger3 = time = 20
trigger4 = time = 30
trigger5 = time = 40
pos = -4, -51
postype = p1
anim = F80
ontop = 1

[State 6001, 3]
type = playsnd
trigger1 = Time = 0
value = 4,1

[State 6001, 4]
type = lifeadd
trigger1 = Time = 41
value = -9999

[State 6001, 5]
type = selfstate
trigger1 = Time = 41
value = 5150
;________________________________________________

[Statedef 6002]
type    = S
movetype= I
physics = N
velset = 0, 0
ctrl = 0

[State 6002, 1]
type = varset
trigger1 = time = 1
value = 5300
v = 45

[State 6002, 2]
type = Lifeadd
trigger1 = Time > 150
trigger1 = animtime = 0
Value = -9999

[State 6002, 3]
type = selfstate
trigger1 = time > 150
trigger1 = animtime = 0
value = 5150
;________________________________________________

[Statedef 6003]
type    = S
movetype= H
physics = S
velset = 0,0,0
anim = 661
ctrl = 0

[State 6003, 1]
type = varset
trigger1 = time = 0
value = 6611
v = 45

[State 6003, 2]
type = Explod
trigger1 = time = 1
trigger1 = FrontEdgeDist > 130
sprpriority  >= 2
anim = 662
pos = 0,0
postype = p1
facing = -1
ID = 662

[State 6003, 3]
type = Explod
trigger1 = time = 1
trigger1 = FrontEdgeDist < 131
sprpriority  >= 2
anim = 662
pos = 0,0
postype = p1
facing = 1
ID = 662

[State 6003, 4]
type = Explod
trigger1 = time = 0
sprpriority  >= 4
anim = F16
pos = 10,-118
postype = p1

[State 6003, 5]
type = Explod
trigger1 = time = 5
trigger2 = time = 12
trigger3 = time = 22
trigger4 = time = 28
trigger5 = time = 34
trigger6 = time = 40
trigger7 = time = 45
trigger8 = time = 50
trigger9 = time = 55
sprpriority  >= 3
anim = F1
pos = 0,-105
postype = p1

[State 6003, 6]
type = Explod
trigger1 = time = 8
trigger2 = time = 14
trigger3 = time = 22
trigger4 = time = 28
trigger5 = time = 34
trigger6 = time = 40
trigger7 = time = 45
trigger8 = time = 50
trigger9 = time = 55
sprpriority  >= 3
anim = F1
pos = 0,-105
postype = p1
facing = -1

[State 6003, 7]
type = EnvShake
trigger1 = time = 45
trigger2 = time = 55
freq = 48
time = 10
ampl = 4

[State 6003, 8]
type = PlaySnd
trigger1 = time = 44
trigger2 = time = 55
value = F5, 17
channel = 4

[State 6003, 9]
type = PlaySnd
trigger1 = time = 8
trigger2 = time = 14
trigger3 = time = 22
trigger4 = time = 28
trigger5 = time = 34
trigger6 = time = 40
trigger7 = time = 45
trigger8 = time = 50
trigger9 = time = 55
value = F5, 19

[State 6003, 10]
type = Sprpriority
trigger1 = time = 50
value  >= 4

[State 6003, 11]
type = Selfstate
trigger1 = Animtime = 0
value = 5150

[State 6003, 12]
type = Lifeadd
trigger1 = Time = 30
Value = -9999

[State 6003, 13]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1
ctrl = 1
;________________________________________________

[Statedef 6004]
type    = S
movetype= H
physics = S
velset = 0,0,0
anim = 661
ctrl = 0

[State 6004, 1]
type = varset
trigger1 = time = 0
value = 6611
v = 45

[State 6004, 2]
type = Explod
trigger1 = time = 0
sprpriority  >= 4
anim = F16
pos = 10,-117
postype = p1

[State 6004, 3]
type = Explod
trigger1 = time = 5
trigger2 = time = 12
trigger3 = time = 22
trigger4 = time = 28
trigger5 = time = 34
trigger6 = time = 40
trigger7 = time = 45
trigger8 = time = 50
trigger9 = time = 55
sprpriority  >= 3
anim = F1
pos = 0,-105
postype = p1

[State 6004, 4]
type = Explod
trigger1 = time = 8
trigger2 = time = 14
trigger3 = time = 22
trigger4 = time = 28
trigger5 = time = 34
trigger6 = time = 40
trigger7 = time = 45
trigger8 = time = 50
trigger9 = time = 55
sprpriority  >= 3
anim = F1
pos = 0,-105
postype = p1
facing = -1

[State 6004, 5]
type = PlaySnd
trigger1 = time = 8
trigger2 = time = 14
trigger3 = time = 22
trigger4 = time = 28
trigger5 = time = 34
trigger6 = time = 40
trigger7 = time = 45
trigger8 = time = 50
trigger9 = time = 55
value = F5, 19

[State 6004, 6]
type = Sprpriority
trigger1 = time = 50
value  >= 4

[State 6004, 7]
type = Selfstate
trigger1 = Animtime = 0
value = 5150

[State 6004, 8]
type = Lifeadd
trigger1 = Time = 30
Value = -9999

[State 6004, 9]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1
ctrl = 1
;________________________________________________

[Statedef 6005]
type    = S
movetype= H
physics = S
velset = 0,0,0
anim = 661
ctrl = 0

[State 6005, 1]
type = varset
trigger1 = time = 0
value = 6611
v = 45

[State 6005, 2]
type = Explod
trigger1 = time = 0
sprpriority  >= 4
anim = F16
pos = 10,-118
postype = p1

[State 6005, 3]
type = Explod
trigger1 = time = 5
trigger2 = time = 12
trigger3 = time = 22
trigger4 = time = 28
trigger5 = time = 34
trigger6 = time = 40
trigger7 = time = 45
trigger8 = time = 50
trigger9 = time = 55
sprpriority  >= 3
anim = F1
pos = 0,-105
postype = p1

[State 6005, 4]
type = Explod
trigger1 = time = 8
trigger2 = time = 14
trigger3 = time = 22
trigger4 = time = 28
trigger5 = time = 34
trigger6 = time = 40
trigger7 = time = 45
trigger8 = time = 50
trigger9 = time = 55
sprpriority  >= 3
anim = F1
pos = 0,-105
postype = p1
facing = -1

[State 6005, 5]
type = EnvShake
trigger1 = time = 45
trigger2 = time = 55
freq = 48
time = 10
ampl = 4

[State 6005, 6]
type = PlaySnd
trigger1 = time = 44
trigger2 = time = 55
value = F5, 17
channel = 4

[State 6005, 7]
type = PlaySnd
trigger1 = time = 8
trigger2 = time = 14
trigger3 = time = 22
trigger4 = time = 28
trigger5 = time = 34
trigger6 = time = 40
trigger7 = time = 45
trigger8 = time = 50
trigger9 = time = 55
value = F5, 19

[State 6005, 8]
type = Sprpriority
trigger1 = time = 50
value  >= 4

[State 6005, 9]
type = Selfstate
trigger1 = Animtime = 0
value = 5150

[State 6005, 10]
type = Lifeadd
trigger1 = Time = 30
Value = -9999

[State 6005, 11]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1
ctrl = 1

[State 6005, 12]
type = Explod
trigger1 = time = 1
anim = 6612
ID = 6612
pos = 0,-115
postype = p1
sprpriority  = 4
removetime = 5

[State 6005, 13]
type = Explod
trigger1 = time = 3
anim = 6612
ID = 6612
pos = 0,-117
postype = p1
sprpriority  = 5
removetime = 2
scale = 1.5,1.5

[State 6005, 14]
type = Explod
trigger1 = time = 5
anim = 6612
ID = 6612
pos = 2,-119
postype = p1
sprpriority  = 5
removetime = 2
scale = 2,2

[State 6005, 15]
type = Explod
trigger1 = time = 7
anim = 6612
ID = 6612
pos = 4,-121
postype = p1
sprpriority = 5
removetime = 2
scale = 2.5,2.5

[State 6005, 16]
type = Explod
trigger1 = time = 9
anim = 6612
ID = 6612
pos = 6,-123
postype = p1
sprpriority  = 5
removetime = 3
scale = 3,3

[State 6005, 17]
type = Explod
trigger1 = time = 12
anim = 6612
ID = 6612
pos = 8,-125
postype = p1
sprpriority  = 5
removetime = 6
scale = 3.5,3.5

[State 6005, 18]
type = Explod
trigger1 = time = 15
anim = 6612
ID = 6612
pos = 10,-128
postype = p1
sprpriority  = 5
removetime = 3
scale = 4,4

[State 6005, 19]
type = Explod
trigger1 = time = 18
anim = 6612
ID = 6612
pos = 12,-130
postype = p1
sprpriority  = 5
removetime = 50
scale = 4.8,4.8

[State 6005, 20]
type = Explod
trigger1 = time = 68
anim = 6612
ID = 6612
Vel = 0,7
pos = 12,-130
postype = p1
sprpriority  = 5
removetime = 60
scale = 4.8,4.8

[State 6005, 21]
type = Explod
trigger1 = time = 16
sprpriority  = 5
anim = F17
pos = 12,-150
postype = p1

[State 6005, 22]
type = Explod
trigger1 = time = 16
sprpriority  = 5
anim = F17
pos = 12,-110
postype = p1

[State 6005, 23]
type = Explod
trigger1 = time = 18
removetime = -1
anim = F10
pos = 12,-150
postype = p1
ontop = 1

[State 6005, 24]
type = EnvShake
trigger1 = time = 18
freq = 88
time = 10
ampl = 7

[State 6005, 25]
type = Playsnd
trigger1 = time = 18
value = F5,21

[State 6005, 26]
type = Playsnd
trigger1 = time = 18
value = F5,31
volume = 100
;________________________________________________

[Statedef 6006]
type    = S
movetype= H
physics = S
ctrl = 0

[State 6006, 1]
type = varset
trigger1 = time = 0
value = 6611
v = 45

[State 6006, 2]
type = Selfstate
trigger1 = time = 0
value = 5150
;________________________________________________

[Statedef 6007]
type    = S
movetype= H
physics = S
velset = 0,0,0
ctrl = 0

[State 6007, 1]
type = varset
trigger1 = time = 0
value = 43050
v = 45

[State 6007, 2]
type = Selfstate
trigger1 = time = 0
value = 5150
;________________________________________________

[Statedef 6008]
type    = S
movetype= H
physics = S
ctrl = 0

[State 6008, 1]
type = varset
trigger1 = time = 0
value = 6008
v = 45

[State 6008, 2]
type = Selfstate
trigger1 = time = 0
value = 5150
;________________________________________________

[StateDef 6099]
type = A
movetype = H
physics = N
VelSet = 0,0,0
ctrl = 0

[State 6099, 1]
type = playsnd
trigger1 = time = 0
value = 3,0
volume = 100

[State 6099, 2]
type = playsnd
trigger1 = time = 120
value = 4,1
volume = 100

[State 6099, 3]
type = changeanim2
trigger1 = time = 0
value = 3003

[State 6099, 4]
type = Explod
trigger1 = time = 120
anim = F41
id = 1268
pos = 0,0
postype = p1
facing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 132

[State 6099, 5]
type = ChangeAnim2
triggerall = time = 120
trigger1 = p1name != "Goro"
trigger2 = p1name != "Kintaro"
trigger3 = p1name != "Shao Kahn"
trigger4 = p1name != "Motaro"
value = 43050

[State 6099, 6]
type = varset
trigger1 = time = 249
value = 1
v = 26

[State 6099, 7]
type = playsnd
trigger1 = time = 251
value = F5,17
volume = 50

[State 6099, 8]
type = playsnd
trigger1 = time = 250
value = 4,21
volume = 50

[State 6099, 9]
type = playsnd
trigger1 = time = 250
value = F5,17
volume = 50

[State 6099, 10]
type = Explod
trigger1 = time = 249
anim = F17
postype = p1
pos = 0,-90
postype = p1
bindtime = 1
facing = 1
sprpriority = 3
ownpal = 1

[State 6099, 11]
type = Explod
trigger1 = time = 249
anim = F80
postype = p1
pos = 0,-90
postype = p1
bindtime = 1
facing = 1
sprpriority = 3
ownpal = 1

[State 6099, 12]
type = Explod
trigger1 = time = 254
anim = F1050
postype = p1
pos = 0,-60
vel = 9,3
removetime = -1
bindtime = 1
facing = 1
sprpriority = 2
ontop = 1
ownpal = 1

[State 6099, 13]
type = Explod
trigger1 = time = 254
anim = F1050
postype = p1
pos = 0,-60
vel = -9,3
removetime = -1
bindtime = 1
facing = 1
sprpriority = 2
ontop = 1
ownpal = 1

[State 6099, 14]
type = Explod
trigger1 = time = 250
anim = F1051
postype = p1
pos = 0,-160
vel = 9,3
removetime = -1
bindtime = 1
facing = 1
sprpriority = 2
ontop = 1
ownpal = 1

[State 6099, 15]
type = Explod
trigger1 = time = 255
anim = F1052
postype = p1
pos = 0,-130
vel = -9,-1
removetime = -1
bindtime = 1
facing = 1
sprpriority = 2
ontop = 1
ownpal = 1

[State 6099, 16]
type = Explod
trigger1 = time = 258
anim = F1052
postype = p1
pos = 0,-130
vel = 9,-1
removetime = -1
bindtime = 1
facing = 1
sprpriority = 2
ontop = 1
ownpal = 1

[State 6099, 17]
type = Explod
trigger1 = time = 258
trigger2 = time = 256
anim = F1053
postype = p1
pos = 0,-130
vel = 9,2
removetime = -1
bindtime = 1
facing = 1
sprpriority = 2
ontop = 1
ownpal = 1

[State 6099, 18]
type = Explod
trigger1 = time = 258
trigger2 = time = 256
anim = F1053
postype = p1
pos = 0,-130
vel = -9,2
removetime = -1
bindtime = 1
facing = 1
sprpriority = 2
ontop = 1
ownpal = 1

[State 6099, 19]
type = Explod
trigger1 = time = 258
anim = F1054
postype = p1
pos = 0,-90
vel = 9,4
removetime = -1
bindtime = 1
facing = 1
sprpriority = 2
ontop = 1
ownpal = 1

[State 6099, 20]
type = Explod
trigger1 = time = 254
trigger2 = time = 256
anim = F1055
postype = p1
pos = 0,-70
vel = 9,4
removetime = -1
bindtime = 1
facing = 1
sprpriority = 2
ontop = 1
ownpal = 1

[State 6099, 21]
type = Explod
trigger1 = time = 254
trigger2 = time = 256
anim = F1055
postype = p1
pos = 0,-70
vel = -9,4
removetime = -1
bindtime = 1
facing = 1
sprpriority = 2
ontop = 1
ownpal = 1

[State 6099, 22]
type = PlaySnd
trigger1 = time = 120
trigger2 = time = 130
trigger3 = time = 140
trigger4 = time = 150
trigger5 = time = 160
trigger6 = time = 170
trigger7 = time = 180
trigger8 = time = 190
trigger9 = time = 200
trigger10 = time = 210
trigger11 = time = 220
trigger12 = time = 230
trigger13 = time = 240
trigger14 = time = 250
value = F5,20

[State 6099, 23]
type = Veladd
trigger1 = time = 0
y = -2

[State 6099, 24]
type = Veladd
trigger1 = time = 25
y = 2

[State 6099, 25]
type = lifeadd
trigger1 = time = 250
value = -999999

[State 6099, 26]
type = Selfstate
trigger1 = time = 270
value = 5150
;________________________________________________

[Statedef 9000]
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
anim = 43050
ctrl = 0

[State 9000, 1]
type = HitDef
trigger1 = p2life < 2
trigger1 = p2movetype != H
attr = A, HT
numhits = -1
guardflag = A
hitflag = LAMF
sparkno = -1
p2stateno = 9001
damage = 99999,9999
kill = 0
ground.velocity = 0,50
air.velocity = 0,50
air.recovery = 0
recovery = 0

[State 9000, 2]
type = ParentVarset
trigger1 = time = 0
V = 13
value = 400

[State 9000, 3]
type = TargetState
trigger1 = 1
value = 9001

[State 9000, 4]
type = Destroyself
trigger1 = time >= 1
trigger2 = p2stateno = 9001
trigger3 = roundstate = 3
trigger4 = roundstate = 4
;________________________________________________

[Statedef 9001]
type    = S
movetype= H
physics = S
velset = 0,0
ctrl = 0

[State 9001, 1]
type = SelfState
trigger1 = time = 1
value = 9010
;________________________________________________

[Statedef 9010]
type    = S
movetype= H
physics = S
velset = 0,0
ctrl = 0

[State 9010, 1]
type = Playsnd
trigger1 = time = 0
value = F5, 22
Channel = 1
persistent = 3
volume = 50

[State 9010, 2]
type = LifeSet
trigger1 = Animelem = 1
value = 1

[State 9010, 3]
type = PosSet
trigger1 = 1
Y = 0

[State 9010, 4]
type = LifeSet
trigger1 = time = 1
value = 1

[State 9010, 5]
type = NotHitBy
value = , AP
trigger1 = 1

[State 9010, 6]
type = LifeAdd
triggerall = Time = 350
trigger1 = p2stateno != [3000,3999]
value = -500

[State 9010, 7]
type = changestate
triggerall = Time = 350
trigger1 = p2stateno != [3000,3999]
value = 5050
ctrl = 0

[State 9010, 8]
type = Changeanim
trigger1 = statetype != A
trigger1 = animexist(5300)
trigger1 = anim != 5300
value = 5300

[State 9010, 9]
type = Changeanim2
trigger1 = !animexist(5300)
trigger1 = anim != 9010
trigger1 = statetype != A
value = 9010

[State 9010, 10]
type = PosSet
trigger1 = p2stateno =[0,9999]
Y = 0
;________________________________________________

[Statedef 9011]
type    = S
movetype= H
physics = S
juggle  = -10
velset = 0,0,0
ctrl = 0

[State 9011, 1]
type = LifesET
trigger1 = 1
value = 4

[State 9011, 2]
type = ChangeAnim 
trigger1 = AnimExist(5300)
trigger1 = Anim != 5300
value = 5300
