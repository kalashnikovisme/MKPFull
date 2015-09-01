
;--------------------------------------------
; Torpedo
[StateDef 2000]
type    = A
movetype= A
physics = S
juggle  = 2
ctrl = 0
anim = 900


[State 1100, aAccell]
type = VelAdd
trigger1 = Time < 29
trigger1 = Time > 10
x = 10

[State 1100, aAcce]
type = VelAdd
trigger1 = Animelem  = 1
trigger2 = Animelem  = 2
y = -9

[State 1100, aAcce]
type = VelSet
trigger1 = Animelem  = 3
y = 0

[State 1100, aAcce]
type = VelAdd
trigger1 = Animelem  = 7
trigger2 = Animelem  = 8
y = 6

[State 1000, bber]
type = PlaySnd
trigger1 = Time = 1
value = 4, 17


[State 1000, 10]
type = HitDef
trigger1 = AnimElem = 3
attr = S, SA
animtype  = back
damage    = 156, 41
guardflag = HLMF
hitflag = AHLMF
pausetime = 20,2
sparkno = -1
guard.sparkno = -1
hitsound   = 5,0
guardsound = 5,14 
ground.type = High
ground.slidetime = 0
ground.hittime  = 0
ground.velocity = -3,-2
air.velocity = -3,-2.2
air.hittime = 17  
fall = 1
fall.recover = 0
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)


[State 1000, BounceOff]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0


;--------------------------------------------
[StateDef 1001]
type    = A
movetype= A
physics = N
juggle  = 8
ctrl = 0
velset = 0,0,0
anim = 1010
;sprpriority = 9

[State 10000, open]
type = PlaySnd
trigger1 = AnimElem = 2 
value = 4, 6

[State 1200, BoltFat]
type = Projectile
trigger1 = AnimElem = 4
trigger1 = stateno != 621
;triggerall = p2life > 10
;triggerall = p2life >= 2
trigger2 = stateno = 621
trigger2 = AnimElem = 1
projanim = 1015
projhitanim = 1016
projremanim = 1016
offset = 50*const(size.xscale), -60*const(size.xscale)
ID = 997
velocity = 6, 5 
;remvelocity = -10, -8
; HitDef part of projectile info
attr = S, SP
projID = 1234
damage    = 199, 98
animtype = Light
air.animtype = Back
guardflag = HL
pausetime = 0,2
sparkno = -1
sparkxy = 20,0
guard.sparkno = -1
hitsound   = S4,18
guardsound = S4,18
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -5,0
air.velocity = -4,-5
air.fall = 1
air.juggle = 8
fall.recover = 0
yaccel = .45
p2stateno = 21238
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 88500, NotFreindly]
type = VarSet
trigger1 = AnimElem = 4 
v = 5
value = 1

[State 88500, Fall]
type = ChangeState
trigger1 = AnimTime = 0
value = 1601


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
;------
[StateDef 10011]
type    = S
movetype= I
physics = S
ctrl = 0
velset = 0,0

[State 1000, Accellw]
type = VelSet
trigger1 = time = 0
x = 0

[State 1100, aAccell]
type = VelAdd
trigger1 = Time < 50
x = -1

[State 1100, aAccell]
type = VelAdd
trigger1 = Time < 30
y = -.12

[State 1100, aAccell]
type = VelAdd
trigger1 = Time > 15
trigger1 = Time < 30
y = .3

[State 1000, snd]
type = Playsnd
trigger1 = AnimElem = 6
trigger2 = AnimElem = 8
trigger3 = AnimElem = 11
trigger4 = AnimElem = 13
trigger5 = AnimElem = 16
triggerall = p2bodydist X <= 50
value = F5,14

[State 1001, 10]
type = Changestate
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------
; I hitum now fly.
[StateDef 1011]
type    = A
movetype= A
physics = N
juggle  = 2
ctrl = 0
velset = 0,0
anim = 1010

[State 1010, HimHitWall]
type = TargetState
trigger1 = Time = 5
value = 1031
ctrl = 0

[State 1010, YouBounce]
type = ChangeState
trigger1 = Time = 5
value = 1001
ctrl = 0

;----------------------------------------------
; I hitum now he fly.
[StateDef 1030]
type    = A
movetype= H
physics = N
juggle  = 2
ctrl = 0

[State 1030, OW]
type = ChangeAnim2
trigger1 = time = 0
value = 1030

[State 1030, StopEarly]
Type = ScreenBound
trigger1 = Time >= 40
value = 0
;movecamera = 0, 0

[State 1031, HitGround]
type = SelfState
trigger1 = (Pos Y = 0) || (Vel Y != 0)
value = 5100 ;Hit ground


;----------------------------------------------
; Player Two hit the dirt.
[StateDef 1031]
type    = A
movetype= H
physics = N
juggle  = 2
velset = 0,0,0
ctrl = 0

[State 1031, Gravity]
type = VelAdd
Trigger1 = 1
y = .5

[State 1031, Falling]
type = ChangeAnim2
trigger1 = time = 0
value = 1031

[State 1031, HitGround]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5110 ;Hit ground

;============================================================

[Statedef 1000]
type    = S
movetype= A
physics = S
juggle  = 2
velset = 0,0
anim = 1003
ctrl = 0

[State 10000, open]
type = PlaySnd
trigger1 = AnimElem = 2 
value = 4, 6

[State 1000, 0.1]
type = Posset
trigger1 = Pos Y != 0
trigger1 = time = 0
Y = 0

[State 1200, BoltFat]
type = Projectile
trigger1 = AnimElem = 3
;trigger1 = p2stateno != 9010
projanim = 1000
projhitanim = 1001
projremanim = 1001
offset = 30*const(size.xscale), -85*const(size.xscale)
velocity = 8, 0 
;remvelocity = -10, -8
; HitDef part of projectile info
attr = S, SP
projID = 1234
damage    = 199, 98
animtype = Light
air.animtype = Back
guardflag = HL
pausetime = 0,2
sparkno = -1
sparkxy = 20,0
guard.sparkno = -1
hitsound   = S4,18
guardsound = S4,18
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -5,0
air.velocity = -4,-5
air.fall = 1
fall.recover = 0
air.juggle = 3
yaccel = .5
p2stateno = 21238
kill       = Var(9) = 0
fall.kill  = Var(9) = 0
guard.kill = Var(9) = 0


[State 1000, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-- 2 proyectiles
[Statedef 1002]
type    = S
movetype= A
physics = S
juggle  = 2
velset = 0,0
anim = 1003
ctrl = 0

[State 10000, open]
type = PlaySnd
trigger1 = AnimElem = 2 
trigger2 = AnimElem = 2, = 15
value = 4, 6

[State 1000, 0.1]
type = Posset
trigger1 = Pos Y != 0
trigger1 = time = 0
Y = 0

[State 1200, BoltFat]
type = Projectile
trigger1 = AnimElem = 3
trigger2 = AnimElem = 3, = 15
projanim = 1000
projhitanim = 1001
projremanim = 1001
offset = 30*const(size.xscale), -85*const(size.xscale)
velocity = 9,0;8, 0 
;remvelocity = -10, -8
; HitDef part of projectile info
attr = S, SP
projID = 1234
damage    = 199, 98
animtype = Light
air.animtype = Back
guardflag = HL
pausetime = 0,2
sparkno = -1
sparkxy = 20,0
guard.sparkno = -1
hitsound   = S4,18
guardsound = S4,18
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -5,0
air.velocity = -4,-5
air.fall = 1
fall.recover = 0
air.juggle = 3
yaccel = .5
p2stateno = 21238
kill       = Var(9) = 0
fall.kill  = Var(9) = 0
guard.kill = Var(9) = 0


[State 1000, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-------------------------------------------------------
[StateDef 1100]
type    = S
movetype= A
physics = S
juggle  = 2
ctrl = 0
velset = 0,0,0
anim = 20002


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
anim = 1004
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
anim = 1045

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
; 
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
;-------------------------
[Statedef 1200]
type = A
movetype = I
physics = A
ctrl = 0
anim = 3000
velset = 0,-8 

[State 4000, sound]
type = Playsnd
trigger1 = time = 0
value = 4,17

[State 4000, Fly]
type = ChangeState
trigger1 = AnimTime = 0
value = 1201 ; Next state
ctrl = 1

;---------------------------------------------------------------------------
[Statedef 1201]
type = A
movetype = I
physics = N
ctrl = 0
anim = 3001

[State 4001, Stop1]
type = VelSet
trigger1 = command != "holdfwd"
trigger1 = command != "holdback"
;trigger1 = command != "holdup"
;trigger1 = command != "holddown"
trigger1 = Var(1) = 0
trigger2 = Pos Y < -200 
x = 0
y = 0


[State 4001, Stop2]
type = ChangeAnim
;trigger1 = command != "holdup"
;trigger1 = command != "holddown"
trigger1 = Anim != 3002 ; Flight animation (neutral)
value = 3002 ; Flight animation (neutral)

[State 4001, VarSet1]
type = VarSet
trigger1 = command != "holdfwd"
trigger1 = command != "holdback"
trigger1 = command != "holdup"
trigger1 = command != "holddown"
trigger1 = Var(1) != 2
trigger2 = Var(1) = 2
trigger2 = Vel Y >= 2.4
v = 1
value = 1

[State 4001, VarSet2]
type = VarSet
triggerall = Var(1) = 1
trigger1 = Vel Y <= -2.4
trigger2 = P2BodyDist Y > 100
trigger2 = Vel Y < 0
v = 1
value = 2

[State 4001, VelAdd1]
type = VelAdd
trigger1 = Var(1) = 1
y = 0;-0.3

[State 4001, VelAdd2]
type = VelAdd
trigger1 = Var(1) = 2
y = 0;0.3

[State 4001, VelSetY]
type = VelSet
triggerall = Var(1) != 0
trigger1 = command = "holdfwd"
trigger2 = command = "holdback"
;trigger3 = command = "holdup"
;trigger4 = command = "holddown"
y = 0

[State 4001, VarSetEnd]
type = VarSet
trigger1 = command = "holdfwd"
trigger2 = command = "holdback"
;trigger3 = command = "holdup"
;trigger4 = command = "holddown"
v = 1
value = 0

[State 4001, UpBorder1]
type = PosSet
trigger1 = Pos Y < -80
y = -80;

[State 4001, UpBorder2a]
type = PosAdd
trigger1 = P2BodyDist Y > 80
trigger1 = Vel Y < 0
y = 1

[State 4001, UpBorder2b]
type = VelSet
trigger1 = P2BodyDist Y > 80
trigger1 = Vel Y < 0
y = 0

[State 4001, GoBack1]
type = VelAdd
trigger1 = command = "holdback"
x = -0.2

[State 4001,GoBack2]
type = VelSet
trigger1 = command = "holdback"
trigger1 = Vel X > 0 
x = 0

[State 4001, GoBackAnim]
type = ChangeAnim
trigger1 = Anim != 3004 ; Fly back animation
trigger1 = command = "holdback"
value = 3004

[State 4001, GoFwd1]
type = VelAdd
trigger1 = command = "holdfwd"
x = 0.2

;etc...
[State 4001,GoFwd2]
type = VelSet
trigger1 = command = "holdfwd"
trigger1 = Vel X < 0 
x = 0

[State 4001, GoFwdAnim]
type = ChangeAnim
trigger1 = Anim != 3005 ; Fly forward animation
trigger1 = command = "holdfwd"
value = 3005

[State 4001, Turn]
type = Turn
trigger1 = P2Dist X < 0

[State 4001, Land1]
type = ChangeState
trigger1 = Pos Y >= 0
value = 52
ctrl = 1

[State 4001, Land2]
type = ChangeState
trigger1 = command = "blok"
value = 1207
ctrl = 1

[State 4001, Ld2]
type = ChangeState
trigger1 = command = "sp4"
value = 1206


[State 4001, RoundEnd]
type = ChangeState
trigger1 = Win
trigger2 = Lose
value = 1207

;-------
[StateDef 1206]
type    = S
movetype= A
physics = S
juggle  = 8
ctrl = 0
velset = 0,0,0
anim = 1010
;sprpriority = 9

[State 10000, open]
type = PlaySnd
trigger1 = AnimElem = 2 
value = 4, 6

[State 1200, BoltFat]
type = Projectile
trigger1 = AnimElem = 4
trigger1 = stateno != 621
;triggerall = p2life > 10
triggerall = p2life >= 2
trigger2 = stateno = 621
trigger2 = AnimElem = 1
projanim = 1015
projhitanim = 1016
projremanim = 1016
offset = 50*const(size.xscale), -60*const(size.xscale)
ID = 997
velocity = 6, 5 
;remvelocity = -10, -8
; HitDef part of projectile info
attr = S, SP
projID = 1234
damage    = 100, 23
animtype = Light
air.animtype = Back
guardflag = HL
pausetime = 0,2
sparkno = -1
sparkxy = 20,0
guard.sparkno = -1
hitsound   = S4,18
guardsound = S4,18
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -5,0
air.velocity = -3,-4
air.fall = 1
air.juggle = 8
fall.recover = 0
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 1200, BoltFa5]
type = Projectile
trigger1 = AnimElem = 4
trigger1 = stateno != 621
;triggerall = p2life > 10
triggerall = p2life <= 2
trigger2 = stateno = 621
trigger2 = AnimElem = 1
projanim = 1015
projhitanim = 1016
projremanim = 1016
offset = 50*const(size.xscale), -60*const(size.xscale)
ID = 997
velocity = 6, 5 
;remvelocity = -10, -8
; HitDef part of projectile info
attr = S, SP
projID = 1234
damage    = 100, 23
animtype = Light
air.animtype = Back
guardflag = HL
pausetime = 0,2
sparkno = -1
sparkxy = 20,0
guard.sparkno = -1
hitsound   = S4,18
guardsound = S4,18
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -5,0
air.velocity = -3,-4
air.fall = 1
air.juggle = 8
fall.recover = 0

[State 88500, NotFreindly]
type = VarSet
trigger1 = AnimElem = 4 
v = 5
value = 1

[State 88500, Fall]
type = ChangeState
trigger1 = Animelem = 9
value = 1201

[Statedef 1207]
type    = A
movetype= I
physics = A
juggle  = 4
velset = 0,0
anim = 3007
ctrl = 0

[State 4000, sound]
type = Playsnd
trigger1 = time = 0
value = 4,17


[State 1101]
type = Veladd
trigger1 = time > 0
y = .3
