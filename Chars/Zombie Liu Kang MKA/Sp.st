[Statedef 1000];bola alta
type    = S
movetype= A
physics = S
juggle  = 2
velset = 0,0
anim = 1003
ctrl = 0

[State 10000, open]
type = PlaySnd
trigger1 = AnimElem = 2 
value = 4, 6

[State 1000, 0.1]
type = Posset
trigger1 = Pos Y != 0
trigger1 = time = 0
Y = 0

[State 1000, nonkilling helper]
type = helper
trigger1 = AnimElem = 2
stateno = 1001
name = "Shot2"
id = 1001
pos = -5,-105
postype = p1

[State 1200, 10]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0
;----------------------
[Statedef 1001];bola
type    = S
movetype= A
physics = N
velset = 0,0
anim = 1000
sprpriority = 2
ctrl = 0

[State 1200, 10]
type = velset
trigger1 = animelem = 4
x = 9

[State 1200, BoltFat]
type = hitdef
trigger1 = time = 0
attr = S, SP
damage    = 200, 50
animtype = Light
air.animtype = Back
guardflag = HL
pausetime = 0,2
sparkno = 6
sparkxy = 20,0
guard.sparkno = 6
sparkxy = 50,0
hitsound   = S4,18
guardsound = S4,18
ground.type = High
ground.slidetime = 20
ground.hittime  = 15
ground.velocity = -15,0
air.velocity = -4,-6
air.fall = 1
fall.recover = 0
air.juggle = 3
yaccel = 0.45
p2stateno = 21238
kill       = root, Var(9) = 0
fall.kill  = root, Var(9) = 0
guard.kill = root, Var(9) = 0

[State 1001, gone]
type = destroyself
trigger1 = movecontact
trigger2 = AnimTime = 0

;--------------------------------------------------------------------------------------------------
; rayo en el aire
[StateDef 1100]
type    = A
movetype= A
physics = S
juggle  = 6
ctrl = 0
velset = 0,0,0
anim = 1010

[State 10000, open]
type = PlaySnd
trigger1 = AnimElem = 2 
value = 4, 6

[State 1000, nonkilling helper]
type = helper
trigger1 = AnimElem = 3
stateno = 1001
name = "Shot1"
id = 1101
pos = 40,-130
postype = p1

[State 88500, Fall]
type = ChangeState
trigger1 = AnimTime = 0
value = 1101

; cae de rayo en el aire
[Statedef 1101]
type    = A
movetype= I
physics = A
juggle  = 4
velset = 0,0
anim = 2244
ctrl = 0

[State 1101]
type = Veladd
trigger1 = time > 0
y = .3

; bola abajo
[StateDef 1200]
type    = S
movetype= A
physics = S
juggle  = 2
ctrl = 0
velset = 0,0,0
anim = 1004

[State 10000, open]
type = PlaySnd
trigger1 = AnimElem = 2 
value = 4, 6

[State 1000, 0.1]
type = Posset
trigger1 = Pos Y != 0
trigger1 = time = 0
Y = 0

[State 1000, nonkilling helper]
type = helper
trigger1 = AnimElem = 2
stateno = 1001
name = "Shot1"
id = 900
pos = 25,-60
postype = p1

[State 1200, 10]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0
;--------------
[StateDef 1300]; patada bicicleta
type    = A
movetype= A
physics = S
juggle  = 2
ctrl = 0
;velset = 0,-1.5;2;1;0;-1;0
anim = 1300;20002

;--------sombra roja
[State 1100, aAccell]
type = VelAdd
trigger1 = var(46) != 0
x = 3

[State 3100, Super D]
type = AfterImage
trigger1 = var(46) != 0
FrameGap = 3
length = 30;15
timegap = 1
PalBright   =   0,  0,  0
PalContrast = 80,10,10
PalAdd      =   10,  0,  0
PalMul      =  1,1,1
Trans = Add1
time = 30;15
;------sombra roja


[State 1100, aAccell]
type = Velset
trigger1 = Time =3;> 2
y = -1;.5

[State 1100, aAccell]
type = VelAdd
trigger1 = Time > 2
x = 6.5;8
;y = 0.07;1

[State 1100, aAccell]
type = VelAdd
trigger1 = Time > 10;8;5;4;7
;trigger1 = pos y < -30
y = 0.07;1;08;1;05

[State 1000, gibber]
type = PlaySnd
trigger1 = Time = 1
value = 4, 9

[State 1000, 10]
type = HitDef
trigger1 = !movecontact
trigger1 = p2stateno != 11;type != C
attr = S, SA
animtype = Light                 
;air.animtype = Back
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
;air.velocity = -2.3, -2.6
;airguard.velocity = -1.9           
ground.cornerpush.veloff = -10
air.fall = 1
fall.recover = 0
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 1000, Bounf]
type = ChangeState
trigger1 = Moveguarded = 1
value = 1301

[State 1000, BounceOff]
type = ChangeState
trigger1 = AnimTime = 0
;trigger2 = pos Y > -10
trigger2 = time > 50;15
ctrl = 1
value = 0
;------
[StateDef 1301]
type    = S
movetype= I
physics = S
ctrl = 0
velset = 0,-5.5;6;.5;1.8
anim = 1302

[State 1100, aAccell]
type = VelAdd
trigger1 = 1
x = -1
y= 0.25;3;1

[State 1001, 10]
type = Changestate
trigger1 = pos Y > 0
trigger1 = time > 2
value = 0
ctrl = 1
;---------------
[StateDef 1302];p2stateno
type    = A
movetype= H
physics = S
ctrl = 0
anim = 21238
velset = 0,0

[State 3010, Var]
type = VarSet
trigger1 = var(17) = 1
v = 17 
value = 0

[state 1000,ply]
type = playsnd
trigger1 = (time % 15) = 1
value = 3,(2 + (random%2)*6)

[State 820, 4351]
type = Veladd
Trigger1 = time < 50;1;time < 30;48;pos Y < 0;1
x = -8

[State 821, 4] ;Hit ground
type = SelfState
Trigger1 = p2stateno = 0
trigger1 = pos Y >= 0
trigger1 = alive = 1
value = 0
ctrl = 1 

[State 820, 4351]
type = Veladd
Trigger1 = time > 49;p2stateno = 0
Trigger1 = pos Y < 0;statetype = A
x = -2;6;-1;2
y = 0.4

[State 1001, 1]
type = Selfstate
trigger1 = Pos Y = 0
trigger1 = AnimTime = 0
trigger1 = alive = 0
value = 5050

[State 821, 4] ;Hit ground
type = SelfState
Trigger1 = p2stateno = 0
Trigger1 = pos Y < 0;statetype = A
value = 5050 
;---------------
[StateDef 1303];p1stateno
type    = A
movetype= A
physics = S
ctrl = 0
anim = 1301;21238
velset = 0,0

[State 1000, snd]
type = Playsnd
triggerall = movecontact
;trigger1 = (time % 15) = 1
trigger1 = AnimElem = 2
trigger2 = AnimElem = 5
trigger3 = AnimElem = 7
trigger4 = AnimElem = 10
trigger5 = AnimElem = 12
trigger6 = AnimElem = 15
trigger7 = AnimElem = 17
value = F5,1

[State 235, sssa]
type = envshake
trigger1 = AnimElem = 2
trigger2 = AnimElem = 5
trigger3 = AnimElem = 7
trigger4 = AnimElem = 10
trigger5 = AnimElem = 12
trigger6 = AnimElem = 15
trigger7 = AnimElem = 17
time = 8;15
freq = 150
ampl = 5;7

;[State 820, 4351]
;type = posadd
;trigger1 = p2bodydist X <0 ;time =  0
;X = 10;(p2bodydist X) ;-6

[State 820, 4351]
type = Veladd
Trigger1 = time < 50;1;time < 30;48;pos Y < 0;1
x = 8

[State 1000, BounceOff]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0
;-----------------
[StateDef 1310]; bici roja
type    = A
movetype= A
physics = S
juggle  = 2
ctrl = 0
anim = 1300

;--------sombra roja
[State 3100, Super D]
type = AfterImage
trigger1 = animelem = 2
FrameGap = 3
length = 30;15
timegap = 1
PalBright   =   0,  0,  0
PalContrast = 80,10,10
PalAdd      =   10,  0,  0
PalMul      =  1,1,1
Trans = Add1
time = 50
;------sombra roja

[State 1100, aAccell]
type = Velset
trigger1 = Time =3
y = -1

[State 1100, aAccell]
type = VelAdd
trigger1 = Time > 2
x = 8.5

[State 1100, aAccell]
type = VelAdd
trigger1 = Time > 10
y = 0.07

[State 1000, gibber]
type = PlaySnd
trigger1 = Time = 1
value = 4, 9

[State 1000, 10]
type = HitDef
trigger1 = !movecontact
trigger1 = p2stateno != 11
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
air.fall = 1
fall.recover = 0
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 1000, Bounf]
type = ChangeState
trigger1 = Moveguarded = 1
value = 1301

[State 1000, BounceOff]
type = ChangeState
trigger1 = AnimTime = 0
;trigger2 = pos Y > -10
trigger2 = time > 50
ctrl = 1
value = 0

;-----------------
;patada voladora
[StateDef 1400]
type    = A
movetype= A
physics = N
juggle  = 2
ctrl = 0
velset = 0,0
anim = 900

[State 1100, aAccell]
type = VelSet
trigger1 = Time < 40
x = 10

[State 1000, gibber]
type = PlaySnd
trigger1 = Time = 1
value = 4, 8

[State 1000, bber]
type = PlaySnd
trigger1 = Time = 1
value = 4, 17


[State 1000, 10]
type = HitDef
trigger1 = AnimElem = 3
attr = S, SA
animtype  = back
damage    = 232, 116
guardflag = HLMF
hitflag = AHLMF
pausetime = 20,2
sparkno = -1
guard.sparkno = -1
hitsound   = 5,0
p1stateno = 1401
guardsound = 5,14 
ground.type = High
ground.slidetime = 0
ground.hittime  = 0
ground.velocity = -3,-3
air.velocity = -3,-3
;yaccel = 0.45
air.hittime = 17  
fall = 1
fall.recover = 0
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 1000, Bounf]
type = ChangeState
trigger1 = Moveguarded = 1
value = 1401

[State 1000, BounceOff]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0
;--------------------------------------------
[StateDef 1401]
type    = A
movetype= I
physics = N
ctrl = 0
velset = 0,0

[State 1000, Accellw]
type = VelSet
trigger1 = time = 0
x = 0

[State 1001, 10]
type = Changestate
trigger1 = AnimTime = 0
value = 0
ctrl = 1