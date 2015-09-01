[Statedef 1000]
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 1003
sprpriority = 5

[State 1200, ound]
type = PlaySnd
trigger1 = animelem = 7
value = F5, 29
volume = 50

[State 235, sssa]
type = envshake
trigger1 = animelem = 7
time = 10
freq = 100
ampl = 7

[State 1100, 1]
type = HitDef
Trigger1 = Time = 0
;Trigger1 = p2statetype != A
attr = S, NA
damage=150
hitflag = MFD
guardflag = A
sparkno = -1
sprpriority = 5
p2facing = 1
p2stateno = 21238
air.fall = 1
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 1100, 2]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1
;--------------------------------------
;-------------------------------
[StateDef 1100]
type    = S
movetype= A
physics = S
juggle  = 2
ctrl = 0
velset = 0,0,0
anim = 1040


[State 10000, open]
type = PlaySnd
trigger1 = AnimElem = 2
value = 4, 9

[State 1000, 0.1]
type = Posset
trigger1 = Pos Y != 0
trigger1 = time = 0
Y = 0

[State 1200, 2at]
type = Explod
trigger1 = animelem = 3
anim = 1005555555
pos = 0,0
removeongethit = 1
postype = p1
;bindtime = -1
sprpriority  >= 2


[State 1200, BoltFat]
type = HitDef
trigger1 = AnimElem = 4
trigger2 = AnimElem = 5
trigger3 = AnimElem = 6
trigger4 = AnimElem = 7
trigger5 = AnimElem = 8
triggerAll = p2stateno != 1102;9009
; HitDef part of projectile info
attr = S, SA
damage    = 0, 0
animtype = Light
air.animtype = Back
hitflag = MAFL
guardflag = HL
pausetime = 0,2
sparkno = -1
guard.sparkno = -1
hitsound   = -1;S4,9
guardsound = -1
p2facing = 1
ground.type = High
p1stateno = 1101;9008
p2stateno = 1102;9009
ground.slidetime = 20
ground.hittime  = 15
ground.velocity = -15,0
ground.cornerpush.veloff = 0
air.velocity = -3,-4
fall.recover = 0
air.juggle = 2
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)


[State 1200, BoltFat]
type = HitDef
attr = S, SA
trigger1 = MoveGuarded = 1
sparkno = -1
guard.sparkno = -1
hitsound   = 5,14
guardsound = -1
p1stateno = 1101;9008
p2stateno = 21238
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 1200, 10]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0

[StateDef 1101];9008
type    = S
movetype= I
physics = S
ctrl = 0
velset = 0,0,0
anim = 10203055

[State 88500, Fall]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------
[StateDef 1102];9009
type    = S
movetype= H
physics = S
juggle  = 6
ctrl = 0
velset = 0,0,0
anim = 8881

[State 88500, huck]
type = VelAdd
trigger1 = time < 80
X = 1.7

[State 88500, huck]
type = VelSet
trigger1 = Pos Y < 0
trigger1 = time < 80
Y = 0.6

[State 88500, dfhuck]
type = VelSet
trigger1 = p2bodydist X <= 5
X = 0
Y = 0

[State 88500, Fall]
type = SelfState
trigger1 = Time = 140
value = 5050

; Drop
[Statedef 1601]
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

;------------
; LightningFAT
[StateDef 12001]
type = S
movetype= H
physics = N
velset = 0,0

[State 1005, CSZ4]
type = LifeAdd
trigger1 = Life < 2
value = -10

[State 1005, CS3]
type = SelfState
trigger1 = time = 100
trigger1 = Life < 2
value = 5050

[State 1005, attempt]
type = Varset
trigger1 = time = 0
V = 23
Value = Anim

[State 1005, freeze in anim]
type = Changeanim
trigger1 = time != 0
value = Var(23)

[State 1005, Frosty color]
type = palFX
trigger1 = time != 0
;trigger1 = var(23) = 1
add = 100,150,250
mul = 200,200,200
time = 2

[State 1005, VELSET]
type = velset
trigger1 = time = 0
X = 0
Y = 0


[State 1005, VEL1]
type = posadd
trigger1 = time = 0
trigger2 = time = 10
trigger3 = time = 20
X = 2.5


[State 1005, VEL2]
type = posadd
trigger1 = time = 5
trigger2 = time = 15
trigger3 = time = 25
X = - 2.5


[State 1005, CS]
type = SelfState
trigger1 = time = 200
trigger1 = Pos Y > -1
value = 0
ctrl = 1

[State 1005, CSZ]
type = Changestate
trigger1 = time = 200
trigger1 = Pos Y < 0
value = 1006

;--------------

[Statedef 1007]
type = S
movetype= H
physics = N
velset = 0,0

[State 1005, CS]
type = SelfState
trigger1 = time = 0
trigger1 = Pos Y > -1
value = 0
ctrl = 1

[State 1005, CSZ]
type = Changestate
trigger1 = time = 0
trigger1 = Pos Y < 0
value = 1006
;-----------------------

; Double ice hits back
[Statedef 1009]
type    = S
movetype= H
physics = N
juggle  = 0
velset = 0,0
ctrl = 0
anim = 9998

[State 1009, Frosty color]
type = palFX
trigger1 = time != 0
;trigger1 = var(23) = 1
add = 100,150,250
mul = 200,200,200
time = 2

[State 1009, VELSET]
type = velset
trigger1 = time = 0
X = 0
Y = 0

[State 1009, VELSET]
type = PosSet
trigger1 = time = 0
Y = 0


[State 1005, VEL1]
type = posadd
trigger1 = time = 0
trigger2 = time = 10
trigger3 = time = 20
X = 2.5


[State 1005, VEL2]
type = posadd
trigger1 = time = 5
trigger2 = time = 15
trigger3 = time = 25
X = - 2.5

[State 1005, CS]
type = SelfState
trigger1 = time = 200
trigger1 = Pos Y > -1
value = 0
ctrl = 1

[State 1005, CSZ]
type = Changestate
trigger1 = time = 200
trigger1 = Pos Y < 0
value = 1006

;--------------------------
; Double ice hits back22222222
[Statedef 1019]
type    = S
movetype= H
physics = N
juggle  = 0
velset = 0,0
ctrl = 0
anim = 1019

[State 1009, Frosty color]
type = palFX
trigger1 = time != 0
;trigger1 = var(23) = 1
add = 100,150,250
mul = 200,200,200
time = 2

[State 1009, VELSET]
type = velset
trigger1 = time = 0
X = 0
Y = 0

[State 1009, VELSET]
type = PosSet
trigger1 = time = 0
Y = 0


[State 1005, VEL1]
type = posadd
trigger1 = time = 0
trigger2 = time = 10
trigger3 = time = 20
X = 2.5


[State 1005, VEL2]
type = posadd
trigger1 = time = 5
trigger2 = time = 15
trigger3 = time = 25
X = - 2.5

[State 1005, CS]
type = SelfState
trigger1 = time = 200
trigger1 = Pos Y > -1
value = 0
ctrl = 1

[State 1005, CSZ]
type = Changestate
trigger1 = time = 200
trigger1 = Pos Y < 0
value = 1006

;------------------------

[Statedef 1006]
type    = S
movetype= H
physics = N
velset = 0,4
ctrl = 0
anim = 5070

[State 1006, VELADD]
type = Veladd
trigger1 = Pos Y < 0
Y = .75

[State 1006, Hit ground A]
type = Velset
trigger1 = Pos Y > 0
Y = 0

[State 1006, Hit ground A]
type = Posset
trigger1 = Pos Y > 0
trigger1 = Vel Y = 0
Y = 0

[State 1006, Hit Ground C]
type = SelfState
trigger1 = vel Y = 0
trigger1 = Pos Y = 0
value = 5100 ;Hit ground

;-----------------------------------------------------------------
[StateDef 1200]
type    = S
movetype= A
physics = S
juggle  = 4
ctrl = 0
velset = 0,0,0
anim = 1040

[State 1200, ZappySound]
type = PlaySnd
trigger1 = AnimElem = 5
value = 4, 18
channel = 3
volume = 20

[State 1200, Za]
type = VelSet
trigger1 = 1
trigger2 = Vel Y != 0
y = 0

[State 1200, Zadf]
type = nothitby
trigger1 = animelem >= 6
value = CSA

[State 1200, BoltFat]
type = Projectile
trigger1 = AnimElem = 6
triggerall = p2stateno != 9010
;trigger1 = p2stateno != 12001
;trigger2 = p2stateno != 1009
projanim = 5678912
;projhitanim = 1016
;projremanim = 1016
offset = 0*const(size.xscale), 120*const(size.xscale)
ID = 997
velocity = 8, 0
remvelocity = 0, 0
; HitDef part of projectile info
attr = S, NP
animtype  = Back
damage    = 174, 86
guardflag = ML
hitflag = MAF
pausetime = 0, 2
sparkno = 6
guard.sparkno = 6
hitsound = S4,18
p1stateno = 1001;198
p2stateno = 1002;9019
guardsound = S4,18
ground.type = High
ground.slidetime = 30
p2facing = 1
guard.ctrltime = 20
guard.velocity = -5
guard.slidetime = 20
ground.hittime  = 30
air.hittime = 17
fall = 1
fall.recover = 0
yaccel = 0.45
kill       = Var(9) = 0
fall.kill  = Var(9) = 0
guard.kill = Var(9) = 0

[State 1200, Zadf]
type = nothitby
trigger1 = movehit
value = CSA

[State 1200, 10]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0
;----------
[StateDef 1001];918
type    = S
movetype= A
physics = S
ctrl = 0
velset = 0,0,0
anim = 2536
;sprpriority = 9

[State 1200, Zadf]
type = nothitby
trigger1 = 1
value = CSA


[State 1200, Za]
type = VelSet
trigger1 = 1
trigger2 = Vel Y != 0
y = 0

[State 1200, Zasd]
type = PosSet
trigger1 = 1
y = 0

[State 1200, 2at]
type = Explod
trigger1 = time = 1
anim = 888
pos = 35,-75
postype = p1
ID = 1990
sprpriority  >= 2
removetime = 400

;[State 10000, open]
;type = PlaySnd
;trigger1 = AnimElem = 2
;value = 4, 6

[State 88500, hu]
type = targetVelAdd
trigger1 = time <= 140
trigger1 = command = "holdup"
Y = -.1

[State 88500, hud]
type = targetVelAdd
trigger1 = command = "holdback"
X = 1.6

[State 88500, hudd]
type = targetVelAdd
trigger1 = command = "holdfwd"
X = -1.6

[State 88500, huddd]
type = targetVelAdd
trigger1 = command = "holddown"
y = .1

[State 1200, 103]
type = ChangeState
trigger1 = animTime = 0
trigger1 = moveguarded
ctrl = 1
value = 0


[State 1200, 10]
type = ChangeState
trigger1 = Time = 180
trigger1 = p2stateno = 1002;9019
trigger2 = roundstate = 3
trigger2 = time >= 30
ctrl = 1
value = 1003;9220

[State 1200, 10sd]
type = ChangeState
trigger1 = p2bodydist X <= 20
trigger1 = p2stateno = 1002;9019
trigger2 = p2stateno = [5000,5300]
ctrl = 1
value = 1003;9220
;--------
[StateDef 1003];9220
type    = S
movetype= I
physics = S
ctrl = 0
velset = 0,0,0
anim = 2536
;sprpriority = 9

[State 1200, 10]
type = ChangeState
trigger1 = animTime = 0
trigger2 = p2stateno = [5000,5300]
ctrl = 1
value = 0

;---------
[StateDef 1002];9019
type    = A
movetype= H
physics = S
juggle  = 6
ctrl = 0
velset = 0,0,0
anim = 8881
;sprpriority = 9

;[State 10000, open]
;type = PlaySnd
;trigger1 = AnimElem = 2
;value = 4, 6

;[State 88500, huck]
;type = VelAdd
;trigger1 = time <= 90
;trigger1 = command = "holdup"
;Y = -.2


[State 88500, huck]
type = VelAdd
trigger1 = time > 200
;trigger1 = command = "holdup"
Y = 1

[State 88500, huck]
type = VelSet
trigger1 = Pos Y <= -90
trigger1 = time  <= 160
Y = 0

[State 88500, Fa]
type = SelfState
trigger1 = Time = 200
trigger1 = Pos Y <= -100
value = 5050

[State 88500, Fall]
type = SelfState
trigger1 = Time = 210
value = 5100

[StateDef 90191]
type    = A
movetype= H
physics = S
juggle  = 6
ctrl = 0
velset = 0,0,0
;sprpriority = 9

;[State 10000, open]
;type = PlaySnd
;trigger1 = AnimElem = 2
;value = 4, 6

[State 88500, huck]
type = VelAdd
trigger1 = time <= 30
Y = -.2

[State 88500, huck]
type = VelAdd
trigger1 = time > 160
Y = .1

[State 88500, huck]
type = VelSet
trigger1 = Pos Y <= -100
trigger1 = time  <= 160
Y = 0

;[State 88500, sdhuck]
;type = changestate
;trigger1 = command = "holdup"
;value = 90191

[State 88500, Fall]
type = SelfState
trigger1 = Time = 200
value = 5100
;--------------------------------------------
;------------------------------------------
;-------------------------------------------------------
[StateDef 1900];campo de fuerza
type    = S
movetype= A
physics = S
juggle  = 3
ctrl = 0
velset = 0,0,0
anim = 180

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
