;bolt
;---------------------
[Statedef 11000]   
type    = S
movetype= A
physics = S
juggle  = 2
velset = 0,0
anim = 9982
ctrl = 0

[State 10000, open]
type = PlaySnd
trigger1 = AnimElem = 2 
value = 9, 1

[State 1000, 0.1]
type = Posset
trigger1 = Pos Y != 0
trigger1 = time = 0
Y = 0

[State 5510, 1]
type = BGPalFX
trigger1 = time = 10
time = 9999
add = 0, 0, 0
ignorehitpause = 1

[State 0, AllPalFX]
type = BGPalFX
trigger1 = time = 8
time = 10
add = 255,255,255
mul = 255,255,255
sinadd = 255,255,255

[State 0, Explod]
type = Explod
trigger1 = animelem = 3
anim = 99821
pos = 0,0
postype = p1
bindtime = 1
sprpriority = -1

[State 9251,misil fire]
type = Helper
trigger1 = animelem = 3;4;9
postype = p1
pos = 0,0
stateno = 11001

[State 1000, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 11001]
type    = S
movetype= A
physics = S
juggle  = 2
velset = 0,0
anim = 99820
sprpriority = 2

[State 1601, Hit]
type = HitDef
trigger1 = time = 0;!movecontact
attr = S, NA
animtype  = Back
damage    = 220, 80
guardflag = HL
hitflag = MAF
pausetime = 0,2
sparkno = -1
;sparkxy = -55,-95
guard.sparkno = -1
hitsound = 5,0
guardsound = 5,14
ground.type = High
ground.slidetime = 30
p2facing = 1
guard.ctrltime = 20
guard.slidetime = 20
ground.hittime  = 30
ground.velocity = -5,-6
air.velocity = -5,-6
air.hittime = 17
fall.recover = 0
envshake.time = 15
envshake.freq = 70
envshake.ampl = 7
kill       = root, Var(9) = 0
fall.kill  = root, Var(9) = 0
guard.kill = root, Var(9) = 0

[State 201, 347]
type = EnvShake
trigger1 = moveguarded = 1
time = 13
freq = 70
ampl = 7

[State 10000, rakieta]
type = destroyself
trigger1 = animtime = 0
;------------------------------------
;static

[StateDef 13000]
type    = S
movetype= A
physics = S
juggle  = 3
ctrl = 0
velset = 0,0,0
anim = 9984

[State 1200, ZappySound]
type = PlaySnd
trigger1 = AnimElem = 6
trigger2 = AnimElem = 9
trigger3 = AnimElem = 12
trigger4 = AnimElem = 15
value = 4, 12

[State 1200, Za]
type = VelSet
trigger1 = time = 1
trigger2 = Vel Y != 0
y = 0

[State 1200, BoltFat]
type = HitDef
trigger1 = !movecontact
attr = S, NA
damage    = 215, 107
animtype  = Heavy
hitflag = MAF ;HAF
guardflag = HL
pausetime = 0,2
sparkno = s1610
sparkxy = -15,0
guard.sparkno = s998
hitsound   = s4,2
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
envshake.ampl = 8
air.juggle = 4
fall = 1
fall.recover = 0
palfx.time = 20
palfx.add = 0,75,150
palfx.sinadd = 0,65,140, 5
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 235, sssf]
type = envshake
trigger1 = AnimElem = 6
trigger2 = AnimElem = 9
trigger3 = AnimElem = 12
trigger4 = AnimElem = 15
time = 30
freq = 25
ampl = 3


[State 1200, 10]
type = ChangeState
trigger1 = AnimTime = 0
;trigger2 = !movecontact
ctrl = 1
value = 0

;________________

;------------------------------------god mode

[Statedef 12440]
type    = S
movetype= A
physics = S
juggle  = 5
ctrl = 0
velset = 0,0,0
anim = 9983

[State 12440, 1.5]
type = Playsnd
trigger1 = animelem = 6
value = 4,16

[State 12440, 2]
type = HitDef
trigger1 = !movecontact
attr = S, NA
animtype  = Back
damage    = 390, 7
guardflag = HL
hitflag = MAF
pausetime = 3,2
sparkno = s998
sparkxy = 0,-95
guard.sparkno = -1
hitsound = s3,2
guardsound = -1
ground.type = High
ground.slidetime = 30
p2facing = 1
guard.ctrltime = 20
guard.slidetime = 20
ground.hittime  = 30
ground.velocity = -5,-6
air.velocity = -5,-6
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

[State 12440, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;------------------------------------

;shock
[Statedef 6011]
type    = S
movetype= A
physics = N
poweradd= 0
ctrl = 0
velset = 0,0
anim = 6012
sprpriority = 2

[State ]
type = posadd
trigger1 = animelem = 1 || animelem = 2 || animelem = 3 || animelem = 4 || animelem = 5
x = 5

[State sound]
type = PlaySnd
trigger1 = !time
value = 1, 8

[State grabby]
type = HitDef
Trigger1 = !movecontact
damage = 230,90
guard.pausetime = 5,5
attr = S, ST
guardflag = M
priority = 1, Miss
sparkno = -1
guard.sparkno = -1
sprpriority = 1
ground.slidetime = 15
ground.hittime = 15
guard.velocity = -9
guardsound = 5,14
p1facing = 1
p2facing = 1
p1stateno = 6012
p2stateno = 6013
numhits = 0
fall = 1
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State end]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1
;---------------------------------------------------------------
[Statedef 6099]
type    = S
movetype= I
physics = S
velset = 0,0

[State end]
type = changeState
trigger1 = 1
value = 6099
;--------------------------------------------------------------------
;shock connect
[Statedef 6012]
type    = A
movetype= A
physics = N
poweradd= 0
ctrl = 0
velset = 0,0
anim = 6013
sprpriority = 1

[State ò_ó]
type = Explod
trigger1 = !time
anim = 7007
id = 7007
Postype = p1
pos = 55,0
removeongethit = 1
removetime = 39
sprpriority = 4
bindtime = -1
ownpal = 1

[State shake]
type = EnvShake
trigger1 = time = 41
time = 15
ampl = -4
freq = 75
phase = 60

[State sound]
type = PlaySnd
trigger1 = time = 41
value = F5, 0

[State end]
type = targetbind
trigger1 = time <= 39
pos = 55,-94

[State ]
type = width
trigger1 = 1
edge = 60,0

[State end]
type = targetbind
trigger1 = time = 41
pos = 60,-70

[State ]
type = targetstate
trigger1 = time = 41
value = 6014

[State ]
type = Helper
trigger1 = time = 41
helpertype = Normal
ID = 7114
postype = p1
ignorehitpause = 1
pos = 60,0
stateno = 27
ownpal = 1

[State ]
type = targetlifeadd
trigger1 = time = 7 || time = 20 || time = 33 || time = 41
value = -10
kill = var(6)

[State sound]
type = PlaySnd
trigger1 = time = 7 || time = 20 || time = 33
value = 9, 3

[State ]
type = bgpalfx
trigger1 = time = 7 || time = 20 || time = 33
time = 3
add = 70,70,70
[State shake]
type = EnvShake
trigger1 = time = 7 || time = 20 || time = 33
time = 15
ampl = -2
[State shake]
type = hitadd
trigger1 = time = 7 || time = 20 || time = 33 || time = 41
value = 1

[State end]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1
;---------------------------------------------------------------
;ouch
[Statedef 6013]
type    = A
movetype= H
physics = N
velset = 0,0
sprpriority = 3

[State stupid camera]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 1,0

[State ]
type = ChangeAnim2
trigger1 = !time
value = 6014

[State ]
type = palfx
trigger1 = !(time %3)
time = 1
color = 0
invertall = 1

[State away with you]
type = changestate
trigger1 = time = 45
value = 6014
;---------------------------------------------------------------
;ouch
[Statedef 6014]
type    = A
movetype= H
physics = N
velset = -6,-5
sprpriority = -1

[State ]
type = ChangeAnim2
trigger1 = !time
value = 6015

[State ]
type = veladd
trigger1 = 1
y = .5

[State stupid camera]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,0

[State weeeeeee!]
type = changestate
triggerall = time >= 10
trigger1 = (Vel Y > -10) && (Pos Y >= 0)
value = 6015
;---------------------------------------------------------------
;ouch
[Statedef 6015]
type    = L
movetype= H
physics = N
velset = 0,0

[State ]
type = posset
trigger1 = 1
y = 0

[State ]
type = ChangeAnim2
trigger1 = !time
value = 6016

[State weeeeeee!]
type = SelfState
trigger1 = time = 13
value = ifelse(alive,5120,5150)
;---------------------------------------------------------------
[Statedef 6099]
type    = S
movetype= I
physics = S
velset = 0,0

[State end]
type = changeState
trigger1 = 1
value = 6099
