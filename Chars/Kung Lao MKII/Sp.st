[StateDef 1000];giro
type    = S
movetype= A
physics = S
juggle  = 3
ctrl = 0
velset = 0,0,0
anim = 10151

[State 1200, ZappySound]
type = PlaySnd
trigger1 = AnimElem = 1
value = 5, 13

[State 1200, Za]
type = VelSet
trigger1 = time = 1
trigger2 = Vel Y != 0
y = 0

[State 2, Roundhouseblood]
type = Helper
trigger1 = movehit
trigger1 = numhelper(219) < 1
ID = 219
stateno = 28
pos = 0, 0
postype = p1
persistent = 0
ignorehitpause = 1

[State 1200, BoltFat]
type = HitDef
trigger1 = !movecontact
attr = S, NA
damage    = 215, 107
animtype  = Heavy
hitflag = MAF ;HAF
guardflag = HL
pausetime = 0,2
sparkno = -1
sparkxy = -15,-95
guard.sparkno = -1
hitsound   = 5,0
p2facing = 1
guardsound = 5,14
ground.cornerpush.veloff = -30
ground.type = High
guard.ctrltime = 20
guard.velocity = -25
guard.slidetime = 20
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -1.8,-12
air.velocity = -1.8,-10
yaccel = 0.38
envshake.time = 20
envshake.freq = 30
envshake.ampl = 15
air.juggle = 4
fall = 1
fall.recover = 0
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 235, sssf]
type = envshake
trigger1 = AnimElem = 4
time = 30
freq = 25
ampl = 3

[State 1200, 10]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0
;-------------------
[StateDef 1500]; gorro
type    = S
movetype= A
physics = S
juggle  = 4
ctrl = 0
velset = 0,0,0
anim = 1003

[State 1200, ZappySound]
type = PlaySnd
trigger1 = AnimElem = 1
value = 4 ,4
volume = 70

[State 1200, Za]
type = VelSet
trigger1 = time = 1
trigger2 = Vel Y != 0
y = 0

[State 2, blood111]
type = Helper
trigger1 = animelem = 5
trigger1 = numhelper(1011) < 1
ID = 1011
stateno = 1101
pos = 50, -59
postype = p1
persistent = 0
ignorehitpause = 1

[State 1200, 10]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0
;-------------------------
[Statedef 1101]
type    = S
movetype= A
physics = S
juggle  = 11
;velset = 7,0
anim = 1000

[State 1000, 0.12]
type = VelSet
trigger1 = time = 0;1
X = 7;8
Y = -2

[State 1000, 0.12]
type = Veladd
trigger1 = 1;0;1
X = 7;8
Y = 0.15;-2

[State 2002, Super]
type = AfterImage
trigger1 = time = 0
FrameGap = 3;4;5
length = 25
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
Trans = Add1
time = 29;15


[State 1200, BoltFat]
type = HitDef
trigger1 = !movecontact
attr = S, SP
damage    = 215, 107
animtype = Light
air.animtype = Back
guardflag = HL
pausetime = 0,20
sparkno = -1
guard.sparkno = -1
p1stateno = 1102
p2stateno = 21241;21238
hitsound   = S4,19
guardsound = S3,9
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -5,0
air.velocity = -3,-4
air.fall = 1
fall.recover = 0
air.juggle = 11
yaccel = 0.5
kill       = root, Var(9) = 0
fall.kill  = root, Var(9) = 0
guard.kill = root, Var(9) = 0


[State 1000, 0.123]
type = changestate
trigger1 = moveguarded
value = 1103

[State 1000, 0.1]
type = Destroyself
trigger1 = time >= 150
;trigger1 = 1
;--------------
[Statedef 1102]
type    = S
movetype= A
physics = S
juggle  = 2
velset = 0,0
anim = 1000

[State 2, Upperblood]
type = explod
trigger1 = (time%10) = 1
trigger1 = time <=30
anim = F3
pos = 0, 0
postype = p1

[State 1000, 0.1]
type = VelSet
trigger1 = FrontEdgeDist >20
trigger1 = time <= 30
Y = 0
X = 2

[State 1000, 0.12]
type = VelSet
trigger1 = time >= 35
Y = -7
X = -7

[State 1000, 0.12]
type = changeanim
trigger1 = time >= 35
value = 1002

[State 1000, 0.1]
type = Destroyself
trigger1 = time >= 70
trigger1 = 1
;---------------------
[Statedef 1103]
type    = S
movetype= A
physics = S
juggle  = 2
velset = 0,0

[State 1000, 0.12]
type = VelSet
trigger1 = time >= 35
Y = -7
X = -7

[State 1000, 0.12]
type = changeanim
trigger1 = time >= 35
value = 1002

[State 1000, 0.1]
type = Destroyself
trigger1 = time >= 70
;------------------------------
[Statedef 1200];patada
type    = A
movetype= A
physics = N
velset = 0, -4
anim = 910
ctrl = 0

[State 2000, soundss]
type = Playsnd
trigger1 = time = 4
value = 4,18

[State 2011, drop]
type = Veladd
trigger1 = time > 1
y = 2
x = 2

[State 610, 1.5]
type = turn
trigger1 = time = 0
trigger1 = P2Dist X < -5


[State 2010, sound]
type = Hitdef
trigger1 = !movecontact
attr = S, NA
damage    = 70, 20
animtype  = Heavy
hitflag = MAF ;HAF
guardflag = HL
pausetime = 10,2;10,2;22,2
sparkno = -1
sparkxy = -15,-95
guard.sparkno = -1
hitsound   = 5,0
p2facing = 1
guardsound = 5,14
ground.type = High
guard.ctrltime = 20
guard.velocity = -25
guard.slidetime = 20
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -2, -6;-1.8,-3
air.velocity = -2, -5;-1.8,-3
ground.cornerpush.veloff = 0
yaccel = 0.5
p1stateno = 1202
air.juggle = 8
fall = 1
fall.recover = 0
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 1000, Bounf]
type = ChangeState
trigger1 = Moveguarded = 1
value = 1201

[State 2011, stop]
type = velset
trigger1 = Pos Y >= 0
x = 0
y = 0

[State 2011, gone]
type = Changestate
trigger1 = animtime = 0
value = 52
ctrl = 1
;-------------------------------------
[Statedef 1201]
type    = A
movetype= I
physics = A
ctrl = 0
velset = 4,0
anim = 20002

[State 1000, Aclw]
type = PosAdd
trigger1 = time = 0
Y = -20

[State 1000, Accellw]
type = VelSet
trigger1 = animelem  = 9
x = 0

[State 1000, Accellwsdsd]
type = VelSet
trigger1 = time  < 11
Y = -.12

[State 1000, Accellwsdsdzs]
type = VelSet
trigger1 = time  > 23
Y = 1

[State 1000, Accellzw]
type = VelSet
trigger1 = time = 12
trigger2 = time  > 32
Y = 0
X = 0

[State 1001, 10]
type = Changestate
trigger1 = AnimTime = 0
value = 52
ctrl = 1

[Statedef 1202]
type    = A
movetype= A
physics = A
ctrl = 0

[State 620, 4]
type = VelSet
trigger1 = time < 5
X = -.1

[State 620, 534]
type = VelSet
trigger1 = time = 0
Y = 2

[State 620, 4]
type = Changestate
trigger1 = Pos Y = 0
value = 0
ctrl = 1
;------------------------
[StateDef 1300];transportacion
type    = S
movetype= A
physics = S
juggle  = 2
ctrl = 0
anim = 700

[State 1100, aAccell]
type = VelAdd
trigger1 = time <= 35
Y = -2.5

[State 1100, aAcXceDFll]
type = VelAdd
trigger1 = time >= 57
;trigger1 = pOS Y >= 0
Y = 1

[State 1100, aAccellas]
type = VelsET
trigger1 = time >= 19
trigger1 = time <= 24
TRIGGER2 = TIME >= 43 
TRIGGER2 = TIME <= 55
Y = 0

[State 1100, aAccellasSD]
type = pOSsET
trigger1 = time = 20
Y = 300

[State 1100, aAccXCellasSDS]
type = TURN
trigger1 = time = 20

[State 1000, gibber]
type = PlaySnd
trigger1 = Time = 1
value = 14, 0

[State 1000, 10]
type = HitDef
trigger1 = AnimElem = 63
attr = S, SA
animtype  = back
damage    = 16, 8
guardflag = L
hitflag = AHLMF
pausetime = 10,2
sparkno = -1
guard.sparkno = -1
hitsound   = -1
p1stateno = 1301
guardsound = S1,0
ground.type = High
ground.slidetime = 0
ground.hittime  = 0
ground.velocity = -3,-2
air.velocity = -3,-2.2
air.hittime = 17  
fall = 1
fall.recover = 0
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 700, 2]
type = PosAdd
trigger1 = TIME = 20
X = (P2Dist X) - 40

[State 1000, BounceOffsd]
type = Changeanim
trigger1 = Time = 18
value = 900

[State 20203]
type = Changestate
triggerall = time >= 44
trigger1 = command = "y"
trigger2 = command = "b"
value = 600
;ctrl = 1

[State 2020]
type = Changestate
trigger1 = Pos Y >= -6
trigger1 = time >= 45
value = 0
ctrl = 1
;--------------------------------------------
[StateDef 1301]
type    = S
movetype= I
physics = S
ctrl = 0

[State 1000, Accellw]
type = VelSet
trigger1 = time = 0
x = 0

[State 1001, 10]
type = Changestate
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;--------------------------------------------

;-----------------------------------------------

;--------------------------------------------
; Air
[StateDef 1100]
type    = A
movetype= A
physics = N
juggle  = 2
ctrl = 0
velset = 0,0,0
anim = 1985


[State 431, 3.2]
type = VarRandom
trigger1 = Time = 5
v = 11
range = 1, 60

[State 431, 3.5]
type = Playsnd
trigger1 = Var(11) = [1, 20]
trigger1 = time = 5
value = 100, 1
volume = 50

[State 431, 3.6]
type = Playsnd
trigger1 = Var(11) = [21, 40]
trigger1 = time = 5
value = 100, 1
volume = 50

[State 431, 3.7]
type = Playsnd
trigger1 = Var(11) = [41, 60]
trigger1 = time = 5
value = 100, 1
volume = 10

[State 1000, Accell]
type = VelAdd
trigger1 = Time < 6
x = 2

[State 1000, 10]
type = HitDef
trigger1 = AnimElem = 3
trigger1 = p2stateno != 5030;5120
attr = S, SA
animtype  = back
damage    = 298, 149
guardflag = MA
hitflag = MAF
pausetime = 0,2
sparkno = -1
guard.sparkno = -1
hitsound   = 5,1
guardsound = 5,14
ground.type = High
ground.slidetime = 0
ground.hittime  = 0
ground.velocity = 0
air.velocity = -0.3,-4.2
air.hittime = 17
p1stateno = 10100
p2stateno = 10300
fall = 1
fall.recover = 0
kill       = Var(9) = 0
fall.kill  = Var(9) = 0
guard.kill = Var(9) = 0

[State 1000, BounceOff]
type = ChangeState
trigger1 = MoveGuarded = 1
ctrl = 0
value = 10010

;[State 1000, SlidToAHalt]
;type = ChangeState
;trigger1 = time > 50
;trigger2 = P2Dist X <= -20
;ctrl = 0
;value = 10021

[State 1000, OverShoot]
type = ChangeState
trigger1 = FrontEdgeDist <= 20
ctrl = 0
value = 10030

;--------------------------------------------
; Torpedo Bounce
[StateDef 10010]
type    = A
movetype= I
physics = A
ctrl = 0
velset = -2,-8
anim = 17771

[State 1001, 10]
type = VelAdd
trigger1 = Time = [0, 7]
x = -0.2

[State 1001, 10]
type = PosAdd
trigger1 = Time = 0
y = -45

;--------------------------------------------
;
[StateDef 10021]
type    = S
movetype= I
physics = S
ctrl = 0
anim = 198555

[State 1102, 10]
type = VelAdd
trigger1 = (Time < 6) && (Vel X > 0)
x = -2

[State 1102, 10]
type = PosAdd
trigger1 = AnimElem = 2
trigger2 = AnimElem = 3
y = 33


[State 1001, 10]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0;1300 ;si se pone 1300 automaticamente hace el teleport cuando falla

;--------------------------------------------
[StateDef 10030]
type    = A
movetype= A
physics = N
juggle  = 2
ctrl = 0

[State 1000, 10]
type = HitDef
trigger1 = Time <= 5
trigger1 = p2stateno != 5030;5120
attr = S, SA
animtype  = back
damage    = 298, 149
guardflag = MA
hitflag = HAF
pausetime = 0,2
sparkno = -1
guard.sparkno = -1
hitsound   = 5,1
guardsound = 4,14
ground.type = High
ground.slidetime = 0
ground.hittime  = 0
ground.velocity = 0
air.velocity = -0.3,-4.2
air.hittime = 17
p1stateno = 10100
p2stateno = 10300 ; mmm
fall = 1
fall.recover = 0
kill       = Var(9) = 0
fall.kill  = Var(9) = 0
guard.kill = Var(9) = 0

[State 1001, 10]
type = ChangeState
trigger1 = Time = 10
ctrl = 0
value = 10021

;----------------------------------------------
; I hitum now fly.
[StateDef 10100]
type    = A
movetype= A
physics = N
juggle  = 2
ctrl = 0
anim = 198550

[State 1010, setSpeed]
Type = VelSet
trigger1 = Time = 0
trigger1 = Vel X < 12
X = 12

[State 1010, TurnToMe]
Type = TargetFacing
trigger1 = Time = 0
value = -1

[State 1010, StickToHands]
Type = TargetBind
trigger1 = Time >= 0
pos = 16*const(size.xscale), -67*const(size.xscale)

[State 1010, StopEarly]
Type = ScreenBound
trigger1 = Time >= 40
value = 0
;movecamera = 0, 0

[State 1010, BangHitWall]
type = PlaySnd
trigger1 = FrontEdgeDist <= 20
value = F5, 0

[State 1010, YouBounce]
type = ChangeState
trigger1 = FrontEdgeDist <= 20
value = 10110
ctrl = 0

;----------------------------------------------
; I hitum now fly.
[StateDef 10110]
type    = A
movetype= A
physics = N
juggle  = 2
ctrl = 0
velset = 0,0
anim = 198550

[State 1010, HimHitWall]
type = TargetState
trigger1 = Time = 5
value = 10310
ctrl = 0

[State 1010, YouBounce]
type = ChangeState
trigger1 = Time = 5
value = 10010
ctrl = 0

;----------------------------------------------
;----------------------------------------------
; I hitum now he fly ; la mosca que putas es eso.
[StateDef 10300]
type    = A
movetype= H
physics = N
juggle  = 2
ctrl = 0

[State 1030, OW]
type = ChangeAnim2
trigger1 = time = 0
value = 5140;5030   ;ANIMACION DEL P2 EN EL AIRE se puede cambiar



[State 1030, StopEarly]
Type = ScreenBound
trigger1 = Time >= 40
value = 0
;movecamera = 0, 0

[State 1031, HitGround]
type = SelfState
trigger1 = (Pos Y = 0) || (Vel Y != 0)
value = 5100 ;Hit ground


;----------------------------------------------
; Player Two hit the dirt.
[StateDef 10310]
type    = A
movetype= H
physics = N
juggle  = 2
velset = 0,0,0
ctrl = 0

[State 1031, Gravity]
type = VelAdd
Trigger1 = 1
y = .2

[State 1031, Falling]
type = ChangeAnim2
trigger1 = time = 0
value = 10310

[State 1031, HitGround]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100 ;Hit ground
;----------------------------------------------------------
; Lightning Strike
[StateDef 2090]
type    = S
movetype= A
physics = S
velset = 0
anim = 2090
ctrl = 0

[State 2090, Storm]
type = PlaySnd
trigger1 = Time = 0
value = 4,18

[State 2090, Super]
type = SuperPause
trigger1 = AnimElem = 1
pos = -33*const(size.xscale), -130*const(size.xscale)
anim = 102


[State 2090, Super2]
type = SuperPause
trigger1 = AnimElem = 1
pos = 36*const(size.xscale), -125*const(size.xscale)
anim = 102

[State 2090, gibber]
type = PlaySnd
trigger1 = Time = 0
value = 4,0

[State 2090, gibber2]
type = PlaySnd
trigger1 = Time = 8
value = 4,19

[State 2090, gibber3]
type = PlaySnd
trigger1 = Time = 12
value = 4,19

[State 2090, 2]
type = Projectile
trigger1 = Time = 0
projanim = 2091
projremanim = -1
projremovetime = 25
pos = 0*const(size.xscale),0 *const(size.xscale)
postype = p2
offset = 0*const(size.xscale), 0*const(size.xscale)
velocity = 0, 0
remvelocity = 0, 0
; HitDef part of projectile info
attr = S, SP
damage    = 250, 29
animtype = Hard
air.animtype = Back
air.fall = 0
fall.recover = 0
fall = 1
hitflag = MFD
guardflag = L
pausetime = 0,2
sparkno = -1
guard.sparkno = -1
hitsound   = s4,21
guardsound = 6,0
ground.type = High
ground.slidetime = 0
ground.hittime  = 30 ;11
ground.velocity = 0, -15 ;-1, -15
guard.velocity = 0
air.velocity = 0, 0 ;-2, 0
air.hittime = 35 ;55
palfx.time = 70
palfx.mul = 70,160,270
palfx.add = 89,103,150
palfx.sinadd = 180,180,180,5
envshake.time = 40
envshake.freq = 190
envshake.ampl = -5
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 2090, 4]
type = ChangeState
trigger1 = time = 15
ctrl = 1
value = 0
