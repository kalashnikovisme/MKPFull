;================================
;Fatality 1
;================================
[Statedef 3100]
type    = S
movetype= I
physics = S
velset = 0,0,0
anim = 0
ctrl = 0

[State 660, change]
type = changeanim
trigger1 = time = 45
value = 3100

[State 9250, cammonow]
type = Playsnd
trigger1 = anim = 3100
trigger1 = animelem = 5
value = 6,1
volume = 60
channel = 2

[State 9250, change]
type = changeanim
trigger1 = anim = 3100
trigger1 = animtime = 0
value = 0

[State 9251,cyrax];call cyrax
type = Helper
trigger1 = anim = 3100
trigger1 = animelem = 9
postype = p1
pos = 60,0
stateno = 3110

[State 9251,sektor];Call Sektor
type = Helper
trigger1 = P2BodyDist X <110
trigger1 = numhelper(3110) < 1
ID = 3110
postype = p1
pos = P2BodyDist X ,200
stateno = 3120
sprpriority = 0

[State 9251, SetFatal]         ;setea fatality
type = Varset                  ;(palabra escrita y hablada)
trigger1 = time = 1
V = 4
value = 1

[state 3100,change]
type = changestate
trigger1 = p2bodydist X < 70
value = 3101
;-------------------------
[Statedef 3101]
type    = S
movetype= A
physics = S
anim = 3107

[State 9254, kill hit]
type = HitDef
trigger1 = !movecontact
attr = S, NA
p2stateno = 2110
numhits = -1
pausetime = 40,10
sparkno = 16
sparkxy = 0,-145
hitsound   = 5,0
numhits = 0

[State 200, 7]
type = changestate
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;==============================
;Cyrax
;==============================
[Statedef 3110]
type    = S
movetype= A
physics = N
anim = 3101

[State 9325, sound]
type = Playsnd
trigger1 = animelem = 7
value = 4,6;0     ;sonido del pecho abriendose
channel = 2

[State 9325, bomba killing helper]
type = helper
trigger1 = AnimElem = 8
stateno = 3111
name = "Bomb"       ;bomba de cyrax
pos = 0, -90
postype = p1

[state 9331,nocam]
type = screenbound
trigger1 = 1;time =0
value = 1
movecamera = 0,0
;=============BOMBA
[Statedef 3111]
type    = S
movetype= A
physics = N
velset = 4,0
anim = 3102           ;aniamcion bomba

[State 9327, soundss]
type = Playsnd
trigger1 = time = 30  ;sonidos bomba revotando
trigger2 = time = 40
value = 0,4
channel = 2

[state 9331,nocam]
type = screenbound
trigger1 = 1;time =0
value = 1

[State 9327, explod]    ;animacion explocion
type = Explod
trigger1 = time = 60
anim = F11
pos = 0, 0
postype = p2
facing = 1
sprpriority = 3
ownpal = 0
ontop = 1

[State 9327, snd]
type = playsnd
trigger1 = time = 60
value = 4,19           ;termina animacion explosion
channel = 3

[State 9327, 1]         ;esto crea la animacion de la bomba cayendo
type = Veladd
trigger1 = time > 0
y = .2

[State 9327, 2]
type = velset
trigger1 = Pos Y >= 0
x = 0
y = 0

[State 9327, 3]
type = posadd
trigger1 = time > 30
trigger1 = time < 35
Y = -5

[State 9327, 4]
type = posadd
trigger1 = time > 30
trigger1 = time < 45
X = 1.5

[State 9327, 5]
type = posadd
trigger1 = time = 35
trigger3 = time = 55
Y = 3

[State 9327, sacabomba]
type = Destroyself
trigger1 = time = 70       ;y aca se acaba la animacion

[State 9327, kill hit]     ;define el golpe de la 11 animacion de la bomba
type = HitDef
trigger1 = Animelem = 11   ;la ultima animacion (unica con caja de colision)
attr = S, NA               ;sin esto no le pega
p2stateno=3150
envshake.time = 15
envshake.freq = 130
envshake.ampl = 8
numhits = 0
;=============================
;Cyrax end
;=============================

;==============================
;Sektor
;==============================
[Statedef 3120]
type    = A
movetype= A
physics = N
anim = 3103       ;sektor pegando
velset = 0, -18

[State 9328, kill hit]
type = HitDef
trigger1 = Animelem = 2    ;la ultima animacion (unica con caja de colision)
attr = A, NP               ;sin esto no le pega
sprpriority = 0
p2stateno=3151
numhits = 0

[State 9327, snd]
type = playsnd
trigger1 = time = 0
value = 4,25
channel = 1

[State 9328, change]
type = Changestate
trigger1 = Pos Y <= -80
value = 3121
;---------------
[Statedef 3121]
type    = A
movetype= A
physics = N
juggle  = 4
velset = 0,-1
anim = 3104

[State 9329,sss]
type = Veladd
trigger1 = time > 3
y = .4

[State 9329,change]
type = changestate
trigger1 = Pos Y > -5
value = 3122

[Statedef 3122]
type    = S
movetype= H
physics = N
velset = 0,0
anim = 3105

[State 9251,smoke];Call Smoke
type = Helper
trigger1 = time = 0
postype = p1
ID=3101
pos = 300,0
stateno = 3130
facing = -1
;=============================
;Sektor end
;=============================

;==============================
;Smoke
;==============================
[Statedef 3130]
type    = S
movetype= H
physics = N
anim = 3106
   
[state 9331,nocam]
type = screenbound
trigger1 = 1
value = 1

[State -3]
type = Explod
trigger1 = TimeMod=8,3
trigger1 = numhelper(3101) = 1
anim = F19
name = "Smoke"
pos = 10, -90
postype = p1
bindtime = 1 
vel = 0, 0 
random = 30, 70
removetime = -2
sprpriority = 5
shadow = -1, -1, -1 
removeongethit = 0

[State 9333, explo]    ;animacion explocion
type = Explod
trigger1 = time = 0
anim = F11
pos = 0, 0
postype = p1
facing = 1
ownpal = 0
ontop = 1

[State 9327, snd]
type = playsnd
trigger1 = time = 0
value = 4,19           ;termina animacion explosion

[State 9331, kill hit]
type = HitDef
trigger1 = Animelem = 6
attr = S, NA           ;sin esto no le pega
p2stateno=3152
;=============================
;Smoke end
;=============================
[StateDef 3150]; manda bomba cyrax
type = A
movetype= H
physics = N
anim=5050
velset = 3.5,-7;8;10

[State 2, blood111]
type = Helper
trigger1 = movehit
anim = F16
pos = 0, 0
postype = p1

[state 333,play]
type = playsnd
trigger1 = time = 0
value = 3,0
channel = 4

[state 9331,nocam]
type = veladd
trigger1 = 1
trigger1 = time >0
Y = 0.33
;-----------------
[StateDef 3151];manda sektor
type = A
movetype= H
physics = N
anim=5050
velset = -1,-10;11

[state 333,play]
type = playsnd
trigger1 = time = 0
value = 3,0
channel = 4

[State 2, blood111]
type = Helper
trigger1 = movehit
stateno = 27
pos = 0, -10
postype = p1
persistent = 0
ignorehitpause = 1

[state 9331,nocam]
type = veladd
trigger1 = 1
trigger1 = time >0
Y = 0.33
;------------------------
[StateDef 3152]
type = A
movetype= H
physics = N
anim=5050
velset = 7,-4

[state 9331,nocam];fuera de camara
type = screenbound
trigger1 = 1
value = 0

[state 333,play]
type = playsnd
trigger1 = time = 0
value = 3,0
channel = 4

[State 2, blood111]
type = Helper
trigger1 = movehit
stateno = 27
pos = 0, -10
postype = p1
persistent = 0
ignorehitpause = 1

[state 9331,nocam]
type = veladd
trigger1 = 1
trigger1 = time >0
Y = 0.33

;================================
; Hace el Hara Kiri y muere
;================================
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

[State 210, 1]
type = StopSnd
trigger1 = time = 0
channel = -1

[State 3105, end]
type = changeanim
trigger1 = time = 60
value = 3500

;arregla el bug del tiempo
[State 9873, 1]
type = AssertSpecial
trigger1 = 1
flag = timerfreeze

[State 430, 31sdaa]
type = changestate
trigger1 = anim = 3500
trigger1 = animtime = 0
value = 3504

[State 210, 1]
type = Playsnd
triggerall = anim = 3500
trigger1 = animelem = 5
trigger2 = animelem = 7
trigger3 = animelem = 9
value = 30,0
;---------------------
[Statedef 3504]
type    = S
movetype= A
physics = S
anim = 3501

[State 210, 1]
type = Playsnd
trigger1 = animelem = 2
value = 3,0

[State 210, 1]
type = Playsnd
trigger1 = time = 5
value = 30,1

[State -3]
type = Explod
trigger1 = TimeMod=8,3
anim = F19
pos = 0, -135
postype = p1
bindtime = 1 
vel = 0, 0 
random = 30, 70
removetime = -2
sprpriority = 5
shadow = -1, -1, -1 
removeongethit = 0

[State 210, 1]
type = Playsnd
trigger1 = time = 149
value = 4,19
channel = 4

[State 430, 31sdaa]
type = changestate
trigger1 = time = 150
value = 3505
;-----------------------------
[Statedef 3505]
type    = S
movetype= H
physics = S
ctrl = 0
velset = 0,0,0

[State 3100, Pset]
type = varset
trigger1 = time = 0
v = 26
value = 1

[State 1200, 2at]
type = Explod
trigger1 = time = 0
anim = 3502
pos = 0,0
postype = p1
sprpriority  = 3

[State 1200, 2at]
type = explod
trigger1 = time = 30
anim = F6
pos = 0,-100
postype = p1
sprpriority  = 4

[State 210, 1]
type = Playsnd
trigger1 = time = 29
value = 4,19
channel = 4

[State 1200, 2at]
type = helper
trigger1 = time = 1
trigger1 = FrontEdgeDist > 130
stateno = 3506
pos = 0,-118
postype = p1
facing = -1
sprpriority  >= 2

[State 1200, 2at]
type = helper
trigger1 = time = 1
trigger1 = FrontEdgeDist < 131
stateno = 3506
pos = 0,-118
postype = p1
facing = 1
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
trigger1 = time = 0
value = F5, 17
channel = 3

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
trigger1 = time = 60
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
;-----------------------------
[Statedef 3506]
type    = S
movetype= I
physics = N
velset = -2.4,-6,0
anim = 43051

[State 3100, Pset]
type = veladd
trigger1 = time <40
y = 0.3

[State 3100, Pset]
type = posset
trigger1 = time = 40
y = 500

[State 210, 1]
type = Playsnd
trigger1 = time = 39
value = 4,19
channel = 4

[State 1200, 2at]
type = explod
trigger1 = time = 39
anim = F6
pos = 0,0
postype = p1