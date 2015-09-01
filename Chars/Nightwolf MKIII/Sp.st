;---------------------------------------;
;	-	 Flechazo	 -	;
;---------------------------------------;

[StateDef 1000]
type    = S
movetype= A
physics = S
juggle  = 4
ctrl = 0
velset = 0,0,0
anim = 1000

[State 1200, ZappySound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 4, 4
volume = 50

[State 1200, Za]
type = VelSet
trigger1 = time = 1
trigger2 = Vel Y != 0
y = 0

[State 1200, BoltFat]
type = Projectile
trigger1 = AnimElem = 7
projanim = 1001
offset = 60, -90
ID = 997
velocity = 9, 0 
remvelocity = 0, 0
attr = S, SP
p2stateno = 21238
air.animtype = back
damage    = 257, 128
guardflag = HL
sparkno = S1002
sparkxy = 20, 0
guard.sparkno = S1002
hitsound   = S14,0
guardsound = -1;S4,18
air.velocity = -4,-5
air.fall = 1
fall.recover = 0
air.juggle = 3
yaccel = 0.45
kill       = Var(9) = 0
fall.kill  = Var(9) = 0
guard.kill = Var(9) = 0

[State 1200, 10]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0

;---------------------------------------;
;	-	 Hachazo	 -	;
;---------------------------------------;

[StateDef 1100]
type    = S
movetype= A
physics = S
juggle  = 4
ctrl = 0
anim = 1100

[State 1200, ZappySound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 4, 14
volume = 100

[State 1200, Za]
type = VelSet
trigger1 = time = 1
trigger2 = Vel Y != 0
y = 0

[State 13130, BoltFat]
type = HitDef
trigger1 = time = 0
attr = S, NA
damage    = 85, 13
animtype  = Back
hitflag = MAF ;HAF
guardflag = HL
pausetime = 0,2
sparkno = -1
sparkxy = -18,-100
guard.sparkno = -1
hitsound   = 5,0
p2facing = 1
guardsound = 5,14
ground.cornerpush.veloff = -30
ground.type = High
guard.ctrltime = 20
guard.slidetime = 20
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -1.2,-8;12
air.velocity = -1.2,-7;13
yaccel = 0.4
envshake.time = 15
envshake.freq = 70
envshake.ampl = 7
fall.recover = 0
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 2, Upperblood]
type = Helper
trigger1 = numhelper(28) < 1
trigger1 = movehit
ID = 28
stateno = 28
pos = 0, 0
postype = p1
persistent = 0
ignorehitpause = 1

[State 1200, 10]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0

[StateDef 1002]
type    = S
movetype= A
physics = S
juggle  = 7
ctrl = 0
velset = 0,0,0
anim = 10151


[State 1200, 10]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0

;---------------------------------------;
;	   - Hombrazo Verde -		;
;---------------------------------------;

[StateDef 1200]
type    = S
movetype= A
physics = S
juggle  = 4
ctrl = 0
anim = 1200


[State 1100, aAccell]
type = VelAdd
trigger1 = Time < 15
x = 10

[State 3100, Super D]
type = AfterImage
trigger1 = time = 1
FrameGap = 3
length = 15
timegap = 1
PalBright   =   0,  0,  0
PalContrast = 10,80,10
PalAdd      =   0,  10,  0
PalMul      =  1,1,1
Trans = Add1
time = 15

[State 1000, bber]
type = PlaySnd
trigger1 = Time = 0
value = 4, 18
volume = 200

[State 1000, 10]
type = HitDef
trigger1 = AnimElem = 2
attr = S, SA
animtype  = back
damage    = 250, 125
guardflag = HLMF
hitflag = AHLMF
pausetime = 10,2
sparkno = -1
guard.sparkno = -1
hitsound   = 5,0
p1stateno = 1201
guardsound = 5,14 
ground.type = High
ground.slidetime = 0
ground.hittime  = 0
ground.velocity = -3.5,-5
air.velocity = -3.5,-5
air.hittime = 17
yaccel = 0.5
fall = 1
fall.recover = 0
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 1000, Bounf]
type = ChangeState
trigger1 = Moveguarded = 1
value = 1201

[State 1000, BounceOff]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0

; - queda sin sombra y vuelve a la normalidad -

[StateDef 1201]
type    = S
movetype= I
physics = S
ctrl = 0
velset = 0,0
anim = 1201

[State 3100, Super D]
type = AfterImage
trigger1 = time = 0
FrameGap = 3
length = 15
timegap = 1
PalBright   =   0,  0,  0
PalContrast = 10,80,10
PalAdd      =   0,  10,  0
PalMul      =  1,1,1
Trans = Add1
time = 0

[State 1000, Accellw]
type = VelSet
trigger1 = time = 0
x = 0

[State 1001, 10]
type = Changestate
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------;
;	   - Hombrazo Rojo -		;
;---------------------------------------;

[StateDef 1250]
type    = S
movetype= A
physics = S
juggle  = 4
ctrl = 0
anim = 1200


[State 1100, aAccell]
type = VelAdd
trigger1 = Time < 15
x = 10

[State 3100, Super D]
type = AfterImage
trigger1 = time = 1
FrameGap = 3
length = 15
timegap = 1
PalBright   =   0,  0,  0
PalContrast = 80,10,10
PalAdd      =   10,  0,  0
PalMul      =  1,1,1
Trans = Add1
time = 15

[State 1000, bber]
type = PlaySnd
trigger1 = Time = 0
value = 4, 18
volume = 200

[State 1000, 10]
type = HitDef
trigger1 = AnimElem = 2
attr = S, SA
animtype  = back
damage    = 300, 150
guardflag = HLMF
hitflag = AHLMF
pausetime = 10,2
sparkno = -1
guard.sparkno = -1
hitsound   = 5,0
p1stateno = 1201
guardsound = 5,14 
ground.type = High
ground.slidetime = 0
ground.hittime  = 0
ground.velocity = -3.5,-5
air.velocity = -3.5,-5
air.hittime = 17
yaccel = 0.5  
fall = 1
fall.recover = 0
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 1000, Bounf]
type = ChangeState
trigger1 = Moveguarded = 1
value = 1201

[State 1000, BounceOff]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0

;---------------------------------------;
;	- Rebotador de poderes -	;
;---------------------------------------;

[StateDef 1300]
type    = S
movetype= A
physics = S
juggle  = 4
ctrl = 0
anim = 1300
SprPriority=5

[State 1300, sonido]
type = Playsnd
trigger1 = animelem = 3
value = 4, 12

[State 1300, noprojectiles]
trigger1 = 1
type = NotHitBy
value = , AP

[State 1000, BounceOff]
type = ChangeState
trigger1 = time = 88
ctrl = 1
value = 1301

;----------------------------------

[StateDef 1301]
type    = S
movetype= I
physics = S
juggle  = 4
ctrl = 0
anim = 1301

[State 1000, BounceOff]
type = ChangeState
trigger1 = animtime = 0
ctrl = 1
value = 0
