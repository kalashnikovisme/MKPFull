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
attr = A, HT
numhits = -1
guardflag = A
hitflag = LAMF
;priority  = 7,Hit
sparkno = -1
p2stateno = 9001;9010
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
value = 9001;9010

[State 9000, 6]
type = Destroyself
trigger1 = time >= 1
trigger2 = p2stateno = 9001;9010
trigger3 = roundstate = 3
trigger4 = roundstate = 4

;---------------------------------------------------------------------------
;Fatality time
[Statedef 9001]
type    = S
movetype= H
physics = S
velset = 0,0
ctrl = 0

;
[State 987123, 1]
type = SelfState
trigger1 = time = 1
value = 9010

;-----------------------

;Fatality time
[Statedef 9010]
type    = S
movetype= H
physics = S
velset = 0,0
ctrl = 0

;FINISH SOUND music
[State 2, 5.999]
type = Playsnd
trigger1 = time = 0
value = F5, 22
Channel = 1
persistent = 3
volume = 50

; hara kiri humano/cpu
[State 987123, 1]
type = changestate
triggerall= p2stateno != [3000, 3999]
trigger1 = command = "harakiri"
trigger2 = var(50) = 1
trigger2 = time = 1
trigger2 = random%5 = 1
triggerall = animexist(3500)
value = 3500

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
triggerall = Time = 350
trigger1 = p2stateno != [3000,3999]
value = -500

; After 600 ticks and with no fatality, p2 falls down
[State 987123, 1]
type = changestate;SelfState
triggerall = Time = 350
trigger1 = p2stateno != [3000,3999]
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

;-------------------------------------------------------------------------------
;Shows Mercy bastardo!
[Statedef 3997]
type    = S
movetype= I
physics = S
anim = 0
ctrl = 0

;sonido de shows mercy
[State 210, 1]
type = Playsnd
trigger1 = time = 60
value = 6,2
volume = 60

;cartel de mercy
[State 181, cartel]
type = Explod
trigger1 = time = 60
ID = 200
anim = F200
pos = 156,0
postype = left
bindtime = -1
facing = 1
sprpriority = 2
ontop = 1
ownpal = 1
removetime = -2

;explod invisible, para que no se pueda hacer 2 veces la mercy
[State 181, cartel]
type = Explod
trigger1 = time = 0
ID = 3800
anim = 888
removetime = -1

;manda a custom sin control
[State 430, 31sdaa]
type = helper
trigger1 = time = 0
stateno = 3998
postype = p1

;previene fallo si tenemos poca energia
[State 9130, SetFatal]
type = lifeset
trigger1 = life < 2
value = 2

;variables de finish
[State 9130, SetFatal]
type = Varset
trigger1 = time = 0
V = 3
value = 0

[State 9130, SetFatal]
type = Varset
trigger1 = time = 0
V = 13
value = 0

[State 9130, SetFatal]
type = Varset
trigger1 = time = 0
V = 9
value = 0

[State 9130, SetFatal]
type = Varset
trigger1 = time = 0
V = 19
value = 0

[State 9130, SetFatal]
type = Varset
trigger1 = time = 0
V = 4
value = 0
;fin de cosas lokas de finish

[State 8000, sadsd]
type = BGPalFX
trigger1 = numexplod(200)=1
time = 9999
add = 0, 0, 0

;cuando termina la anim de mercy vuelve a tener control
[State 430, 31sdaa]
type = changestate
trigger1 = time > 60
trigger1 = numexplod(200)=0
value = 0
ctrl = 1

;helper que golpea a pl2
[Statedef 3998]
type    = S
movetype= A
physics = S
anim = 9000
ctrl = 0

;manda a custom (si no fallaba)
[State 1200, BoltFat]
type = HitDef
trigger1 = time = 0
attr = S, NT
hitflag = MAFD
guardflag = A
damage = -60
sparkno = -1
p2stateno = 3999

[State 430, 31sdaa]
type = destroyself
trigger1 = movehit

;custom state
[Statedef 3999]
type    = S
movetype= H
physics = S
ctrl = 0

;vuelve a tener control
[State 430, 31sdaa]
type = selfstate
trigger1 = time = 138
value = 0
ctrl = 1

; -----------------

[Statedef 3500]
type    = S
movetype= A
physics = S
;anim = 0
ctrl = 0

;arregla el bug del tiempo
[State 9873, 1]
type = AssertSpecial
trigger1 = 1
flag = timerfreeze

[State 430, 31sdaa]
type = helper
trigger1 = time = 0
stateno = 3501
postype = p1

[State 430, 31sdaa]
type = changestate
trigger1 = Time = 0;60
value = 3503

[State 430, 31sdaa]
type = NotHitBy
trigger1 = 1
value = SCA

; Golpeamos al oponente y lo mandamos al custom state sin control...
[Statedef 3501]
type    = S
movetype= A
physics = S
anim = 9000
ctrl = 0

[State 1200, BoltFat]
type = HitDef
trigger1 = p2statetype = S
attr = S, NT
hitflag = MAFD
guardflag = A
sparkno = -1
p2stateno = 3502

[State 200, 7]
type = destroyself
trigger1 = movehit

; El oponente queda sin control, la variable se pone en valor "hara kiri" y espera a que muera el otro para festejar.
[Statedef 3502]
movetype= H
ctrl = 0

[State 9130, SetFatal]
type = Varset
trigger1 = time = 0
V = 4
value = 6

[State 3105, end]
type = changeanim
trigger1 = time = 0
value = 0

[State 430, 31sdaa]
type = selfstate
trigger1 = p2life <=0
value = 0
ctrl = 1

;--- Cosas de Fatales ---

;- Para fatal de jade, classic sub-zero... -
[Statedef 6001]
type    = S
movetype= I
physics = N
velset = 0, 0
ctrl = 0

[State 3105, queda clavado]
type = Explod
trigger1 = time = 0
anim = 6001
pos = 0,0
postype = p1
sprpriority = 1

[State 2, sangre y mas sangre]
type = explod
trigger1 = time = 0
trigger2 = time = 10
trigger3 = time = 20
trigger4 = time = 30
trigger5 = time = 40
pos = -4, -51
postype = p1
anim = F80; arreglar anim de sangre
ontop = 1

[State 200, grito]
type = playsnd
trigger1 = Time = 0
value = 4,1

[State 200, 7]
type = lifeadd
trigger1 = Time = 41
value = -9999

[State 200, 7]
type = selfstate
trigger1 = Time = 41
value = 5150

;--- Para Friendship --- (queda mareandose)

[Statedef 6002]
type    = S
movetype= I
physics = N
velset = 0, 0
ctrl = 0

[State 3100, asigna anim]
type = varset
trigger1 = time = 1
v = 45
value = 5300

[State 9399, 3]
type = Lifeadd
trigger1 = Time > 150
trigger1 = animtime = 0
Value = -9999

[State 9399, 2]
type = selfstate
trigger1 = time > 150
trigger1 = animtime = 0
value = 5150

;--- Para fatales de decapitación tipo la de cage ---

[Statedef 6003];661
type    = S
movetype= H
physics = S
ctrl = 0
velset = 0,0,0
anim = 661

[State 9399, 2]
type = varset
trigger1 = time = 0
v = 45
value = 6611

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

; --- Para fatales de decapitación tipo martillazo de Shao Kahn ---

[Statedef 6004];6612
type    = S
movetype= H
physics = S
ctrl = 0
velset = 0,0,0
anim = 661

[State 9399, 2]
type = varset
trigger1 = time = 0
v = 45
value = 6611

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

;--- Cabeza ?
[Statedef 6005];6613
type    = S
movetype= H
physics = S
ctrl = 0
velset = 0,0,0
anim = 661

[State 9399, 2]
type = varset
trigger1 = time = 0
v = 45
value = 6611

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

;--- Para quedar decapitado en el suelo ---

[Statedef 6006];6614
type    = S
movetype= H
physics = S
ctrl = 0

[State 9399, 2]
type = varset
trigger1 = time = 0
v = 45
value = 6611

[State 9399, 2]
type = Selfstate
trigger1 = time = 0
value = 5150

; Invisible al final :P
[Statedef 6007]
type    = S
movetype= H
physics = S
ctrl = 0
velset = 0,0,0

[State 9399, 2]
type = varset
trigger1 = time = 0
v = 45
value = 888

[State 9399, 2]
type = Selfstate
trigger1 = time = 0
value = 5150

;--- Para quedar decapitado en el suelo en fatal de goro ---

[Statedef 6008];6614
type    = S
movetype= H
physics = S
ctrl = 0

[State 9399, 2]
type = varset
trigger1 = time = 0
v = 45
value = 6008

[State 9399, 2]
type = Selfstate
trigger1 = time = 0
value = 5150







;---------------------------------------------
;----------- Fatality 3 - atari -----------
;---------------------------------------------

[Statedef 3303]
type    = S
movetype= A
physics = S
juggle  = 100
anim = 6663
Velset = 0, 0
ctrl = 0

[State 9130, SetFatal]
type = Varset
trigger1 = 1
V = 4
value = 1

[State 0, StopSnd]
type = StopSnd
trigger1 = time = 1
channel = -1

[State 210, 1]
type = Playsnd
trigger1 = time = 4
value = F5,11
volume = 60
channel = 1

[State 210, bber]
type = PlaySnd
trigger1 = Time = 1
value = 7, 5

[State 8000, sad]
type = BGPalFX
trigger1 = time = 1
time = 9999
add = -20, -20, -20

[State 8000, sadsd]
type = BGPalFX
trigger1 = time = 5
time = 9999
add = -50, -50, -50

[State 430, 31sdaa]
type = changeanim
trigger1 = Time = 109
value = 0



[State 9130, SetFatal]
type = Varset
trigger1 = 1
V = 4
value = 1

[State -3]
type = Explod
trigger1 = anim = 6663
trigger1 = animelem = 3
anim = 6661
name = "press"
pos = 0,0;0, -90
postype = p1
bindtime = 1
vel = 0, 0
removetime = -2
ontop = 0
removeongethit = 1

[State -3]
type = Explod
trigger1 = anim = 6663
trigger1 = animelem = 3
anim = 6662
name = "presslow"
pos = 0,0;0, -90
postype = p1
bindtime = 1
vel = 0, 0
removetime = -2
ontop = 1
removeongethit = 1

[State -3]
type = playsnd
trigger1 = anim = 6663
trigger1 = animelem = 3
value = 20,5

[State 7200, Helper]
type = Helper
trigger1 = animelem = 4
id = 6664
name = "THE ROCK"
pos = 0, -225
postype = P2
stateno = 30031;7200
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
trigger1 = anim = 0
value = 0

[State 200, 7]
type = changestate
trigger1 = time = 165
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;The Rock
[Statedef 30031];7200
type = A
movetype = A
physics = N
anim = 6664
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
p2stateno = 1

[State 7200, ChangeState]
type = ChangeState
trigger1 = Pos Y >= -10
value = 40005;7201

;---------------------------------------------------------------------------
;The Rock 2nd State
[Statedef 40005];7201
type = A
movetype = I
physics = N
anim = -1
ctrl = 0
velset = 0, 0
sprpriority = 10

[State -2, NoBGM]
type = AssertSpecial
trigger1 = time >= 0
flag = nomusic

[State 7200, shake]
type = envshake
trigger1 = time = 0
time = 20
freq = 250
ampl = 10

;--------------------------------------------------------
;Fatality END

[Statedef 1]
type    = S
movetype= H
physics = S
ctrl = 0
velset = 0,0,0

[State 9130, Setdisappear]
type = Varset
trigger1 = 1
V = 2
value = 1

[State 1, 123]
type = ChangeAnim2
Trigger1 = Time = 0
value = 888

[State 1, 123]
type = Explod
trigger1 = time = 2
anim = F17
postype = p1
pos = 0,-10
facing = 1
;postype = front
bindtime = 1
facing = 1
sprpriority = -5
ownpal = 1

[State 1, 123]
type = Explod
trigger1 = time = 1
anim = F17
postype = p1
pos = 0,-50
facing = 1
;postype = front
bindtime = 1
facing = 1
sprpriority = -5
ownpal = 1

[State 1, 123]
type = Explod
trigger1 = time = 0
anim = F17
postype = p1
pos = 0, -90
facing = 1
;postype = front
bindtime = 1
facing = 1
sprpriority = -5
ownpal = 1

[State 1, pup]
type = PlaySnd
trigger1 = time = 0
value = F5,16
volume = 255

[State 1, pup]
type = PlaySnd
trigger1 = time = 1
value = F5,16
volume = 255

[State 1, pughp]
type = PlaySnd
trigger1 = time = 2
value = F5, 17
volume = 255

[State 1, pughp]
type = PlaySnd
trigger1 = time = 3
value = F5, 17
volume = 255

[State 1, pughp]
type = PlaySnd
trigger1 = time = 4
value = F5, 18
volume = 255

[State 1, pughp]
type = PlaySnd
trigger1 = time = 5
value = F5, 19
volume = 255

[State 1, hp]
type = LifeSet
trigger1 = time >= 100
value = 0

[State 1, 335]
type = SelfState
trigger1 = Time = 101
value = 5150

;====================
; Hara Kiri											
;====================
[Statedef 3503]
type    = S
movetype= A
physics = S
anim = 5300
ctrl = 0

[State 3503, 1]
type = VarSet
trigger1 = time > 20
V = 4
value = 6

[State 3503, 1]
type = changeanim
trigger1 = time = 60
value = 30031
sprpriority = 3

;[State 3503, 2]
;type = removeExplod
;trigger1 = time = [70,200]
;ID = 1119

[State 3503, 3]
type = Playsnd
trigger1 = anim = 30031
trigger1 = animelem = 5
value = 20,12

[State 3503, 4]
type = Explod
trigger1 = anim = 30031
trigger1 = animelem = 7
anim = 30032
name = "flame"
pos = -0,0;0, -90
postype = p1
bindtime = -1
vel = 0, 0
removetime = -2
removeongethit = 0
ontop = 1

[State 3503, 5]
type = Playsnd
trigger1 = anim = 30031
trigger1 = animelem = 7
value = 20,13

[State 3503, 6]
type = playsnd
trigger1 = anim = 30031
trigger1 = animelem = 8
value = 20,4

[State -3]
type = Explod
trigger1 = anim = 30031
trigger1 = animelem = 8
triggerall = var(50) = 0
anim = 3553
name = "humoarriba"
pos = -0,-120;0, -90
postype = p1
bindtime = -1
vel = -1, -2
random = 10, 40
removetime = -2
sprpriority = 1

[State -3]
type = Explod
trigger1 = anim = 30031
trigger1 = animelem = 8
triggerall = var(50) = 0
anim = 3553
name = "humoarriba"
pos = -0,-120;0, -90
postype = p1
bindtime = -1
vel = -0.7, -2.6
random = 10, 40
removetime = -2
sprpriority = 1

[State -3, Helper]
type = Helper
trigger1 = time = 0
id = 3501
pos = 0, 0
postype = P2
stateno = 3501
helpertype = normal


[State 3503, 7]
type = LifeSet
trigger1 = anim = 30031
trigger1 = animelem = 9
value = 0

[State 3503, 8]
type = Selfstate
trigger1 = anim = 30031
trigger1 = animelem = 9
value = 6004

;===========================decapitation

[Statedef 3116]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 1                      ;Number of air juggle points move takes
velset = 10,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0        
anim = 0                       ;Change animation (Def: no change)

[State 9130, SetFatal]
type = Varset
trigger1 = time = 1
V = 4
value = 1

[State 8000, sadsd]
type = BGPalFX
trigger1 = time >= 1
time = 9999
add = -100, -100, -100

[State 9130, nobgm]
type = assertspecial
trigger1 = time = 1
flag = nomusic

[State 3200, Play]
type = stopSnd
trigger1 = time = 0
trigger1 = 1
channel = -1

[State 3200, Play]
type = PlaySnd
trigger1 = time = 1
trigger1 = 1
value = F5, 11
volume = 155

[State 3200, Pl]
type = Posset
trigger1 = 1
Y = 0

[State 3200, Pl]
type = changeanim
trigger1 = time = 30
value = 33333

[State 9251,saber1]
type = explod
trigger1 = anim = 33333
trigger1 = animelem = 1
anim = 33335
postype = p1
pos = 0,0
;scale = 1,1
ontop = 0
;sprpriority = -1
bindtime = -1
removetime = -2

[State 9251,saber2]
type = explod
trigger1 = anim = 33333
trigger1 = animelem = 1
anim = 33334
postype = p1
pos = 0,0
;scale = 1,1
ontop = 1
;sprpriority = -1
bindtime = -1
removetime = -2


[State 3201, 1]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage    = 0, 0                   ;Damage that move inflicts
animtype = Light                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
air.animtype = Back
guardflag = HL
hitflag = MAF                    ;Flags of conditions that move can hit
;priority = 2, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default
p2facing = 1
;pausetime = 0,2                  ;Time attacker pauses, time victim shakes
sparkno = -1
ground.cornerpush.veloff = 0    
sparkxy = 0,-90
guard.sparkno = -1
hitsound = -1
guardsound = 5,14             
ground.type = High                 ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 5
ground.hittime  = 20
guard.velocity = -15
guard.slidetime = 20
guard.ctrltime = 20 
ground.velocity = 0,0              ;Time to regain control after guard (def: guard.slidetime)
guard.velocity = -2
air.velocity = -2, 1
airguard.velocity = -1.9            ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.fall = 1
fall.recover = 0
p2stateno = 6003
;envshake.time = 10
;envshake.freq = 30
;envshake.ampl = 5 

[State 3201, 7]
type = playsnd
trigger1 = Anim = 33333
trigger1 = Animelem = 2 
value = 20,10

[State 3201, 7]
type = ChangeState
trigger1 = Time = 132 
value = 0
ctrl = 1



;===========================fatal laser

[Statedef 9200]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 1                      ;Number of air juggle points move takes
velset = 10,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0        
anim = 333999                       ;Change animation (Def: no change)

[State 9130, SetFatal]
type = Varset
trigger1 = time = 1
V = 4
value = 1

[State 8000, sadsd]
type = BGPalFX
trigger1 = time >= 1
time = 9999
add = -100, -100, -100

[State 9130, nobgm]
type = assertspecial
trigger1 = time = 1
flag = nomusic

[State 3200, Play]
type = stopSnd
trigger1 = time = 0
trigger1 = 1
channel = -1

[State 3200, Play]
type = PlaySnd
trigger1 = time = 1
trigger1 = 1
value = F5, 11
volume = 155

[State 9251,misil]
type = Helper
trigger1 = animelem = 7
postype = p1
pos = 0,0
stateno = 9210

[State 9251,misil]
type = Helper
trigger1 = animelem = 11
postype = p1
pos = 0,0
stateno = 9220

[State 3200, Pl]
type = Posset
trigger1 = 1
Y = 0

[State 9251,beam1a]
type = explod
trigger1 = animelem = 6
trigger2 = animelem = 7
trigger3 = animelem = 8
trigger4 = animelem = 9
trigger5 = animelem = 10
anim = 3550
postype = p1
pos = 0,0
scale = 1,1
ontop = 0
;sprpriority = -1
bindtime = -1
removetime = -2

[State 9251,beam1a]
type = explod
trigger1 = animelem = 6
trigger2 = animelem = 7
trigger3 = animelem = 8
trigger4 = animelem = 9
trigger5 = animelem = 10
anim = 3449
postype = p1
pos = 40,-110
scale = 1,1
ontop = 0
;sprpriority = -1
bindtime = -1
removetime = -2
random = 50,50

[State 9251,beam1a]
type = explod
trigger1 = animelem = 6
trigger2 = animelem = 7
trigger3 = animelem = 8
trigger4 = animelem = 9
trigger5 = animelem = 10
anim = 3449
postype = p2
pos = 20,-120
scale = 1,1
ontop = 0
;sprpriority = -1
bindtime = -1
removetime = -2
random = 50,50

[State 9251,beam1a]
type = explod
trigger1 = animelem = 6
trigger2 = animelem = 7
trigger3 = animelem = 8
trigger4 = animelem = 9
trigger5 = animelem = 10
anim = 3553
postype = p2
pos = 20,-130
scale = 1,1
ontop = 1
;sprpriority = -1
bindtime = -1
removetime = -2
random = 10,50

[State 9251,beam1a]
type = explod
trigger1 = animelem = 6
trigger2 = animelem = 7
trigger3 = animelem = 8
trigger4 = animelem = 9
trigger5 = animelem = 10
anim = 3553
postype = p2
pos = 20,-130
scale = 1,1
ontop = 0
;sprpriority = -1
bindtime = -1
removetime = -2
random = 20,50

[State 9251,beam1a]
type = explod
trigger1 = animelem = 6
trigger2 = animelem = 7
trigger3 = animelem = 8
trigger4 = animelem = 9
trigger5 = animelem = 10
anim = 3553
postype = p2
pos = 20,-130
scale = 1,1
ontop = 1
;sprpriority = -1
bindtime = -1
removetime = -2
random = 6,50

[State 9251,beam1a]
type = explod
trigger1 = animelem = 6
trigger2 = animelem = 7
trigger3 = animelem = 8
trigger4 = animelem = 9
trigger5 = animelem = 10
anim = 3551
postype = p2
pos = 0,-110
scale = 1,1
ontop = 1
;sprpriority = -1
bindtime = -1
removetime = -2

[State 9251,beam1a]
type = explod
trigger1 = animelem = 6
trigger2 = animelem = 7
trigger3 = animelem = 8
trigger4 = animelem = 9
trigger5 = animelem = 10
anim = 3554
postype = p1
pos = 0,0
scale = 1,1
ontop = 1
;sprpriority = -1
bindtime = -1
removetime = -2

[State 9251,beam1a]
type = playsnd
trigger1 = animelem = 6
trigger2 = animelem = 7
trigger3 = animelem = 8
trigger4 = animelem = 9
trigger5 = animelem = 10
value = 20,4

[State 9251,beam1a]
type = playsnd
trigger1 = animelem = 7
trigger2 = animelem = 8
trigger3 = animelem = 9
trigger4 = animelem = 10
value = 20,0

[State 9251,beam1a]
type = explod
trigger1 = animelem = 4
anim = 3552
postype = p1
pos = 52,-110
scale = 1,1
ontop = 1
;sprpriority = -1
bindtime = -1
removetime = -2

[State 3,33]
type = Explod
trigger1 = animelem = 11
anim = 3553
name = "smokie"
pos = 60, -115
postype = p1
bindtime = -2
vel = 0, 0
removetime = -2
ontop = 1
removeongethit = 0

[State 3,33]
type = Explod
trigger1 = animelem = 12
anim = 3553
name = "smokie"
pos = 50, -95
postype = p1
bindtime = -2
vel = 0, 0
removetime = -2
ontop = 1
removeongethit = 0

[State 3,33]
type = Explod
trigger1 = animelem = 13
anim = 3553
name = "smokie"
pos = 40, -90
postype = p1
bindtime = -2
vel = 0, 0
removetime = -2
ontop = 1
removeongethit = 0

[State 3,33]
type = Explod
trigger1 = animelem = 10
anim = 30228
name = "explod"
pos = 0, -110
postype = p2
bindtime = -2
vel = 0, 0
removetime = -2
ontop = 1
removeongethit = 0

[State 3201, 7]
type = playsnd
trigger1 = Animelem = 6 
value = 20,15

[State 3201, 7]
type = ChangeState
trigger1 = AnimTime = 0 
value = 3209
ctrl = 1

[Statedef 9210]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 1                      ;Number of air juggle points move takes
velset = 10,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0        
anim = 9000

[State 3201, 1]
type = HitDef
trigger1 = AnimElem = 1
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage    = 0, 0                   ;Damage that move inflicts
animtype = Light                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
air.animtype = Back
guardflag = HL
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 2, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default
p2facing = 1
pausetime = 0,2                  ;Time attacker pauses, time victim shakes
sparkno = s3449
ground.cornerpush.veloff = 0    
sparkxy = 0,-90
guard.sparkno = -1
hitsound = -1
guardsound = 5,14             
ground.type = High                 ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 5
ground.hittime  = 20
guard.velocity = -15
guard.slidetime = 20
guard.ctrltime = 20 
ground.velocity = 0,0              ;Time to regain control after guard (def: guard.slidetime)
guard.velocity = -2
air.velocity = -2, 1
airguard.velocity = -1.9            ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.fall = 1
fall.recover = 0
p2stateno = 9211
;envshake.time = 10
;envshake.freq = 30
;envshake.ampl = 5   

[Statedef 9211]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 1                      ;Number of air juggle points move takes
velset = 10,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0        
anim = 5006                       ;Change animation (Def: no change)

[State 8000, sadsd]
type = PalFX
trigger1 = time = 1
time = 9999
add = 50,0,0

[State 8000, sadsd]
type = PalFX
trigger1 = time = 6
time = 9999
add = 100,0,0

[State 8000, sadsd]
type = PalFX
trigger1 = time = 12
time = 9999
add = 150,0,0

[State 8000, sadsd]
type = PalFX
trigger1 = time = 18
time = 9999
add = 200,0,0

[State 8000, sadsd]
type = PalFX
trigger1 = time = 24
time = 9999
add = 250,0,0

[State 8000, sadsd]
type = playsnd
trigger1 = time = 24
value = 4,1
volume = 164

[State 8000, sadsd]
type = PalFX
trigger1 = time = 30
time = 9999
add = 250,-50,-50

[State 8000, sadsd]
type = PalFX
trigger1 = time = 36
time = 9999
add = 250,-100,-100

[State 8000, sadsd]
type = PalFX
trigger1 = time = 42
time = 9999
add = 250,-150,-150

[State 8000, sadsd]
type = PalFX
trigger1 = time = 48
time = 9999
add = 250,-200,-200

[State 8000, sadsd]
type = PalFX
trigger1 = time = 52
time = 9999
add = 250,-250,-250


[Statedef 9220]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 1                      ;Number of air juggle points move takes
velset = 10,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0        
anim = 9000

[State 3201, 1]
type = HitDef
trigger1 = AnimElem = 1
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage    = 0, 0                   ;Damage that move inflicts
animtype = Light                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
air.animtype = Back
guardflag = HL
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 2, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default
p2facing = 1
pausetime = 0,2                  ;Time attacker pauses, time victim shakes
sparkno = s3449
ground.cornerpush.veloff = 0    
sparkxy = 0,-90
guard.sparkno = -1
hitsound = -1
guardsound = 5,14             
ground.type = High                 ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 5
ground.hittime  = 20
guard.velocity = -15
guard.slidetime = 20
guard.ctrltime = 20 
ground.velocity = 0,0              ;Time to regain control after guard (def: guard.slidetime)
guard.velocity = -2
air.velocity = -2, 1
airguard.velocity = -1.9            ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.fall = 1
fall.recover = 0
p2stateno = 9221
;envshake.time = 10
;envshake.freq = 30
;envshake.ampl = 5   

[Statedef 9221]
type    = S
movetype= H
physics = S
ctrl = 0
velset = 0,0,0

[State 9130, Setdisappear]
type = Varset
trigger1 = 1
V = 2
value = 1

[State 1, 123]
type = ChangeAnim2
Trigger1 = Time = 0
value = 662

[State 1, 123]
type = Explod
trigger1 = time = 2
anim = F17
postype = p1
pos = 0,-10
facing = 1
;postype = front
bindtime = 1
facing = 1
sprpriority = -5
ownpal = 1

[State 1, 123]
type = Explod
trigger1 = time = 1
anim = F17
postype = p1
pos = 0,-50
facing = 1
;postype = front
bindtime = 1
facing = 1
sprpriority = -5
ownpal = 1

[State 1, 123]
type = Explod
trigger1 = time = 0
anim = F17
postype = p1
pos = 0, -90
facing = 1
;postype = front
bindtime = 1
facing = 1
sprpriority = -5
ownpal = 1

[State 1, pup]
type = PlaySnd
trigger1 = time = 0
value = F5,16
volume = 255

[State 1, pup]
type = PlaySnd
trigger1 = time = 1
value = F5,16
volume = 255

[State 1, pughp]
type = PlaySnd
trigger1 = time = 2
value = F5, 17
volume = 255

[State 1, pughp]
type = PlaySnd
trigger1 = time = 3
value = F5, 17
volume = 255

[State 1, pughp]
type = PlaySnd
trigger1 = time = 4
value = F5, 18
volume = 255

[State 1, pughp]
type = PlaySnd
trigger1 = time = 5
value = F5, 19
volume = 255

[State 1, hp]
type = LifeSet
trigger1 = time >= 100
value = 0

[State 1, 335]
type = SelfState
trigger1 = Time = 101
value = 5150

;--------------------------------
[Statedef 9230]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 1                      ;Number of air juggle points move takes
velset = 10,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0        
anim = 9000

[State 3201, 1]
type = HitDef
trigger1 = AnimElem = 1
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage    = 0, 0                   ;Damage that move inflicts
animtype = Light                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
air.animtype = Back
guardflag = HL
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 2, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default
p2facing = 1
pausetime = 0,2                  ;Time attacker pauses, time victim shakes
sparkno = s3449
ground.cornerpush.veloff = 0    
sparkxy = 0,-90
guard.sparkno = -1
hitsound = -1
guardsound = 5,14             
ground.type = High                 ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 5
ground.hittime  = 20
guard.velocity = -15
guard.slidetime = 20
guard.ctrltime = 20 
ground.velocity = 0,0              ;Time to regain control after guard (def: guard.slidetime)
guard.velocity = -2
air.velocity = -2, 1
airguard.velocity = -1.9            ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.fall = 1
fall.recover = 0
p2stateno = 9231
;envshake.time = 10
;envshake.freq = 30
;envshake.ampl = 5   

[Statedef 9231]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 1                      ;Number of air juggle points move takes
velset = 10,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0        
anim = 21238                       ;Change animation (Def: no change)

[State 8000, sadsd]
type = PalFX
trigger1 = time = 0
time = 9999
add = -240,-240,-240

[State 8000, sadsd]
type = Playsnd
trigger1 = time = 0
value = 4,1
volume = 166

;------------
; FRIENDSHIP
;------------
[Statedef 3900]
type    = S
movetype= A
physics = S
juggle  = 2
ctrl = 0
velset = 0,0,0
anim = 0

[State 9130, SetFatal]
type = Varset
trigger1 = time = 1
V = 4
value = 3

[State 1200, chg]
type = changeanim
trigger1 = time = 20
value = 9000

[State 1601, Hit]
type = HitDef
trigger1 = anim = 9000
trigger1 = animelem = 1
attr = S, NA
sparkno = -1
numhits = - 1
p2stateno = 6002

[State 9251,misil]
type = explod
trigger1 = anim = 9000
trigger1 = time = 0
anim = 3900
postype = p1
pos = 0,0
sprpriority = 2
