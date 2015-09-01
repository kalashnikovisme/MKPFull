;=========================
; Fatality : Decapitation
;=========================
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
value = 222

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
trigger1 = anim = 222;0
value = 0
ctrl = 1

;===========================
; Animality : Killer Rabbit
;===========================
[Statedef 3800]
type    = S
movetype= A
physics = S
anim = 0
Velset = 0, 0
ctrl = 0

[State 210, 1]
type = StopSnd
trigger1 = time = 59
channel = -1

[State 210, 1]
type = Playsnd
trigger1 = time = 60
value = F5,52
volume = 600
loop = 1

[State 200, 7]
type = changestate
trigger1 = time = 60
value = 3801

[Statedef 3801]
type    = S
movetype= A
physics = S
Velset = 0, 0
anim = 3800
ctrl = 0

[State 2000, 0.6]
type = ScreenBound
trigger1 = time = [0, 1000]
value = 0
movecamera = 0,0

[State 9130, SetFatal]
type = velset
trigger1 = time > 107
x = 5
y = -6

[State 3010, Fire]
type = explod
trigger1 = Time = 0
anim = F11
pos = 0,0
shadow = -1,250,250
postype = p1
ontop = 1

[State 1200, BoltFat]
type = Hitdef
trigger1 = animelem = 15
attr = S, NA
hitflag = M
sparkno = -1
sparkxy = -20,-125
ground.cornerpush.veloff = 0    
p1stateno = 3802
p2stateno = 3803
p2facing = 1

[Statedef 3802]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 3801
ctrl = 0

[State 9130, SetFatal]
type = Varset
trigger1 = time = 0
V = 4
value = 4

[State 2000, 0.6]
type = ScreenBound
trigger1 = time = [0, 1000]
value = 0
movecamera = 0,0

[State 3100, Pset]
type = varset
trigger1 = time = 199
v = 26
value = 1

[State 9130, veladd]
type = veladd
trigger1 = time >= 0
x = 3

[State 9130, Setvel]
type = velset
trigger1 = time = 200
x = 0

[State 3105, cambiapos]
type = Posset
trigger1 = time = 200
X = 0

[State 200, 7]
type = changestate
trigger1 = Time = 200
value = 0
ctrl = 1

[Statedef 3803]
type    = S
movetype= H
physics = N
anim = 21238
ctrl = 0

[State 210, 1]
type = velset
trigger1 = time = 1
x = -3

[State 1601, ple]
type = Explod
triggerall = SelfAnimExist(21238)
trigger1 = time = 2
trigger2 = time = 110
trigger3 = time = 15
trigger4 = time = 120
trigger5 = time = 25
trigger6 = time = 130
trigger7 = time = 35
trigger8 = time = 140
trigger9 = time = 45
trigger10 = time = 150
trigger11 = time = 55
trigger12 = time = 160
trigger13 = time = 65
trigger14 = time = 170
trigger15 = time = 75
anim = F1
pos = 0, -70
postype = p1
facing = 1
sprpriority = 5
ownpal = 0

[State 1601, plesd]
type = Explod
triggerall = SelfAnimExist(21238)
trigger1 = time = 105
trigger2 = time = 7
trigger3 = time = 115
trigger4 = time = 20
trigger5 = time = 125
trigger6 = time = 30
trigger7 = time = 135
trigger8 = time = 40
trigger9 = time = 145
trigger10 = time = 50
trigger11 = time = 155
trigger12 = time = 60
trigger13 = time = 165
trigger14 = time = 70
trigger15 = time = 175
anim = F2
pos = 0, -50
postype = p1
facing = 1
sprpriority = 5
ownpal = 0

[State 1601, pd]
type = Explod
triggerall = SelfAnimExist(21238)
trigger1 = time = 0
anim = F2
pos = 0, -60
postype = p1
facing = 1
sprpriority = 3
ownpal = 0
ontop = 1

[State 210, 1]
type = Playsnd
trigger1 = time = 0
value = 4,1

[State 2000, 0.6]
type = ScreenBound
trigger1 = time = [0, 1000]
value = 0
movecamera = 0,0

[State 3100, Pset]
type = varset
trigger1 = time = 199
v = 26
value = 1

[State 3105, cambiapos]
type = Posset
trigger1 = time = 200
Y = 900
X = 0

[State 3105, end]
type = lifeadd
trigger1 = time = 200
value = -9999

[State 3105, end]
type = Selfstate
trigger1 = time = 200
value = 5150

;======================
; Friendship : Bubbles
;======================
[Statedef 3700]
type    = S
movetype= A
physics = S
anim = 0
ctrl = 0

[State 3700, 1]
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

[State 3700, 2]
type = varset
trigger1 = time = 61
v = 26
value = 1

[State 3700, 3]
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

[State 3701, 1]
type = StopSnd
trigger1 = time = 0
channel = -1

[State 3701, 2]
type = Playsnd
trigger1 = time = 1
value = F5,50
volume = 600

[State 3701, 3]
type = ParentVarSet
trigger1 = movehit
V = 4
value = 3

[State 3701, 4]
type = HitDef
trigger1 = time = 0
attr = S, NA
sparkno = -1
guard.sparkno = -1
p2stateno = 6002

[State 3701, 5]
type = Helper
trigger1 = time = 45
stateno = 3702
postype = p1
pos = 0,0
sprpriority = 1
keyctrl = 0
ownpal = 0
under = 1

[Statedef 3702]
ctrl = 0
anim = 3701

[State 3702, 1]
type = Helper
trigger1 = animelem = 4
stateno = 3703
name = "bubble"
postype = p1
pos = 0,0
sprpriority = 1
keyctrl = 0
ownpal = 0
under = 1

[State 3702, 2]
type = destroyself
trigger1 = time = 100

[Statedef 3703]
ctrl = 0
anim = 3702
velset = 4

[State 3703, 1]
type = VarRandom
trigger1 = time = 0
v = 11
range = -30, 0

[State 3703, 2]
type = velset
trigger1 = time = 0
y = var(11) *0.1

[State 3703, 3]
type = changeanim
trigger1 = time = 40
value = 3703

[State 3703, 4]
type = velset
trigger1 = time = 40
x = 0
y = 0

[State 3703, 5]
type = PlaySnd
trigger1 = anim = 3703
trigger1 = animtime = 0
value = F5,14

[State 3703, 6]
type = destroyself
trigger1 = anim = 3703
trigger1 = animtime = 0

;====================================
; Friendship : Yeah, those are boobs.
;====================================
[Statedef 3900]
type    = S
movetype= A
physics = S
anim = 0
ctrl = 0

[State 3900, 1]
type = changeanim
trigger1 = time = 60
value = 3770

[State 3900, 2]
type = HitDef
trigger1 = anim = 3770
trigger1 = animelem = 4
attr = S, NA
damage = 1000
sparkno = -1
guard.sparkno = -1
p2stateno = 21239

[State 3900, 3]
type = VarSet
trigger1 = movehit
V = 4
value = 3

[State 3900, 4]
type = explod
trigger1 = Time = 126
anim = 3771
pos = 0,0
postype = p1
ontop = 1

[State 3900, 5]
type = PlaySnd
trigger1 = anim = 3770
trigger1 = animelem = 4
value = F1,6

[State 3900, 6]
type = PlaySnd
trigger1 = anim = 3770
trigger1 = animelem = 8
value = F1,4

[State 3900, 7]
type = PlaySnd
trigger1 = anim = 3770
trigger1 = animelem = 10
value = F5,50

[State 3900, 8]
type = changestate
trigger1 = anim = 3770
trigger1 = animtime = 0
value = 0
ctrl = 1

;=========================
; Hara Kiri : Fan Tricks
;=========================
[Statedef 3503]
type    = S
movetype= A
physics = S
anim = 0
ctrl = 0
sprpriority = 4

[State 430, 31sdaa]
type = changeanim
trigger1 = Time = 60
value = 3500

[State 3804, 1]
type = Playsnd
trigger1 = time = 63
value = F5,23

[State 3503, 1]
type = Playsnd
trigger1 = time = 70
value = 1,0

[State 3503, 2]
type = explod
triggerall = anim = 3500
trigger1 = animelem = 4
trigger2 = animelem = 12
trigger3 = animelem = 22
trigger4 = animelem = 28
anim = F15
postype = p1
pos = 11,-94
sprpriority = 5

[State 3503, 3]
type = explod
triggerall = anim = 3500
trigger1 = animelem = 6
trigger2 = animelem = 16
trigger3 = animelem = 26
anim = F16
postype = p1
pos = 11,-70
sprpriority = 5

[State 3503, 4]
type = PlaySnd
triggerall = anim = 3500
trigger1 = animelem = 4
trigger2 = animelem = 12
trigger3 = animelem = 22
trigger4 = animelem = 28
trigger5 = animelem = 12
trigger6 = animelem = 22
trigger7 = animelem = 28
value = F5,23

[State 3503, 5]
type = PlaySnd
triggerall = anim = 3500
trigger1 = animelem = 4
trigger2 = animelem = 12
trigger3 = animelem = 22
trigger4 = animelem = 28
trigger5 = animelem = 12
trigger6 = animelem = 22
trigger7 = animelem = 28
value = F5,17

[State 3503, 6]
type = explod
triggerall = anim = 3500
trigger1 = animelem = 23
anim = 3781
postype = p1
pos = 0,0
sprpriority = 5

[State 3503, 7]
type = PlaySnd
trigger1 = time = 144
value = F5,16

[State 3503, 8]
type = explod
triggerall = anim = 3500
trigger1 = animelem = 31
anim = 3782
postype = p1
pos = 0,0

[State 3503, 9]
type = PlaySnd
trigger1 = time = 170
value = F5,16

[State 3503, 10]
type = explod
triggerall = anim = 3500
trigger1 = animtime = 0
anim = 3783
postype = p1
pos = 0,0
sprpriority = 4

[State 3503, 11]
type = explod
triggerall = anim = 3500
trigger1 = animtime = 0
anim = 3784
postype = p1
pos = 0,0

[State 3503, 12]
type = explod
triggerall = anim = 3500
trigger1 = animtime = 0
anim = 3785
postype = p1
pos = 0,0

[State 3503, 13]
type = explod
triggerall = anim = 3500
trigger1 = animtime = 0
anim = 3786
postype = p1
pos = 0,0

[State 3503, 14]
type = explod
triggerall = anim = 3500
trigger1 = animtime = 0
anim = 3787
postype = p1
pos = 0,0

[State 3503, 15]
type = explod
triggerall = anim = 3500
trigger1 = animtime = 0
anim = 3788
postype = p1
pos = 0,0

[State 3503, 16]
type = varset
triggerall = anim = 3500
trigger1 = animtime = 0
v = 26
value = 1

[State 3503, 17]
type = PlaySnd
trigger1 = time = 212
value = F7,0

[State 3503, 18]
type = lifeadd
triggerall = anim = 3500
trigger1 = animtime = 0
value = -9999

[State 3503, 19]
type = changestate
trigger1 = Time = 212
value = 6007
ctrl = 1

;==========
; Babality 
;==========
[Statedef 3300]
type    = S
movetype= A
physics = S
anim = 0
Velset = 0, 0
ctrl = 0

[State 3300, 1]
type = Varset
trigger1 = movehit
V = 4
value = 2

[State 3300, 2]
type = changeanim
trigger1 = Time = 60
value = 3789

[State 3300, 2]
type = playsnd
trigger1 = time = 104
value = 5,14

[State 3300, 3]
type = Hitdef
trigger1 = AnimElem = 11
trigger1 = Anim = 3789
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

[State 3300, 4]
type = playsnd
trigger1 = time = 175
value = F5,47

[State 3300, 5]
type = changestate
trigger1 = Anim = 3789
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;=================
; Fatality - Fans
;=================
[Statedef 3100]
type    = S
movetype= A
physics = S
juggle  = 1
anim = 0
Velset = 0, 0
ctrl = 0

[State 3100, 1]
type = Varset
trigger1 = movehit
V = 4
value = 1

[State 3100, 2]
type = changeanim
trigger1 = Time = 60
value = 6016

[State 3100, 3]
type = Playsnd
trigger1 = time = 63
value = F5,23

[State 3100, 4]
type = Playsnd
trigger1 = time = 70
value = 1,0

[State 3100, 5]
type = HitDef
trigger1 = animelem = 3
trigger2 = animelem = 5
trigger3 = animelem = 8
trigger4 = animelem = 11
trigger5 = animelem = 14
trigger6 = animelem = 18
trigger7 = animelem = 22
trigger8 = animelem = 27
trigger9 = animelem = 31
attr = S, NT
damage    = 0,0
p2stateno = 3804
animtype = Heavy
air.animtype = Back
air.fall = 1
;numhits = 1
hitonce = 0
fall.recover = 0
guardflag = HL
pausetime = 6,3
sparkno = 16
sparkxy = -18,-96
guard.sparkno = -1
hitsound   = 5,17
guardsound = 5,0

[State 3100, 6]
type = HitDef
trigger1 = animelem = 32
attr = S, NT
damage    = 9999, 0
p2stateno = 2110
animtype = Light
air.animtype = Back
air.fall = 1
numhits = 1
fall.recover = 0
guardflag = HL
pausetime = 40,10
sparkno = 16
sparkxy = 0,-145
guard.sparkno = -1
hitsound   = 5,18
guardsound = 5,0

[State 3100, 7]
type = changestate
trigger1 = anim = 6016
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 3804]
type    = S
movetype= H
physics = N
anim = 21238
ctrl = 0

[State 3804, 1]
type = Playsnd
trigger1 = time = 0
value = F5,23

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

;============================
; Fatality - Boot to da Head
;============================
[Statedef 3200]
type    = S
movetype= A
physics = S
juggle  = 1
anim = 0
Velset = 0, 0
ctrl = 0

[State 3200, 1]
type = Varset
trigger1 = movehit
V = 4
value = 1

[State 3200, 2]
type = changeanim
trigger1 = Time = 30
value = 6017

[State 3200, 3]
type = Playsnd
trigger1 = time = 75
value = 5,14

[State 3200, 4]
type = HitDef
trigger1 = animelem = 9
attr = S, NT
damage    = 0,0
p2stateno = 3201
animtype = Light
air.animtype = Back
air.fall = 1
numhits = 1
fall.recover = 0
guardflag = HL
pausetime = 0,0
sparkno = -1
sparkxy = -18,-96
guard.sparkno = -1
hitsound   = -1
guardsound = 5,0

[State 3200, 5]
type = Playsnd
trigger1 = anim = 6017
trigger1 = animelem = 14
value = F5,15

[State 3200, 6]
type = Playsnd
trigger1 = anim = 6017
trigger1 = animelem = 18
value = 4,8

[State 3200, 7]
type = changestate
trigger1 = anim = 6017
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 3201]
type    = S
movetype= H
physics = N
anim = 5300
ctrl = 0

[State 3201, 1]
type = ChangeAnim2
trigger1 = time = 0
value = 6018

[State 3201, 2]
type = changestate
trigger1 = time = 110
value = 6005
ctrl = 1
