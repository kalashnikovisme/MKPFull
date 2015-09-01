;;;;;;;granada lejos
[StateDef 21000]
type    = S
movetype= A
physics = S
juggle  = 2
ctrl = 0
velset = 0,0,0
anim = 20000

[State 88500, Fireball Chuck]
type = playsnd
trigger1 = time = 15
value = 4,17
volume = 70

[State 1200, Za]
type = VelSet
trigger1 = time = 1
trigger2 = Vel Y != 0
y = 0

[State 2, helperbola]
type = Helper
trigger1 = animelem = 5
trigger1 = numhelper(30000) < 1
ID = 30000
stateno = 30000
pos = 15*const(size.xscale), -100*const(size.xscale)
postype = p1
persistent = 0
ignorehitpause = 1

[State 1200, 10]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0

; ahi va la granada lejos
[Statedef 30000]
type    = S
movetype= A
physics = S
juggle  = 11
anim = 30000
sprpriority = 1

[State 21000, 0.12]
type = VelSet
trigger1 = time = 0
X = 9
Y = -3

[State 21000, 0.12]
type = Veladd
trigger1 = time < 4
trigger1 = time > 0
X = 9
Y = -0.5

[State 21000, 0.12]
type = Veladd
trigger1 = time >= 4
X = 9
Y = 0.4

[State 1200, BoltFat]
type = hitdef
trigger1 = !movecontact
attr = S, SP
damage    = 90, 23
animtype = Light
air.animtype = Back
air.fall = 1
fall.recover = 0
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
air.juggle = 3
yaccel = 0.5
p2stateno = 21238
kill       = root, Var(9) = 0
fall.kill  = root, Var(9) = 0
guard.kill = root, Var(9) = 0

[State 1000, 0.1]
type = Destroyself
trigger1 = movecontact
trigger2 = FrontEdgeBodyDist < -130

;granada cerca
[StateDef 15000]
type    = S
movetype= A
physics = S
juggle  = 2
ctrl = 0
velset = 0,0,0
anim = 20000

[State 88500, Fireball Chuck]
type = playsnd
trigger1 = time = 15
value = 4,17
volume = 70

[State 1200, Za]
type = VelSet
trigger1 = time = 1
trigger2 = Vel Y != 0
y = 0

[State 2, helperbola]
type = Helper
trigger1 = animelem = 5
trigger1 = numhelper(20000) < 1
ID = 14000
stateno = 14000
pos = 15*const(size.xscale), -100*const(size.xscale)
postype = p1
persistent = 0
ignorehitpause = 1

[State 1200, 10]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0

; ahi va la granada cerca
[Statedef 14000]
type    = S
movetype= A
physics = S
juggle  = 11
anim = 30000
sprpriority = 1

[State 15000, 0.12]
type = VelSet
trigger1 = time = 0
X = 9
Y = -2

[State 15000, 0.12]
type = Veladd
trigger1 = time < 5
trigger1 = time > 0
X = 9
Y = -0.1

[State 15000, 0.12]
type = Veladd
trigger1 = time >= 5
X = 9
Y = 0.6

[State 15000, BoltFat]
type = hitdef
trigger1 = !movecontact
attr = S, SP
damage    = 90, 23
animtype = Light
air.animtype = Back
air.fall = 1
fall.recover = 0
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
air.juggle = 3
yaccel = 0.5
p2stateno = 21238
kill       = root, Var(9) = 0
fall.kill  = root, Var(9) = 0
guard.kill = root, Var(9) = 0

[State 15000, 0.1]
type = Destroyself
trigger1 = movecontact
trigger2 = FrontEdgeBodyDist < -130

;---------------------------------------------------------------------------
espada lazer

[Statedef 6969]
type    = S
movetype= A
physics = S
juggle  = 4
ctrl = 0
velset = 0,0,0
anim = 8589

[State 6969, 1.5]
type = Playsnd
trigger1 = animelem = 1
value = 4,10

[State 6970, 1.5]
type = Playsnd
trigger1 = time = 0
value = 10,3
volum = 255

[State 3500, Helper]
type = Helper
trigger1 = time = 0
helpertype = Normal
ID = 1579
postype = p1
pos = 0,0
stateno = 7070
ownpal = 1
bindtime = -1

[State 6969, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 7070]
type = S
movetype = A
ctrl = 0
anim = 8588
sprpriority = 4


[State 15000, BoltFat]
type = hitdef
trigger1 = !movecontact
attr = S, SP
damage    = 300, 198
animtype = Light
air.animtype = Back
air.fall = 1
fall.recover = 0
guardflag = HL
pausetime = 0,2
sparkno = 3
sparkxy = -55,-95
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
yaccel = 0.5
p2stateno = 21238
palfx.time=60
palfx.add=100,50,0
palfx.sinadd=100,50,0,90
kill       = root, Var(9) = 0
fall.kill  = root, Var(9) = 0
guard.kill = root, Var(9) = 0
envshake.time = 20
envshake.freq = 80
envshake.ampl = 7

[State 1403 , 6] ;quiebra la defensa del P2
type = AssertSpecial
triggerAll = animelem = 3
trigger1 = 1
flag  = unguardable

[State 3510, DestroySelf]
type = DestroySelf
trigger1 = parent, stateno != 6969


;---------------------------------------------------------------------------
rayo laser

[Statedef 1569]
type    = S
movetype= A
physics = S
juggle  = 2
velset = 0,0
anim = 8880
ctrl = 0

[State 200]
type = PlaySnd
trigger1 = AnimElem = 4
value = 10, 0
volume = 30

[State 1000, 0.1]
type = Posset
trigger1 = Pos Y != 0
trigger1 = time = 0
Y = 0

[State 1000, 2]
type = Explod
triggerall = Time >= 1
trigger1 = Pos Y >= 0
persistent = 0
stateno = 1569
anim = 567
ID = 191
pos = 10,-110
postype = p1
sprpriority = -1
bindtime = 1
ontop = 1

[State 3500, Helper]
type = Helper
trigger1 = AnimElem = 5
helpertype = Normal
ID = 1570
postype = p1
pos = 0,0
stateno = 1570
ownpal = 1
bindtime = -1

[State 1000, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 1570]
type = A
movetype = A
ctrl = 0
anim = 456
sprpriority = 4

[State 3510, HitDef]
type = HitDef
trigger1 = time = 0
attr = A, HP
getpower = 0
animtype = Heavy
damage    = 174, 87
guardflag = MA
hitflag = MAFP
priority = 4
animtype = Light
air.animtype = Back
air.fall = 1
fall.recover = 0
guardflag = HL
pausetime = 0,10
sparkno = -1
guard.sparkno = -1
hitsound   = S4,6
guardsound = S4,6
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -5,0
air.velocity = -3,-4
air.fall = 1
fall.recover = 0
air.juggle = 3
p2stateno = 21238
palfx.time=60
palfx.add=250,33,33
palfx.sinadd=100,50,0,90
kill       = parent,Var(9) = 0
fall.kill  = parent,Var(9) = 0
guard.kill = parent,Var(9) = 0

[State 1403 , 6] ;quiebra la defensa del P2
type = AssertSpecial
triggerAll = animelem = 3
trigger1 = 1
flag  = unguardable

[State 3510, DestroySelf]
type = DestroySelf
trigger1 = parent, stateno != 1569

;--------------------------------------------
;Teletrasportacion
[Statedef 700]
type = S
movetype = I
physics = S
anim = 700
ctrl = 0
velset = 0,0

[State 3011, Fire]
type = explod
trigger1 = Time = 1
trigger1 = stateno != 3010
anim = F11
shadow = -1,250,250
ID = 9199
pos = 0,0
postype = p1
ontop = 1

[State 3011, Boom]
type = PlaySnd
trigger1 = Animelem = 5
value = 4, 1

[State 3011, Boom]
type = PlaySnd
trigger1 = Animelem = 6
value = 14, 0

[State 3010, CS]
type = ChangeState
trigger1 = AnimTime = 0
value = 777
ctrl = 0

[StateDef 777]
type    = S
movetype= I
physics = S
ctrl = 0
velset = 0,0,0
anim = 11

[State 3010, Fire]
type = explod
trigger1 = Animelem = 1
anim = F11
ID = 701
postype = p1
pos = 0,0
shadow = -1,250,250
sprpriority >= 2

[State 700, 1]
type = PlaySnd
trigger1 = Time = 0
value = 4, 19; teleport

[State 700, 2]
type = PosAdd
trigger1 = Time = 0
X = (P2Dist X) + 30

[State 700, 4]
type = ChangeState
trigger1 = Time = 10
ctrl = 1
value = 0

;********** Reverse Teletrasportacion **********
[Statedef 3011]
type = S
movetype = I
physics = S
anim = 1016
ctrl = 0
velset = 0,0

[State 3011, Fire]
type = explod
trigger1 = Time = 1
trigger1 = stateno != 3010
anim = F11
shadow = -1,250,250
ID = 9199
pos = 0,0
postype = p1
ontop = 1

[State 3011, Var]
type = VarSet
trigger1 = AnimTime = 0 
var(17) = 0 ;ifelse(var(17) = 0, 1, 0)

[State 3011, Boom]
type = PlaySnd
trigger1 = time = 1
trigger1 = stateno != 3010
value = 4, 18

[State 3011, CS]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;============================================================
Red cyrax

[Statedef 1000]
type    = S
movetype= A
physics = S
juggle  = 4
velset = 0,0
anim = 1000
ctrl = 0

[State 1000, sound]
type = Playsnd
trigger1 = Animelem = 1
value = 14, 0

[State 1000, ssound]
type = Playsnd
trigger1 = time = 20
value = 4, 4

[State 1000, 1]
type = Helper
trigger1 = animelem = 2
triggerall = p2stateno != 9010
stateno = 1010
name = "net"
id = 1010
postype = p1
pos = 25, -95
helpertype = normal
sprpriority = 4
keyctrl = 0
ownpal = 1
under = 1

[State 1030, 1.54]
type = Destroyself
trigger1 = time = 250
trigger2 = p2stateno = 9010

[State 1000, 7]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

[State 1000, 8]
type = Changestate
trigger1 = p2stateno = 1020
trigger2 = p2stateno = 1021
value = 1001

;---------------------------------------------------------------------------
; Net has hit
[Statedef 1001]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 1100
ctrl = 0

[State 1030, 1.54]
type = Destroyself
trigger1 = time = 150
trigger2 = p2stateno = 9010

[State 1001, 8]
type = Changestate
trigger1 = time = 10
trigger2 = p2life = 1
trigger3 = p2stateno = 9010
trigger2 = roundno != 1
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; The Net itself
[Statedef 1010]
type    = S
movetype= A
physics = N
juggle  = 4
velset = 5,0
anim = 1001
ctrl = 0

[State 1030, 1.65]
type = changestate
trigger1 = p2stateno != 1020
trigger1 = anim = 1002
trigger1 = Parent, stateno != [1000, 1030]
value = 1013

[State 1030, 1.54]
type = Destroyself
trigger1 = time = 150
trigger3 = p2stateno = 9010

[State 700, Go2]
type = PLAYERPUSH
trigger1 = Time = 0
VALUE = 0

[State 1010, 2.1]
type = HitDef
trigger1 = time > 0
triggerall = p2stateno != 9010
attr = S, HA
damage    = 0
priority  = 6
guardflag = HL
sparkno = -1
p2facing = 1
hitonce = 1
hitsound   = 5,1
guardsound = 5,14
guard.slidetime = 20
guard.ctrltime = 10 
p1stateno = 1030
p2stateno = 1020
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 1010, 4]
type = Changestate
trigger1 = MoveGuarded = 1
trigger3 = p2stateno = 9010
value = 1013

;------------------------------------------------------------------------
; WBJ's Less cheap thingy
[Statedef 1013]
type    = S
movetype= I
physics = N
anim = 1003
Velset = 0,0
ctrl = 0

[State 1000, nd]
type = Playsnd
trigger1 = time = 1
value = 4, 8

[State 1013, 1]
type = Destroyself
trigger1 = animtime = 0
trigger2 = p2stateno = 9010

;---------------------------------------------------------------------------
; P2's hit by net state
[Statedef 1020]
type    = S
movetype= H
physics = S
ctrl = 0
velset = 0,0
anim = 21238
sprpriority = -2

[State 1020, bugfix]
type = varset
triggerall = var(17) = 1
trigger1 = name = "reptile"
trigger2 = name = "smoke"
trigger3 = name = "hsmoke"
v= 17
value = 0

[State 700, Go2]
type = PLAYERPUSH
trigger1 = Time = 0
VALUE = 0

[State 1020, 1]
type = PosAdd
trigger1 = timemod = 10,0
trigger1 = time = [0, 50]
X = -1

[State 1020, 1.1]
type = Posadd
trigger1 = timemod = 10,4
trigger1 = time = [0, 50]
X = 1

[State 1020, 2]
type = Changestate
trigger1 = P2dist X = [30, 40]
value = 1021

[State 1020, 3]
type = Selfstate
trigger1 = time = 120
value = 0
ctrl = 1 
;-------------------------------------------------------------------------------
;P2  stunned by spear
[Statedef 1021]
type    = S
movetype= H
physics = N
velset = 0,0
;anim = 21238
ctrl = 0

[State 700, Go2]
type = PLAYERPUSH
trigger1 = 1
VALUE = 0

[State 1021, 1]
type = Changeanim
trigger1 = time = 0
value = 21238;5000

[State 1030, 1.013]
type = Velset
trigger1 = 1
X = 0
Y = 0

[State 1021, 3]
type = Selfstate
trigger1 = time = 50
value = 0
ctrl = 1

;--------------------------------------------------------------------------
; Net latching onto target
[Statedef 1030]
type    = S
movetype= A
physics = N
juggle  = 1
anim = 1002
removeongethit = 1
Velset = 0, 0
ctrl = 0

[State 1030, 1.54]
type = Destroyself
trigger1 = time = 120
trigger2 = p2bodydist Y = -5

[State 1030, 1]
type = targetbind
trigger1 = p2stateno = 1020
pos = 0,95

[State 1030, 1.01]
type = Velset
trigger1 = time = 10
X = -3

[State 1030, 1.1]
type = Velset
trigger1 = ParentDist X = [-30, 80]
X = 0

[State 1030, 1.01]
type = Velset
trigger1 = P2dist X = [5, 30]
X = 0

[State 1030, 1.4]
type = Changeanim
trigger1 = p2stateno = 1021
trigger1 = anim != 1102
value = 1102

[State 1030, 1.5]
type = changestate
trigger1 = p2stateno != 1021
trigger1 = anim = 1102
trigger1 = Parent, stateno != [1000, 1030]
;trigger2 = Movecontact = 1
trigger2 = p2stateno != 1020 
trigger2 = p2stateno != 1021 
value = 1013
