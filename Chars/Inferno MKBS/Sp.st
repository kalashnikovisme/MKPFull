[Statedef 1000]     ;un misil
type    = S
movetype= A
physics = S
juggle  = 2
velset = 0,0
anim = 7654
ctrl = 0

[State 10000, open]
type = PlaySnd
trigger1 = AnimElem = 2 
value = 99, 0

[State 1000, 0.1]
type = Posset
trigger1 = Pos Y != 0
trigger1 = time = 0
Y = 0

[State 9251,misil]
type = Helper
trigger1 = animelem = 3;4;9
postype = p1
pos = 0,-90
stateno = 1010

[State 1000, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;---------------------------
[Statedef 1010]     ;un misil
type    = S
movetype= A
physics = S
juggle  = 2
velset = 11,0
anim = 23440

[State 10000, rakieta]
type = PlaySnd
trigger1 = time = 0;AnimElem = 4 
value = F67567, 0

[State 10000, rakieta]
type = veladd
trigger1 = 1
X = 5

[State 1601, Hit]
type = HitDef
trigger1 = time = 0;!movecontact
attr = S, HA
damage    = 199, 98
animtype = Light
air.animtype = Back
guardflag = HL
sparkno = 6
guard.sparkno = 6
hitsound   = S4,18
guardsound = S4,18
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -15,0
air.velocity = -4,-5
air.fall = 1
fall.recover = 0
air.juggle = 3
yaccel = .45
p2stateno = 21238
kill       = root, Var(9) = 0
fall.kill  = root, Var(9) = 0
guard.kill = root, Var(9) = 0

[State 10000, rakieta]
type = destroyself
trigger1 = movecontact
trigger2 = FrontEdgeDist < -100

;-------------------------
[Statedef 1100]  ;Misil Teledirigido
type    = S
movetype= A
physics = S
juggle  = 2
velset = 0,0
anim = 778654
ctrl = 0

[State 10000, open]
type = PlaySnd
trigger1 = AnimElem = 2
value = 5, 13

[State 1000, 0.1]
type = Posset
trigger1 = Pos Y != 0
trigger1 = time = 0
Y = 0

[State 9251,misil]
type = Helper
trigger1 = animelem = 3;4;9
postype = p1
pos = 0,-90
stateno = 1010

[State 1000, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;---------------------------
[Statedef 1010]     ;un misil
type    = S
movetype= A
physics = S
juggle  = 2
velset = 11,0
anim = 34233

[State 10000, rakieta]
type = PlaySnd
trigger1 = time = 0;AnimElem = 4
value = 4, 4

[State 10000, rakieta]
type = veladd
trigger1 = 1
X = 5

[State 1601, Hit]
type = HitDef
trigger1 = time = 0;!movecontact
attr = S, HA
damage    = 199, 98
animtype = Light
air.animtype = Back
guardflag = HL
sparkno = 6
guard.sparkno = 6
hitsound   = S4,18
guardsound = S4,18
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -15,0
air.velocity = 4,-5
air.fall = 1
fall.recover = 0
air.juggle = 3
yaccel = .45
p2stateno = 21238
kill       = root, Var(9) = 0
fall.kill  = root, Var(9) = 0
guard.kill = root, Var(9) = 0

[State 10000, rakieta]
type = destroyself
trigger1 = movecontact
trigger2 = FrontEdgeDist < -100
;-----------------
[Statedef 1101];helper de misil
type = S
movetype = A
physics = N
anim = 1002
velset = 3,0
ctrl = 0
sprpriority = 2

[State 1601, mira Helper]
type = Helper
trigger1 = AnimElem = 1
trigger1 = numhelper(1610) = 0
;trigger1 = p2stateno != 9010
;trigger1 = p2life > 10
stateno = 1102
name = "mira"
id = 1610
postype = p2
pos = 20,-65
helpertype = normal
sprpriority = 3
keyctrl = 0
ownpal = 0
under = 1

[State 1601]
type = changeanim
trigger1 = time <= 5
value = anim
elem = 1

[State 1601]
type = changeanim
trigger1 = time = (5,10]
value = anim
elem = 2

[State 1601]
type = changeanim
trigger1 = time = (10,15]
value = anim
elem = 3

[State 1601]
type = changeanim
trigger1 = time = (15,25]
value = anim
elem = 4

[State 1601, t15]
type = velset
trigger1 = time = 5
y = -2.25

[State 1601, t25]
type = velset
trigger1 = time = 10
x = 2.25
y = -3

[State 1601, t35]
type = velset
trigger1 = time = 15
x = 0
y = -3

; BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB

[State 1601, 0]
type = VelSet
triggerall = time > 25
trigger1 = Abs(p2dist X / (p2dist Y + 70)) > 4
trigger2 = p2dist Y = [69,71]
x = IfElse(p2dist X > 0, 3, -3)
y = 0

[State 1601, 30]
type = VelSet
triggerall = time > 25
triggerall = Abs(p2dist X / (p2dist Y + 70)) = [1, 4]
trigger1 = p2dist Y > 71
trigger2 = p2dist Y < 69
x = IfElse(p2dist X > 0, 3, -3)
y = IfElse(p2dist Y > 70,2.25,-2.25)

[State 1601, 60]
type = VelSet
triggerall = time > 25
triggerall = Abs(p2dist X / (p2dist Y + 70)) = [0.2, 1)
trigger1 = p2dist Y > 71
trigger2 = p2dist Y < 69
x = IfElse(p2dist X > 0,2.25,-2.25)
y = IfElse(p2dist Y > 70, 3, -3)

[State 1601, 90]
type = VelSet
triggerall = time > 25
triggerall = p2dist X / (p2dist Y + 70) = [-0.2, 0.2]
trigger1 = p2dist Y > 71
trigger2 = p2dist Y < 69
x = 0
y = IfElse(p2dist Y > 70, 3, -3)

[State 1601, 0A]
type = changeanim
triggerall = time > 25
trigger1 = Abs(p2dist X / (p2dist Y + 70)) > 4
trigger2 = p2dist Y = [69,71]
value = anim
elem = 1 + 6*(p2dist X < 0)

[State 1601, 30A]
type = changeanim
triggerall = time > 25
triggerall = Abs(p2dist X / (p2dist Y + 70)) = [1, 4]
trigger1 = p2dist Y > 71
trigger2 = p2dist Y < 69
value = anim
elem = IfElse(p2dist Y > 70,12 - 4*(p2dist X < 0), 2 + 4*(p2dist X < 0))

[State 1601, 60A]
type = changeanim
triggerall = time > 25
triggerall = Abs(p2dist X / (p2dist Y + 70)) = [0.2, 1)
trigger1 = p2dist Y > 71
trigger2 = p2dist Y < 69
value = anim
elem = IfElse(p2dist Y > 70,11 - 2*(p2dist X < 0), 3 + 2*(p2dist X < 0))

[State 1601, 90A]
type = changeanim
triggerall = time > 25
triggerall = p2dist X / (p2dist Y + 70) = [-0.2, 0.2]
trigger1 = p2dist Y > 71
trigger2 = p2dist Y < 69
value = anim
elem = 4 + 6*(p2dist Y > 70)

; EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE

[State 1601, Hit]
type = HitDef
trigger1 = time = 0
trigger1 = Var(4) = 0
attr = S, SP
damage    = 199, 98
animtype = Light
air.animtype = Back
guardflag = HL
pausetime = 0,2
sparkno = -1
guard.sparkno = -1
hitsound   = S4,18
guardsound = S4,18
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -15,0
air.velocity = -4,-5
air.fall = 1
fall.recover = 0
air.juggle = 3
yaccel = .45
p2stateno = 21238
kill       = root, Var(9) = 0
fall.kill  = root, Var(9) = 0
guard.kill = root, Var(9) = 0

[State 1601, explosion]
type = Explod
trigger1 = moveguarded = 1
trigger2 = movehit = 1
trigger3 = Time = 200
trigger4 = p2dist X= [-1,1]
trigger4 = p2dist Y= [69,71]
trigger5 = p2life = 0
anim = 1012
pos = 10,0
postype = p1
sprpriority = 5

;[State 1601, explosion]
;type = Explod
;trigger1 = movehit = 1
;anim = 1012
;pos = 10,0
;postype = p1
;sprpriority = 5

;chau helper cohete
[State 1601, destroyself]
type = DestroySelf
trigger1 = Time = 200
trigger2 = MoveGuarded = 1
trigger3 = MoveContact = 1
trigger4 = stateno = 712
trigger5 = stateno = 713
trigger6 = p2stateno = 712
trigger7 = p2stateno = 713
trigger8 = p2dist X= [-1,1]
trigger8 = p2dist Y= [69,71]
trigger9 = p2life = 0

;Mira seguidora ;)
[Statedef 1102]
type = S
physics = N
movetype = I
juggle  = 1     
velset = 0,0
ctrl = 0  
anim = 1610

[State 1610, 2]
type = SprPriority
trigger1 = Time >= 0
value = 21

;sigue ke te sigue
[State 1610, 1]
type = PosAdd
trigger1 = P2Dist X > -20
x = 6

[State 1610, 1]
type = PosAdd
trigger1 = P2Dist X < -20
x = -6

[State 1610, 1]
type = PosAdd
trigger1 = P2Dist Y > 70
y = 6

[State 1610, 1]
type = PosAdd
trigger1 = P2Dist Y < 70
y = -6

;desaparece el helper de la mira
[State 1610, destroyself]
type = DestroySelf
trigger1 = numhelper(1601) = 0
trigger2 = p2life = 0
trigger4 = stateno = 712
trigger5 = stateno = 713
trigger6 = p2stateno = 712
trigger7 = p2stateno = 713
;--------------------------------
[Statedef 1200];teleport punch
type    = A
movetype= A
physics = N
juggle  = 6
velset = 0,15
anim = 2010
ctrl = 0

[State 2010, sound]
type = Playsnd
trigger1 = time = 0
value = 4,14

[State 2000, changepos]
type = Posadd
trigger1 = Pos Y > 200
x = (P2Dist X) + 40

[State 2000, changestate]
type = Changestate
trigger1 = Pos Y > 200
value = 1201
;------------------------------------
; Sek punch up
[Statedef 1201]
type    = A
movetype= A
physics = N
juggle  = 7
velset = 0,-18
anim = 2000
ctrl = 0

[State 181, ED]
type = Explod
trigger1 = time = 1
;trigger1 = movehit
anim = 888
id = 12000
pos = 168,100
postype = left
facing = 1
sprpriority = 1
ownpal = 1
removetime = 550

[State 2010, turn]
type = turn
trigger1 = time = 0

[State 2010, kill hit]
type = HitDef
trigger1 = time = 0
;trigger1 = p2statetype != C
attr = A, NA
damage    = 155, 77
p2facing = 1
animtype = Back
guardflag = CM
hitflag = MHAF
priority = 3, Hit
pausetime = 0,5
sparkno = -1
;sparkxy = -10,-70
hitsound = F5,0
guardsound = 5,14
ground.type = Low
ground.slidetime = 5
ground.hittime  = 20
ground.velocity = -1, -12.5
air.velocity = -1.5,-12
yaccel = .5
fall.recover = 0
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 2010, change]
type = Changestate
;trigger1 = movecontact
trigger1 = Pos Y <= -80
value = 1202
;-------------------------------------
[Statedef 1202]; drop 
type    = A
movetype= A
physics = N
juggle  = 4
velset = 0,-1
anim = 2020
ctrl = 0

[State 2020]
type = Veladd
trigger1 = time > 3
y = .4

[State 2020]
type = Changestate
trigger1 = Pos Y >= -6
value = 0
ctrl = 1
;-------------------------------
[Statedef 1300];-- 2 misiles ----------
type    = S
movetype= A
physics = S
juggle  = 2
velset = 0,0
anim = 76453
ctrl = 0

[State 10000, open]
type = PlaySnd
trigger1 = AnimElem = 2
value = 5, 3

[State 1000, 0.1]
type = Posset
trigger1 = Pos Y != 0
trigger1 = time = 0
Y = 0

[State 9251,misil]
type = Helper
trigger1 = animelem = 3;4;9
postype = p1
pos = 0,-90
stateno = 1011

[State 1000, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;---------------------------
[Statedef 1011]     ;un misil
type    = S
movetype= A
physics = S
juggle  = 2
velset = 11,0
anim = 34233

[State 10000, rakieta]
type = PlaySnd
trigger1 = time = 0;AnimElem = 4
value = 4, 4

[State 10000, rakieta]
type = veladd
trigger1 = 1
X = 5

[State 1601, Hit]
type = HitDef
trigger1 = time = 0;!movecontact
attr = S, HA
damage    = 199, 98
animtype = Light
air.animtype = Back
guardflag = HL
sparkno = 6
guard.sparkno = 6
hitsound   = S4,18
guardsound = S4,18
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -15,0
air.velocity = -4,-5
air.fall = 1
fall.recover = 0
air.juggle = 3
yaccel = .45
p2stateno = 21238
kill       = root, Var(9) = 0
fall.kill  = root, Var(9) = 0
guard.kill = root, Var(9) = 0

[State 10000, rakieta]
type = destroyself
trigger1 = movecontact
trigger2 = FrontEdgeDist < -100

;---------------------
;-----------------------------------
		Shadow Kick
;-----------------------------------

[StateDef 2000]
type    = S
movetype= A
physics = S
juggle  = 4
ctrl = 0
anim = 9991


[State 1100, aAccell]
type = VelAdd
trigger1 = Time < 15
;trigger1 = Time > 45
x = 8.2;10

[State 181, selFre]
type = VarRandom
trigger1 = time = 0
v = 11
range = 0, 10

[State 3100, Super D]
type = AfterImage
trigger1 = Var(11) != 10
trigger1 = time = 1
FrameGap = 3
length = 15
timegap = 1
PalBright   =   0,  0,  0
PalContrast = 255,128,68
PalAdd      =   0,  10,  0
PalMul      =  1,1,1
Trans = Add1
time = 20

[State 3100, Super D]
type = AfterImage
trigger1 = Var(11) = 10
trigger1 = time = 1
FrameGap = 3
length = 15
timegap = 1
PalBright   =   0,  0,  0
PalContrast = 255,128,68
PalAdd      =   10,  0,  0
PalMul      =  1,1,1
Trans = Add1
time = 20

[State 1000, bber]
type = PlaySnd
trigger1 = Time = 1
value = 4, 18
volume = 70

[State 1000, 10]
type = HitDef
trigger1 = AnimElem = 5
trigger1 = Var(11) != 10
attr = S, SA
animtype  = back
damage    = 298, 149
guardflag = HLMF
hitflag = AHLMF
pausetime = 10,2
sparkno = -1
guard.sparkno = -1
hitsound   = 5,0
p1stateno = 2001
guardsound = 5,14
ground.type = High
ground.slidetime = 0
ground.hittime  = 0
ground.velocity = -3.5,-3.5
air.velocity = -3.5,-5
air.hittime = 17
fall = 1
fall.recover = 0
yaccel = 0.5
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 1000, 10]
type = HitDef
trigger1 = AnimElem = 5
trigger1 = Var(11) = 10
attr = S, SA
animtype  = back
damage    = 348, 199
guardflag = HLMF
hitflag = AHLMF
pausetime = 10,2
sparkno = -1
guard.sparkno = -1
hitsound   = 5,0
p1stateno = 2001
guardsound = 5,14
ground.type = High
ground.slidetime = 0
ground.hittime  = 0
ground.velocity = -3.5,-3.5
air.velocity = -3.5,-5
air.hittime = 17
fall = 1
fall.recover = 0
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 1000, Bounf]
type = ChangeState
trigger1 = Moveguarded = 1
value = 2001

[State 1000, BounceOff]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0


;--------------------------------------------
[StateDef 2001]
type    = S
movetype= I
physics = S
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

;-----------------------------------
		Shadow Kick
;-----------------------------------

[StateDef 2000]
type    = S
movetype= A
physics = S
juggle  = 4
ctrl = 0
anim = 9991


[State 1100, aAccell]
type = VelAdd
trigger1 = Time < 15
;trigger1 = Time > 45
x = 8.2;10

[State 181, selFre]
type = VarRandom
trigger1 = time = 0
v = 11
range = 0, 10

[State 3100, Super D]
type = AfterImage
trigger1 = Var(11) != 10
trigger1 = time = 1
FrameGap = 3
length = 15
timegap = 1
PalBright   =   0,  0,  0
PalContrast = 255,128,68
PalAdd      =   0,  10,  0
PalMul      =  1,1,1
Trans = Add1
time = 20

[State 3100, Super D]
type = AfterImage
trigger1 = Var(11) = 10
trigger1 = time = 1
FrameGap = 3
length = 15
timegap = 1
PalBright   =   0,  0,  0
PalContrast = 255,128,68
PalAdd      =   10,  0,  0
PalMul      =  1,1,1
Trans = Add1
time = 20

[State 1000, bber]
type = PlaySnd
trigger1 = Time = 1
value = 4, 18
volume = 70

[State 1000, 10]
type = HitDef
trigger1 = AnimElem = 5
trigger1 = Var(11) != 10
attr = S, SA
animtype  = back
damage    = 298, 149
guardflag = HLMF
hitflag = AHLMF
pausetime = 10,2
sparkno = -1
guard.sparkno = -1
hitsound   = 5,0
p1stateno = 2001
guardsound = 5,14
ground.type = High
ground.slidetime = 0
ground.hittime  = 0
ground.velocity = -3.5,-3.5
air.velocity = -3.5,-5
air.hittime = 17
fall = 1
fall.recover = 0
yaccel = 0.5
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 1000, 10]
type = HitDef
trigger1 = AnimElem = 5
trigger1 = Var(11) = 10
attr = S, SA
animtype  = back
damage    = 348, 199
guardflag = HLMF
hitflag = AHLMF
pausetime = 10,2
sparkno = -1
guard.sparkno = -1
hitsound   = 5,0
p1stateno = 2001
guardsound = 5,14
ground.type = High
ground.slidetime = 0
ground.hittime  = 0
ground.velocity = -3.5,-3.5
air.velocity = -3.5,-5
air.hittime = 17
fall = 1
fall.recover = 0
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 1000, Bounf]
type = ChangeState
trigger1 = Moveguarded = 1
value = 2001

[State 1000, BounceOff]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0


;--------------------------------------------
[StateDef 2001]
type    = S
movetype= I
physics = S
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

;------------------------------------------------------------------------------------------
;------------------------------------------------------------------------------------------
; Dissappear (stand)
[Statedef 1046]
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
; Appear behind
[Statedef 1050]
type    = S
movetype= A
physics = N
juggle  = 2
anim = 1050
Velset = 0, 0
ctrl = 0

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
trigger1 = time = 4
X = 8.5

[State 1040, 0.7]
type = Veladd
trigger1 = Pos Y < 0
Y = .65

[State 1050, 4]
type = HitDef
trigger1 = time > 0
trigger1 = movecontact = 0
attr = A, SA
damage    = 70,10
animtype  = Light
air.animtype  = Back
guardflag = HA
priority = 7
pausetime = 13, 10
sparkno = -1
guard.sparkno = -1
sparkxy = 18,-60
hitsound   = 5,1
guardsound = 5,14
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -10,0
air.velocity = -2.8,-6.3
guard.slidetime = 10              ;Values for guarded attack (def: ground.slidetime)
guard.ctrltime = 5               ;Time to regain control after guard (def: guard.slidetime)
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)
p2facing = 1

[State 1050, 5]
type = PosSet
trigger1 = MoveGuarded = 1
Y = -5

[State 1050, 6]
type = Changestate
trigger1 = MoveGuarded = 1
value = 1055

[State 1050, 6.6]
type = Posset
trigger1 = movehit = 1
Y = 0

[State 1050, 6.9]
type = Velset
trigger1 = Pos Y > 0
Y = 0

[State 1050, 6.6]
type = Posset
trigger1 = Pos Y > 0
trigger1 = time = 20
Y = 0

[State 1050, 7]
type= Changestate
trigger1 = time > 10
trigger1 = Pos Y = 0
trigger2 = movehit = 1
value = 50
ctrl = 1

;------------------------------
;Teleport----------------------
;------------------------------

[StateDef 412]
type    = S
movetype= I
physics = S
ctrl = 0
velset = 0,0,0
anim = 9876

[State 3010, Fire]
type = explod
trigger1 = animelem = 3
anim = F998654
ID = 36
pos = 0,-63
shadow = -1,250,250
postype = p1
ontop = 1

[State 700, 1]
type = PlaySnd
trigger1 = Time = 0
value = 4, 22; teleport

[State 700, 2]
type = PosAdd
trigger1 = animTime = 0
X = (P2Dist X) + 40

[State 700, 32]
type = turn
trigger1 = animTime = 0

[State 700, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 413

[StateDef 413]
type    = S
movetype= I
physics = S
ctrl = 0
velset = 0,0,0
anim = 98765

[State 3010, Fire]
type = explod
trigger1 = animelem = 3
anim = F998653
ID = 36
pos = 0,-63
shadow = -1,250,250
postype = p1
ontop = 1

[State 700, 1]
type = PlaySnd
trigger1 = Time = 0
value = 1, 0; teleport

[State 700, 4]
type = ChangeState
trigger1 = animtime = 0
ctrl = 1
value = 0

[StateDef 2000]
type    = A
movetype= A
physics = S
juggle  = 4
ctrl = 0
anim = 231


[State 1100, aAccell]
type = VelAdd
trigger1 = time > 0
trigger1 = Time < 10
x = 12.5

[State 1100, aAccellsd]
type = VelSet
trigger1 = animelem = 1
trigger2 = animelem = 2
Y = -4


[State 1100, aAccell]
type = VelAdd
trigger1 = time >= 1
trigger1 = time <= 10
;trigger2 = animelem = 2
;trigger3 = animelem = 3
Y = -1.3

[State 1100, aAcll]
type = VelSet
;trigger1 = animelem = 4
trigger1 = time = 11
trigger2 = animelem = 6
Y = 0
X = 0

[State 1100, aAcce]
type = VelAdd
trigger1 = Animelem  = 5
y = 15

[State 2002, Super]
type = AfterImage
trigger1 = time = 0
FrameGap = 5
length = 25
PalBright   =   0,  0,  0
PalContrast = 258,258,258
PalAdd      =   51,  51,  51
PalMul      =  1,1,1
Trans = Add1
time = 12



[State 1000, bber]
type = PlaySnd
trigger1 = Time = 1
value = 4, 10

[State 1000, 10]
type = HitDef
trigger1 = AnimElem = 3
attr = A, SA
animtype  = Back
damage    = 323, 161
guardflag = HL
hitflag = MAF
pausetime = 0, 2
sparkno = -1
sparkxy = -55,-95
guard.sparkno = -1
hitsound = 5,0
guardsound = 5,14
ground.type = High
ground.slidetime = 30
p2facing = 1
guard.ctrltime = 20
guard.velocity = -25
guard.slidetime = 20
ground.hittime  = 30
ground.velocity = -5,-5
air.velocity = -4,-6
air.hittime = 17
ground.cornerpush.veloff = 0
yaccel = 0.38
fall = 1
fall.recover = 0
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 1000, BounceOff]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 52


;----------------------------------------
;Roll
[Statedef 1280]
type    = C
movetype= A
physics = N
juggle  = 4
poweradd= 120
velset = 7,0
anim = 6756
ctrl = 0

[State 3100, Super D]
type = AfterImage
trigger1 = Var(11) != 10
trigger1 = time = 1
FrameGap = 3
length = 15
timegap = 1
PalBright   =   0,  0,  0
PalContrast = 255,128,68
PalAdd      =   0,  10,  0
PalMul      =  1,1,1
Trans = Add1
time = 20

[State 3000, sonido]
type = Playsnd
trigger1 = time = 0
value = 1, 0



[State 3000, 2]
type = Playerpush
trigger1 = time > 0
value = 0

[State 3000, 3]
type = Changestate
trigger1 = time = 20
;trigger2 = movehit = 1
value = 0
ctrl = 1

;----------------------------------------
;Roll
[Statedef 1290]
type    = C
movetype= A
physics = N
juggle  = 4
poweradd= 120
velset = -7,0
anim = 6785645
ctrl = 0

[State 3100, Super D]
type = AfterImage
trigger1 = Var(11) != 10
trigger1 = time = 1
FrameGap = 3
length = 15
timegap = 1
PalBright   =   0,  0,  0
PalContrast = 255,128,68
PalAdd      =   0,  10,  0
PalMul      =  1,1,1
Trans = Add1
time = 20

[State 3100, Super D]
type = AfterImage
trigger1 = Var(11) = 10
trigger1 = time = 1
FrameGap = 3
length = 15
timegap = 1
PalBright   =   0,  0,  0
PalContrast = 255,128,68
PalAdd      =   10,  0,  0
PalMul      =  1,1,1
Trans = Add1
time = 20


[State 3000, sonido]
type = Playsnd
trigger1 = time = 0
value = 1, 0

[State 3000, 2]
type = Playerpush
trigger1 = time > 0
value = 0

[State 3000, 3]
type = Changestate
trigger1 = time = 20
;trigger2 = movehit = 1
value = 0
ctrl = 1

;----------------------------------------
;Super jump
;----------------------------------------
[Statedef 12997]
type    = C
movetype= A
physics = N
juggle  = 4
poweradd= 120
velset = 0,-6
anim = 678
ctrl = 0

[State 3100, Super D]
type = AfterImage
trigger1 = Var(11) != 10
trigger1 = time = 1
FrameGap = 3
length = 15
timegap = 1
PalBright   =   0,  0,  0
PalContrast = 255,128,68
PalAdd      =   0,  10,  0
PalMul      =  1,1,1
Trans = Add1
time = 20

[State 3100, Super D]
type = AfterImage
trigger1 = Var(11) = 10
trigger1 = time = 1
FrameGap = 3
length = 15
timegap = 1
PalBright   =   0,  0,  0
PalContrast = 255,128,68
PalAdd      =   10,  0,  0
PalMul      =  1,1,1
Trans = Add1
time = 20

[State 3000, sonido]
type = Playsnd
trigger1 = time = 0
value = 1, 0

[State 3000, 2]
type = Playerpush
trigger1 = time > 0
value = 0

[State 3000, 3]
type = Changestate
trigger1 = time = 40
;trigger2 = movehit = 1
value = 677
ctrl = 0

;--------------------
[Statedef 677]; Drop
type    = A
movetype= I
physics = A
juggle  = 4
velset = 0,0
anim = 677
ctrl = 0

[State 1101]
type = Veladd
trigger1 = time > 0
y = .3
