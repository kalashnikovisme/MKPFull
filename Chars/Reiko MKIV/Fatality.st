[Statedef 9000]
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
anim = 9000
ctrl = 0


[State 9000, 5]
type = HitDef
trigger1 = p2life < 2
trigger1 = p2movetype != H
;trigger1 = 1
attr = A, HT
numhits = -1
guardflag = A
hitflag = LAMF
;priority  = 7,Hit
sparkno = -1
p2stateno = 9010
damage = 99999,9999
kill = 0
ground.velocity = 0,50
air.velocity = 0,50
air.recovery = 0
recovery = 0

[State 9000, 5.5]
type = ParentVarset
trigger1 = time = 0
V = 13
value = 400

[State 9000, 6d]
type = TargetState
trigger1 = 1
;trigger1 = StateType != A
value = 9010

[State 9000, 6]
type = Destroyself
trigger1 = time >= 1
trigger2 = p2stateno = 9010
trigger3 = roundstate = 3
trigger4 = roundstate = 4


;---------------------------------------------------------------------------
;Fatality time
[Statedef 9010]
type    = S
movetype= H
physics = S
velset = 0,0
ctrl = 0

[State 9873, 1]
type = LifeSet
trigger1 = Animelem = 1
value = 1

[State 9873, 1]
type = PosSet
trigger1 = 1
Y = 0

[State 9873, 1324]
type = LifeSet
trigger1 = time = 1
value = 1

[State 9873, 13234]
type = NotHitBy
value = , AP
trigger1 = 1

[State 987123, 1]
type = LifeAdd
trigger1 = Time = 350
trigger1 = p2stateno != 660
value = -500

; After 600 ticks and with no fatality, p2 falls down
[State 987123, 1]
type = SelfState
trigger1 = Time = 350
trigger1 = p2stateno != 660
value = 5050
ctrl = 0

[State 9010, 0.1]
type = Changeanim
trigger1 = statetype != A
trigger1 = animexist(5300)
trigger1 = anim != 5300
value = 5300

[State 9010, 1]
type = Changeanim2
trigger1 = !animexist(5300)
trigger1 = anim != 9010
trigger1 = statetype != A
value = 9010

[State 9010, 034.1]
type = PosSet
trigger1 = p2stateno =[0,9999]
Y = 0

;-------------------------------------------------------------------------------


[Statedef 9011]
type    = S
movetype= H
physics = S
juggle  = -10
ctrl = 0
velset = 0,0,0

[State 987123, 1]
type = LifesET
trigger1 = 1
value = 4

; Dizzying animation
[State 987124, 2]
type = ChangeAnim 
trigger1 = AnimExist(5300)
trigger1 = Anim != 5300
value = 5300

;--------------------------------------
[Statedef 661]
type    = S
movetype= H
physics = S
ctrl = 0
velset = 0,0,0
anim = 661

[State 1200, 2at]
type = Explod
trigger1 = time = 1
trigger1 = FrontEdgeDist > 130
anim = 662
pos = 0,0
postype = p1
facing = -1
ID = 662
sprpriority  >= 2
;ontop = 1

[State 1200, 2at]
type = Explod
trigger1 = time = 1
trigger1 = FrontEdgeDist < 131
anim = 662
pos = 0,0
postype = p1
facing = 1
ID = 662
sprpriority  >= 2
;ontop = 1


[State 1200, 2at]
type = Explod
trigger1 = time = 0
anim = F16
pos = 10,-118
postype = p1
sprpriority  >= 4

[State 1200, at]
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
anim = F1
pos = 0,-105
postype = p1
;facing = 1
sprpriority  >= 3

[State 1200, at]
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
anim = F1
pos = 0,-105
postype = p1
facing = -1
sprpriority  >= 3

[State 22, round hit]
type = EnvShake
trigger1 = time = 45
trigger2 = time = 55
freq = 48
time = 10
ampl = 4

[State 1200, ound]
type = PlaySnd
trigger1 = time = 44
trigger2 = time = 55
value = F5, 17
channel = 4

[State 1200, 45ound]
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

[State 9010, 0.1]
type = Sprpriority
trigger1 = time = 50
value  >= 4

[State 9399, 2]
type = Selfstate
trigger1 = Animtime = 0
value = 5150

[State 9399, 3]
type = Lifeadd
trigger1 = Time = 30
Value = -9999

[State 5150, 8]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1
ctrl = 1

[Statedef 6612]
type    = S
movetype= H
physics = S
ctrl = 0
velset = 0,0,0
anim = 661


[State 1200, 2at]
type = Explod
trigger1 = time = 0
anim = F16
pos = 10,-117
postype = p1
sprpriority  >= 4

[State 1200, at]
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
anim = F1
pos = 0,-105
postype = p1
;facing = 1
sprpriority  >= 3

[State 1200, at]
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
anim = F1
pos = 0,-105
postype = p1
facing = -1
sprpriority  >= 3


[State 1200, 45ound]
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

[State 9010, 0.1]
type = Sprpriority
trigger1 = time = 50
value  >= 4

[State 9399, 2]
type = Selfstate
trigger1 = Animtime = 0
value = 5150

[State 9399, 3]
type = Lifeadd
trigger1 = Time = 30
Value = -9999

[State 5150, 8]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1
ctrl = 1



[Statedef 6613]
type    = S
movetype= H
physics = S
ctrl = 0
velset = 0,0,0
anim = 661


[State 1200, 2at]
type = Explod
trigger1 = time = 0
anim = F16
pos = 10,-118
postype = p1
sprpriority  >= 4

[State 1200, at]
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
anim = F1
pos = 0,-105
postype = p1
;facing = 1
sprpriority  >= 3

[State 1200, at]
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
anim = F1
pos = 0,-105
postype = p1
facing = -1
sprpriority  >= 3

[State 22, round hit]
type = EnvShake
trigger1 = time = 45
trigger2 = time = 55
freq = 48
time = 10
ampl = 4

[State 1200, ound]
type = PlaySnd
trigger1 = time = 44
trigger2 = time = 55
value = F5, 17
channel = 4

[State 1200, 45ound]
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

[State 9010, 0.1]
type = Sprpriority
trigger1 = time = 50
value  >= 4

[State 9399, 2]
type = Selfstate
trigger1 = Animtime = 0
value = 5150

[State 9399, 3]
type = Lifeadd
trigger1 = Time = 30
Value = -9999

[State 5150, 8]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1
ctrl = 1

[State 1200, er2at]
type = Explod
trigger1 = time = 1
anim = 6612
ID = 6612
pos = 0,-115
postype = p1
sprpriority  = 4
removetime = 5

[State 1200, er2at]
type = Explod
trigger1 = time = 3
anim = 6612
ID = 6612
pos = 0,-117
postype = p1
sprpriority  = 5
scale = 1.5,1.5
removetime = 2

[State 1200, er2at]
type = Explod
trigger1 = time = 5
anim = 6612
ID = 6612
pos = 2,-119
postype = p1
sprpriority  = 5
scale = 2,2
removetime = 2

[State 1200, er2at]
type = Explod
trigger1 = time = 7
anim = 6612
ID = 6612
pos = 4,-121
postype = p1
sprpriority = 5
scale = 2.5,2.5
removetime = 2

[State 1200, er2at]
type = Explod
trigger1 = time = 9
anim = 6612
ID = 6612
pos = 6,-123
postype = p1
sprpriority  = 5
scale = 3,3
removetime = 3

[State 1200, er2at]
type = Explod
trigger1 = time = 12
anim = 6612
ID = 6612
pos = 8,-125
postype = p1
sprpriority  = 5
scale = 3.5,3.5
removetime = 6

[State 1200, er2at]
type = Explod
trigger1 = time = 15
anim = 6612
ID = 6612
pos = 10,-128
postype = p1
sprpriority  = 5
scale = 4,4
removetime = 3

[State 1200, er2at]
type = Explod
trigger1 = time = 18
anim = 6612
ID = 6612
pos = 12,-130
postype = p1
sprpriority  = 5
scale = 4.8,4.8
removetime = 50

[State 1200, er2at]
type = Explod
trigger1 = time = 68
anim = 6612
ID = 6612
Vel = 0,7
pos = 12,-130
postype = p1
sprpriority  = 5
scale = 4.8,4.8
removetime = 60

[State 1200, er2at]
type = Explod
trigger1 = time = 16
anim = F17
pos = 12,-150
postype = p1
sprpriority  = 5
;removetime = -1

[State 1200, er2at]
type = Explod
trigger1 = time = 16
anim = F17
pos = 12,-110
postype = p1
sprpriority  = 5
;removetime = -1

[State 1200, er2at]
type = Explod
trigger1 = time = 18
anim = F10
pos = 12,-150
postype = p1
ontop = 1
removetime = -1


[State 22, roundt]
type = EnvShake
trigger1 = time = 18
freq = 88
time = 10
ampl = 7

[State 22, rndt]
type = Playsnd
trigger1 = time = 18
value = F5,21
;volume = 100

[State 22, 245t]
type = Playsnd
trigger1 = time = 18
value = F5,31
volume = 100

;-------------------
[Statedef 6614]
type    = S
movetype= H
physics = S
ctrl = 0
velset = 0,0,0
anim = 661

[State 210, 1]
type = Playsnd
trigger1 = time = 0
value = F5,17
volume = 100

[State 210, 12]
type = Playsnd
trigger1 = time = 0
value = F5,16
volume = 100

[State 210, 21]
type = Playsnd
trigger1 = time = 0
value = F5,18
volume = 100


[State 181, 6]
type = Explod
trigger1 = time = 0
anim = 664
pos = 0,0
postype = p2
facing = 1
sprpriority = 3
ownpal = 1

[State 1200, 2at]
type = Explod
trigger1 = time = 0
anim = F16
pos = 10,-117
postype = p1
sprpriority  >= 4

[State 1200, at]
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
anim = F1
pos = 0,-105
postype = p1
;facing = 1
sprpriority  >= 3

[State 1200, at]
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
anim = F1
pos = 0,-105
postype = p1
facing = -1
sprpriority  >= 3


[State 1200, 45ound]
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

[State 9010, 0.1]
type = Sprpriority
trigger1 = time = 50
value  >= 4

[State 9399, 2]
type = Selfstate
trigger1 = Animtime = 0
value = 5150

[State 9399, 3]
type = Lifeadd
trigger1 = Time = 30
Value = -9999

[State 5150, 8]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1
ctrl = 1
