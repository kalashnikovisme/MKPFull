;-----------------------------------
;          стрелять ракетой
;-----------------------------------
[Statedef 1000];  снаряд высоко!
type    = S
movetype= A
physics = S
juggle  = 2
velset = 0,0
anim = 1003
ctrl = 0

[State 225, 1.5]
type = Playsnd
trigger1 = animelem = 2
value = F5,15

[State 9327, SMOK_iz_dula]     ;smoke!
type = Explod
trigger1 = AnimElem = 6
anim = 1004
pos = -40, -105
postype = p1
ownpal = 1
vel = -2,0
ontop = 1

[State 10000, open]
type = PlaySnd
trigger1 = AnimElem = 6
value = 4, 19

[State 1000, 0.1]
type = Posset
trigger1 = Pos Y != 0
trigger1 = time = 0
Y = 0

[State 9251,misil]           ; RAKETA!
type = Helper
trigger1 = AnimElem = 6
postype = p1
pos = 65, -105
stateno = 1001
ontop = 1

[State 1000, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------
;            стрелять ракетой со шпагату
;---------------------------------
[Statedef 1002];  шпагат!
type    = S
movetype= A
physics = S
juggle  = 2
velset = 0,0
anim = 1005
ctrl = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 4
value = 4,15
channel = -1

[State 225, 1.5]
type = Playsnd
trigger1 = animelem = 2
value = F5,15

[State 9327, SMOK_iz_dyla]     ;smoke!
type = Explod
trigger1 = AnimElem = 7
anim = 1004
pos = -40, -45
postype = p1
ownpal = 1
vel = -2,0
ontop = 1

[State 10000, open]
type = PlaySnd
trigger1 = AnimElem = 7
value = 4, 19

[State 1000, 0.1]
type = Posset
trigger1 = Pos Y != 0
trigger1 = time = 0
Y = 0

[State 9251,ракета]
type = Helper
trigger1 = AnimElem = 7
postype = p1
pos = 65, -45
stateno = 1001
ontop = 1

[State 1000, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;-------------------------------------------------
;                     летит ракета
[Statedef 1001]
type    = S
movetype= A
physics = S
anim = 1000

[State 10000, rakieta]
type = veladd
trigger1 = time > 0
X = 8


[State 9327, explod]     ;шлейф дымовой
type = Explod
trigger1 = time%2=1
anim = 1004
pos = -15,0
random = 0,14
postype = p1
ownpal = 1
vel = -.1,-.2
ontop =1
vfacing = IfElse(random<=500,1,-1)
;facing = -1

[State 9327, explod]   ;огонь из сопел!
type = Explod
trigger1 =time=1
ID = 666
bindtime=-1
removetime=-1
anim = 1002
pos = -5,0;
postype = p1
ownpal = 1



[State 1601, Hit]
type = HitDef
trigger1 = !movecontact
trigger1 = p2stateno != 9010
attr = S, SP
damage    = 180, 90
animtype = back
air.animtype = Back
guardflag = HL
hitflag = MAF
sparkno = S1001
sparkxy = 0,0;100,0
guard.sparkno = S1001
hitsound   = S4,21
guardsound = S4,21
ground.type = High
ground.slidetime = 0
ground.hittime  = 20
ground.velocity = -15,0
air.velocity = -4,-5
air.fall = 1
fall.recover = 0
air.juggle = 3
yaccel = 0.5
p2stateno = 21238
p2facing = 1
kill       = root, Var(9) = 0
fall.kill  = root, Var(9) = 0
guard.kill = root, Var(9) = 0
palfx.time = 10
palfx.mul = 220,220,220
;palfx.add = 256,100,100



[State 0, fatality]
type = HitDef
trigger1 = !movecontact
trigger1 = p2stateno = 9010
hitsound   = S4,21
attr = S, NT
hitflag = MAFD
guardflag = A
p2stateno = 3405
p2getp1state = 1
sparkno = S1001
sparkxy = 0,0;100,0
;p1stateno=1002

[State 0, fatality]
type = Helper
triggerall = numhelper(700) = 0
triggerall = movecontact
trigger1 = p2stateno = 9010
trigger2 = p2stateno = 3405
ID = 700
stateno = 4000
pos = 0,0
postype = p2
ownpal = 1


[State 10000, rakieta]    ;удалить ракеты
type = destroyself
trigger1 = movecontact
trigger2 = time >30
;trigger4 = FrontEdgeBodyDist <-5


[State 0, RemoveExplod]     ;огонь из соплёв
type = RemoveExplod
trigger1 = movecontact
trigger2 = time >30
;trigger3 = FrontEdgeBodyDist <0
id =   666




;-------------------------------------------------
;                кинуть гранату
[Statedef 1020]
type    = S
movetype= A
physics = S
juggle  = 2
velset = 0,0
anim = 1020
ctrl = 0

[State 1000, 0.1]
type = Posset
trigger1 = Pos Y != 0
trigger1 = time = 0
Y = 0

[State 10000, open]
type = PlaySnd
trigger1 = time = 0
value = 7, 0
volume = 95

[State 9251,misil]
type = Helper
trigger1 = AnimElem = 6,
postype = p1
pos = 65, -65
stateno = 1021
ontop = 1

[State 1000, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------
;               граната летит
;----------------------------------
[Statedef 1021]
type    = S
movetype= A
physics = S
juggle  = 2
anim = 1021

[State 1000, 0.12]
type = VelSet
trigger1 = time = 0
X = 7
Y = -4

[State 1000, 0.12]
type = Veladd
trigger1 = time < 4
trigger1 = time > 0
X = 7
Y = -0.3

[State 1000, 0.12]
type = Veladd
trigger1 = time >= 4
X = 7
Y = 0.3


[State 0, ChangeState]
type = ChangeState
trigger1 = MoveGuarded = 1
trigger2 = BackEdgeDist = 0
value =   1022
ctrl =1


[State 1601, Hit]
type = HitDef
trigger1 = MoveGuarded = 0; PO BLOKY!
trigger1 = !movecontact
trigger1 = p2stateno != 9010
attr = S, SP
damage    = 600, 0
animtype = up
pausetime = 0,2
air.animtype = Back
air.hittime = 17
air.velocity = -4,-5
air.fall = 1
air.juggle = 3
guardflag = HL
guard.slidetime = 20
guard.sparkno = -1
guard.ctrltime = 20
fall.recover = 0
guardsound = 5,14
ground.hittime  = 30
ground.velocity = -8,-12
ground.type = High
ground.slidetime = 30
ground.cornerpush.veloff = 0   ;
sparkno = S1001
sparkxy = 0,0;100,0
hitsound   = S4,21
hitflag = MAF
yaccel = 0.5
priority = 1, Hit
p2facing = 1
envshake.time = 15
envshake.freq = 70
envshake.ampl = 7
kill       = root, Var(9) = 0
fall.kill  = root, Var(9) = 0
guard.kill = root, Var(9) = 0

[State 0, fatality]
type = HitDef
trigger1 = MoveGuarded = 0
trigger1 = !movecontact
trigger1 = p2stateno = 9010
hitsound   = S4,21
attr = S, NT
hitflag = MAFD
guardflag = A
p2stateno = 3405
p2getp1state = 1
sparkno = S1001
sparkxy = 0,0;100,0
;p1stateno=1002

[State 0, fatality]
type = Helper
trigger1 = numhelper(700) = 0
trigger1 = movecontact
trigger1 = p2stateno = 9010
trigger2 = p2stateno = 3405
ID = 700
stateno = 4000
pos = 0,0
postype = p2
ownpal = 1



[State 10000, rakieta]
type = destroyself
trigger1 = movecontact
trigger2 = time >50
;---------------------------------
;             Граната отскочила
;---------------------------------
[Statedef 1022]
type    = S
movetype= A
physics = S
juggle  = 2
anim = 1021

[State 0, AfterImage]
type = AfterImage
trigger1 =  time = 0
time = 11
framegap = 3
palpostbright = 60,60,60



[State 0, VarSet]
type = VarSet
trigger1 = time = 0
v = 10    ;fv = 10
value = IfElse(random<=500,1,-1)



[State 1000, 0.12]
type = VelSet
trigger1 = time = 0
X = 0
Y = -1*(5+(floor(random/100)))

[State 1000, 0.12]
type = Veladd
trigger1 = time > 0
X = -2*var(10)
Y = 0.5

[State 0, ChangeState]   ;отскочила опять!
type = ChangeState
trigger1 = MoveGuarded = 1
;trigger2 = BackEdgeDist < 0
;trigger3 = FrontEdgeDist < 0
value =   1022


[State 1601, Hit]        ;не отскочила...
type = HitDef
trigger1 = time>5
trigger1 = MoveGuarded = 0
affectteam = B
attr = S, SP
damage    = 600, -5
animtype = up
pausetime = 0,2
air.animtype = Back
air.hittime = 17
air.velocity = -4,-5
air.fall = 1
air.juggle = 3
guardsound = 5,14
guardflag = HL
guard.slidetime = 20
guard.sparkno = -1
guard.ctrltime = 20
fall.recover = 0
ground.hittime  = 30
ground.velocity = -8,-12
ground.type = High
ground.slidetime = 30
ground.cornerpush.veloff = 0   ;
sparkno = S1001
sparkxy = 0,0;100,0
hitsound   = S4,21
hitflag = MAF
yaccel = 0.5
priority = 1, Hit
p2facing = 1
envshake.time = 15
envshake.freq = 70
envshake.ampl = 7
kill       = root, Var(9) = 0
fall.kill  = root, Var(9) = 0
guard.kill = root, Var(9) = 0

[State 0, EnvShake]
type = EnvShake
trigger1 = time >80
trigger2 = pos Y >-10
time = 4
freq = 60
ampl = -4
phase = 90


[State 9327, explod]
type = Explod
trigger1 = time >80
trigger2 = pos Y >-10
anim = 1001
pos = 0,0
ownpal = 1
ontop =1

[State 10000, open]
type = PlaySnd
trigger1 = pos Y >-10
trigger2 = time >80
value = S4, 21

[State 10000, rakieta]
type = destroyself
trigger1 = movecontact
trigger2 = time >80
trigger3 = pos Y >-10

;-------------------------------
;             Канон дриль!    ЗЕМНОЙ
[StateDef 1030]
type    = C
movetype= A
physics = C
juggle  = 10
ctrl = 0
anim = 1035  ;sit

[State 0, AfterImage]
type = AfterImage
trigger1 = animtime =0
trigger1 = anim = 1035
FrameGap = 1
length = 10
timegap = 3
PalContrast = 10,80,10
PalAdd      =   0,  10,  0
Trans = Add1
time = 100

[State 0, stop_after_image]
type = AfterImageTime
trigger1 = time = 40
trigger1 = anim = 1030
time = 1
;ignorehitpause =
;persistent =


[State 0, iz_sit_na_drill]
type = ChangeAnim
trigger1 = animtime =0
trigger1 = anim = 1035
value = 1030
;elem = 1
;ignorehitpause =
;persistent =


[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 7,3
volume = 0
channel = 3





[State 3100, Super D]
type = null;AfterImage
trigger1 = 1
FrameGap = 1
length = 1
;timegap = 1
;PalBright   =   0,  0,  0
;PalContrast = 10,80,10
;PalAdd      =   0,  10,  0
;PalMul      =  1,1,1
Trans = Add1
time = 10

[State 1100, aAccell]
type = VelAdd
;trigger1 = animelem = 4 >0
trigger1 = anim = 1030
trigger2 = anim = 1031
x = 10 - ifelse(time>30,5,0) - ifelse(time>33,2,0) - ifelse(time>50,3,0)





[State 1000, bber]
type = PlaySnd
trigger1 = Time = 1
value = 4, 18
volume = 70

[State 1000, 10]
type = HitDef
trigger1 =1
attr = S, SA
damage    = floor(random/100)*10, 0
guardflag = HLA
hitflag = MAF
priority = 3, Hit
animtype = light
air.animtype = light
fall.animtype =up
pausetime = 0,1
sparkno = S1070
guard.sparkno = S1070
sparkxy = floor(random/100)*floor(random/100),-20-floor(random/100)*2;
hitsound   = 5,0
;snap = 55,-20
guardsound = 5,14
ground.type = High
ground.slidetime = 30
ground.hittime  = 15
;p2stateno = 5010
yaccel = 0.5
ground.cornerpush.veloff = 0;-25
ground.velocity = -1,-1
air.velocity = -3,-4
air.fall = 1
fall.recover = 0
air.juggle = 3
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 0, iz_drill_na_sit]
type = ChangeAnim
trigger1 = time = 40
trigger1 = anim = 1030
value = 1031
;elem = 1
;ignorehitpause =
;persistent =


[State 1001, 10]
type = Changestate
trigger1 =Time = 60
value = 12
ctrl = 1



;-------------------------------
;             Канон дриль!    ВОЗДУХ
[StateDef 1031]
type    = U
movetype= A
physics = C
juggle  = 10
ctrl = 0
anim = 1030



[State 0, airdril]   ;пропустить присаживание
type = null;ChangeAnim
trigger1 = time = 0
value = 1030
elem=4

[State 1100, airdril]
type = VelAdd
trigger1 = time > 0;animelem = 4 >0
trigger1 = MoveGuarded = 0
x = 10 - ifelse(time>10,5,0) - ifelse(time>20,2,0) - ifelse(time>30,3,0)
;x = 5

[State 1000, airdril]
type = PlaySnd
trigger1 = Time = 1
value = 4, 18
volume = 70

[State 1000, airdril]
type = HitDef
trigger1 =1
attr = S, SA
damage    = 20, 4
guardflag = HLA
hitflag = MAF
priority = 3, Hit
animtype = light
air.animtype = light
fall.animtype =up
pausetime = 0,0
sparkno = S1070
guard.sparkno = S1070
sparkxy = floor(random/100)*floor(random/100),-20-floor(random/100)*2;
hitsound   = 5,0
;snap = 55,-20
guardsound = 5,14
ground.type = high
ground.slidetime = 30
ground.hittime  = 15
;p2stateno = 5010
yaccel = 0.5
ground.cornerpush.veloff = 0;-25
ground.velocity = -1,0
air.velocity = -3,-4
air.fall = 1
fall.recover = 0
air.juggle = 3
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)


[State 1100, aAcce]   ;опускаемся
type = VelAdd
trigger1 =time = 30
y = 12

[State 0, ChangeAnim]      ;опускаемся
type = ChangeAnim
trigger1 =time = 30
value = 1034

[State 1000, BounceOff]   ;Если продрилили землю
type = ChangeState
trigger1 = Pos Y >= -15
ctrl = 1
value = 0

[State 0, airdril]        ;Если попали в блок
type = ChangeState
trigger1 = MoveGuarded = 1
value = 1032

;-------------------------------
;             Канон дриль!    ВОЗДУХ -отскочил от блока
[StateDef 1032]
type    = U
movetype= I
physics = N
juggle  = 10
ctrl = 0
anim = 1033

[State 1000, 0.12]
type = VelSet
trigger1 = time = 1
X = -1
Y = -1

[State 1000, 0.12]
type = Veladd
trigger1 = time<5
trigger1 = time>0
X = 0
Y = -1.5

[State 1000, 0.12]
type = Veladd
trigger1 = time>= 5
X = 0
Y = .5

[State 1001, 10]
type = Changestate
trigger1= pos Y >-15
value = 1033
ctrl = 1
;-------------------------------
;             Канон дриль!    ВОЗДУХ -приземление после отскока от блока
[StateDef 1033]
type    = L
movetype= I
physics = N
ctrl = 0
anim = 1032
velset =0,0

[State 9327, explod]      ;бух левый
type = Explod
trigger1 = time=0
anim = 1004
pos = -20,-10
postype = p1
vel = 0,-.3
ontop =1
ownpal = 1

[State 9327, explod]       ;бух средний
type = Explod
trigger1 = time=0
anim = 1004
pos = 20,-10
postype = p1
vel = 0,-.7
ontop =1
ownpal = 1

[State 9327, explod]      ;бух правый
type = Explod
trigger1 = time=0
anim = 1004
pos = 60,-10
postype = p1
vel = 0,-.5
ontop =1
ownpal = 1

[State 0, EnvShake]
type = EnvShake
trigger1 =   time = 0
time = 3
freq = 60
ampl = -4
phase = 90

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 1
value = 3,21


[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = F5,0

[State 0, PlaySnd]
type = posset
trigger1 = time = 0
y=-3

[State 1001, 10]
type = Changestate
trigger1= time = 20
trigger1 = command != "holddown"
value = 12
ctrl = 1

[State 1001, 10]
type = Changestate
trigger1= time = 20
trigger1 = command = "holddown"
value = 11
ctrl = 1
;ignorehitpause =
;persistent =


;----------------------------
;         ТХРАСТ КИК!
[StateDef 1040]
type    = S
movetype= A
physics = S
juggle  = 4
ctrl = 0
anim = 1040

[State 0, PlaySnd]
type = PlaySnd
trigger1 =  time = 0
value = 7,4
volume = 0
channel = 3

[State 1100, aAccell] ;ускорение вверх
type = VelAdd
trigger1 = time > 0
trigger1 = Time < 10
x = 10;11
Y = -1.8

[State 1100, aAcll]    ;остановить восход
type = VelSet
trigger1 = time = 10
Y = 0
X = 0

[State 0, ChangeState]    ;перейти в небьющий кадр
type = ChangeAnim
trigger1 = TIME = 10
value = 1040
elem = 2

[State 1100, aAcce]   ;опускаемся
type = VelAdd
trigger1 =time = 30
y = 9;10

[State 1000, BounceOff]   ;переходим в нормалекс!
type = ChangeState
trigger1 = Pos Y >= 15
ctrl = 1
value = 0

[State 3100, Super D]
type = AfterImage
trigger1 = time = 1
FrameGap = 1
length = 15
timegap = 2
PalContrast = 10,80,10
PalAdd      =   0,  10,  0
Trans = Add1
time = 11


[State 1000, bber]    ;звук взлета
type = PlaySnd
trigger1 = Time = 1
value = 4, 18
volume = 70


[State 1000, 10]
type = HitDef
trigger1 = AnimElem = 1
attr = A, SA
animtype  = Back
damage    = 348, 40
guardflag = HL
hitflag = MAF
pausetime = 10, 2
guard.pausetime = 20,0
sparkno = S1070
sparkxy = -35,-100
guard.sparkno = S1070
hitsound = 5,0
guardsound = 5,14
ground.type = High
ground.slidetime = 30
p2facing = 1
guard.ctrltime = 20
guard.velocity = -25
guard.slidetime = 20
ground.hittime  = 30
ground.velocity = -2.5,-10.5
air.velocity = -2.5,-9.5
air.hittime = 17
ground.cornerpush.veloff = -25
yaccel = 0.5
fall = 1
fall.recover = 0
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

;-------------------------------------------------
;                 storm!
[StateDef 1050]
type    = S;A
movetype= I
physics = S
ctrl = 0
anim = 1050
velset = 4,-4

[State 1300, noprojectiles]
trigger1 = time > 0
type = NotHitBy
value = , AP

[State 1000, 0.12]
type = Veladd
trigger1 = time < 4
trigger1 = time > 0
X = 4
Y = -0.5

[State 1000, 0.12]
type = Veladd
trigger1 = time >= 4
X = 4
Y = 0.5

[State 1000, BounceOff]   ;переходим в нормалекс!
type = ChangeState
trigger1 = Pos Y >= 20
ctrl = 1
value = 0

[State 0, ChangeState]
type = ChangeState
trigger1 =    command = "x"
trigger1 = time > 15
value =  1051
ctrl = 0

[State 0, ChangeState]
type = ChangeState
trigger1 =    command = "a"
trigger1 = time > 15
value =  1052
ctrl = 0

;--------------------------------------------------------
; storm X
[StateDef 1051]
type    = S
movetype= A
physics = S

velset = 0,0
anim = 1062

[State 0, PosSet]
type = PosSet
trigger1 = time = 0
y = 0


[State 1601, Hit]
type = HitDef
trigger1 = !movecontact
;trigger1 = p2stateno != 9010
attr = S, SP
damage    = 180, 90
animtype = back
air.animtype = Back
guardflag = HL
hitflag = MAF
sparkno = S1001
sparkxy = -30,-80;100,0
guard.sparkno = S1001
hitsound   = S4,21
guardsound = S4,21
ground.type = High
ground.slidetime = 0
ground.hittime  = 20
ground.velocity = -15,0
air.velocity = -4,-5
air.fall = 1
fall.recover = 0
air.juggle = 3
yaccel = 0.5
p2stateno = 21238
p2facing = 1
;kill       = root, Var(9) = 0
;fall.kill  = root, Var(9) = 0
;guard.kill = root, Var(9) = 0

[State 1000, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;--------------------------------------------------------
; storm A
[StateDef 1052]
type    = S
movetype= A
physics = S

velset = 0,0
anim = 1063

[State 0, PosSet]
type = PosSet
trigger1 = time = 0
y = 0


[State 1601, Hit]
type = HitDef
trigger1 = !movecontact
;trigger1 = p2stateno != 9010
attr = S, SP
damage    = 180, 90
animtype = back
air.animtype = Back
guardflag = HL
hitflag = MAF
sparkno = S1001
sparkxy = -30,-40;100,0
guard.sparkno = S1001
hitsound   = S4,21
guardsound = S4,21
ground.type = High
ground.slidetime = 0
ground.hittime  = 20
ground.velocity = -15,0
air.velocity = -4,-5
air.fall = 1
fall.recover = 0
air.juggle = 3
yaccel = 0.5
p2stateno = 21238
p2facing = 1
;kill       = root, Var(9) = 0
;fall.kill  = root, Var(9) = 0
;guard.kill = root, Var(9) = 0

[State 1000, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;--------------------------------------------------
; combo x X x x
[StateDef 1060]
type    = S
movetype= A
physics = S
juggle  = 7
velset = 0,0
ctrl = 0
anim = 221
sprpriority = 2

[State 200, Playsd]
type = Posset
trigger1 = 1
Y = 0

[State 200, Play]
type = PlaySnd
trigger1 = time = 1
trigger1 = 1
value = F5, 15

[State 2, blood111]
type = Helper
trigger1 = movehit
trigger1 = numhelper(25) < 1
ID = 25
stateno = 27
pos = 0, 0
postype = p1
persistent = 0
ignorehitpause = 1

[State 201, 347]
type = EnvShake
trigger1 = !movecontact
time = 10
freq = 30
ampl = 5

[State 201, 1]
type = HitDef
trigger1 = !movecontact
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage    = 40, 10                   ;Damage that move inflicts
animtype = Light                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
air.animtype = Back
guardflag = HL
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 2, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default
p2facing = 1
pausetime = 0,2                  ;Time attacker pauses, time victim shakes
sparkno = -1
sparkxy = -20,-105
guard.sparkno = -1
hitsound = 5,1
guardsound = 5,14
ground.type = High                 ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 5
ground.hittime  = 20
guard.velocity = -15
guard.slidetime = 20
ground.cornerpush.veloff = 0
guard.ctrltime = 20
ground.velocity = 0,0              ;Time to regain control after guard (def: guard.slidetime)
guard.velocity = -2
ground.cornerpush.veloff = 0
air.velocity = -2, 1
airguard.velocity = -1.9            ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.fall = 1
fall.recover = 0
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)
envshake.time = 10
envshake.freq = 30
envshake.ampl = 5

[State 201, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;--------------------------------------------------
; combo x x X x
[StateDef 1061]
type    = S
movetype= A
physics = S
juggle  = 1
ctrl = 0
anim = 1060

[State 200, Play]
type = PlaySnd
trigger1 = time = 1
trigger1 = 1
value = F5, 15

[State 200, Playsd]
type = Posset
trigger1 = 1
Y = 0

[State 201, 347]
type = EnvShake
trigger1 = !movecontact
time = 10
freq = 30
ampl = 5

[State 2, blood111]
type = Helper
trigger1 = movehit
trigger1 = numhelper(25) < 1
ID = 25
stateno = 27
pos = 0, 0
postype = p1
persistent = 0
ignorehitpause = 1

[State 201, 1]
type = HitDef
trigger1 = !movecontact
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage    = 40, 10                   ;Damage that move inflicts
animtype = light                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
air.animtype = Back
guardflag = HL
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 2, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default
p2facing = 1
pausetime = 10,2                  ;Time attacker pauses, time victim shakes
sparkno = -1
sparkxy = -20,-105
guard.sparkno = -1
hitsound = 5,1
guardsound = 5,14
ground.type = low                 ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 20
ground.hittime  = 20
guard.velocity = -15
guard.slidetime = 20
ground.cornerpush.veloff = 0
guard.ctrltime = 20
ground.velocity = 0,0             ;Time to regain control after guard (def: guard.slidetime)
guard.velocity = -2
ground.cornerpush.veloff = 0
air.velocity = -2, 1
airguard.velocity = -1.9            ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.fall = 1
fall.recover = 0
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)
envshake.time = 10
envshake.freq = 30
envshake.ampl = 5
yaccel = 0.5

[State 201, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;--------------------------------------------------
; combo x x x X
[StateDef 1062];
type    = S
movetype= A
physics = S
juggle  = 1
ctrl = 0
anim = 1061

[State 200, Play]
type = PlaySnd
trigger1 = time = 1
trigger1 = 1
value = F5, 15

[State 200, Playsd]
type = Posset
trigger1 = 1
Y = 0

[State 201, 347]
type = EnvShake
trigger1 = !movecontact
time = 10
freq = 30
ampl = 5


[State 201, 1]
type = HitDef
trigger1 = !movecontact
attr = S, NA
animtype  = Back
damage    = 166, 22
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
air.velocity = -5,-6
air.hittime = 17
fall = 1
fall.recover = 0
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)


[State 201, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1







;-------------------------------------------------

[Statedef 1082]   ; hurikanrana
type    = S
movetype= A
physics = A
juggle  = 0
ctrl = 0
anim = 1082

[State 200, Play]
type = PlaySnd
trigger1 = time = 0
value = F5, 15

[State 800, 1]
type = HitDef
trigger1 = p2stateno != 9010
triggerall = p2statetype != A
triggerall = p2name != "shao kahn,"
triggerall = p2name != "kintaro"
triggerall = p2name != "goro"
triggerall = p2name != "motaro"
Trigger1 = animelem = 1
pausetime = 0,0
attr = S, NT          ;Attributes: Standing, Normal Throw
hitflag = CM          ;Affect only ground people who are not being hit
priority = 1, Miss    ;Throw has low priority, must be miss or dodge type.
damage = 232
sparkno = -1          ;No spark
hitsound = 5,14
sprpriority = -1      ;Draw in front of p2
p2facing = -1       ;Force p2 to face KFM
p1stateno = 1080       ;On success, KFM changes to state 810
p2stateno = 1081       ;If hit, p2 changes to state 820 in KFM's cns
guard.dist = 0        ;This prevents p2 from going into a guard state if close
fall.recover = 0
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 800, fatality]
type = HitDef
trigger1 = p2stateno = 9010
triggerall = p2statetype != A
Trigger1 = animelem = 1
p1stateno = 1080       ;On success, KFM changes to state 810
p2stateno = 6003
pausetime = 0,0
attr = S, NT          ;Attributes: Standing, Normal Throw
hitflag = CM          ;Affect only ground people who are not being hit
priority = 1, Miss    ;Throw has low priority, must be miss or dodge type.
damage = 100000
sparkno = -1          ;No spark
hitsound = 5,16
sprpriority = -1      ;Draw in front of p2
p2facing = 1
pausetime = 10,10

[State 800, 2]
type = ChangeState
Trigger1 = Animtime = 0
value = 0
ctrl = 1


;-------------------------------------------------
[Statedef 1080]            ;hurikanrana
type    = S
movetype= A
physics = N
anim = 1080
ctrl = 0
velset = 0,0

[State 0, BindToTarget]
type = BindToTarget
trigger1 = time = 0
pos = 0,0;"Foot";"Mid","Head"

[State 200, Playf]
type = PlaySnd
trigger1 = time = 0
value = 4, 15


[State 820, 1]
type = Sprpriority
Trigger1 = Time = 0
value = 1


[State 0, Turn]
type = Turn
trigger1 = animtime =0

[State 0, ChangeState]
type = ChangeState
triggerall = command != "holddown"
trigger1 = animtime = 0
value = 12
ctrl = 1

[State 430, 4]
type = ChangeState
value = 11
triggerall = command = "holddown"
trigger1 = animtime = 0
ctrl = 1



;--------------------------------------------
[Statedef 1081]            ;jertva
type    = A
movetype= H
physics = N

[State 0, VelSet]
type = Changeanim2
trigger1 = time = 0
value = 1081

[State 0, PosSet]
type = PosSet
trigger1 =  animelem = 3
y = -30
;ignorehitpause =
;persistent =


[State 0, VelSet]
type = VelSet
trigger1 =  animelem= 4
x = -12
y = 3

[State 240, 2]
type = HitDef
trigger1 = !movecontact
trigger1 = animelem = 5, >2
attr = S, NA
animtype  = Back
damage    = 100, 1
guardflag = HL
hitflag = MAF
pausetime = 0,0
sparkno = -1
;sparkxy = -55,-95
guard.sparkno = -1
hitsound = 1,3;5,0
guardsound = 5,14
ground.type = High
ground.slidetime = 30
;p2facing = 1
guard.ctrltime = 20
guard.slidetime = 20
ground.hittime  = 30
ground.velocity = 10,-3
air.velocity = 10,-3
air.hittime = 17
ground.cornerpush.veloff = -35
fall.recover = 0
envshake.time = 15
envshake.freq = 70
envshake.ampl = 7
yaccel = 0.45
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)
priority = 1, Miss
affectteam = F

[State 180, 461]
type = null;Playsnd
trigger1 =  movehit
value = F1,3
volume = 50

[State 821, 4] ;Hit ground
type = selfstate
;trigger2 = time = 160
trigger1 = pos Y >10
trigger1 = animelem = 5,>0
value = 5080 ;Hit ground
;value = 5100 ;Hit ground

  ;----------------------------------------------
;      air   ТХРАСТ КИК!
[StateDef 1090]
type    = A
movetype= A
physics = N
ctrl = 0
anim = 1090
velset =0,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 =  time = 0
value = 7,4
volume = 0
channel = 3

[State 3100, Super D]
type = AfterImage
trigger1 = time = 1
FrameGap = 2
length = 15
timegap = 1
PalContrast = 10,80,10
PalAdd      =   0,  10,  0
Trans = Add1
time = 20

[State 1100, aAccell]
type = VelSet
trigger1 = Time < 20
x = 12

[State 1000, 10]
type = HitDef
trigger1 = AnimElem = 2
attr = S, SA
animtype  = back
damage    = 200, 116
guardflag = HLMF
hitflag = AHLMF
pausetime = 15,2
sparkno = S1070
sparkxy = -20,-75
guard.sparkno = -1
hitsound   = 5,0
p1stateno = 1091
guardsound = 5,14
ground.type = High
ground.slidetime = 0
ground.hittime  = 0
ground.velocity = -3,-3
air.velocity = -3,-1
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
value = 1092

[State 1000, BounceOff]
type = ChangeState
trigger1 =Time = 20
ctrl = 1
value = 1091

;--------------------------------------------
[StateDef 1091]  ; air   ТХРАСТ КИК!  OK
type    = A
movetype= A
physics = A
ctrl = 0
anim = 1091



[State 1000, Accellw]
type = VelSet
trigger1 = time = 10
x = 1



;--- -----------------------------------------
[StateDef 1092]  ; air   ТХРАСТ КИК!  blok!
type    = U
movetype= I
physics = N
ctrl = 0
anim = 1091


[State 1000, 0.12]
type = VelSet
trigger1 = time = 0
X = -1
Y = -1

[State 1000, 0.12]
type = Veladd
trigger1 = time<5
trigger1 = time>0
X = 0
Y = -1.5

[State 1000, 0.12]
type = Veladd
trigger1 = time>= 5
X = 0
Y = .5

[State 1001, 10]
type = Changestate
trigger1= pos Y >-15
trigger2= time = 100
value = 0
ctrl = 1

;----------------------------------------------
;      air ygol  ТХРАСТ КИК!
[StateDef 1095]
type    = A
movetype= A
physics = N
ctrl = 0
anim = 1095
velset =0,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 =  time = 0
value = 7,4
volume = 0
channel = 3

[State 3100, Super D]
type = AfterImage
trigger1 = time = 1
FrameGap = 2
length = 15
timegap = 1
PalContrast = 10,80,10
PalAdd      =   0,  10,  0
Trans = Add1
time = 20

[State 1100, aAccell]
type = VelSet
trigger1 = Time < 20
x = 10
y= 12

[State 1000, 10]
type = HitDef
trigger1 = AnimElem = 2
attr = S, SA
animtype  = back
damage    = 100, 116
guardflag = HLMF
hitflag = AHLMF
pausetime = 5,2
sparkno = S1070
sparkxy = -35,-70
guard.sparkno = -1
hitsound   = 5,0
p1stateno = 1096
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
value = 1097

[State 1000, BounceOff]
type = ChangeState
trigger1 =Time = 20
trigger2 = pos Y > -20
ctrl = 1
value = 1096

;--------------------------------------------
[StateDef 1096]  ; air  ygol ТХРАСТ КИК!  OK
type    = A
movetype= A
physics = A
ctrl = 0
anim = 1096

[State 0, AfterImageTime]
type = AfterImageTime
trigger1 =time = 0
time = 0



[State 1000, Accellw]
type = VelSet
trigger1 = time = 10
x = 5



;--- -----------------------------------------
[StateDef 1097]  ; air ygol  ТХРАСТ КИК!  blok!
type    = U
movetype= I
physics = N
ctrl = 0
anim = 1096

[State 0, AfterImageTime]
type = AfterImageTime
trigger1 =time = 0
time = 0


[State 1000, 0.12]
type = VelSet
trigger1 = time = 0
X = -1
Y = -1

[State 1000, 0.12]
type = Veladd
trigger1 = time<5
trigger1 = time>0
X = 0
Y = -1.5

[State 1000, 0.12]
type = Veladd
trigger1 = time>= 5
X = 0
Y = .5

[State 1001, 10]
type = Changestate
trigger1= pos Y >-15
trigger2= time = 100
value = 0
ctrl = 1
