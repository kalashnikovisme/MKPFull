; Spear Toss!!!
[Statedef 1000]
type    = S
movetype= A
physics = S
juggle  = 10
poweradd= 200
velset = 0,0
anim = 1000
ctrl = 0

[State 200, Play]
type = PlaySnd
trigger1 = animelem = 2
value = 14, 0

[State 1000, 0.1]
type = Posset
trigger1 = Pos Y != 0
trigger1 = time = 0
Y = 0

[State 1000, 1]
type = Helper
trigger1 = animelem = 4
stateno = 1010
name = "spear"
id = 1010
postype = p1
pos = 75,-43
pos = 65, -104
helpertype = normal
sprpriority = -1
keyctrl = 0
ownpal = 0
under = 1

[State 1030, 1.54]
type = Destroyself
trigger1 = time = 150

[State 1000, 7]
type = ChangeState
triggerall = Time >= 50
trigger1 = p2stateno != 1020
trigger1 = p2stateno != 1021
value = 0
ctrl = 1

[State 1000, 8]
type = Changestate
trigger1 = p2stateno = 1020
trigger2 = p2stateno = 1021
value = 1001
;---------------------------------------------------------------------------
;PULL EM IN
[Statedef 1001]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 1004
ctrl = 0

[State -2, 3.3]
type = VarRandom
trigger1 = 1
v = 2
range = 0, 50

[State 200, Play]
type = PlaySnd
trigger1 = animelem = 2
triggerall = Var(2) = [25, 50]
trigger1 = 1
value = 7, 0
volume = 50

[State 200, Plaay]
type = PlaySnd
trigger1 = animelem = 2
triggerall = Var(2) = [0, 24]
trigger1 = 1
value = 7, 1
volume = 50

[State 1001, 7]
type = ChangeState
trigger1 = p2stateno = 1021
trigger1 = time > 12
value = 0
ctrl = 1

[State 1030, 1.54]
type = Destroyself
trigger1 = time = 150

[State 1001, 8]
type = Changestate
trigger1 = time > 93
value = 0
ctrl = 1
;---------------------------------------------------------------------------
; The flying spear
[Statedef 1010]
type    = S
movetype= A
physics = N
velset = 8,0
anim = 1001
ctrl = 0

[State 181, selFre]
type = VarRandom
trigger1 = time = 0
v = 11
range = 0, 3

[State -3]
type = Explod
trigger1 = anim = 1001
trigger1 = Var(11) = 3
trigger1 = TimeMod=2,1
anim = 1007
name = "humoarriba"
pos = 20,-57
postype = p1
bindtime = 1
vel = 1, -0.3
removetime = -2
sprpriority = -1

[State 1030, 1.54]
type = Destroyself
trigger1 = time = 150

[State 1010, 1]
type = Playsnd
trigger1 = time = 0
value = 4,4

[State 1010, 1.2]
type = Helper
trigger1 = time = 0
stateno = 1011
name = "Rope"
pos = -22, 0
helpertype = normal
sprpriority = -2
keyctrl = 0
ownpal = 0
under = 1

[State 1010, 1.55]
type = Helper
trigger1 = timemod = 2,1
trigger1 = time = [0, 60]
trigger1 = Pos X > -190
trigger1 = Pos X < 190
;trigger1 = p2stateno != 9010
stateno = 1011
name = "Rope"
pos = 0, 0
helpertype = normal
sprpriority = -2
keyctrl = 0
ownpal = 0
under = 1

[State 1010, 2]
type = HitDef
trigger1 = time > 0
trigger1 = Var(11) != 3
trigger1 = p2stateno != 9010
trigger1 = p2stateno != 5120
attr = SA, SP
damage    = 80,20
p2facing = 1
priority  = 6
hitflag = MAF
guardflag = M
forcestand = 1
sparkno = -1
hitonce = 1
sparkxy = 30, 20
pausetime = 0,2
hitsound   = S88,0
guardsound = 5,14
animtype = Light
;kill = 0
Fall = 0
;Air.fall = 0
fall.recover = 0
guard.slidetime = 5
guard.ctrltime = 20
snap = 0,0
p1stateno = 1030
p2stateno = 1020
envshake.time = 10
envshake.freq = 30
envshake.ampl = 3
kill       = root, Var(9) = 0
fall.kill  = root, Var(9) = 0
guard.kill = root, Var(9) = 0

[State 1010, 2]
type = HitDef
trigger1 = time > 0
trigger1 = Var(11) = 3
trigger1 = p2stateno != 9010
trigger1 = p2stateno != 5120
attr = SA, SP
damage    = 110,40
p2facing = 1
priority  = 6
hitflag = MAF
guardflag = M
forcestand = 1
sparkno = -1
hitonce = 1
sparkxy = 30, 20
pausetime = 0,2
hitsound   = S88,0
guardsound = 5,14
animtype = Light
;kill = 0
Fall = 0
;Air.fall = 0
fall.recover = 0
guard.slidetime = 5
guard.ctrltime = 20
snap = 0,0
p1stateno = 1030
p2stateno = 1020
envshake.time = 10
envshake.freq = 30
envshake.ampl = 3
kill       = root, Var(9) = 0
fall.kill  = root, Var(9) = 0
guard.kill = root, Var(9) = 0

[State 1010, 4]
type = Changestate
trigger1 = MoveGuarded = 1
trigger2 = root,stateno != [1000,1001]
value = 1013

[State 1030, 1.54]
type = Destroyself
trigger1 = time = 250

;---------------------------------------------------------------------------
;The hidden rope
[Statedef 1011]
type    = S
movetype= I
physics = N
anim = 1015
ctrl = 0

[State 1030, 1.54]
type = Destroyself
trigger1 = time = 150

[State 1011, 1]
type = Changestate
trigger1 = p2stateno = 1020
value = 1012

[State 1011, 2]
type = Destroyself
trigger1 = root, stateno != [1000, 1001]
;------------------------------------------------------------------------
;The rope Becomes visible
[Statedef 1012]
type    = S
movetype= I
physics = N
anim = 1002
ctrl = 0

[State 1030, 1.54]
type = Destroyself
trigger1 = time = 150

[State 1011, 1]
type = Destroyself
trigger1 = p2stateno = 1021
trigger2 = Parentdist X = [-10, 10]
trigger2 = Parent, Vel X = -8
trigger3 = root, stateno != [1000, 1001]
;------------------------------------------------------------------------
; CCrap!! The spear was guarded!!
[Statedef 1013]
type    = S
movetype= I
physics = N
anim = 10151
Velset = 0,0
ctrl = 0
sprpriority = -1

[State 1013, 1]
type = Destroyself
trigger1 = animtime = 0
;---------------------------------------------------------------------------
[Statedef 1020]; P2's hit by spear state
type    = S
movetype= H
physics = S
ctrl = 0
Velset = 0,0,0

[State 1030, 1.54]
type = Destroyself
trigger1 = time = 150

[State 1020, bugfix]
type = varset
triggerall = var(17) = 1
trigger1 = name = "reptile"
trigger2 = name = "smoke"
trigger3 = name = "hsmoke"
v= 17
value = 0

[State 1020, .5]
type = Changeanim2
trigger1 = time = 0
value = 1012

[State 1020, .75]
type = PlayerPush
trigger1 = time >= 0
value = 0

[State 1010, 2331]
type = Nothitby
trigger1 = 1
value = CSA

[State 1020, 1]
type = PosAdd
trigger1 = timemod = 10,0
trigger1 = time = [0, 50]
X = -1

[State 1010, 231]
type = Playerpush
trigger1 = 1
value = 0

[State 1020, 1.1]
type = Posadd
trigger1 = timemod = 10,4
trigger1 = time = [0, 50]
X = 1

[State 1020, 1.123]
type = Posadd
trigger1 = time = 1
Y = 0

[State 1020, 2]
type = Changestate
trigger1 = P2dist X = [30, 40]
trigger1 = p2name = "smoke"
trigger1 = p2statetype != A
value = 1021

[State 1030, 1.54]
type = Destroyself
trigger1 = time = 150

[State 1020, 3]
type = Selfstate
trigger1 = time = 400
value = 0
ctrl = 1
;-------------------------------------------------------------------------------
;P2  stunned by spear
[Statedef 1021]
type    = S
movetype= H
physics = N
velset = 0,0,0
ctrl = 0

[State 1021, 1]
type = Changeanim
trigger1 = animexist(5300)
trigger1 = anim != 5300
trigger1 = time = 0
value = 5300

[State 1020, 1.123]
type = PosSET
trigger1 = time = 1
Y = 0

[State 1020, 1.12353]
type = VelSET
trigger1 = 1
X = 0
Y = 0

[State 1021, 1]
type = Changeanim2
trigger1 = !animexist(5300)
trigger1 = anim != 9010
trigger1 = time = 0
value = 9010

[State 1021, 3]
type = Selfstate
trigger1 = p2stateno != [1100,1101]
trigger1 = time = 70
trigger2 = p2statetype = A
value = 0
ctrl = 1

[State 1021, 33]
type = Selfstate
trigger1 = Lose
trigger2 = Win
triggerall = time = 10
value = 5050
ctrl = 1
;--------------------------------------------------------------------------
[Statedef 1030];spear is stunt in the target
type    = S
movetype= A
physics = N
anim = 1003
Velset = 0, 0
ctrl = 0

[State -3]
type = Explod
trigger1 = anim = 1003
trigger1 = Var(11) = 3
trigger1 = TimeMod=2,1
anim = 1007
name = "humoarriba"
pos = 20,-57
postype = p1
bindtime = 1
vel = 1, -0.3
removetime = -2
sprpriority = -1

[State 2, blood111]
type = Helper
trigger1 = time = 10
trigger1 = numhelper(27) < 1
ID = 27
stateno = 27
pos = 70, 61
postype = p1
persistent = 0
ignorehitpause = 1
facing = -1

[State 2, blood1111]
type = Helper
trigger1 = time = 5
trigger1 = numhelper(30) < 1
ID = 30
stateno = 30
pos = 70, 61
postype = p1
persistent = 0
ignorehitpause = 1
facing = -1

[State 2, blood1111]
type = Helper
trigger1 = time = 0
trigger1 = numhelper(31) < 1
ID = 31
stateno = 30
pos = 70, 61
postype = p1
persistent = 0
vel = 2,0
ignorehitpause = 1
facing = -1

[State 1030, 1]
type = targetbind
trigger1 = p2stateno = 1020
pos = 0,38

[State 1030, 1.01]
type = changeanim
trigger1 = time = 26+3+3+1
value = 1003

[State 1030, 1.01]
type = Velset
trigger1 = time = 26+3+3+1
X = -8

[State 1030, 1.1]
type = Velset
trigger1 = ParentDist X = [-40, 60]
X = 0

[State 1030, 1.4]
type = Changeanim
trigger1 = p2stateno = 1021
trigger1 = anim != 1015
value = 1015

[State 1030, 1.5]
type = Destroyself
trigger1 = p2stateno != 1021
trigger2 = p2stateno = 5000
trigger3 = p2stateno = 5030
trigger4 = p2stateno = 0
trigger5 = time = 200
trigger1 = anim = 1015
trigger6 = p2stateno != 1021
trigger6 = Parent, stateno != [1000, 1001]
;-------------------------------------------------------
[Statedef 1100];12000; Sektor/smoke teleport punch
type    = A
movetype= A
physics = N
juggle  = 8
velset = 0,15
anim = 2010
ctrl = 0

[State -3]
type = Explod
trigger1 = anim = 2010
trigger1 = TimeMod=2,1
anim = 493
name = "humoarriba"
pos = -0,-90;0, -90
postype = p1
bindtime = 1
vel = 1, -1
random = 30, 70
removetime = -2
sprpriority = -1

[State -3]
type = Explod
trigger1 = anim = 2010
trigger1 = TimeMod=2,1
anim = 493
name = "humoarriba"
pos = -0,-90;0, -90
postype = p1
bindtime = 1
vel = -1, -1
random = 30, 70
removetime = -2
sprpriority = 3

[State -3]
type = Explod
trigger1 = anim = 2010
trigger1 = TimeMod=2,1
anim = 493
name = "humoarriba"
pos = -0,-90;0, -90
postype = p1
bindtime = 1
vel = -0.7, -1.3
random = 30, 70
removetime = -2
sprpriority = -1

[State -3]
type = Explod
trigger1 = anim = 2010
trigger1 = TimeMod=2,1
anim = 493
name = "humoarriba"
pos = -0,-90;0, -90
postype = p1
bindtime = 1
vel = 0.6, -1.6
random = 30, 70
removetime = -2
sprpriority = 3

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
value = 1101
;------------------------------------
[Statedef 1101]; Sek punch up
type    = A
movetype= A
physics = N
juggle  = 8
velset = 0,-18
anim = 2000
ctrl = 0

[State -3]
type = Explod
trigger1 = anim = 2000
trigger1 = TimeMod=2,1
anim = 493
name = "humoarriba"
pos = 0,-90
postype = p1
bindtime = 1
vel = 1, -1
random = 30, 70
removetime = -2
sprpriority = -1

[State -3]
type = Explod
trigger1 = anim = 2000
trigger1 = TimeMod=2,1
anim = 493
name = "humoarriba"
pos = 0,-90
postype = p1
bindtime = 1
vel = -1, -1
random = 30, 70
removetime = -2
sprpriority = 3

[State -3]
type = Explod
trigger1 = anim = 2000
trigger1 = TimeMod=2,1
anim = 493
name = "humoarriba"
pos = 0, -90
postype = p1
bindtime = 1
vel = -0.7, -1.3
random = 30, 70
removetime = -2
sprpriority = -1

[State -3]
type = Explod
trigger1 = anim = 2000
trigger1 = TimeMod=2,1
anim = 493
name = "humoarriba"
pos = 0, -90
postype = p1
bindtime = 1
vel = 0.6, -1.6
random = 30, 70
removetime = -2
sprpriority = 3

[State 2010, turn]
type = varset
trigger1 = time = 0
V = 46
value = 1

[State 2010, turn]
type = turn
trigger1 = time = 0

[State 2010, kill hit]
type = HitDef
trigger1 = time = 0
trigger1 = numexplod(1100) < 2
attr = A, NA
damage    = 155, 77
p2facing = 1
animtype = Back
guardflag = CM
hitflag = MHAF
priority = 3, Hit
pausetime = 0,5
sparkno = -1
hitsound = F5,0
guardsound = 5,14
ground.type = Low
ground.slidetime = 5
ground.hittime  = 20
ground.velocity = -1, -10
air.velocity = -1.5,-10
fall.recover = 0
envshake.time = 10
envshake.freq = 50
envshake.ampl = 5
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 2010, change]
type = Changestate
trigger1 = Pos Y <= -80
value = 1102
;-------------------------------------
[Statedef 1102]; drop 
type    = A
movetype= A
physics = N
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
;--------------------------------------------
[Statedef 1200];INVINCIBLE
type = S
movetype = I
physics = S
anim = 700 + var(17)
ctrl = 0
velset = 0,0

[State -3]
type = Explod
trigger1 = TimeMod=12,3
triggerall = var(26) = 0
anim = 493
name = "humoarriba"
pos = -4,-10
postype = p1
bindtime = 1
vel = 0, -3
removetime = 23
sprpriority = 1

[State -2, Steam1]
type = Explod
trigger1 = TimeMod=8,3
triggerall = var(26) = 0
anim = 493
name = "humomedio"
pos = -11, -10
postype = p1
bindtime = 1
vel = -1, -3
removetime = 23
sprpriority = 1

[State -3]
type = Explod
trigger1 = TimeMod=12,3
triggerall = var(26) = 0
anim = 493
name = "humoarriba"
pos = 4,-20
postype = p1
bindtime = 1
vel = 1, -4
removetime = 23
sprpriority = 1

[State -2, Steam1]
type = Explod
trigger1 = TimeMod=8,3
triggerall = var(26) = 0
anim = 493
name = "humomedio"
pos = -10, -40
postype = p1
bindtime = 1
vel = -1, -4
removetime = 23
sprpriority = 1

[State -3]
type = Explod
trigger1 = TimeMod=12,3
triggerall = var(26) = 0
anim = 493
name = "humoarriba"
pos = -7, -50
postype = p1
bindtime = 1
vel = 1, -4
removetime = 23
sprpriority = 1

[State -2, Steam1]
type = Explod
trigger1 = TimeMod=8,3
triggerall = var(26) = 0
anim = 493
name = "humomedio"
pos = -15, -30
postype = p1
bindtime = 1
vel = 0, -4
removetime = 23
sprpriority = 1

[State -3]
type = Explod
trigger1 = TimeMod=12,3
triggerall = var(26) = 0
anim = 493
name = "humoarriba"
pos = 0,-50
postype = p1
bindtime = 1
vel = 1, -4
removetime = 23
sprpriority = 1

[State -2, Steam1]
type = Explod
trigger1 = TimeMod=8,3
triggerall = var(26) = 0
anim = 493
name = "humomedio"
pos = 0, -60
postype = p1
bindtime = 1
vel = 0, -2
random = 30, 70
removetime = 23
sprpriority = 1

[State -3]
type = Explod
trigger1 = TimeMod=12,3
triggerall = var(26) = 0
anim = 493
name = "humoarriba"
pos = -20,-70;0, -90
postype = p1
bindtime = 1
vel = 1, -3
random = 30, 70
removetime = 23
sprpriority = 1

[State -2, Steam1]
type = Explod
trigger1 = TimeMod=8,3
triggerall = var(26) = 0
anim = 493
name = "humomedio"
pos = 0, -60
postype = p1
bindtime = 1
vel = 0, 0
random = 30, 70
removetime = 23
sprpriority = 1

[State -3]
type = Explod
trigger1 = anim = 700
trigger1 = TimeMod=2,1
anim = 493
name = "humoarriba"
pos = -0,-90;0, -90
postype = p1
bindtime = 1
vel = 1, -1
random = 30, 70
removetime = -2
sprpriority = -1

[State -3]
type = Explod
trigger1 = anim = 700
trigger1 = TimeMod=2,1
anim = 493
name = "humoarriba"
pos = -0,-90;0, -90
postype = p1
bindtime = 1
vel = -1, -1
random = 30, 70
removetime = -2
sprpriority = 3

[State -3]
type = Explod
trigger1 = anim = 700
trigger1 = TimeMod=2,1
anim = 493
name = "humoarriba"
pos = -0,-90;0, -90
postype = p1
bindtime = 1
vel = -0.7, -1.3
random = 30, 70
removetime = -2
sprpriority = -1

[State -3]
type = Explod
trigger1 = anim = 700
trigger1 = TimeMod=2,1
anim = 493
name = "humoarriba"
pos = -0,-90;0, -90
postype = p1
bindtime = 1
vel = 0.6, -1.6
random = 30, 70
removetime = -2
sprpriority = 3

[State 3011, Boom]
type = PlaySnd
trigger1 = time = 1
value = 4, 18

[State 3010, Var]
type = VarSet
trigger1 = Animelem = 4
var(17) = 1

[State 3010, CS]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;------------------------
[Statedef 1201];Reverse INVISIBILITY
type = S
movetype = I
physics = S
anim = 900 + var(0)
ctrl = 0
velset = 0,0

[State -3]
type = Explod
trigger1 = TimeMod=12,3
triggerall = var(26) = 0
anim = 493
name = "humoarriba"
pos = -4,-10
postype = p1
bindtime = 1
vel = 0, -3
removetime = 23
sprpriority = 1

[State -2, Steam1]
type = Explod
trigger1 = TimeMod=8,3
triggerall = var(26) = 0
anim = 493
name = "humomedio"
pos = -11, -10
postype = p1
bindtime = 1
vel = -1, -3
removetime = 23
sprpriority = 1

[State -3]
type = Explod
trigger1 = TimeMod=12,3
triggerall = var(26) = 0
anim = 493
name = "humoarriba"
pos = 4,-20
postype = p1
bindtime = 1
vel = 1, -4
removetime = 23
sprpriority = 1

[State -2, Steam1]
type = Explod
trigger1 = TimeMod=8,3
triggerall = var(26) = 0
anim = 493
name = "humomedio"
pos = -10, -40
postype = p1
bindtime = 1
vel = -1, -4
removetime = 23
sprpriority = 1

[State -3]
type = Explod
trigger1 = TimeMod=12,3
triggerall = var(26) = 0
anim = 493
name = "humoarriba"
pos = -7, -50
postype = p1
bindtime = 1
vel = 1, -4
removetime = 23
sprpriority = 1

[State -2, Steam1]
type = Explod
trigger1 = TimeMod=8,3
triggerall = var(26) = 0
anim = 493
name = "humomedio"
pos = -15, -30
postype = p1
bindtime = 1
vel = 0, -4
removetime = 23
sprpriority = 1

[State -3]
type = Explod
trigger1 = TimeMod=12,3
triggerall = var(26) = 0
anim = 493
name = "humoarriba"
pos = 0,-50
postype = p1
bindtime = 1
vel = 1, -4
removetime = 23
sprpriority = 1

[State -2, Steam1]
type = Explod
trigger1 = TimeMod=8,3
triggerall = var(26) = 0
anim = 493
name = "humomedio"
pos = 0, -60
postype = p1
bindtime = 1
vel = 0, -2
random = 30, 70
removetime = 23
sprpriority = 1

[State -3]
type = Explod
trigger1 = TimeMod=12,3
triggerall = var(26) = 0
anim = 493
name = "humoarriba"
pos = -20,-70;0, -90
postype = p1
bindtime = 1
vel = 1, -3
random = 30, 70
removetime = 23
sprpriority = 1

[State -2, Steam1]
type = Explod
trigger1 = TimeMod=8,3
triggerall = var(26) = 0
anim = 493
name = "humomedio"
pos = 0, -60
postype = p1
bindtime = 1
vel = 0, 0
random = 30, 70
removetime = 23
sprpriority = 1

[State -3]
type = Explod
trigger1 = anim = 900
trigger1 = TimeMod=2,1
anim = 493
name = "humoarriba"
pos = -0,-90;0, -90
postype = p1
bindtime = 1
vel = 1, -1
random = 30, 70
removetime = -2
sprpriority = -1

[State -3]
type = Explod
trigger1 = anim = 900
trigger1 = TimeMod=2,1
anim = 493
name = "humoarriba"
pos = -0,-90;0, -90
postype = p1
bindtime = 1
vel = -1, -1
random = 30, 70
removetime = -2
sprpriority = 3

[State -3]
type = Explod
trigger1 = anim = 900
trigger1 = TimeMod=2,1
anim = 493
name = "humoarriba"
pos = -0,-90;0, -90
postype = p1
bindtime = 1
vel = -0.7, -1.3
random = 30, 70
removetime = -2
sprpriority = -1

[State -3]
type = Explod
trigger1 = anim = 900
trigger1 = TimeMod=2,1
anim = 493
name = "humoarriba"
pos = -0,-90;0, -90
postype = p1
bindtime = 1
vel = 0.6, -1.6
random = 30, 70
removetime = -2
sprpriority = 3

[State 3011, Var]
type = VarSet
trigger1 = Animelem = 1
trigger2 = roundstate = 3
trigger3 = roundstate = 4
var(17) = 0 ;ifelse(var(17) = 0, 1, 0)

[State 3011, Boom]
type = PlaySnd
trigger1 = time = 1
trigger1 = stateno != 1200
value = 4, 18

[State 3011, CS]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
