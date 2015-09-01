[StateDef 777]
type    = S
movetype= I
physics = S
ctrl = 0
velset = 0,0,0
anim = 1001

[State 700, 1]
type = PlaySnd
trigger1 = Time = 10
trigger2 = Time = 30
value = 4, 22; teleport

[State 700, 134]
type = changeanim
trigger1 = animTime = 0
trigger1 = anim = 1001
value = 10151


[State 700, 2]
type = PosAdd
trigger1 = animelem = 1
trigger1 = anim = 10151
X = (P2Dist X) + 30

[State 700, 2234]
type = Turn
trigger1 = animelem = 1
trigger1 = anim = 10151


[State 700, 4]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0



[StateDef 2000]
type    = S
movetype= A
physics = S
juggle  = 4
ctrl = 0
anim = 777


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
PalContrast = 0,0,10
PalAdd      =   0,  0,  0
PalMul      =  0,0,0
Trans = Add1
time = 20


[State 3100, Super D]
type = AfterImage
trigger1 = Var(11) != 10
trigger1 = time = 1
FrameGap = 3
length = 15
timegap = 1
PalBright   =   0,  0,  0
PalContrast = 0,0,10
PalAdd      =   0,  0,  0
PalMul      =  0,0,0
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

[StateDef 2222]
type    = S
movetype= A
physics = S
juggle  = 4
ctrl = 0
anim = 772


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
PalContrast = 0,0,10
PalAdd      =   0,  0,  0
PalMul      =  0,0,0
Trans = Add1
time = 20


[State 3100, Super D]
type = AfterImage
trigger1 = Var(11) != 10
trigger1 = time = 1
FrameGap = 3
length = 15
timegap = 1
PalBright   =   0,  0,  0
PalContrast = 0,0,10
PalAdd      =   0,  0,  0
PalMul      =  0,0,0
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

;--------------------------------------------
; Torpedo Bounce away
[StateDef 2001]
type    = S
movetype= I
physics = S
ctrl = 0
anim = 910
sprpriority = 5

[State 1000, Accellw]
type = VelSet
trigger1 = time = 5
trigger2 = time = 22
Y = 0

[State 1000, Accw]
type = playsnd
trigger1 = time = 17
value = F5,0
volume = 100


[State 1100, aAcXceDFll]
type = VelAdd
trigger1 = time = 5
Y = 9

[State 1001, 10]
type = Changestate
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[StateDef 20011]
type    = S
movetype= H
physics = S
ctrl = 0
sprpriority = 4

[State 1001, 1034]
type = Changeanim2
trigger1 = Time = 0
value = 9998

[State 1100, aAcXceDFll]
type = VelAdd
trigger1 = time <= 5
Y = -8.5

[State 1100, aAcXceDFll]
type = VelAdd
trigger1 = time = 6
Y = 9.5

[State 1100, aAcXc]
type = VelAdd
trigger1 = time >= 23
X = 1.5
Y = -4.5

[State 22, round hit]
type = EnvShake
trigger1 = time = 20
freq = 140
time = 10
ampl = 10

[State 1100, aAcXll]
type = playsnd
trigger1 = time = 20
value = 3,2


[State 1100, aAc]
type = Turn
trigger1 = time = 24

[State 1000, Accellw]
type = VelSet
trigger1 = time = 5
trigger2 = time = 22
Y = 0

[State 1001, 10]
type = Selfstate
trigger1 = Time = 24
value = 5050
;ctrl = 1


;--------------------------------------------

[StateDef 2002]
type    = S
movetype= I
physics = N
juggle  = 2
anim = 1045
Velset = 0, 0
ctrl = 0

[State 181, DIED]
type = Explod
trigger1 = time = 1
anim = 888
id = 7089
pos = 168,100
postype = left
facing = 1
sprpriority = 1
ownpal = 1
removetime = 220

[State 3010, Fire]
type = explod
trigger1 = Time = 0
trigger1 = Pos Y = 0
anim = F11
ID = 36
pos = -20,8
shadow = -1,250,250
postype = p1
ontop = 1

[State 2000, 55]
type = Helper
trigger1 = time = 0
trigger1 = Pos Y = 0
stateno = 1046
name = "AfterImage"
pos = 0, 0
postype = P1
helpertype = normal
sprpriority = 1
keyctrl = 0
ownpal = 0
under = 1

[State 2000, 0.6]
type = ScreenBound
trigger1 = time = [1, 1000]
value = 0
movecamera = 0,0


[State 2000, 0.7]
type = Veladd
trigger1 = Pos Y < 0
Y = .65

[State 2000, 1]
type = turn
trigger1 = animelem = 1

[State 2000, 2]
type = Velset
trigger1 = animelem = 1
X = 10.5

[State 1050, 5]
type = VelAdd
trigger1 = Time < 4 
trigger1 = Vel Y > -3
Y = -2

;[State 1050, 534]
;type = VelAdd
;trigger1 = Time < 2 
;trigger1 = movetype = A
;Y = -2

[State 2000, 4]
type = Changestate
triggerall = time > 9
trigger1 = Pos X > 140
value = 1050

[State 2000, 5]
type = Changestate
triggerall = time > 9
trigger1 = Pos X < -140
value = 1050


[State 2000, 6.1]
type = Changestate
trigger1 = Pos Y > 0
value = 0
ctrl = 1

[State 2000, 7]
type= Changestate
trigger1 = time > 22
trigger1 = Pos Y = 0
value = 0
ctrl = 1

[Statedef 1045]
type    = S
movetype= I
physics = N
anim = 1045
Velset = 0, 0
ctrl = 0

[State 1045, 1]
type = turn
trigger1 = time = 0

[State 1045, 3]
type = Destroyself
trigger1 = animtime = 0

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

[State 2000, 0.5]
type = Playsnd
trigger1 = time = 1
value = 4,14
volume = 70


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
pausetime = 13, 2
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
fall.recover = 0

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
;------------------------------------------------------------------------------------------
; Blocked
; Torpedo Bounce
[StateDef 1055]
type    = A
movetype= I
physics = A
ctrl = 0
velset = -2,-8
anim = 1055

[State 1001, 10]
type = VelAdd
trigger1 = Time = [0, 3]
x = -0.1

[State 1001, 10]
type = PosAdd
trigger1 = Time = 0
y = -45

[State 1050, 7]
type= Changestate
trigger1 = Animtime = 0
trigger1 = Pos Y = 0
value = 0
ctrl = 1

; Torpedo
[Statedef 25640]
type    = S
movetype= A
physics = S
juggle  = 4
velset = 0,0
anim = 1200
ctrl = 0

; Chest sound
[State 2000, sound]
type = Playsnd
trigger1 = animelem = 2
value = 14,0

[State 2000, nonkilling helper]
type = helper
trigger1 = AnimElem = 2
trigger1 = Var(9) = 1
stateno = 2001
name = "Bomb1"
id = 2001
pos = 0, -90
postype = p1

[State 2000, killing helper]
type = helper
trigger1 = AnimElem = 2
trigger1 = Var(9) = 0
stateno = 2002
name = "Bomb1"
id = 2001
pos = 0, -90
postype = p1

[State 2000, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;--------------------------------------
; Bomb eject close
[Statedef 2010]
type    = S
movetype= A
physics = S
juggle  = 4
velset = 0,0
anim = 1200
ctrl = 0

; Chest sound
[State 2010, sound]
type = Playsnd
trigger1 = time = 0
value = 14,0

[State 2010, nonkilling helper]
type = helper
trigger1 = AnimElem = 2
trigger1 = Var(9) = 1
stateno = 2012
name = "Shot2"
id = 2001
pos = 0, -90
postype = p1

[State 2010, killing helper]
type = helper
trigger1 = AnimElem = 2
trigger1 = Var(9) = 0
stateno = 2011
name = "Shot2"
id = 2001
pos = 0, -90
postype = p1

[State 2010, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-------------------------------------
; Far bomb (killer)
[Statedef 2001]
type    = S
movetype= A
physics = N
velset = 10, 0
anim = 1010
ctrl = 0

[State 2001, nonkilling helper]
type = helper
trigger1 = time = 119
stateno = 2020
name = "Killbomb"
id = 2020
pos = 0, 0
postype = p1

[State 2001, drop]
type = Veladd
trigger1 = time > 0
y = .2

[State 2001, slow]
type = veladd
trigger1 = p2bodydist X < 70
x = -.1

[State 2001, stopx]
type = velset
trigger1 = p2dist X < 1
x = 0

[State 2001, slow]
type = veladd
trigger1 = p2bodydist X < 35
x = -.2

[State 2001, stop]
type = velset
trigger1 = Pos Y >= 0
x = 0
y = 0

[State 2001, gone]
type = Destroyself
trigger1 = time = 120

;-------------------------------------
; Close bomb (killer)
[Statedef 2011]
type    = S
movetype= A
physics = N
velset = 4, 0
anim = 1010
ctrl = 0

[State 2000, soundss]
type = Playsnd
trigger1 = time = 30
value = 0,4

[State 2011, killing helper]
type = helper
trigger1 = time = 129
stateno = 2020
name = "Killbomb"
id = 2020
pos = 0, 0
postype = p1

[State 2011, drop]
type = Veladd
trigger1 = time > 0
y = .2

[State 2011, stopx]
type = velset
trigger1 = p2dist X < 1
x = 0

[State 2011, stop]
type = velset
trigger1 = Pos Y >= 0
x = 0
y = 0

[State 2011, gone]
type = Destroyself
trigger1 = time = 130

;-------------------------------------
; Close bomb (nonkiller)
[Statedef 2012]
type    = S
movetype= A
physics = N
velset = 4, 0
anim = 1010
ctrl = 0

[State 2012, nonkilling helper]
type = helper
trigger1 = time = 129
stateno = 2021
name = "NoKillbomb"
id = 2021
pos = 0, 0
postype = p1

[State 2012, drop]
type = Veladd
trigger1 = time > 0
y = .2

[State 2012, stopx]
type = velset
trigger1 = p2dist X < 1
x = 0

[State 2012, stop]
type = velset
trigger1 = Pos Y >= 0
x = 0
y = 0

[State 2012, gone]
type = Destroyself
trigger1 = time = 130

;-------------------------------------
; Killer BOMB
[Statedef 2020]
type    = S
movetype= A
physics = N
juggle = 0
anim = 1011
ctrl = 0

[State 2020, snd]
type = playsnd
trigger1 = time = 0
value = 4,19

[State 2020, plume]
type = Explod
trigger1 = time = 0
anim = 1020;F20
pos = 0, 0
postype = p1
facing = 1
sprpriority = 3
ownpal = 0
ontop = 1

[State 2020, hit]
type = HitDef
trigger1 = time = 0
;trigger1 = p2statetype != A
attr = S, SP   
damage    = 100, 30
animtype = Heavy
guardflag = HL
hitflag = SAF
priority = 7, Hit
pausetime = 0,2
sparkno = -1
;sparkxy = -10,-70
;hitsound = 2000,5
guardsound = 5,14
ground.type = Low
ground.slidetime = 5
ground.hittime  = 20
ground.velocity = 2.5, -12
air.velocity = -2.5,-10
air.fall = 1
fall.recover = 0

fall = 1
fall.recover = 0
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 2020, des]
type = destroyself
trigger1 = animtime = 0

;--------------------------------------
; NonKiller BOMB
[Statedef 2021]
type    = S
movetype= A
physics = N
juggle = 0
anim = 1011
ctrl = 0

[State 2021, snd]
type = playsnd
trigger1 = time = 0
value = 4,19

[State 2021, plume]
type = Explod
trigger1 = time = 0
anim = 1020;F20
pos = 0, 0
postype = p1
facing = 1
sprpriority = 3
ownpal = 0
ontop = 1

[State 2021, hit]
type = HitDef
trigger1 = time = 0
;trigger1 = p2statetype != A
attr = S, SP   
damage    = 100, 30
animtype = Heavy
guardflag = HL
hitflag = MAF
priority = 7, Hit
pausetime = 0,2
sparkno = -1
;sparkxy = -10,-70
;hitsound = 2000,5
guardsound = 5,14
ground.type = Low
ground.slidetime = 5
ground.hittime  = 20
ground.velocity = 2.5, -12
air.velocity = -2.5,-10
air.fall = 1
fall.recover = 0

fall = 1
fall.recover = 0
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)


[State 2021, des]
type = destroyself
trigger1 = animtime = 0

;--------------------------------------------
;INVINCIBLE
[Statedef 3010]
type = S
movetype = I
physics = S
anim = 700 + var(17)
ctrl = 0
velset = 0,0

[State 3010, Fire]
type = explod
trigger1 = animelem = 3
anim = F11
ID = 36
pos = 0,0
shadow = -1,250,250
postype = p1
ontop = 1

[State 3011, Boom]
type = PlaySnd
trigger1 = time = 1
value = 4, 18

[State 3010, Var]
type = VarSet
trigger1 = AnimTime = 0 
var(17) = 1

[State 3010, CS]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;********** Reverse INVISIBILITY **********
[Statedef 3011]
type = S
movetype = I
physics = S
anim = 900 + var(0)
ctrl = 0
velset = 0,0

[State 3011, Fire]
type = explod
trigger1 = Time = 1
trigger1 = stateno != 3010
anim = F11
shadow = -1,250,250
ID = 36
pos = 0,0
postype = p1
ontop = 1

[State 3011, Var]
type = VarSet
trigger1 = AnimTime = 0 
trigger2 = roundstate = 3
trigger3 = roundstate = 4
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

;********** 
[StateDef 9009]
type    = S
movetype= A
physics = S
juggle  = 2
ctrl = 0
velset = 0,0,0
anim = 10151

[State 1200, ZappySound]
type = PlaySnd
trigger1 = AnimElem = 1
value = 4, 21
volume = 70

[State 1200, Za]
type = VelSet
trigger1 = time = 1
trigger2 = Vel Y != 0
y = 0

;[State 1200, 2at]
;type = Explod
;trigger1 = animelem = 1
;anim = 0
;pos = 0,0
;postype = p1
;ID = 1121
;sprpriority  = 1

[State 1200, BoltFat]
type = HitDef
trigger1 = Animelem = 5
triggerall = p2stateno != 1007
trigger1 = p2stateno != 12001
;trigger2 = p2stateno != 1009
attr = S, NA
damage = 215,107 
animtype = Back
guardflag = MA
hitflag = MAF 
priority = 3, Hit
pausetime = 8, 8  
sparkno = -1  
p2facing = 1     
;hitsound = F1, 5    
guardsound = 5, 14   
;numhits = -1
ground.type = High  
ground.slidetime = 3 
ground.hittime  = 24  
ground.velocity = -6   
airguard.velocity = -1.9,-.8
air.type = High             
air.velocity = -1.4,-3                                
air.hittime = 12            
p1stateno = 1001
p2stateno = 5039
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

;============================================================



;--------------
[StateDef 1002]
type    = S
movetype= A
physics = S
juggle  = 4
ctrl = 0
velset = 0,0,0
anim = 0

[State 1200, BoltFat]
type = Helper
trigger1 = animelem = 3
stateno = 267
ID = 997
pos = 0,0
postype = p1


[State 1200, 2at]
type = Explod
trigger1 = time = 1
anim = 888
pos = 0,0
postype = p1
ID = 1002
sprpriority  = 1
removetime = 150

[State 1200, 10]
type = ChangeState
trigger1 = animTime = 0
ctrl = 1
value = 0
;---------------------
[Statedef 267]
type    = S
movetype= A
physics = S
velset = 0,0
;sprpriority = -1
anim = 1404

[State 3100, Super D]
type = AfterImage
trigger1 = Var(11) != 10
trigger1 = time = 1
FrameGap = 3
length = 15
timegap = 1
PalBright   =   0,  0,  0
PalContrast = 0,0,10
PalAdd      =   0,  0,  0
PalMul      =  0,0,0
Trans = Add1
time = 20


[State 3100, Super D]
type = AfterImage
trigger1 = Var(11) != 10
trigger1 = time = 1
FrameGap = 3
length = 15
timegap = 1
PalBright   =   0,  0,  0
PalContrast = 0,0,10
PalAdd      =   0,  0,  0
PalMul      =  0,0,0
Trans = Add1
time = 20

[State 820, sd435E1]
type = VelSet
Trigger1 = 1
X = 9

;[State 820, 4435E1]
;type = velSET
;Trigger1 = movecontact
;Trigger1 = 1
;X = 0

[State 820, 4435E1]
type = hitdef
trigger1 = !movecontact
attr = S, SP
damage    = 160, 0
getpower = 130,0
animtype = Hard
air.animtype = Back
air.fall = 1
hitflag = CM
guardflag = CM
sparkno = -1
guard.sparkno = -1
p1stateno = 268
p2stateno = 266
hitsound   = 5,14
guardsound = 5,14 
p2facing = -1
yaccel = 0.45
kill       = root, Var(9) = 0
fall.kill  = root, Var(9) = 0
guard.kill = root, Var(9) = 0

[State 821, 5d4] ;Hit ground
type = Changestate
trigger1 = moveguarded
value = 269

[State 821, 4] ;Hit ground
type = Destroyself
trigger1 = time = 200
;value = 5050 ;Hit ground

[Statedef 268]
type    = S
movetype= A
physics = S
velset = 0,0
;sprpriority = -1
anim = 255

[State 820, 4435E1]
type = velSET
Trigger1 = 1
X = 0


[State 821, 4] ;Hit ground
type = Destroyself
trigger1 = animtime = 0
;value = 5050 ;Hit ground

[Statedef 269]
type    = S
movetype= I
physics = S
velset = 0,0
;sprpriority = -1
anim = 40001

[State 820, 4435E1]
type = velSET
Trigger1 = 1
X = 0

[State 821, 4] ;Hit ground
type = Destroyself
trigger1 = animtime = 0

[Statedef 266]
type    = A
movetype= H
physics = N
velset = 0,0
;sprpriority = -1

[State 9010, 0.1]
type = Sprpriority
trigger1 = animtime = 0
value  >= 2

[State 820, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 26


;[State 820, 4435E1]
;type = velSET
;Trigger1 = animtime = 0
;X = -1

[State 820, 4351]
type = VelSet
Trigger1 = time = 12
x = -2.5
y = -10 

[State 810, nd]
type = TURN
trigger1 = time >=  13

[State 821, 4] ;Hit ground
type = SelfState
trigger1 = time >=  13
value = 5050 ;Hit ground

;=============
[StateDef 1003]
type    = S
movetype= A
physics = S
juggle  = 2
ctrl = 0
velset = 0,0,0


[State 1200, Za]
type = VelSet
trigger1 = time = 1
trigger2 = Vel Y != 0
y = 0

[State 1200, 2at]
type = Explod
trigger1 = p2statetype != A
trigger1 = time = 16
anim = F7
pos = 70,-110
postype = p2
facing = -1
;ID = 112
sprpriority  >= 2
;ontop = 1

[State 1200, 2at]
type = Explod
trigger1 = p2statetype != A
trigger1 = time = 10
anim = F7
pos = 20,-112
postype = p2
facing = -1
;ID = 112
sprpriority  >= 2
;ontop = 1

[State 1200, 2at]
type = Explod
trigger1 = p2statetype != A
trigger1 = time = 7
anim = F7
pos = 40,-114
postype = p2
facing = -1
;ID = 112
sprpriority  >= 2
;ontop = 1

[State 1200, 2at]
type = Explod
trigger1 = p2statetype != A
trigger1 = time = 3
anim = F7
pos = 5,-110
postype = p2
facing = -1
;ID = 112
sprpriority  >= 2
;ontop = 1


[State 1200, 10]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0

;------------
; 
[StateDef 5039]
type    = A
movetype= H
physics = N
VelSet = 0,0
anim = 5016

[State 3110, change]
type = changeanim
trigger1 = time = 20
value = 5050

[State 1005, VEL1]
type = posadd
trigger1 = time = 0
trigger2 = time = 4
trigger3 = time = 16
X = 3


[State 1005, VEL2]
type = posadd
trigger1 = time = 8
trigger2 = time = 12
trigger3 = time = 20
X = - 3

[State 3110, initial vel]
type = Velset
trigger1 = time = 0
y = -3;5

[State 3110, initial vel]
type = Velset
trigger1 = time = 20
y = -20 ;5

[State 3110, stop vel]
type = Velset
trigger1 = time < 42
trigger1 = Pos Y <= -115
y = 0

[State 3110, change]
type = ChangeAnim
trigger1 = Pos Y >= 0
trigger1 = time > 10 ;30
value = 5080

[State 3110, initial vel]
type = Velset
trigger1 = time >= 26
y = 10


[State 3110, change]
type = Changestate
trigger1 = Pos Y >= 0
trigger1 = time > 40 ;30
value = 1007

;--------------

[Statedef 1007]
type    = A
movetype= H
physics = N
velset = 2.5, -8
anim = 5035

[State 3120, change]
type = changeanim
trigger1 = time = 0
value = 5050

[State 3120, gravity]
type = veladd
trigger1 = time > 6
y = 0.7

[State 3120, CC]
type = Selfstate
trigger1 = Pos Y >= 0
trigger1 = time > 6
value = 5110

[State 3100, Thump]
type = Playsnd
trigger1 = time = 1
value = F5,21
volume = 150
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

;--------------------------------

[Statedef 441]
type    = S
movetype= H
physics = S
juggle  = 4
ctrl = 0
anim = 441

[State 9010, 0.1]
type = Sprpriority
trigger1 = time = 1
value  >= 2

[State 1313, Bolt]
type = Explod
trigger1 = animelem = 4
anim = 442
shadow = -1,250,250
pos = -50*const(size.xscale),-65*const(size.xscale)
bindtime = -1
helpertype = normal
sprpriority = 3
ownpal = 1

[State 9399, 2]
type = Selfstate
trigger1 = AnimTime = 0
value = 5150

[State 9399, 3]
type = Lifeadd
trigger1 = Time = 1
Value = -9999


[State 5150, 8]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1
ctrl = 1



;------------------------

[Statedef 701]
type    = S
movetype= H
physics = S
juggle  = 4
ctrl = 0
anim = 701

[State 9010, 0.1]
type = Sprpriority
trigger1 = time = 1
value  >= 2

[State 1313, Bolt]
type = Explod
trigger1 = animelem = 1
anim = 703
shadow = -1,250,250
pos = 0*const(size.xscale),-75*const(size.xscale)
bindtime = -1
helpertype = normal
sprpriority = 3
ownpal = 1

[State 9399, 2]
type = Selfstate
trigger1 = AnimTime = 0
value = 5150

[State 9399, 3]
type = Lifeadd
trigger1 = Time = 1
Value = -9999


[State 5150, 8]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1
ctrl = 1

;============================================================
[StateDef 13130]
type    = S
movetype= A
physics = S
juggle  = 5
ctrl = 0
velset = 7,0,0
anim = 90002
ctrl = 0

[State 13130, Up]
type = VelSet
trigger1 = command = "holdback"
x = 4
ctrl = 1

[State 13130, Up]
type = VelSet
trigger1 = command = "holdup"
y = -1.2
ctrl = 1

[State 13130, Down]
type = VelSet
trigger1 = command = "holddown"
y = 1.2
ctrl = 1

[State 13130, BoltFat]
type = HitDef
trigger1 = time = 0
attr = S, NA
damage    = 85, 13
animtype = Heavy
air.animtype = Back
air.fall = 1
fall.recover = 0

guardflag = L
pausetime = 0,2
sparkno = -1
guard.sparkno = -1
hitsound   = s4,22
guardsound = S1, 0
ground.type = High
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -8
air.velocity = -2.5,-5
air.juggle = 9
fall = 0
palfx.time = 20
palfx.mul = 70,160,270
palfx.add = 89,103,150
palfx.sinadd = 180,180,180,5
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 1313, Bolt]
type = Explod
trigger1 = movehit = 1
anim = 90003
shadow = -1,250,250
name = "Laser"
postype = p2
pos = -40*const(size.xscale), 20*const(size.xscale)
bindtime = -1
helpertype = normal
ontop = 1
ownpal = 1

[State 2001, Didn't hit, blocked etc.]
type = Destroyself
trigger1 = movehit = 1


;-----------------------------------------------

[StateDef 10000]
type    = S
movetype= A
physics = S
juggle  = 2
ctrl = 0
velset = 0,0,0
anim = 10000

[State 10000, ZappySound]
type = PlaySnd
trigger1 = AnimElem = 2 
value = 4, 14

[State 10000, BoltFat]
type = Projectile
trigger1 = AnimElem = 2 
projanim = 10001
projhitanim = 10002
projremanim = 1211
postype 
offset = 0*const(size.xscale), 0*const(size.xscale)
velocity = 8, -3
remvelocity = 2.35, 0
; HitDef part of projectile info
attr = S, SP
damage    = 125, 23
animtype = Hard
air.animtype = Back
air.fall = 1
fall.recover = 0

guardflag = L
pausetime = 0,2
sparkno = -1
guard.sparkno = -1
hitsound   = s2424, 0
guardsound = S1, 0
ground.type = High
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -8
air.velocity = -2.5,-5
air.juggle = 2
palfx.time = 20
palfx.mul = 70,160,270
palfx.add = 89,103,150
palfx.sinadd = 180,180,180,5
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)
fall = 0
air.fall = 1
fall.recover = 0


[State 10000, NotFreindly]
type = VarSet
trigger1 = AnimElem = 4 
v = 5
value = 1

[State 10000, 10]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0

;-----------------------------------------------
[StateDef 1410]
type    = S
movetype= A
physics = N
juggle  = 2
ctrl = 0
velset = 8,0,0
anim = 1220

[State 1410, ClearVar]
type = VelSet
trigger1 = Time = 0
v = 20
value = 0

[State 1410, BoltFat]
type = HitDef
trigger1 = 1
attr = S, SP
damage    = 125, 23
animtype = Hard
air.animtype = Back
air.fall = 1
fall.recover = 0

guardflag = L
pausetime = 0,2
sparkno = -1
guard.sparkno = -1
hitsound   = s2424, 0
guardsound = S1, 0
ground.type = High
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -10
air.velocity = -2.5,-5
air.juggle = 3
palfx.time = 20
palfx.mul = 70,250,270
palfx.add = 89,100,150
palfx.sinadd = 180,180,180,5
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 1410, 10]
type = ChangeState
trigger1 = MoveContact = 1
value = 1420

[State 1410, FirstOffEdge]
type = VarAdd
trigger1 = FrontEdgeDist <= 0
v = 20
value = 1

[State 1410, Wrap]
type = PosAdd
trigger1 = (FrontEdgeDist <= 0) && (Var(20) = 1)
X = -330

[State 1410, GoByeBye]
type = DestroySelf
trigger1 = (FrontEdgeDist <= 0) && (Var(20) = 2)
trigger2 = Time >= 150


[StateDef 1420]
type    = S
movetype= A
physics = N
juggle  = 2
ctrl = 0
velset = 2.35,0,0
anim = 1230

[State 1420, gobyebye]
type = DestroySelf
trigger1 = AnimTime = 0
trigger2 = Time >= 150

;--------------------------------------------
; Torpedo for combos
[StateDef 1500]
type    = A
movetype= A
physics = N
juggle  = 2
ctrl = 0
velset = 0,0,0
anim = 1500


[State 1500, flyThrough]
type = PlayerPush
trigger1 = Time >= 0
value = 0

[State 1500, gibber]
type = PlaySnd
trigger1 = Time = 3
value = 4, 4

[State 1500, Accell]
type = VelAdd
trigger1 = Time < 6
x = 2

[State 1500, 10]
type = HitDef
trigger1 = AnimElem = 3
attr = S, SA
animtype  = back
damage    = 166, 41
guardflag = L
hitflag = HAF
pausetime = 0,2
sparkno = -1
guard.sparkno = -1
hitsound   = 5,2
guardsound = S1,0
ground.type = High
ground.slidetime = 0
ground.hittime  = 0
ground.velocity = 0
air.velocity = -0.3,-4.2
air.hittime = 17  
p1stateno = 1010
p2stateno = 1030
fall = 1
fall.recover = 0
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 1500, BounceOff]
type = ChangeState
trigger1 = MoveGuarded = 1
ctrl = 0
value = 1001

[State 1500, SlidToAHalt]
type = ChangeState
trigger1 = time > 50
trigger2 = P2Dist X <= -20
ctrl = 0
value = 1002

[State 1500, OverShoot]
type = ChangeState
trigger1 = FrontEdgeDist <= 20
ctrl = 0
value = 1003

;--------------------------------------------
; Torpedo
[StateDef 1510]
type    = A
movetype= A
physics = N
juggle  = 2
ctrl = 0
velset = 0,0,0
anim = 1000 ;1510

[State 1510, flyThrough]
type = PlayerPush
trigger1 = Time >= 0
value = 0

[State 1510, select gibber]
type = VarRandom
trigger1 = Time = 3
v = 11
range = 0, 3

[State 1510, gibber]
type = PlaySnd
trigger1 = Time = 3
value = 4, Var(11)

[State 1510, Accell]
type = VelAdd
trigger1 = Time < 6
x = 2

[State 1510, 10]
type = HitDef
trigger1 = AnimElem = 3
attr = A, SA
animtype  = back
damage    = 166, 41
guardflag = L
hitflag = HAF
pausetime = 0,2
sparkno = -1
guard.sparkno = -1
hitsound   = 5,2
guardsound = S1,0
ground.type = High
ground.slidetime = 0
ground.hittime  = 0
ground.velocity = 0
air.velocity = -0.3,-4.2
air.hittime = 17  
p1stateno = 1010
p2stateno = 1030
fall = 1
fall.recover = 0
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 1510, BounceOff]
type = ChangeState
trigger1 = MoveGuarded = 1
ctrl = 0
value = 1101

[State 1510, SlidToAHalt]
type = ChangeState
trigger1 = time > 50
;trigger2 = P2Dist X <= -20
ctrl = 0
value = 1102

[State 1510, OverShoot]
type = ChangeState
trigger1 = FrontEdgeDist <= 20
ctrl = 0
value = 1103


;---------------------------------------------------------------------------
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























[StateDef 1100];empujon
type = S
movetype= A
physics = S
ctrl = 0
anim = 1100      

[State 1100, change1]          ;si esta muy lejos, solo corre
type = ChangeState
trigger1 = BackEdgeDist < 13
trigger1 = p2bodydist X > 165
trigger2 = p2stateno = 9010
value = 1101                   ;state que lo deja cerca del enemigo

[State 1100, change2]          ;si el oponente esta saltando, o tirado en el piso
type = ChangeState             ;corre al otro lado
trigger1 = p2statetype != S
trigger1 = p2statetype != C
value = 1102                   ;state que lo deja del otro lado

[State 1100, hit]
type = HitDef
trigger1 = p2stateno != 130
trigger1 = p2stateno != 131
trigger1 = p2bodydist X < 40
attr = S,NA
sparkno = -1
p2stateno = 1104;no tiene control, solo defensa parado y agachado
numhits = -1

[State 1100, hit]
type = HitDef
trigger1 = p2stateno = 130
trigger2 = p2stateno = 131
triggerall = p2bodydist X < 5
attr = S,NA
sparkno = -1
guardflag = HL
guardsound = 5,14
numhits = -1

[State 1100, Bouncf]
type = ChangeState
trigger1 = moveguarded  ;si se defiende
value = 1109            ;vibra

[state 1100, plush]
type = playerpush
trigger1 = 1
value = 0

[State 1001, 10]
type = Changestate
trigger1 = p2bodydist X < -110
trigger2 = time > 30              ;porlas
value = 1105

[State 1100, aAccell]   ;lo hace correr
type = VelAdd
trigger1 = 1
x = 12
;-------------------------------
[StateDef 1101];si estaba lejos
type    = S
movetype= I
physics = S

[State 1100, aAccell]       ;lo hace correr
type = VelAdd
trigger1 = 1
x = 12

[State 1001, 10]
type = Changestate
trigger1 = p2bodydist X < 30
trigger2 = time = 21         ; porlas
value = 0
ctrl = 1
;---------------------
[StateDef 1102];si salta
type    = S
movetype= I
physics = S

[State 1100, aAccell]   ;lo hace correr
type = VelAdd
trigger1 = 1
x = 12

[state 999, plush]
type = playerpush
trigger1 = 1
value = 0

[State 1001, 10]
type = Changestate
trigger1 = p2bodydist X < -60
trigger2 = time > 30              ;porlas
value = 0
ctrl = 1
;-------------------------
[StateDef 1104]
type    = S
movetype= I
physics = S
anim = 0
ctrl = 0
velset = 0,0

[state 1104,null]       ;porlas modo team
type = changestate
trigger1 = time = 30
value = 0
ctrl = 1
;---------------------------
[StateDef 1105]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 240

[state 1104,m]
type = turn
trigger1 = time = 0

[state 999, push]
type = playerpush
trigger1 = 1
value = 0

[State 1000, 10]
type = HitDef
trigger1 = time = 0
attr = S,NA
sparkno = -1
p1stateno = 1107
p2stateno = 1108
numhits = -1

[state 1107,ch]           ;porlas
type = changestate
trigger1 = time = 1
value = 1107
;-----------------------
[StateDef 1107]
type    = S
movetype= A
physics = S
velset = 0,0

[state 444,78]
type = veladd
trigger1 = animelem = 4
x = 40

[State 1000, 10]
type = HitDef
trigger1 = AnimElem = 4
attr = S,NA
animtype  = hard
damage    = 150, 75
guardflag = HL
pausetime = 20,0
hitflag = AHLMF
sparkno = 2;-1
sparkxy = -30,-90
guard.sparkno = -1
hitsound   = 5,0
guardsound = 5,14
ground.type = High
ground.slidetime = 0
ground.hittime  = 0
ground.velocity = -6,-4;3.6
air.velocity = -3,-4;3.6;2
air.hittime = 17  
yaccel = 0.45
fall = 1
fall.recover = 0
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)
envshake.time = 15
envshake.freq = 130
envshake.ampl = 8

[state 444,5]               
type = changestate
trigger1 = animtime = 0
trigger2 = time = 25       ;porlas
value = 0
ctrl = 1








[StateDef 1108]
type    = S
movetype= I
physics = S
velset = 0,0
anim = 5

[state 1104,m]
type = turn
trigger1 = time = 0

[state 1104,mov]
type = changeanim
trigger1 = animtime = 0
value = 0

[state 1104,mov]
type = veladd
trigger1 = FrontEdgeDist < 30
x = -30

[state 1106,ch]
type = selfstate
trigger1 = time = 10
value = 0
ctrl = 1










[StateDef 1300]
type    = S
movetype= A
physics = S
juggle  = 3
poweradd= 10
ctrl = 0
anim = 700
sprpriority = 2







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






[StateDef 12009]
type    = S
movetype= A
physics = S
juggle  = 2
ctrl = 0
velset = 0,0,0
anim = 1004





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


[Statedef 1001];bola
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

[State 1200, BoltFat]
type = hitdef
trigger1 = time = 0
attr = S, SP
damage    = 200, 50
animtype = Light
air.animtype = Back
guardflag = HL
pausetime = 0,2
sparkno = S40001
guard.sparkno = S40001
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



[StateDef 11001]
type    = A
movetype= A
physics = S
juggle  = 6
ctrl = 0
velset = 0,0,0
anim = 1010




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


[Statedef 1000]
type    = S
movetype= A
physics = S
juggle  = 2
velset = 0,0
anim = 1003
ctrl = 0



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
[Statedef 1001];bola
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

[State 1200, BoltFat]
type = hitdef
trigger1 = time = 0
attr = S, SP
damage    = 200, 50
animtype = Light
air.animtype = Back
guardflag = HL
pausetime = 0,2
sparkno = S40000
guard.sparkno = S40000
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


[StateDef 1109]
type    = S
movetype= I
physics = S
anim = 1101

[state 1109,biv]
type = velset
trigger1 = time = 0
X = 0

[state 1109,ch]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1