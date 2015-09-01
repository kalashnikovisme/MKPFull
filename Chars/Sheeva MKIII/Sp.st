;----------------------------------------------------------
;- Move Bola Aire -----------------------------------------
;----------------------------------------------------------
[StateDef 1200]
type    = A
movetype= A
physics = S
juggle  = 6
ctrl = 0
velset = 0,0,0
anim = 1200
sprpriority = 9

[State 1200, open]
type = PlaySnd
trigger1 = AnimElem = 3
trigger2 = animelem = 7
value = 4, 6

[State 1200,aopen]
type = PlaySnd
trigger1 = AnimElem = 1 
trigger2 = animelem = 5
value = 4, 17

[State 88500, huck]
type = VelAdd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 5;4
X = -10

[State a1200, 2atswdc]
type = Explod
trigger1 = time = 15;animelem = 2;time = 0;15
trigger2 = time = 30
anim = 1001
pos = 5,-95-10*(time > 22);;pos = 5,0;5,-90
vel = 7,0
postype = p1
sprpriority  >= 2
ID = 101

[State a1200, 2atsd]
type = Explod
trigger1 = time = 22
trigger2 = time = 37
anim = 10012
pos = 25,-95-10*(time > 22);pos = 25,0;25,-90
vel = 7,0
postype = p1
sprpriority  >= 2
ID = 101

[State a1200, 2at]
type = Explod
trigger1 = time = 30;animelem = 4;time = 15;30
trigger2 = time = 45
anim = 10013
pos = 50, -95-10*(time > 32);;pos = 50,0;50, -120
vel = 7,0
postype = p1
sprpriority  >= 2
ID = 101

[State -2, 2dfatsvwd]
type = removeexplod
trigger1 = p2stateno = [5000,5025]
trigger1 = time >= 5
ID = 101

[State 1200, BoltFat]
type = Projectile
trigger1 = AnimElem = 4
trigger2 = animelem = 8
projanim = 1046
ID = 997
velocity = 9, 0 
remvelocity = 0, 0
attr = S, SP
damage    = 195, 98
offset = 12*const(size.xscale), -95*const(size.xscale)-10*(animelem = 8)
attr = S, SP
animtype = Light
air.animtype = Back
guardflag = HL
pausetime = 0,2
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
yaccel = 0.5
p2stateno = 21238
kill       = Var(9) = 0
fall.kill  = Var(9) = 0
guard.kill = Var(9) = 0

[State 88500, Fall]
type = ChangeState
trigger1 = AnimTime = 0
value = 1201
;- Drop ---------------------------------------------------

[Statedef 1201]
type    = A
movetype= I
physics = A
juggle  = 4
velset = 0,0
anim = 1201
ctrl = 0

[State 1101]
type = Veladd
trigger1 = time > 0
y = .3
;----------------------------------------------------------
;- Move Pisoton -------------------------------------------
;----------------------------------------------------------

[StateDef 909]
type    = A
movetype= A
physics = S
ctrl = 0
anim = 900
;vel = 0, -20;-13,0

[State 2000, 0.6]
type = ScreenBound
trigger1 = time = [1, 1000]
value = 0
movecamera = 0,0

[State 1000, bber]
type = PlaySnd
trigger1 = animelem = 5
value = 4, 22
volume = 100
channel = 2

[State 1000, bberas]
type = PlaySnd
trigger1 = time = 8
value = 4, 9

[State 1000, 2]
type = Varset
trigger1 = time = 0
var(21)= p2bodydist X

[State 700, 2]
type = PosAdd
trigger1 = animelem = 4
X = var(21)+20

[State 700, as2]
type = Playerpush
trigger1 = animelem <= 5
value = 0

[State 1000, 10]
type = HitDef
trigger1 = animelem = 4
trigger2 = p2stateno = 140
trigger2 = animelem = 4
attr = A, NT
damage    = 240, 120
guardflag = -1
hitflag = LHMA
pausetime = 0,2
sparkno = -1
guard.sparkno = -1
snap = 0,0
;guardsound = -1 
ground.cornerpush.veloff = 0    
p2stateno = 991
ground.slidetime = 0
ground.hittime  = 0
ground.velocity = 0,-2
air.velocity = 0,-2.2
;envshake.time = 15
;envshake.freq = 130
;envshake.ampl = 8
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 700, as2aaxz]
type = VelSet
trigger1 = animelem = 2
Y = -18;15 

;[State 700, as2as]
;type = PosSet
;trigger1 = animelem = 4;animelem = 20
;Y = -300

[State 700, as2aaxz]
type = VelSet
trigger1 = animelem = 4
;trigger2 = animelem = 21
Y = 18;15 

[State 700, as2aaxsz]
type = VelSet
trigger1 = time > 11;animelem = 22
trigger1 = POS Y = 0;animelem = 22
Y = 0

[State 700, sdsz]
type = Changestate
trigger1 = animelem = 6;23
trigger1 = movehit
value = 911

[State 235, sssa]
type = envshake
trigger1 = animelem = 5;22
time = 15
freq = 150
ampl = 7

[State 1000, BounceOff]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0

;----------------------------------------------------------

[StateDef 911]   ;si toco pisoton
type    = A
movetype= I
physics = S
ctrl = 0
anim = 910
vel = 100,0,0

[State 1000, bber]
type = PlaySnd
trigger1 = animelem = 18;10
trigger2 = animelem = 35;18
value = 4, 22
volume = 100
channel = 2

[State 700, axcs2]
type = VelAdd
trigger1 = animelem = 23
trigger2 = animelem = 24
trigger3 = animelem = 25
trigger4 = animelem = 26
trigger5 = animelem = 27
trigger6 = animelem = 28
trigger7 = animelem = 29
trigger8 = animelem = 30
trigger9 = animelem = 31
trigger10 = animelem = 32
trigger11 = animelem = 33
trigger12 = animelem = 34
X = 11

[State 235, sssa]
type = envshake
trigger1 = animelem = 1
trigger2 = animelem = 18;10
time = 15
freq = 150
ampl = 7

[State 1000, BounceOff]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0

;----------------------------------------------------------

[Statedef 991]    ;cuando recibe pisoton p2
type    = L
movetype= H
physics = S
ctrl = 0

[State 433, INVOFF]
type = VarSet
trigger1 = var(17)=1
V = 17
value = 0

[state  991,sound]
type = playsnd
trigger1 = time = 2
value = 3, (( random % 2) * 2)

[state  991,sound]
type = playsnd
trigger1 = p2stateno = 911
trigger1 = time = 50
value = 3, (( random % 2) * 2)

[State 5100, 2] ;Hit ground anim (normal)
type = ChangeAnim2
trigger1 = time = 0
value = 1010

[State 10, 3341]
type = PosSet
trigger1 = 1
Y = 0

[State 10, 31]
type = PosSet
trigger1 = p2stateno =[0,9999]
Y = 0

[State 5100, 5]
type = VelSet
trigger1 = Time = 0
y = 0

[State 5100, 9]
type = HitFallDamage
trigger1 = Time = 3

[State 88500, Fall]
type = selfstate
triggerall = ANIMTime = 0
trigger1 = roundstate = 2
triggerall = roundstate != 4
value = 5120

[State 88500, Fallo]
type = Selfstate
triggerall = p2stateno != 911
trigger1 = time = 20
value = 5120

[State 88500, Fallll]
type = Selfstate
triggerall = ANIMTime = 0
trigger1 = roundstate = 3
trigger2 = roundstate = 4
value = 5150

[State 5100, 13]
type = ForceFeedback
trigger1 = Time = 0
waveform = sinesquare
ampl = 128,-3,-.2,.005
time = 20

;----------------------------------------------------------

[Statedef 1000]   ;Bola
type    = S
movetype= A
physics = S
juggle  = 2
velset = 0,0
anim = 1003
ctrl = 0

[State 1200, open]
type = PlaySnd
trigger1 = AnimElem = 3 
value = 4, 6

[State 1200,aopen]
type = PlaySnd
trigger1 = AnimElem = 1 
value = 4, 17

[State 1000, 0.1]
type = Posset
trigger1 = Pos Y != 0
trigger1 = time = 0
Y = 0

[State a1200, 2at]
type = Explod
trigger1 = time = 30
anim = 10013
pos = 45,-90
ID = 101
vel = 7,0
postype = p1
sprpriority  >= 2

[State a1200, 2atsd]
type = Explod
trigger1 = time = 22
anim = 10012
pos = 25,-90
vel = 7,0
ID = 101
postype = p1
sprpriority  >= 2

[State a1200, 2atswdc]
type = Explod
trigger1 = time = 15
anim = 1001
pos = 5,-90
ID = 101
vel = 7,0
postype = p1
sprpriority  >= 2

[State -2, 2dfatsvwd]
type = removeexplod
trigger1 = p2stateno = [5000,5025]
;trigger1 = prevstateno = 1000
trigger1 = time >= 5
ID = 101

[State 1200, BoltFat]
type = Projectile
trigger1 = AnimElem = 6
projanim = 1000
;projhitanim = 1001
;projremanim = 1001
offset = 45*const(size.xscale), -90*const(size.xscale)
velocity = 7, 0 
;remvelocity = -10, -8
; HitDef part of projectile info
attr = S, SP
projID = 1234
damage    = 210, 105
animtype = Light
air.animtype = Back
projremove = 1
guardflag = HL
pausetime = 0,2
sparkno = 6
guard.sparkno = 6
hitsound   = S4,18
guardsound = S4,18
ground.type = High
ground.slidetime = 20
ground.hittime  = 15
ground.velocity = -15,0
air.velocity = -4,-5
yaccel = 0.5
air.fall = 1
fall.recover = 0
air.juggle = 3
kill       = Var(9) = 0
fall.kill  = Var(9) = 0
guard.kill = Var(9) = 0
p2stateno = 21238

[State 1000, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;============================================================
[StateDef 900] ;pisoton
type    = A
movetype= A
physics = S
juggle  = 2
ctrl = 0
anim = 20002
velset = 0,-10

[State 900, aAcce]
type = VelAdd
trigger1 = 1
y = 0.5

[State 900, change]
type = ChangeState
trigger1 = Pos y > -6;0
trigger1 = time > 6
ctrl = 0
value = 999

[StateDef 999]
type    = S
movetype= A
physics = S
ctrl = 0
velset = 0,0,0
anim = 20003

[State 1000, bberas]
type = PlaySnd
trigger1 = animelem = 1;5
value = 4, 22
volume = 100
channel = 2

[State 1000, 10]
type = HitDef
trigger1 = AnimElem = 1;5
attr = S, SA
animtype  = back
damage    = 180, 90
guardflag = L
hitflag = AHLMF
pausetime = 0,2
sparkno = -1
guard.sparkno = -1
;hitsound   = -1
;guardsound = -1 
ground.type = High
ground.slidetime = 0
ground.hittime  = 0
ground.velocity = 0,-2
air.velocity = 0,-2.2
air.hittime = 17  
;envshake.time = 15
;envshake.freq = 130
;envshake.ampl = 8
fall = 1
fall.recover = 0
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)
p2stateno = 21238   

[State 235, sssa]
type = envshake
trigger1 = animelem = 1;5
time = 15
freq = 150
ampl = 7

[State 1000, BounceOff]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0
