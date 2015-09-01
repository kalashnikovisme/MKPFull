[Statedef 1000]
type    = S
movetype= A
physics = S
juggle  = 2
velset = 0,0
anim = 1003
ctrl = 0

;[State 2002, Super]
;type = AfterImage
;trigger1 = time = 0
;FrameGap = 5
;length = 20
;PalBright   =   0,  50,  0
;PalContrast = 128,128,128
;PalAdd      =   0,  0,  0
;PalMul      =  1,1,1
;Trans = Add1
;time = 15


[State 2002, per]
type = Palfx
trigger1 = time = 0
;PalBright   =   0,  50,  0
;PalContrast = 128,128,128
Add      =   0,  150,  0
;Mul      =  0,0,0
;Trans = Mul
time = 8

[State 3,33]
type = Explod
trigger1 = TimeMod=5,1
anim = F19
name = "Smoke"
pos = 0, -90
postype = p1
bindtime = -2 
vel = 0, 0 
random = 30, 70
removetime = -2
ontop = 1
shadow = -1, -1, -1 
removeongethit = 0


[State 1000, bber]
type = PlaySnd
trigger1 = Time = 1
value = 4, 18
volume = 70



[State 10000, open]
type = PlaySnd
trigger1 = AnimElem = 2 
value = 4, 6

[State 1000, 0.1]
type = Posset
trigger1 = Pos Y != 0
trigger1 = time = 0
Y = 0

[State 1000, nonkilling helper]
type = helper
trigger1 = AnimElem = 2
stateno = 1001
name = "Shot2"
id = 1001
pos = -5,-105
postype = p1

[State 1200, 10]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0
;----------------------
[Statedef 1001]
type    = S
movetype= A
physics = N
velset = 0,0
anim = 1000
sprpriority = 2
ctrl = 0

[State 1200, 10]
type = velset
trigger1 = animelem = 4
x = 9

[State -2, Steam1]
type = Explod
trigger1 = TimeMod=8,5
triggerall = var(26) = 0
anim = 40000
name = "humomedio"
pos = 0, -50
postype = p1
bindtime = 1 
vel = 0, 0 
random = 30, 30
removetime = -2
sprpriority = 1
removeongethit = 0

[State -2, Steam1]
type = Explod
trigger1 = TimeMod=8,5
triggerall = var(26) = 0
anim = 40000
name = "humomedio"
pos = 0, -50
postype = p1
bindtime = 1 
vel = 0, 0 
random = 30, 30
removetime = -2
sprpriority = 1
removeongethit = 0


[State 1200, BoltFat]
type = hitdef
trigger1 = time = 0
attr = S, SP
damage    = 200, 50
animtype = Light
air.animtype = Back
guardflag = HL
pausetime = 0,2
sparkno = 273
guard.sparkno = 273
hitsound   = S4,18
guardsound = S4,18
ground.type = High
ground.slidetime = 20
ground.hittime  = 15
ground.velocity = -15,0
air.velocity = -4,-6
air.fall = 1
fall.recover = 0
air.juggle = 3
yaccel = 0.45
p2stateno = 21238
kill       = root, Var(9) = 0
fall.kill  = root, Var(9) = 0
guard.kill = root, Var(9) = 0

[State 1001, gone]
type = destroyself
trigger1 = movecontact
trigger2 = AnimTime = 0

;--------------------------------------------------------------------------------------------------

[StateDef 11001]
type    = A
movetype= A
physics = S
juggle  = 6
ctrl = 0
velset = 0,0,0
anim = 1010


;[State 2002, Super]
;type = AfterImage
;trigger1 = time = 0
;FrameGap = 5
;length = 20
;PalBright   =   0,  50,  0
;PalContrast = 128,128,128
;PalAdd      =   0,  0,  0
;PalMul      =  1,1,1
;Trans = Add1
;time = 15


[State 2002, per]
type = Palfx
trigger1 = time = 0
;PalBright   =   0,  50,  0
;PalContrast = 128,128,128
Add      =   0,  150,  0
;Mul      =  0,0,0
;Trans = Mul
time = 8

[State 3,33]
type = Explod
trigger1 = TimeMod=5,1
anim = F19
name = "Smoke"
pos = 0, -90
postype = p1
bindtime = -2 
vel = 0, 0 
random = 30, 70
removetime = -2
ontop = 1
shadow = -1, -1, -1 
removeongethit = 0


[State 1000, bber]
type = PlaySnd
trigger1 = Time = 1
value = 4, 18
volume = 70


[State 10000, open]
type = PlaySnd
trigger1 = AnimElem = 2 
value = 4, 6

[State 1000, nonkilling helper]
type = helper
trigger1 = AnimElem = 3
stateno = 1001
name = "Shot1"
id = 1101
pos = 40,-130
postype = p1

[State 88500, Fall]
type = ChangeState
trigger1 = AnimTime = 0
value = 11011

[Statedef 11011]
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


[StateDef 12009]
type    = S
movetype= A
physics = S
juggle  = 2
ctrl = 0
velset = 0,0,0
anim = 1004



;[State 2002, Super]
;type = AfterImage
;trigger1 = time = 0
;FrameGap = 5
;length = 20
;PalBright   =   0,  50,  0
;PalContrast = 128,128,128
;PalAdd      =   0,  0,  0
;PalMul      =  1,1,1
;Trans = Add1
;time = 15


[State 2002, per]
type = Palfx
trigger1 = time = 0
;PalBright   =   0,  50,  0
;PalContrast = 128,128,128
Add      =   0,  150,  0
;Mul      =  0,0,0
;Trans = Mul
time = 8

[State 3,33]
type = Explod
trigger1 = TimeMod=5,1
anim = F19
name = "Smoke"
pos = 0, -90
postype = p1
bindtime = -2 
vel = 0, 0 
random = 30, 70
removetime = -2
ontop = 1
shadow = -1, -1, -1 
removeongethit = 0


[State 1000, bber]
type = PlaySnd
trigger1 = Time = 1
value = 4, 18
volume = 70


[State 10000, open]
type = PlaySnd
trigger1 = AnimElem = 2 
value = 4, 6

[State 1000, 0.1]
type = Posset
trigger1 = Pos Y != 0
trigger1 = time = 0
Y = 0

[State 1000, nonkilling helper]
type = helper
trigger1 = AnimElem = 2
stateno = 1001
name = "Shot1"
id = 900
pos = 25,-60
postype = p1

[State 12009, 10]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0
;--------------
[StateDef 1300]
type    = S
movetype= A
physics = S
juggle  = 3
poweradd= 10
ctrl = 0
anim = 700
sprpriority = 2


;[State 2002, Super]
;type = AfterImage
;trigger1 = time = 0
;FrameGap = 5
;length = 20
;PalBright   =   0,  50,  0
;PalContrast = 128,128,128
;PalAdd      =   0,  0,  0
;PalMul      =  1,1,1
;Trans = Add1
;time = 15


[State 2002, per]
type = Palfx
trigger1 = time = 0
;PalBright   =   0,  50,  0
;PalContrast = 128,128,128
Add      =   0,  150,  0
;Mul      =  0,0,0
;Trans = Mul
time = 30

[State 3,33]
type = Explod
trigger1 = TimeMod=5,1
anim = F19
name = "Smoke"
pos = 0, -90
postype = p1
bindtime = -2 
vel = 0, 0 
random = 30, 70
removetime = -2
ontop = 1
shadow = -1, -1, -1 
removeongethit = 0


[State 1000, bber]
type = PlaySnd
trigger1 = Time = 1
value = 4, 18
volume = 70


[State 1300, gibber]
type = PlaySnd
trigger1 = Time = 1
value = 14, 0


[State 1300, down]
type = VelSet
trigger1 = Time = 1
y = 6

[State 1300, posadd]
type = PosAdd
trigger1 = Time = 10
X = (P2Dist X) + 25

[State 1300, upsy]
type = Velset
trigger1 = Time = 10
y = -6

[State 1300, turn]
type = Turn
trigger1 = Time = 11

[State 1300, change]
type = ChangeState
trigger1 = Time = 18
value = 50
ctrl = 1

;--------------------------------

[Statedef 1310]
type    = S
movetype= A
physics = S
juggle  = 3
ctrl = 0
anim = 900
sprpriority = 2

[State 1310, shield]
type = Explod
trigger1 = time = 0
trigger1 = stateno = 2010
anim = 900
id = 900
pos = 0, 0
sprpriority = 2
ownpal = 0
ontop = 1

[State 1310, nokill]
type = HitDef
trigger1 = time > 0
trigger1 = Var(9) = 1
attr = C, NA
damage    = 80
animtype  = Back
hitflag = MAFD
guardflag = L
pausetime = 12,12
sparkno = -1
sparkxy = -10,-8
hitsound   = S200,1
guardsound = 6,0
ground.type = Low
ground.slidetime = 6
ground.hittime  = 12
ground.velocity = -1.2,-11
air.velocity = -2,-11
down.velocity = -5,0
down.hittime = 20
fall = 1
fall.recover = 0
kill = 0

[State 1310, kill]
type = HitDef
trigger1 = time > 0
trigger1 = Var(9) = 0
attr = C, NA
damage    = 80
animtype  = Back
hitflag = MAFD
guardflag = L
pausetime = 12,12
sparkno = -1
sparkxy = -10,-8
hitsound   = S200,1
guardsound = 6,0
ground.type = Low
ground.slidetime = 6
ground.hittime  = 12
ground.velocity = -1.2,-11
air.velocity = -2,-11
down.velocity = -5,0
down.hittime = 20
fall = 1
fall.recover = 0

[State 1310, Transfer]
type = ChangeState
trigger1 = command = "sp4"
trigger1 = Time = [25, 40]
ctrl = 0
value = 2010

[State 1310, 4]
Type = Changestate
Trigger1 = Time > 40
Trigger1 = Command != "sp4"
trigger2 = movecontact
Value = 2111

;---------------------------------
[Statedef 2111]
Type    = S
Movetype= A
Physics = S
Ctrl = 0
Anim = 700

;[State 2111, sound]
;Type = Playsnd
;Trigger1 = Time = 0
;Value = S122,0

[State 2111, back]
Type = Changestate
Trigger1 = Animtime = 0
Value = 0
Ctrl = 1


[Statedef 2000]
type    = S
movetype= A
physics = N
juggle  = 4
poweradd= 120
velset = 0,13
anim = 2020
ctrl = 0


;[State 2002, Super]
;type = AfterImage
;trigger1 = time = 0
;FrameGap = 5
;length = 20
;PalBright   =   0,  50,  0
;PalContrast = 128,128,128
;PalAdd      =   0,  0,  0
;PalMul      =  1,1,1
;Trans = Add1
;time = 15


[State 2002, per]
type = Palfx
trigger1 = time = 0
;PalBright   =   0,  50,  0
;PalContrast = 128,128,128
Add      =   0,  150,  0
;Mul      =  0,0,0
;Trans = Mul
time = 30

[State 3,33]
type = Explod
trigger1 = TimeMod=3,1
anim = F19
name = "Smoke"
pos = 0, -90
postype = p1
bindtime = -2 
vel = 0, 0 
random = 30, 70
removetime = -2
ontop = 1
shadow = -1, -1, -1 
removeongethit = 0


[State 1000, bber]
type = PlaySnd
trigger1 = Time = 1
value = 4, 18
volume = 70


[State 3000, 1]
type = Playsnd
trigger1 = Animelem = 1
value = 6, 4

[State 2000, NHB]
type = nothitby
trigger1 = time > 0
value = SCA

[State 2000, changepos]
type = Posadd
trigger1 = Pos Y > 80
x = (P2Dist X) - 65
y = -300

[State 2000, changestate]
type = Changestate
trigger1 = Pos Y < -80
value = 2010
;------------------------------------

[Statedef 2010]
type    = S
movetype= A
physics = N
juggle  = 4
poweradd= 120
velset = 0,13
anim = 2003
ctrl = 0

[State 210, 1.4]
type = Playsnd
trigger1 = Animelem = 2
value = F5,15

[State 210, 1]
type = Playsnd
trigger1 = Animelem = 2
value = 4,15

[State 2010, kill hit]
type = HitDef
trigger1 = time = 0
attr = C, NA   
p2stateno = 21238
damage    = 191,47
animtype = Back
guardflag = M
hitflag = MAF
priority = 3, Hit
pausetime = 8,8
sparkno = -1
guard.sparkno = -1
sparkxy = -10,-70
hitsound = 5,1
guardsound = 5,14
ground.type = low
ground.slidetime = 25
ground.hittime  = 25
ground.velocity = -5
air.velocity = -1,-3
air.fall = 1
yaccel = 0.45
fall.recover = 0
kill = (Var(9) = 0)

[State 2010, change]
type = Changestate
trigger1 = movecontact
trigger2 = Pos Y >= 0
value = 2020
;-------------------------------------

[Statedef 2020]
type    = A
movetype= A
physics = N
juggle  = 4
poweradd= 120
velset = -2,-3
anim = 2010
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

;----------------------------------------


[Statedef 1200]
type    = A
movetype= A
physics = N
velset = 0, -4
anim = 910
ctrl = 0


;[State 2002, Super]
;type = AfterImage
;trigger1 = time = 0
;FrameGap = 5
;length = 20
;PalBright   =   0,  50,  0
;PalContrast = 128,128,128
;PalAdd      =   0,  0,  0
;PalMul      =  1,1,1
;Trans = Add1
;time = 15


[State 2002, per]
type = Palfx
trigger1 = time = 0
;PalBright   =   0,  50,  0
;PalContrast = 128,128,128
Add      =   0,  150,  0
;Mul      =  0,0,0
;Trans = Mul
time = 30

[State 3,33]
type = Explod
trigger1 = TimeMod=5,1
anim = F19
name = "Smoke"
pos = 0, -90
postype = p1
bindtime = -2 
vel = 0, 0 
random = 30, 70
removetime = -2
ontop = 1
shadow = -1, -1, -1 
removeongethit = 0


[State 1000, bber]
type = PlaySnd
trigger1 = Time = 1
value = 4, 18
volume = 70

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
movetype= A
physics = A
juggle  = 4
poweradd= 120
velset = -.1,-13
anim = 10555
ctrl = 0

[State 1201, velsetter]
type = Veladd
trigger1 = time > 0
y = .2


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


;---------------------------------
[StateDef 1100]
type    = S;A
movetype= A
physics = S
juggle  = 2
ctrl = 0
anim = 1014
velset = 0,0

;[State 2002, Super]
;type = AfterImage
;trigger1 = time = 0
;FrameGap = 5
;length = 20
;PalBright   =   0,  50,  0
;PalContrast = 128,128,128
;PalAdd      =   0,  0,  0
;PalMul      =  1,1,1
;Trans = Add1
;time = 15


[State 2002, per]
type = Palfx
trigger1 = time = 0
;PalBright   =   0,  50,  0
;PalContrast = 128,128,128
Add      =   0,  150,  0
;Mul      =  0,0,0
;Trans = Mul
time = 30

[State 3,33]
type = Explod
trigger1 = TimeMod=5,1
anim = F19
name = "Smoke"
pos = 0, -90
postype = p1
bindtime = -2 
vel = 0, 0 
random = 30, 70
removetime = -2
ontop = 1
shadow = -1, -1, -1 
removeongethit = 0


[State 1000, bber]
type = PlaySnd
trigger1 = Time = 1
value = 4, 18
volume = 70



[State 1100, aAccelsal]
type = Velset
trigger1 = time = 5
X = 3
Y = -8;7

[State 1100, aAccelsal]
type = VelAdd
trigger1 = !movecontact
trigger1 = time > 5
X = 3
Y = 0.23

[State 1100, aAccelsal]
type = Veladd
trigger1 = !movecontact
trigger1 = time > 30
Y = 0.12


[State 1000, gibber]
type = PlaySnd
trigger1 = Time = 0
value = 5, 13

[State 1000, 10]
type = HitDef
trigger1 = !movecontact
;trigger1 = time < 25
trigger1 = pos Y > -90
attr = S, NA
;animtype = Light 
;air.animtype = Back
damage = 150,70;18,6
guardflag = HL
hitflag = HAF
p1stateno = 110116
p2stateno = 111016
priority = 2, Hit       ;Attack priority: 0 (least) to 7 (most), 4 default
;pausetime = 2,2        ;Time attacker pauses, time victim shakes
sparkno = -1
guard.sparkno = -1
hitsound = 5,1
guardsound = 5,14             
ground.type = Low                 ;Type: High, Low, Trip (def: Normal)
p2facing = 1
;numhits = -1
ground.slidetime = 20
ground.hittime  = 20
guard.ctrltime = 20 
;ground.velocity = -1,-5              ;Time to regain control after guard (def: guard.slidetime)
guard.velocity = -2
;air.velocity = -1, -5.6
;airguard.velocity = -1.9            ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.fall = 0
yaccel = .45
fall.recover = 0
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 1000, BounceOff]
type = ChangeState
trigger1 = time > 7
trigger1 = pos Y > 0;AnimTime = 0
ctrl = 1
value = 0

[State 1000, BounceOff]
type = ChangeState
trigger1 = moveguarded
value = 1201

;--------------------------------------------
[StateDef 111016]
type    = A
movetype= H
physics = S
ctrl = 0
anim = 21238
velset = -2,-3

[state 1000,ply]
type = playsnd
trigger1 = (time % 10) = 1
value = 3,(2 + (random%2)*6)

[State 820, 4351]
type = posadd
trigger1 = time =  0
X = (p2bodydist X) -6
y = p2bodydist Y

[State 820, 4351]
type = Velset
Trigger1 = p2stateno = 1102
x = -1
y = 0

[State 820, 4351]
type = Veladd;set
Trigger1 = p2stateno = 1103
x = -2
y = 0.4

[State 821, 4] 
type = SelfState
Trigger1 = p2stateno = 1103
value = 5050 
;---------------------------
[StateDef 110116]
type    = A
movetype= A
physics = S
velset = 0,-3

[State 1100, aAccelsal]
type = Veladd
trigger1 = 1;pos Y > -110;time < 32;animelem <= 10
X = 2

;[State 1100, aAccelsal]
;type = Velset
;trigger1 = time > 31
;X = 1
;Y = 0

[state 1000,ply]
type = playsnd
trigger1 = animelem = 6
trigger2 = animelem = 9
trigger3 = animelem = 12
trigger4 = animelem = 16
value = F5,1

[State 1000, BounceOff]
type = ChangeState
trigger1 = pos y < -110;animelem = 17
value = 1103
;---------------------------
[StateDef 1102]
type    = A
movetype= A
physics = S
velset = 1,0

[State 1100, aAccelsal]
type = Veladd
trigger1 = 1
y=0.1

[state 1000,ply]
type = playsnd
trigger1 = animelem = 17
value = F5,1

[State 1000, BounceOff]
type = ChangeState
trigger1 = animelem = 18;pos Y > 0
;ctrl = 1
value = 1103
;-------------------
[StateDef 1103]
type    = A
movetype= A
physics = S
velset = 0,3.3

[State 1100, aAccelsal]
type = Veladd
trigger1 = 1
Y = 0.2

[State 1000, BounceOff]
type = ChangeState
trigger1 = pos Y > 0
ctrl = 1
value = 0
;--------------------
[StateDef 1104]
type    = A
movetype= A
physics = S
velset = 0,-1.5

[State 1100, aAccelsal]
type = Veladd
trigger1 = 1
Y = 0.1
X = -0.4

[State 1000, BounceOff]
type = ChangeState
trigger1 = pos Y > 0
ctrl = 1
value = 0



[StateDef 1355]  
type    = S
movetype= A
physics = S
juggle  = 2
ctrl = 0
anim = 20002


;[State 2002, Super]
;type = AfterImage
;trigger1 = time = 0
;FrameGap = 5
;length = 20
;PalBright   =   0,  50,  0
;PalContrast = 128,128,128
;PalAdd      =   0,  0,  0
;PalMul      =  1,1,1
;Trans = Add1
;time = 15



[State 2002, per]
type = Palfx
trigger1 = time = 0
;PalBright   =   0,  50,  0
;PalContrast = 128,128,128
Add      =   0,  150,  0
;Mul      =  0,0,0
;Trans = Mul
time = 30

[State 3,33]
type = Explod
trigger1 = TimeMod=5,1
anim = F19
name = "Smoke"
pos = 0, -90
postype = p1
bindtime = -2 
vel = 0, 0 
random = 30, 70
removetime = -2
ontop = 1
shadow = -1, -1, -1 
removeongethit = 0


[State 1000, bber]
type = PlaySnd
trigger1 = Time = 1
value = 4, 18
volume = 70


[State 1100, aAccell]
type = VelAdd
trigger1 = time <= 33
trigger1 = Time > 2
x = 12

[State 1000, bber]
type = PlaySnd
trigger1 = Time = 1
value = 4, 4

[State 1000, 10]
type = HitDef
trigger1 = 1;movecontact
attr = S, SA
animtype  = back
damage    = 240, 120
guardflag = HLMF
hitflag = ALMHF
pausetime = 0,2
sparkno = -1
guard.sparkno = -1
hitsound   = 5,0
p1stateno = 13019;10017
guardsound = 5,14 
ground.type = High
ground.slidetime = 0
ground.hittime  = 0
ground.velocity = -3,-4
air.velocity = -3,-4
air.hittime = 17
yaccel = 0.45
fall = 0
fall.recover = 0
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 1000, Bounf]
type = ChangeState
trigger1 = Moveguarded = 1
value = 13019;10017

[State 1000, BounceOff]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0
;--------------------------------------------
[StateDef 13019]
type    = A
movetype= I
physics = A
ctrl = 0
velset = 0,0
anim = 20002

[State 1000, Accellwsd]
type = VelSet
trigger1 = time  < 17
x = -.8

[State 1000, Accellw]
type = VelSet
trigger1 = animelem  = 9
x = 0

[State 1000, Accellwsdsd]
type = VelAdd
trigger1 = time  < 6
Y = -2.2

[State 1000, Accellwsdsdzs]
type = VelAdd
trigger1 = time  > 23
Y = 1

[State 1000, Accellzw]
type = VelSet
trigger1 = time = 12
trigger2 = time  > 32
Y = 0

[State 1001, 10]
type = Changestate
trigger1 = AnimTime = 0
value = 52
ctrl = 1