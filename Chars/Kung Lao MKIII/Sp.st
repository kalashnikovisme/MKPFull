[Statedef 2440]
type    = S
movetype= A
physics = S
juggle  = 5
ctrl = 0
velset = 0,0,0
anim = 1100

[State 2, Roundhouseblood]
type = Helper
trigger1 = movehit
trigger1 = numhelper(29) < 1
ID = 29
stateno = 29
pos = 0, 0
postype = p1
persistent = 0
ignorehitpause = 1

[State 2440, 1.5]
type = Playsnd
trigger1 = animelem = 3
value = F5,15

[State 2440, 2]
type = HitDef
trigger1 = !movecontact
attr = S, NA
animtype  = Back
damage    = 290, 40
guardflag = HL
hitflag = MAF
pausetime = 3,2
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

[State 2440, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 2444]
type    = S
movetype= A
physics = S
juggle  = 4
ctrl = 0
velset = 0,0,0
anim = 210

[State 9130, SetFatal]
type = Varset
trigger1 = Time = 4
V = 4
value = 1

[State 8000, sad]
type = BGPalFX
trigger1 = animelem = 1
time = 9999
add = -100, -100, -100

[State 2440, 1.5]
type = Playsnd
trigger1 = animelem = 1
value = 13,0

[State 2440, 1.5]
type = Playsnd
trigger1 = animelem = 3
value = F5,15

[State 2440, 2]
type = HitDef
trigger1 = !movecontact
attr = S, NA
animtype  = Back
damage    = 166, 22
guardflag = HL
hitflag = MAF
pausetime = 0, 2
p2stateno = 441
sparkno = 1
sparkxy = 30,-95
guard.sparkno = -1
hitsound = 5,0
guardsound = 5,14
ground.cornerpush.veloff = -30
ground.type = High
ground.slidetime = 30
p2facing = 1
guard.ctrltime = 20
ground.hittime  = 30
ground.velocity = -5,-5
air.velocity = -4.4,-5.2
air.hittime = 17
;fall = 1
fall.recover = 0
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 2440, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


[State 24400, 4]
type = ChangeState
trigger1 = Movehit = 1
value = 2401
ctrl = 1

[Statedef 2401]
type    = S
movetype= I
physics = S
ctrl = 0

[State 2401, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------
[StateDef 1540];giro
type    = S
movetype= A
physics = S
juggle  = 3
ctrl = 0
velset = 0,0,0
anim = 10151

[State 9327, explod]
type = Explod
trigger1 = animelem = 1
trigger2 = animelem = 17
trigger3 = animelem = 33
anim = 10251
vel = 0,0
bindtime = -1
pos = 0,0
postype = p1
ownpal = 0

[State 9327, explod]
type = Explod
trigger1 = animelem = 9
trigger2 = animelem = 25
trigger3 = animelem = 41
anim = 10252
vel = 0,0
bindtime = -1
pos = 0,0
postype = p1
ownpal = 0

[State 1200, ZappySound]
type = PlaySnd
trigger1 = AnimElem = 1
value = 5, 13

[State 1200, Za]
type = VelSet
trigger1 = time = 1
trigger2 = Vel Y != 0
y = 0

[State 1100, aAccell]
type = VelAdd
trigger1 = command = "holdfwd"
x = 4

[State 1100, aAccell]
type = VelAdd
trigger1 = command = "holdback"
x = -4

[State -1, more]
type = ChangeState
value = 1540
triggerall = command = "b"
trigger1 = time >=24
trigger1 = !movecontact

[State -1, more]
type = ChangeState
value = 1550
triggerall = command = "a"
trigger1 = time >=24
trigger1 = !movecontact
triggerall = p2stateno = 9010

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
damage    = 235, 115
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

[State 1200, 10]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0
;-------------------

[StateDef 1550];giro
type    = S
movetype= A
physics = S
juggle  = 3
ctrl = 0
velset = 3,0
anim = 10152

[State 0]
type = Helper
trigger1 = time = 0
stateno = 1552

[State 1200, ZappySound]
type = PlaySnd
trigger1 = AnimElem = 1
trigger2 = AnimElem = 30
trigger3 = AnimElem = 60
trigger4 = AnimElem = 90
trigger5 = AnimElem = 120
trigger6 = AnimElem = 140
value = 5, 13

[State 1100, aAccell]
type = VelAdd
triggerall = stateno = 1550
trigger1 = Time < 145
trigger2 = Time > 35
x = 3

[State 201, 1]
type = HitDef
trigger1 = !movecontact
attr = S, NA
hitflag = MAF ;HAF
sparkno = -1
sparkxy = -18,-100
hitsound   = 5,0
numhits = 0
p1stateno = 1553
p2stateno = 1551
envshake.time = 20
envshake.freq = 30
envshake.ampl = 15
air.juggle = 4
fall = 1
fall.recover = 0
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 9130, Setbrutal]
type = Varset
trigger1 = !movecontact
V = 3
value = 5

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
;---------------------

[Statedef 1551]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= H                      ;Move-type: A-attack, I-idle, H-gethit
physics = S

[State 45, fff]
type = LifeSet
trigger1 = time = 30
value = 0

[State 45, 34fff]
type = Selfstate
trigger1 = time = 30
value = 5150

[State 5, Vel XY]
type = PosSet
trigger1 = Time = 0
Y = 900;-140

[State 235, sss]
type = envshake
trigger1 = time = 0;228
time = 10
freq = 40
ampl = 4

[State 9000, 123]
type = Explod
trigger1 = time = 0;228
anim = F16
postype = p1
pos = 0,-990
facing = 1
sprpriority = 2
;ontop = 1
ownpal = 1

[State 9000, 123]
type = Explod
trigger1 = time = 7;235
anim = F16
postype = p1
pos = 10,-1030
facing = 1
sprpriority = 2
;ontop = 1
ownpal = 1


[State 9000, 1]
type = Explod
trigger1 = time = 0;228
anim = F17
postype = p1
pos = 0,-1010
facing = 1
sprpriority = 2
ontop = 1
ownpal = 1

[State 9000, 1]
type = Explod
trigger1 = time = 0;228
anim = F17
postype = p1
pos = 0,-980
facing = 1
sprpriority = 2
;ontop = 1
ownpal = 1

[State 9000, 1]
type = Explod
trigger1 = time = 0;228
anim = F17
postype = p1
pos =0,-960
facing = 1
sprpriority = 2
ontop = 1
ownpal = 1

[State 9000, 123]
type = Explod
trigger1 = time = 6;234
anim = F16
postype = p1
pos = 80,-1080
facing = 1
sprpriority = 2
ontop = 1
ownpal = 1

[State 9000, 123]
type = Explod
trigger1 = time = 3;231
anim = 43051
postype = p1
pos = 0,-1010
vel = -2 , 2
;postype = front
bindtime = 1
facing = 1
sprpriority = 3
ontop = 1
ownpal = 1
removetime = -1

[State 9000, 123]
type = Explod
trigger1 = time = 4;232
anim = 43052
postype = p1
pos = 0,-1050
vel = 9 , -6
;postype = front
bindtime = 1
facing = 1
sprpriority = 3
ontop = 1
ownpal = 1
removetime = -1

[State 9000, 123]
type = Explod
trigger1 = time = 6;234
anim = 43052
postype = p1
facing = -1
pos = 40,-1050
vel = -10 , -8
;postype = front
bindtime = 1
facing = 1
sprpriority = 3
ontop = 1
ownpal = 1
removetime = -1


[State 9000, 123]
type = Explod
trigger1 = time = 4;232
anim = 43053
postype = p1
pos = 0,-990
vel = -7 , -6
;postype = front
bindtime = 1
facing = 1
sprpriority = 3
ontop = 1
ownpal = 1
removetime = -1

[State 9000, 123]
type = Explod
trigger1 = time = 4;232
anim = 43053
postype = p1
pos = 50,-990
vel = 14 , -2
facing = -1
;postype = front
bindtime = 1
facing = 1
sprpriority = 3
ontop = 1
ownpal = 1
removetime = -1

[State 9000, 123]
type = Explod
trigger1 = time = 4;232
anim = 43054
postype = p1
pos = 0,-1030
vel = 1,3
;postype = front
bindtime = 1
facing = 1
sprpriority = 2
ontop = 1
ownpal = 1
removetime = -1

[State 9000, 000]
type = Explod
trigger1 = time = 4;232
anim = 888
ID = 333
postype = p1
pos = -50,-990
facing = 1
sprpriority = 2
removetime = -1
ontop = 1
ownpal = 1
;-----------------

[Statedef 1552]
type = S
movetype = A
anim = 888

[State 0, StopSnd]
type = StopSnd
trigger1 = time = 0
channel = -1

[State 210, 1]
type = Playsnd
trigger1 = time = 1
value = F5,11
volume = 60
channel = 1

[State 8000, sad]
type = BGPalFX
trigger1 = time = 0
time = 9999
add = -20, -20, -20

[State 8000, sadsd]
type = BGPalFX
trigger1 = time = 2
time = 9999
add = -50, -50, -50

[State 0]
type = DestroySelf
trigger1 = time = 2
;-----------------------

[Statedef 1553]
type    = S
movetype= I
physics = S
ctrl = 0
anim = 10153

[State 431, 3.2]
type = VarRandom
trigger1 = Time = 0
v = 45
range = 1, 140

[State 9251, SetFatal]         ;setea brutality
type = Varset                  ;(palabra escrita y hablada)
trigger1 = time = 0
V = 1
value = 5

[State 202, NotFrly]
type = Changeanim
trigger1 = Time = 15
value = 10153

[State 431, 3.99999]
type = Varset
trigger1 = AnimTime = 0
v = 11
value = 0

[State 431, 3.99999]
type = Varset
trigger1 = AnimTime = 0
v = 45
value = 0

[State 431, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;-----------------------

[StateDef 1554]
type    = S
movetype= I
physics = S
ctrl = 0

[State 1000, Accellw]
type = VelSet
trigger1 = time = 0
x = -3

[State 1001, 10]
type = Changestate
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;-----------
[StateDef 1100]
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

[State 9327, explod]
type = Explod
trigger1 = time%2=1
trigger1 = anim = 1000
anim = 1110
vel = -1,0
pos = 0,0
postype = p1
ownpal = 0

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
guardsound = 5,14
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

[State 1000, 0.12]
type = changestate
trigger1 = moveguarded
value = 1103

[State 1000, 0.1]
type = Destroyself
trigger1 = time >= 100
;trigger1 = 1
;--------------
[Statedef 1102]
type    = S
movetype= A
physics = S
juggle  = 2
velset = 0,0
anim = 1000

[State 9327, explod]
type = Explod
trigger1 = time%2=1
trigger1 = anim = 1000
anim = 1110
vel = -1,0
pos = 0,0
postype = p1
ownpal = 0

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
trigger1 = time >= 0
X = -7
Y = -7

[State 1000, 0.12]
type = changeanim
trigger1 = time = 0
value = 1002

[State 1000, 0.1]
type = Destroyself
trigger1 = time >= 50
;------------------------------

[StateDef 1280];bola aire
type    = S
movetype= A
physics = S
juggle  = 4
ctrl = 0
velset = 0,0,0
anim = 1166
sprpriority = 3

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
stateno = 1121
pos = 50, -59
postype = p1
persistent = 0
ignorehitpause = 1

[State 88500, Fall]
type = ChangeState
trigger1 = AnimTime = 0
value = 1281
;--------------------

[Statedef 1121]
type    = S
movetype= A
physics = S
juggle  = 11
;velset = 7,0
anim = 1000

[State 1000, 0.12]
type = VelSet
trigger1 = time = 0
X = 7
Y = -2

[State 1000, 0.12]
type = Veladd
trigger1 = 1
X = 7
Y = 0.3

[State 9327, explod]
type = Explod
trigger1 = time%2=1
trigger1 = anim = 1000
anim = 1110
vel = -1,0
pos = 0,0
postype = p1
ownpal = 0

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
p2stateno = 21241
hitsound   = S4,19
guardsound = 5,14
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
trigger1 = time >= 100
;trigger1 = 1
;-----------------------

[Statedef 1281]; Drop
type    = A
movetype= I
physics = A
juggle  = 4
velset = 0,0
anim = 1301
ctrl = 0

[State 1101]
type = Veladd
trigger1 = time > 0
y = .3
;--------------------------
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
damage    = 150, 75
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
envshake.time = 10
envshake.freq = 30
envshake.ampl = 5
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
[StateDef 1300]
type    = S
movetype= A
physics = S
juggle  = 3
poweradd= 10
ctrl = 0
anim = 700
sprpriority = 2

[State 1300, gibber]
type = PlaySnd
trigger1 = Time = 1
value = 14, 0

[State 1300, up]
type = VelSet
trigger1 = time = 0
Y = -14

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = time = 20
value = 900

[State 1100, aAccellasSD]
type = pOSsET
trigger1 = time = 20
Y = 100

[State 1300, posadd]
type = PosAdd
trigger1 = Time = 20
X = (P2Dist X) + 30

[State 1300, upsy]
type = Velset
trigger1 = Time = 20
y = -8

[State 1300, turn]
type = Turn
trigger1 = Time = 21

[State 1300, change]
type = ChangeState
trigger1 = Time = 28
value = 1301
ctrl = 1

[Statedef 1301]
type    = A
physics = A

[State 50, 1]
type = VarSet
trigger1 = Time = 0
sysvar(1) = 0

;[State 50, 2]
;type = ChangeAnim
;trigger1 = Time = 0
;value = ifelse((vel x)=0, 41, ifelse((vel x)>0, 42, 43))

[State 50, 3]
type = ChangeAnim
trigger1 = Vel y > -2
trigger1 = SelfAnimExist(anim + 3)
persistent = 0
value = Anim + 3

;--------------------------------------------

[Statedef 1110]
type    = S
movetype= A
physics = S
juggle  = 2
velset = 0,0
anim = 3000
ctrl = 0

[State 10000, open]
type = PlaySnd
trigger1 = AnimElem = 4
value = 6, 8

[State 10000, open]
type = PlaySnd
trigger1 = AnimElem = 4
value = 4,14

[State 1000, 0.1]
type = Posset
trigger1 = Pos Y != 0
trigger1 = time = 0
Y = 0

[State 1000, nonkilling helper]
type = helper
trigger1 = AnimElem = 4
stateno = 1112
name = "Shot1"
id = 1001
pos = 83*const(size.xscale), -100*const(size.xscale)
postype = p1

[State 1000, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;-------------------------------------
; Projectile
[Statedef 1112]
type    = S
movetype= A
physics = N
poweradd= 120
velset = 9,0;6, 0
anim = 1120
ctrl = 0

[State 9327, explod]
type = Explod
trigger1 = time%2=1
trigger1 = anim = 1120
anim = 1111
vel = -1,0
pos = 0,0
postype = p1
ownpal = 0

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = moveguarded = 1
value = 1121

[State 0, VelSet]
type = VelSet
trigger1 = moveguarded = 1
x = -10
y = -4

[State 1200, BoltFat]
type = HitDef
trigger1 = time = 0
attr = S, SP
damage    = 192, 96
animtype = Light
air.animtype = Back
guardflag = HL
pausetime = 0,2
sparkno = 16
sparkxy = 0,0
guard.sparkno = -1
hitsound   = S4,19
guardsound = 5,14
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -5,0
air.velocity = -3,-4
air.fall = 1
fall.recover = 0
air.juggle = 3
p2stateno = 21238
kill       = root, Var(9) = 0
fall.kill  = root, Var(9) = 0
guard.kill = root, Var(9) = 0

[State 1001, gone]
type = Destroyself
trigger1 = time = 90

;--------------------------------------------
[Statedef 1000]
type    = S
movetype= A
physics = S
juggle  = 2
velset = 0,0
anim = 1119
ctrl = 0

[State 10000, open]
type = PlaySnd
trigger1 = AnimElem = 5
value = 6, 8

[State 10000, open]
type = PlaySnd
trigger1 = AnimElem = 5
value = 4,14

[State 1000, 0.1]
type = Posset
trigger1 = Pos Y != 0
trigger1 = time = 0
Y = 0

[State 1000, nonkilling helper]
type = helper
trigger1 = AnimElem = 5
stateno = 1211
name = "Shot1"
id = 1001
pos = 40*const(size.xscale), -35*const(size.xscale)
postype = p1

[State 1000, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;-------------------------------------
; Projectile
[Statedef 1211]
type    = S
movetype= A
physics = N
poweradd= 120
velset = 9,0;6, 0
anim = 1120
ctrl = 0

[State 9327, explod]
type = Explod
trigger1 = time%2=1
trigger1 = anim = 1120
anim = 1111
vel = -1,0
pos = 0,0
postype = p1
ownpal = 0

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = moveguarded = 1
value = 1121

[State 0, VelSet]
type = VelSet
trigger1 = moveguarded = 1
x = -10
y = -4

[State 1200, BoltFat]
type = HitDef
trigger1 = time = 0
attr = S, SP
damage    = 192, 96
animtype = Light
air.animtype = Back
guardflag = HL
pausetime = 0,2
sparkno = 16
sparkxy = 0,0
guard.sparkno = -1
hitsound   = S4,19
guardsound = 5,14
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -5,0
air.velocity = -3,-4
air.fall = 1
fall.recover = 0
air.juggle = 3
p2stateno = 21238
kill       = root, Var(9) = 0
fall.kill  = root, Var(9) = 0
guard.kill = root, Var(9) = 0

[State 1001, gone]
type = Destroyself
trigger1 = time = 90

;==========================

[Statedef 6655]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 5                      ;Number of air juggle points move takes
velset = 20,0                    ;Set velocity (x,y) (Def: no change)
ctrl = 0
anim = 6500                      ;Change animation (Def: no change)

[State 200, Play]
type = PlaySnd
trigger1 = Animelem = 4
trigger2 = Animelem = 9
trigger1 = 1
value = F5, 15

[State 210, 1]
type = Playsnd
trigger1 = Animelem = 4
trigger2 = Animelem = 9
value = 4,15

[State 2, blood111]
type = Helper
trigger1 = movehit
trigger1 = numhelper(23) < 1
ID = 23
stateno = 27
pos = 0, 0
postype = p1
persistent = 0
ignorehitpause = 1

[State 201, 347]
type = EnvShake
triggerall = p2stateno = [130,155]
trigger1 = Animelem = 6
trigger2 = Animelem = 11
time = 10
freq = 30
ampl = 5

[State 201, 1]
type = HitDef
trigger1 = AnimElem = 6
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage    = 100, 50                   ;Damage that move inflicts
animtype = Light                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
air.animtype = Back
guardflag = HL
hitflag = MAF                    ;Flags of conditions that move can hit
ground.cornerpush.veloff = 0
priority = 2, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default
pausetime = 2,2                  ;Time attacker pauses, time victim shakes
sparkno = -1
sparkxy = -10,-105
guard.sparkno = -1
hitsound = 5,21
guardsound = 5,14
ground.type = High                 ;Type: High, Low, Trip (def: Normal)
p2facing = 1
ground.slidetime = 5
ground.hittime  = 20
guard.velocity = -15
guard.slidetime = 20
guard.ctrltime = 20
ground.velocity = 0,0              ;Time to regain control after guard (def: guard.slidetime)
guard.velocity = -2
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

[State 240, 2]
type = HitDef
trigger1 = Animelem = 11
attr = S, NA
animtype  = Back
damage    = 290, 50
guardflag = HL
hitflag = MAF
pausetime = 10,2
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
ground.velocity = -7,-8
air.velocity = -7,-8
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

[State 201, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;------------------------------

[Statedef 1400]
type    = A
movetype= A
physics = N
juggle  = 5
ctrl = 0
anim = 1300
sprpriority = 2

[State 1400, 1]
type = VelSet
trigger1 = Time < 14
x = 10
y = -1.25

[State 1400, 2]
type = VelSet
trigger1 = Time > 14
trigger1 = Time < 18
x = 8
y = 1.25

[State 1400, 3]
type = VelSet
trigger1 = Time > 18
x = 6
y = 1

[State 3443, 1]
type = PlaySnd
trigger1 = animelem = 4
value = 4, 10

[State 3443, 1]
type = PlaySnd
trigger1 = time = 0
value = 4, 14

[State 3443, 3]
type = HitDef
trigger1 = !movecontact
attr = S, NA
animtype  = Back
damage    = 100, 50
guardflag = HL
hitflag = MAF
pausetime = 0,7
sparkno = -1
guard.sparkno = -1
hitsound = 5,0
guardsound = 5,14
ground.type = High
ground.slidetime = 30
p2facing = 1
guard.ctrltime = 20
guard.slidetime = 20
ground.hittime  = 30
ground.velocity = -6,-3
air.velocity = -6,-3
air.hittime = 17
fall.recover = 0
p1stateno = 1401
envshake.time = 13
envshake.freq = 60
envshake.ampl = 6
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 1000, Bounf]
type = ChangeState
trigger1 = Moveguarded = 1
value = 1402

[State 1000, BounceOff]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0

[StateDef 1401]
type    = S
movetype= A
physics = S
juggle  = 2
ctrl = 0
anim = 1310

[State 1100, aAccell]
type = VelAdd
trigger1 = Time < 47
x = 3
y = 0

[State 3443, 1]
type = PlaySnd
trigger1 = animelem = 4
trigger2 = animelem = 7
value = 4, 10

[State 181, DI]
type = Explod
trigger1 = time = 1
anim = 888
id = 679
pos = 168,100
postype = left
facing = 1
sprpriority = 1
ownpal = 1
removetime = 1820

[State 3443, 3]
type = HitDef
trigger1 = animelem = 4
attr = S, NA
animtype  = Back
damage    = 100, 50
guardflag = HL
hitflag = MAF
pausetime = 0,7
sparkno = -1
guard.sparkno = -1
hitsound = 5,0
guardsound = 5,14
ground.type = High
ground.slidetime = 30
p2facing = 1
guard.ctrltime = 20
guard.slidetime = 20
ground.hittime  = 30
ground.velocity = -6,-3
air.velocity = -6,-3
air.hittime = 17
fall.recover = 0
envshake.time = 13
envshake.freq = 60
envshake.ampl = 6
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 3443, 3]
type = HitDef
trigger1 = animelem = 7
attr = S, NA
animtype  = Back
damage    = 100, 50
guardflag = HL
hitflag = MAF
pausetime = 0,2
sparkno = -1
guard.sparkno = -1
hitsound = 5,0
guardsound = 5,14
ground.type = High
ground.slidetime = 30
p2facing = 1
guard.ctrltime = 20
guard.slidetime = 20
ground.hittime  = 30
ground.velocity = -7,-4
air.velocity = -7,-5
air.hittime = 17
fall.recover = 0
p1stateno = 1402
envshake.time = 15
envshake.freq = 70
envshake.ampl = 7
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 3443, 4]
type = ChangeState
trigger1 = AnimTime = 0
trigger1 = pos Y = 0
value = 0
ctrl = 1

[State 3443, 4]
type = ChangeState
trigger1 = AnimTime = 0
trigger1 = pos Y != 0
value = 1402
ctrl = 1

;--------------------
[StateDef 1402]
type    = S
movetype= I
physics = S
ctrl = 0
anim = 1311
velset = 0,0

[State 1000, Accellw]
type = VelSet
trigger1 = time = 0
x = 3

[State 1001, 10]
type = Changestate
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[State 88500, Fall]
type = ChangeState
trigger1 = animelem = 4
trigger1 = pos Y != 0
value = 1403

[Statedef 1403]; Drop
type    = A
movetype= I
physics = A
juggle  = 4
velset = 0,0
anim = 1301
ctrl = 0

[State 1101]
type = Veladd
trigger1 = time > 0
y = .3
