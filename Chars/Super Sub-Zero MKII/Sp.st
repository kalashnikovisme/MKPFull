[StateDef 2000]
type    = S
movetype= A
physics = S
juggle  = 2
ctrl = 0
anim = 1004


[State 1100, aAccell]
type = VelAdd
trigger1 = Time < 22
x = 9

[State 1000, gibber]
type = PlaySnd
trigger1 = Time = 1
value = 14, 0

[State 1000, 10]
type = HitDef
trigger1 = AnimElem = 3
attr = S, SA
animtype  = back
air.animtype  = Back
air.hittime  = 17;55
air.velocity = -3, -7
yaccel = 0.5
damage    = 132, 68
guardflag = L
hitflag = AHLMF
pausetime = 10,2
sparkno = -1
guard.sparkno = -1
hitsound   = -1
p1stateno = 1001
guardsound = 5,14
ground.type = High
ground.slidetime = 0
ground.hittime  = 0
ground.velocity = -3,-5
fall = 1
fall.recover = 0
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)


[State 1000, Bouncf]
type = ChangeState
trigger1 = movecontact
value = 1001

[State 1000, BounceOff]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0


;--------------------------------------------
; Torpedo Bounce away
[StateDef 1001]
type    = S
movetype= I
physics = S
ctrl = 0

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

[Statedef 12000]
type    = S
movetype= I
physics = N
juggle  = 2
anim = 1040
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

[State 2000, 0.5]
type = Playsnd
trigger1 = time = 1
value = 0,4
;volume = 70

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
pausetime = 13, 10
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
; Far bomb (nonkiller)
[Statedef 2002]
type    = S
movetype= A
physics = N
velset = 10, 0
anim = 1010
ctrl = 0

[State 2000, soundss]
type = Playsnd
trigger1 = time = 30
value = 0,4

[State 2002, nonkilling helper]
type = helper
trigger1 = time = 119
stateno = 2021
name = "NoKillbomb"
id = 2021
pos = 0, 0
postype = p1

[State 2002, drop]
type = Veladd
trigger1 = time > 0
y = .2

[State 2002, slow]
type = veladd
trigger1 = p2bodydist X < 70
x = -.1

[State 2002, slow]
type = veladd
trigger1 = p2bodydist X < 35
x = -.2

[State 2002, stopx]
type = velset
trigger1 = p2dist X < 1
x = 0

[State 2002, stop]
type = velset
trigger1 = Pos Y >= 0
x = 0
y = 0

[State 2002, gone]
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

[State 2021, des]
type = destroyself
trigger1 = animtime = 0

;-------------------------------------------------------------------
; GROUND FREEZE
;-------------------------------------------------------------------

[Statedef 1300]
Type = S
Movetype = A
Physics = S
Anim = 1300
ctrl = 0

[State 1300, 0.5]
type = playsnd
trigger1 = time = 0
value = 4,14

[State 1300, 1]
type = helper
trigger1 = animelem = 10
trigger1 = p2stateno != 9010
stateno = 1301
name = "Puddle"
id = 1301
pos = 107, -3
postype = p1
facing = 1
bindtime = 1
under = 1

[State 1300, 1]
type = helper
trigger1 = animelem = 10
trigger1 = p2stateno = 9010
stateno = 1305
name = "Puddle"
id = 1305
pos = 107, -3
postype = p1
facing = 1
bindtime = 1
under = 1

[State 1300, CS]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

;-------------------------------------------------------------------

[Statedef 1301]
Type = S
MoveType = A
Physics = N

;WILLOUGHBY NOTES TO IMPALER
;The helper appears but does not actually hit the person because there is no
;hit def... :^D

[State 1301, CA]
type = ChangeAnim
trigger1 = time = 0
value = 2301

[State 1301, CAAA]
type = SprPriority
trigger1 = time != 0
value = 0

[State 1301, CB] ;WBJ...The actual hit
type = HitDef
trigger1 = p2stateno != 1303
trigger1 = time = [0, 30]
attr = S, NA
damage    = 0
guardflag = L
hitflag = MAFD
priority = 3, Hit
pausetime = 0,0
numhits = 0
sparkno = -1
sparkxy = -10,-70
hitsound = S10,0
guardsound = -1
kill = 0
p2stateno = 1303

[State Destroy]
type = changestate
trigger1 = animtime = 0
trigger2 = root, movetype = H
trigger3 = moveguarded
trigger4 = root, movecontact
value = 1302

;-------------------------------------------------------------------
;Change the slipping fool back to normal
;-------------------------------------------------------------------

[Statedef 1302]
Type = S
MoveType = A
Physics = N
anim = 2302

[State 1301, CAAA]
type = SprPriority
trigger1 = time != 0
value = 0

[State 1302, CB]
type = HitDef
trigger1 = p2stateno = 1303
attr = S, NA
damage    = 0
hitflag = MAFD
priority = 7, Hit
pausetime = 0,0
numhits = 0
sparkno = -1
sparkxy = -10,-70
hitsound = -1
guardsound = 6,0
kill = 0
p2stateno = 1304

[State 1302, CS]
type = destroyself
trigger1 = animtime = 0

;-------------------------------------------------------------------
;DUDE IS SLIPPING!
;-------------------------------------------------------------------

[Statedef 1303]
Type = S
MoveType = H
Physics = N
Velset = .25, 0, 0
anim = 100 

[State 1303, CA]
type = Changeanim
triggerall = time = 0
trigger1 = !animexist(100)
value = 20

[State 1303, Change]
type = Changeanim
trigger1 = selfanimexist(21238)
triggerall = time = 0
value = 21238

[State 1303, CC]
type = Posset
trigger1 = Pos Y != 0
Y = 0

[State 1304, 1]
type = Selfstate
trigger1 = enemy, numhelper(1301) = 0
ctrl = 1
value = 0

;-------------------------------------------------------------------
;DUDE STOPS
;-------------------------------------------------------------------

[Statedef 1304];WBJ puts the player back in normal states...
type = S
MoveType = H
Physics = N
Velset = 0
anim = 0

[State 1304, 1]
type = Selfstate
trigger1 = time = 0
trigger2 = movetype = H
ctrl = 1
value = 0

;charco en finish him
[Statedef 1305]
Type = S
MoveType = I
Physics = N
anim = 2301

[State 1301, CA]
type = ChangeAnim
trigger1 = time = 0
trigger1 = anim = 2301
value = 2302

[State 1302, CS]
type = destroyself
trigger1 = animtime = 0

;============================================================

[StateDef 1000]
type    = S
movetype= A
physics = S
juggle  = 2
ctrl = 0
velset = 0,0,0
anim = 1003

[State 1200, ZappySound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 4, 14
channel = 3
volume = 70

[State 1200, Za]
type = VelSet
trigger1 = time = 1
trigger2 = Vel Y != 0
y = 0

[State 1200, 2at]
type = Explod
trigger1 = animelem = 3;1
anim = 910
pos = 48,-75;35,-75
postype = p1
ID = 112
sprpriority  >= 2

[State 181, DIED]
type = Explod
trigger1 = time = 1
anim = 888
id = 7088
pos = 16,10
postype = p1
facing = 1
sprpriority = 1
ownpal = 1
removetime = 420


[State 1200, BoltFat]
type = Projectile
triggerall = time = 22;AnimElem = 3
trigger1 = p2stateno != 12001
trigger1 = p2stateno != 1009
projanim = 1001
projhitanim = 1000
projremanim = 1000
offset = 36*const(size.xscale), -76*const(size.xscale)
ID = 997
velocity = 8, 0 
remvelocity = 0, 0
; HitDef part of projectile info
attr = S, SP
animtype = Hard
air.animtype = Back
air.fall = 1
guardflag = HL
pausetime = 0,2
sparkno = -1
numhits = 0
air.juggle = 3
p2stateno = 12001
guard.sparkno = -1
hitsound   = s4,17
guardsound = s4,17
ground.type = High
ground.slidetime = 14
ground.hittime  = 16
air.juggle = 3
;palfx.time = 20
;palfx.mul = 70,250,270
;palfx.add = 89,100,150
;palfx.sinadd = 180,180,180,5
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)


[State 1200, BoltFat]
type = Projectile
triggerall = AnimElem = 3
trigger1 = p2stateno = 12001
trigger2 = p2stateno = 1009
projanim = 1001
;projhitanim = 1230
;projremanim = 1211
offset = 5*const(size.xscale), -75*const(size.xscale)
ID = 997
velocity = 8, 0 
remvelocity = 0, 0
; HitDef part of projectile info
attr = S, NT
animtype = Hard
air.animtype = Back
air.fall = 1
guardflag = HL
pausetime = 0,2
sparkno = -1
p2stateno = 1007
p1stateno = 1009
numhits = -1
guard.sparkno = -1
hitsound   = s4,17
guardsound = S4,17
ground.type = High
ground.slidetime = 14
ground.hittime  = 16
air.juggle = 3
;palfx.time = 20
;palfx.mul = 70,250,270
;palfx.add = 89,100,150
;palfx.sinadd = 180,180,180,5
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)


[State 1200, 10]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0

[StateDef 1002]
type    = S
movetype= A
physics = S
juggle  = 2
ctrl = 0
velset = 0,0,0
anim = 1000

[State 1200, ZappySound]
type = PlaySnd
trigger1 = AnimElem = 7
value = 4, 4
channel = 3

[State 1200, Za]
type = VelSet
trigger1 = time = 1
trigger2 = Vel Y != 0
y = 0

[State 1200, BoltFat]
type = Projectile
trigger1 = AnimElem = 8
projanim = 1002
;projhitanim = 1230
;projremanim = 1211
offset = 60*const(size.xscale), -100*const(size.xscale)
velocity = 12, 0 
remvelocity = 0, 0
; HitDef part of projectile info
attr = S, SP
damage    = 140, 23
animtype = Light
air.animtype = Back
air.fall = 1
guardflag = HL
pausetime = 0,2
sparkno = -1
guard.sparkno = -1
hitsound   = s94,3
ground.type = High
p2stateno = 1007
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)


[State 1200, 10]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0

;------------
; 
;------------
[StateDef 12001]
type = U
movetype= H
physics = N
velset = 0,0

[State 433, INVOFF]
type = VarSet
triggerall = 1
trigger1 = p1name ="smoke" 
trigger2 = p1name = "reptile"
trigger3 = p1name = "scorpion"
V = 17
value = 0

[State 1005, CSZ4]
type = LifeAdd
trigger1 = Life < 2
value = -10


[State 120, 2]
type = StateTypeSet
trigger1 = 1
trigger1 =  Pos Y = 0
type = S
physics = S

[State 120, 3]
type = StateTypeSet
trigger1 = 1
trigger1 =  Pos Y != 0
type = A
physics = N

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


[State 1005, FREEZE]
type = Changeanim
trigger1 = time != 0
value = Var(23)
elem = animelemno(0)


[State 1005, Frosty color]
type = palFX
trigger1 = time != 0
;trigger1 = var(23) = 1
add = 100,150,250	
mul = 200,200,200
time = 2

[State 1005, VELSET]
type = velset
trigger1 = 1
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
trigger1 = time = 150
trigger1 = Pos Y > -1
value = 0
ctrl = 1

[State 1005, CSZ]
type = Changestate
trigger1 = time = 150
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

;------------------------------
;------------------------------
;Ice Dragon
;------------------------------
;------------------------------


[StateDef 32101]
type    = S
movetype= A
physics = S
juggle  = 10
ctrl = 0
velset = 0,0,0
sprpriority = 6
anim = 1300

[State 32101,1]
type = PlaySnd
trigger1 = Time = 15
value = 1313,5

[State 32101, Super C]
type = PowerAdd
trigger1 = Time = 1
value = -2000

[State 32101, Super]
type = SuperPause
trigger1 = AnimElem = 1
pos = 9999, -9999
sound = S20, 16
poweradd = -2000

[State 32101, Supereffect]
type = Explod
trigger1 = time = 15
anim = 193
pos = 100, -10
sprpriority = 9
postype = p1
supermove = 1
ownpal = 1

[State 32101, Super1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1313,0

[State 32101, Super2]
type = PlaySnd
trigger1 = time = 15
value = 1313,3

[State 32101, Super3]
type = PlaySnd
trigger1 = time = 45
value = 20,37

[state 9830,Shake]
type = envshake
trigger1 = time = 15
time = 130
ampl = 5
freq = 100

[state 9830, Hold Camera]
type = ScreenBound
trigger1 = time = 45
value = 1
movecamera = 0,0

[State 32101, Dragon]
type = Projectile
trigger1 = time = 45
projanim = 32101
postype
offset = 100, 16
velocity = 0, 0
;projremove = 0
; HitDef part of projectile info
ProjHits = 40
projmisstime = 7
attr = A, SP ;S, SP
damage    = 20, 10
animtype = Hard
air.animtype = Back
guardflag = MA
hitflag = MAF
pausetime = 0,2
sparkno = -1
numhits = 1
guard.sparkno = -1
hitsound   = 1, 3
guardsound = s1,1
ground.type = High
ground.slidetime = 50
ground.hittime  = 50
ground.velocity = 0, -2
envshake.time = 15
envshake.freq = 170
envshake.ampl = -3
air.velocity = 0, -2
air.juggle = 10
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)
fall = 0
air.recover = 0



[State 20000, NotFreindly]
type = VarSet
trigger1 = AnimElem = 4
v = 5
value = 1

[State 20000, 10]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0

;------------------------------
;------------------------------
;Shadowed Air Kick
;------------------------------
;------------------------------

[Statedef 7447]
type    = A
movetype= A
physics = N
juggle  = 1
velset = 0,0
ctrl = 0
anim = 621
poweradd = 40

[State 7447, 1]
type = posfreeze
trigger1 = time <= 8

[State 7447, tracers]
type = AfterImage
trigger1 = Time = 0
PalBright   =  255, 255, 255
trans = add
time = 30

[State 7447, 2]
type = Velset
trigger1 = AnimElem = 2
x = 7
y = 6

[State 7447, 3]
type = PlaySnd
trigger1 = AnimElem = 1
value = 4,10

[State 7447, 4]
type = HitDef
trigger1 = time = 9
trigger2 = time = 11
trigger3 = time = 13
trigger4 = time = 15
trigger5 = time = 17
trigger6 = time = 19
trigger7 = time = 21
trigger8 = time = 23
trigger9 = time = 25
trigger10 = time = 27
trigger11 = time = 29
trigger12 = time = 31
trigger13 = time = 33
trigger14 = time = 35
trigger15 = time = 37
trigger16 = time = 39
trigger17 = time = 41
trigger18 = time = 43
trigger19 = time = 45
trigger20 = time = 47
trigger21 = time = 49
trigger22 = time = 51
attr = A, SA
damage    = 25,10
animtype = Medium
guardflag = HA
hitflag = MAF
priority = 3, Hit
pausetime = 9,12
sparkxy = -15,-15
hitsound = S28,29
guardsound = S1,1
ground.type = Low
ground.slidetime = 10
ground.hittime  = 15
ground.Velocity = -4
air.Velocity = -4,-3
down.Velocity = 0,0
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 7447, 6]
type = velset
trigger1 = Pos Y >= 0
x = 0

[State 7447, 7]
type = ChangeState
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
value = 0
ctrl = 1

;------Diagonal Ice-----

[Statedef 3010]
type    = S
movetype= A
physics = S
juggle  = 4
ctrl = 0
velset = 0,0
anim = 9995
sprpriority = 4

[State 3010, sound]
type = Playsnd
trigger1 = time = 5
value = 1313,1

[State 3010, Start]
type = Explod
trigger1 = AnimElem = 2
anim = 9989
pos = 0, 0
postype = P1
BindTime = -1
sprpriority = 3
shadow = -1
ownpal = 1
removeongethit = 1

[State 3010, BoltFat]
type = Projectile
trigger1 = time = 17
trigger1 = p2movetype != H
projanim = 9993
projid = 5149
postype
offset = -60, -45
velocity = 6, -3
; HitDef part of projectile info
attr = S, SP
damage    = 0
animtype = Hard
air.animtype = Back
air.fall = 0
guardflag = HA
hitflag = HAF
pausetime = 0,20
sparkno = -1
guard.sparkno = -1
ground.type = High
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -8
air.velocity = -2.5,-5
air.juggle = 3
p2stateno = 1005
fall = 0
air.fall = 1
fall.recover = 0
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[state 3010,proj explod]
type = explod
trigger1 = time = 17
trigger1 = p2movetype = H
anim = 9993
sprpriority = 8
removetime = 100
pos = -60,-45
velocity = 6,-3
supermovetime = 100

[State 3010, Ice]
type = Explod
trigger1 = ProjContactTime(0) != -1 && ProjContactTime(0) < 15
anim = 9990
pos = -165, -155
postype = p2
bindtime = -1
sprpriority = 3
shadow = -1
ownpal = 1
ontop = 0

[State 3010, Didn't hit]
type = Destroyself
trigger1 = time = 200

[State 3010, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-----------------------------------------
; Aerial Down Ice Freeze
[Statedef 2050]
type = A
physics = A
movetype = A
ctrl = 0
poweradd = 120
anim = 5148

[State 2000, 1]
type = velset
trigger1 = time >= 0
trigger1 = time <= 38
x = 0
y = 0

[State 1050, 1]
type = PlaySnd
trigger1 = Animelem = 3
value = 4,14

[State 2000, 2]
type = Projectile
trigger1 = Animelem = 3
projanim = 5149
projhitanim = 1000
projshadow = 68,68,68
projheightbound = 0,0
offset = 100, -25
velocity = 3,6
;projremovetime = 30
projpriority = 1
numhits = 0
attr = A, SP
damage   = 0,0
hitflag = MAFD
guardflag = MA
animtype = light
pausetime = 60,70
guard.pausetime = 0,0
sparkno = -1
hitsound   = -1
guardsound = 6,0
ground.type = Low
ground.slidetime = 14
ground.hittime  = 0
guard.velocity = 0
ground.velocity = 0
air.animtype = light
air.velocity = 0,0
airguard.velocity = 0     
palfx.time = 70
palfx.add = 49,173,231
palfx.mul = 140,237,247
yvelocity = 3
id = 1010
chainID = 704
nochainID = 1010, 713
p2getp1state = 0

[State 2000, 3]
type = ChangeState
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
value = 47
ctrl = 1

;============================================================
;Vertical Ice
[StateDef 1200]
type    = S
movetype= A
physics = S
juggle  = 2
ctrl = 0
velset = 0,0,0
anim = 900

[State 1200, ZappySound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 4, 14
channel = 3
volume = 70

[State 1200, Za]
type = VelSet
trigger1 = time = 1
trigger2 = Vel Y != 0
y = 0

[State 181, DIED]
type = Explod
trigger1 = time = 6
anim = 888
id = 7088
pos = 16,10
postype = p1
facing = 1
sprpriority = 1
ownpal = 1
removetime = 420

[State 1200, 2at]
type = Explod
trigger1 = Animelem = 3
anim = 902
postype = p1
sprpriority  >= 2

[State 1200, ltFat]
type = Projectile
triggerall = AnimElem = 3
trigger1 = p2stateno != 12001
;trigger2 = p2stateno != 1001
projanim = 901
;projhitanim = 1000
;projremanim = 1000
offset = 0, 0
pos = 0*const(size.xscale),0 *const(size.xscale)
POSTYPE = P2
ID = 997
velocity = 0, 0 
remvelocity = 0, 0
projremove = 0
projremovetime = 50
; HitDef part of projectile info
attr = S, SP
animtype = Hard
air.animtype = Back
air.fall = 1
numhits = 0
guardflag = HL
pausetime = 0,2
sparkno = -1
p2stateno = 12001
guard.sparkno = -1
hitsound   = s4,17
guardsound = s4,17
ground.type = High
ground.slidetime = 14
ground.hittime  = 16
air.juggle = 3
;palfx.time = 20
;palfx.mul = 70,250,270
;palfx.add = 89,100,150
;palfx.sinadd = 180,180,180,5
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 1200, BoltFat]
type = Projectile
triggerall = AnimElem = 3
trigger1 = p2stateno = 12001
;trigger1 = p2stateno = 1001
projanim = 901
;projhitanim = 1000
;projremanim = 1000
offset = 0, 0
pos = 0*const(size.xscale),0 *const(size.xscale)
POSTYPE = P2
ID = 997
velocity = 0, 0 
remvelocity = 0, 0
projremove = 0
projremovetime = 50
; HitDef part of projectile info
attr = S, SP
animtype = Hard
air.animtype = Back
air.fall = 1
numhits = -1
guardflag = HL
pausetime = 0,2
sparkno = -1
p1stateno = 1201
p2stateno = 1002
guard.sparkno = -1
hitsound   = s4,17
guardsound = s4,17
ground.type = High
ground.slidetime = 14
ground.hittime  = 16
air.juggle = 3
;palfx.time = 20
;palfx.mul = 70,250,270
;palfx.add = 89,100,150
;palfx.sinadd = 180,180,180,5
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 1200, 10]
type = ChangeState
trigger1 = Movehit = 1
trigger1 = p2stateno = 12001
value = 1001

[State 1200, 10]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0
------------
; Double ice hits back22222222
[Statedef 1201]
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
value = 1003
;---------------------------------
[StateDef 1300]
type    = S
movetype= A
physics = S
juggle  = 2
ctrl = 0
anim = 1004

[State 1100, aAccell]
type = VelAdd
trigger1 = Time < 22
x = 9

[State 1000, gibber]
type = PlaySnd
trigger1 = Time = 1
value = 14, 0

[State 1000, 10]
type = HitDef
trigger1 = AnimElem = 3
attr = S, SA
animtype  = back
air.animtype  = Back
air.hittime  = 17;55
air.velocity = -3, -7
yaccel = 0.5
damage    = 132, 68
guardflag = L
hitflag = AHLMF
pausetime = 10,2
sparkno = -1
guard.sparkno = -1
hitsound   = -1
p1stateno = 1301
guardsound = 5,14
ground.type = High
ground.slidetime = 0
ground.hittime  = 0
ground.velocity = -3,-5
fall = 1
fall.recover = 0
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 1000, Bouncf]
type = ChangeState
trigger1 = movecontact
value = 1301

[State 1000, BounceOff]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0
;--------------------------------------------
[StateDef 1301]
type    = S
movetype= I
physics = S
ctrl = 0

[State 1000, Accellw]
type = VelSet
trigger1 = time = 0
x = 0

[State 1001, 10]
type = Changestate
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;--------------------------------------
;--------------------------------
[StateDef 1100]
type    = A
movetype= A
physics = A
ctrl = 0
velset = -2,-8

[State hit]
type = nothitby
trigger1 = time <= 10
value = SCA

[State 1001, 10a]
type = Changeanim
trigger1 = Time = 1
value = 1045

[State 1001, 10]
type = VelAdd
trigger1 = Time = [2, 7]
x = -0.2

[State 1001, 210]
type = VelSet
trigger1 = Pos Y <= -90
trigger1 = time >= 2
trigger1 = time <= 15
Y = 0

[State 1001, 10]
type = PosAdd
trigger1 = Time = 2
y = -45

[State 1200, at]
type = Explod
trigger1 = time = 0
trigger2 = movecontact
anim = 1015
postype = p1
sprpriority  >= 2
size.shadowoffset = -1000

[State 1001, 210]
type = VarSet
trigger1 = var(46) = 0
trigger2 = var(46) = 1
V = 46
value = (var(46)=0)*2 + (var(46)=1)*3

[State 1200, ZappySound]
type = PlaySnd
trigger1 = time = 1
trigger2 = p2stateno = 12001
trigger2 = time = 0
trigger3 = moveguarded
trigger3 = time = 0
value = 4, 22
channel = 3

[State 1200, Zapp]
type = PlaySnd
trigger1 = time = 1
value = 2424, 0
channel = 3

[State ]
type = Helper
trigger1 = time = 0
trigger1 = numhelper(7003) < 1
;trigger1 = p2stateno != [120,155]
helpertype = Normal
ID = 7003
name = "clone" 
postype = p1
pos = 0,0
stateno = 1102
ownpal = 1
size.shadowoffset = -1000
;-------------------------
[Statedef 1102]
type    = A
movetype= A
physics = N
ctrl = 0
velset = 0,0

[State 1001, 10a]
type = Changeanim
trigger1 = Time = 0
value = 1016

[State 1200, BoltFat]
type = HitDef
trigger1 = animelem  = 1
triggerall = p2stateno != 12001
triggerall = p2stateno != 1001
attr = S, SP
animtype = Hard
air.animtype = Back
air.fall = 1
numhits = 0
guardflag = HL
pausetime = 0,2
sparkno = -1
p2stateno = 12001
guard.sparkno = -1
hitsound   = s4,17
guardsound = s4,17
ground.type = High
ground.slidetime = 1
ground.hittime  = 1
air.juggle = 3
kill       = parent,Var(9) = 0
fall.kill  = parent,Var(9) = 0
guard.kill = parent,Var(9) = 0

[State 1005, Frosty color]
type = palFX
trigger1 = 1
;trigger1 = var(23) = 1
add = 100,150,250	
mul = 200,200,200
time = 100

[State ]
type = varset
trigger1 = time <= 0
var(0) = parent,anim

[State ]
type = varset
trigger1 = time <= 0
var(1) = parent,animelemno(0)

[State ]
type = playerpush
trigger1 = 1
value = 0

[State ò_ó]
type = Helper
trigger1 = time = 0
trigger1 = numhelper(7004) < 1
id = 7004
Postype = p1
pos = 0,0
stateno = 1011
ownpal = 1

[State end]
type = destroyself
trigger1 = time = 200
trigger2 = moveguarded
trigger3 = moveguarded
trigger3 = time >= 10
trigger4 = movecontact

;----------------------------------------------------
[Statedef 1011]
type    = A
movetype= I
physics = N
ctrl = 0
velset = 0,0

[State 1009, Frosty color]
type = palFX
trigger1 = 1
add = 100,150,250	
mul = 200,200,200
time = 2

[State ]
type = playerpush
trigger1 = 1
value = 0

[State ]
type = changeanim
trigger1 = 1
value = parent,var(0)
elem = parent,var(1)

[State gethit]
type = nothitby
trigger1 = 1
persistent = 1
value = SCA

[State 1200, at]
type = Explod
trigger1 = time = 200
trigger2 = p2stateno = 12001
trigger3 = numhelper(7003) < 1
anim = 1015
postype = p1
sprpriority  >= 2

[State 1200, Zand]
type = PlaySnd
trigger1 = time = 200
trigger2 = moveguarded
value = 4, 22

[State end]
type = destroyself
trigger1 = numhelper(7003) < 1
;============================================================