[StateDef 777]
type    = S
movetype= I
physics = S
ctrl = 0
velset = 0,0,0
anim = 778

[State 700, 1]
type = PlaySnd
trigger1 = Time = 0
value = 4, 8; teleport

[State 700, 1sd]
type = nothitby
trigger1 = 1
value = CSA

[State 0, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = S9,5

[State 0, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = S9,4

[State 700, 1sd]
type = explod
trigger1 = time = 0
anim = 777
pos = 0,0
removeongethit = 1

[State 700, 2]
type = PosAdd
trigger1 = Time = 1
X = (P2Dist X) + 30

[State 700, 1sd]
type = turn
trigger1 = time = 1

[State 700, 4]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0
;-----------------------

[StateDef 778]
type    = S
movetype= A
physics = S
ctrl = 0
velset = 0,0,0
anim = 780

[State 700, 1]
type = PlaySnd
trigger1 = Time = 0
value = 4, 8; teleport

[State 700, 1sd]
type = nothitby
trigger1 = 1
value = CSA

[State 0, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = S9,5

[State 0, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = S9,4

[State 700, 1sd]
type = explod
trigger1 = time = 0
anim = 777
pos = 0,0
removeongethit = 1

[State 700, 1sd]
type = explod
trigger1 = time = 1
anim = 779
pos = 0,0
ontop = 1
facing = -1
bindtime = -2
ignorehitpause = 1
removeongethit = 1

[State 700, 2]
type = PosAdd
trigger1 = Time = 1
X = (P2Dist X) + 30

[State 700, 1sd]
type = turn
trigger1 = time = 1

[State 181, DIED]
type = Explod
trigger1 = movehit
trigger1 = numexplod(7089) = 0
anim = 888
ID = 7089
pos = 168,100
postype = left
facing = 1
sprpriority = 1
ownpal = 1
removetime = 1820

[State 430, 2]
type = HitDef
trigger1 = !movecontact
attr = C, NA
damage    = 230, 90
animtype  = Back
hitflag = MAF ;HAF
guardflag = HL
pausetime = 0,0
sparkno = -1
sparkxy = -18,-100
guard.sparkno = -1
hitsound   = 5,0
p2facing = 1
guardsound = 5,14
ground.cornerpush.veloff = -30
ground.type = High
guard.ctrltime = 20
guard.slidetime = 20
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -1.9,-10
air.velocity = -1.9,-11
yaccel = 0.38
envshake.time = 15
envshake.freq = 70
envshake.ampl = 7
fall.recover = 0
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)
priority = 1, Miss

[State 700, 4]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0

;--------------------------------------------
[Statedef 12000]
type    = A
movetype= A
physics = N
juggle  = 6
velset = 0,15
anim = 2010
ctrl = 0

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
value = 12010

;------------------------------------
; Sek punch up
[Statedef 12010]
type    = A
movetype= A
physics = N
juggle  = 7
velset = 0,-18
anim = 2000
ctrl = 0


[State 2010, turn]
type = turn
trigger1 = time = 0

[State 2010, kill hit]
type = HitDef
trigger1 = time = 0
trigger1 = p2statetype != C
attr = SA, SA   
damage    = 174, 87
p2facing = 1
animtype = Back
guardflag = CM
hitflag = SHAF
priority = 3, Hit
pausetime = 0,5
sparkno = -1
;sparkxy = -10,-70
hitsound = F5,0
guardsound = 6,0
ground.type = Low
ground.slidetime = 5
ground.hittime  = 20
ground.velocity = -1, -10
air.velocity = -1.5,-10
fall = 1
air.fall = 1
fall.recover = 0
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 2010, change]
type = Changestate
;trigger1 = movecontact
trigger1 = Pos Y <= -80
value = 12020

;-------------------------------------
; drop 
[Statedef 12020]
type    = A
movetype= A
physics = N
juggle  = 4
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
value = 52
ctrl = 1

; Torpedo
[Statedef 2000]
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
fall = 1
fall.recover = 0
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 2021, des]
type = destroyself
trigger1 = animtime = 0

;============================================================

; Spear Toss!!!
[Statedef 1000]
type    = S
movetype= A
physics = S
juggle  = 2
velset = 0,0
anim = 1002
ctrl = 0

[State 10000, rakieta]
type = PlaySnd
trigger1 = AnimElem = 1
value = 4, 4

[State 1000, 0.1]
type = Posset
trigger1 = Pos Y != 0
trigger1 = time = 0
Y = 0

[State -2, Steam6]
type = Explod
trigger1 = time = 0
anim = 1611
pos = 6, -92
postype = p1
bindtime = 1
vel = 0, 0
ontop = 1
removeongethit = 1

[State 0, Helper]
type = Helper
trigger1 = time = 12
helpertype = normal
stateno = 1001
pos = 20,-92
postype = p1    ;p2,front,back,left,right
facing = 1

[State 1000, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 1001]
type    = S
movetype= A
physics = N
juggle  = 2
velset = 9,0
anim = 1004
sprpriority = 2

[State 1100]
type = VarRandom
trigger1 = 1
v = 11
range = 0,5

[State 1100]
type = VarRandom
trigger1 = 1
v = 12
range = 0,10

[State 1100]
type = VarRandom
trigger1 = 1
v = 13
range = 498,499

[State 1100]
type = Explod
trigger1 = anim = 1004
anim = var(13)
pos = 0+var(11),0+var(11)
postype = p1
facing = 1
sprpriority = 1

[State 1601, Hit]
type = HitDef
trigger1 = time = 0;!movecontact
attr = S, NA
damage    = 190, 99
animtype = Light
air.animtype = Back
guardflag = H
sparkno = s1610
guard.sparkno = s1610
sparkxy = 0,0
postype = p2
hitsound   = S4,11
guardsound = S4,11
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -15,0
air.velocity = -4,-5
air.fall = 1
fall.recover = 0
air.juggle = 3
yaccel = .45
p2stateno = 21238
envshake.time = 13
envshake.freq = 50
envshake.ampl = 5
palfx.time = 20
palfx.add = 0,75,150
palfx.sinadd = 0,65,140, 5
kill       = root, Var(9) = 0
fall.kill  = root, Var(9) = 0
guard.kill = root, Var(9) = 0

[State 0, Helper]
type = Helper
trigger1 = Movecontact = 1
stateno = 1401
pos = 0,0

[State 10000, rakieta]
type = destroyself
trigger1 = movecontact
trigger2 = FrontEdgeDist < -100
;-------------------------

[StateDef 1401]
type    = S
movetype= I
physics = N
ctrl = 0
anim = 888
velset = 0,0

[State 1000, Accellw]
type = VelSet
trigger1 = time = 0
x = 0

[State 1200, 2at]
type = helper
trigger1 = time = 1
helpertype = normal
pos = 0,-80
name = "snow"
ID = 1402
stateno = 1402
postype = p2
ontop = 1
facing = 1

[State 1200, 2at]
type = helper
trigger1 = time = 0
helpertype = normal
pos = 0,-90
name = "snow"
ID = 1402
stateno = 1402
postype = p2
ontop = 1
facing = 1

[State 1200, 2at]
type = helper
trigger1 = time = 1
pos = 7,-114
helpertype = normal
name = "snow"
ID = 1402
stateno = 1402
postype = p2
ontop = 1
facing = 1

[State 1200, 2at]
type = helper
trigger1 = time = 0
pos = 5,-70
helpertype = normal
name = "snow"
ID = 1402
stateno = 1402
postype = p2
ontop = 1
facing = 1

[State 1200, 2at]
type = helper
trigger1 = time = 1
pos = 3,-85
helpertype = normal
name = "snow"
ID = 1402
stateno = 1402
postype = p2
ontop = 1
facing = 1

[State 1200, 2at]
type = helper
trigger1 = time = 0
pos = 1,-65
helpertype = normal
name = "snow"
ID = 1402
stateno = 1402
postype = p2
ontop = 1
facing = 1

[State 1200, 2at]
type = helper
trigger1 = time = 1
pos = 3,-50
helpertype = normal
name = "snow"
ID = 1402
stateno = 1402
postype = p2
ontop = 1
facing = 1

[State 1200, 2at]
type = helper
trigger1 = time = 0
pos = 0,-45
helpertype = normal
name = "snow"
ID = 1402
stateno = 1402
postype = p2
ontop = 1
facing = 1

[State 1200, 2at]
type = helper
trigger1 = time = 1
pos = 2,-53
helpertype = normal
name = "snow"
ID = 1402
stateno = 1402
postype = p2
ontop = 1
facing = 1

[State 1200, 2at]
type = helper
trigger1 = time = 0
pos = 1,-33
helpertype = normal
name = "snow"
ID = 1402
stateno = 1402
postype = p2
ontop = 1
facing = 1

[State 1200, 2at]
type = helper
trigger1 = time = 1
pos = -3,-46
helpertype = normal
name = "snow"
ID = 1402
stateno = 1402
postype = p2
ontop = 1
facing = -1

[State 1200, 2at]
type = helper
trigger1 = time = 1
helpertype = normal
pos = 0,-80
name = "snow"
ID = 1402
stateno = 1402
postype = p2
ontop = 1
facing = -1

[State 1200, 2at]
type = helper
trigger1 = time = 0
helpertype = normal
pos = 0,-90
name = "snow"
ID = 1402
stateno = 1402
postype = p2
ontop = 1
facing = -1

[State 1200, 2at]
type = helper
trigger1 = time = 1
pos = -7,-114
helpertype = normal
name = "snow"
ID = 1402
stateno = 1402
postype = p2
ontop = 1
facing = -1

[State 1200, 2at]
type = helper
trigger1 = time = 0
pos = -5,-70
helpertype = normal
name = "snow"
ID = 1402
stateno = 1402
postype = p2
ontop = 1
facing = -1

[State 1200, 2at]
type = helper
trigger1 = time = 1
pos = -3,-85
helpertype = normal
name = "snow"
ID = 1402
stateno = 1402
postype = p2
ontop = 1
facing = -1

[State 1200, 2at]
type = helper
trigger1 = time = 0
pos = -1,-65
helpertype = normal
name = "snow"
ID = 1402
stateno = 1402
postype = p2
ontop = 1
facing = -1

[State 1200, 2at]
type = helper
trigger1 = time = 1
pos = -3,-50
helpertype = normal
name = "snow"
ID = 1402
stateno = 1402
postype = p2
ontop = 1
facing = -1

[State 1200, 2at]
type = helper
trigger1 = time = 0
pos = 0,-45
helpertype = normal
name = "snow"
ID = 1402
stateno = 1402
postype = p2
ontop = 1
facing = -1

[State 1200, 2at]
type = helper
trigger1 = time = 1
pos = -2,-53
helpertype = normal
name = "snow"
ID = 1402
stateno = 1402
postype = p2
ontop = 1
facing = -1

[State 1200, 2at]
type = helper
trigger1 = time = 0
pos = -1,-33
helpertype = normal
name = "snow"
ID = 1402
stateno = 1402
postype = p2
ontop = 1
facing = -1

[State 1200, 2at]
type = helper
trigger1 = time = 1
pos = -3,-46
helpertype = normal
name = "snow"
ID = 1402
stateno = 1402
postype = p2
ontop = 1
facing = -1

[State 1001, 10]
type = destroyself
trigger1 = Time = 5

[Statedef 1402]
type    = S
movetype= I
juggle  = 0
anim = 498
velset = 0, 0
ctrl = 0

[State 7200, velset]
type = velset
trigger1  = time = 0
X = -2-(random%30)/10.0
;X = -0.8-(random%20)/10.0

[State 7200, velset]
type = velset
trigger1  = time = 0
Y = -2-(random%70)/10.0

[State 7200, vel]
type = veladd
trigger1 = time > 1
trigger1  = pos Y < root,var(57)
Y = .5;.4

[State 6000, 5]
type = Changestate
trigger1 = Pos Y > 0
value = 1403

;Nice Blood splat A lands
[Statedef 1403]
type    = S
movetype= I
juggle  = 0
velset = 0,0
ctrl = 0

[State 7200, velset]
type = velset
trigger1  = time = 0
X = -1-(random%30)/10.0
;X = -0.8-(random%20)/10.0

[State 7200, velset]
type = velset
trigger1  = time = 0
Y = -5-(random%30)/10.0

[State 7200, vel]
type = veladd
trigger1 = time > 1
trigger1  = pos Y < root,var(57)
Y = .5;.4

[State 6001, 1]
type = Destroyself
trigger1 = animtime = 0

;--------------------------

; Spear Toss!!!
[Statedef 10009]
type    = S
movetype= A
physics = S
juggle  = 2
velset = 0,0
anim = 10029
ctrl = 0

[State 10000, rakieta]
type = PlaySnd
trigger1 = AnimElem = 1
value = 4, 4

[State -2, Steam6]
type = Explod
trigger1 = time = 2
anim = 1611
pos = -8, -92
postype = p1
bindtime = 1
facing = -1
vel = 0, 0
ontop = 1
removeongethit = 1

[State 1601, explosion]
type = Explod
trigger1 = time = 12
anim = 1004
pos = -20,-92
postype = p1
facing = -1
ontop = 1
vel = -9,0
removetime = 100

[State 1000, 0.1]
type = Posset
trigger1 = Pos Y != 0
trigger1 = time = 0
Y = 0

[State 0, Helper]
type = Helper
trigger1 = time = 20
helpertype = normal
stateno = 1002
pos = 400,-92
postype = p1    ;p2,front,back,left,right
facing = -1

[State 1000, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;-----------------------

[Statedef 1002]
type    = S
movetype= A
physics = N
juggle  = 2
velset = 9,0
anim = 1004
sprpriority = 2

[State 1100]
type = VarRandom
trigger1 = 1
v = 11
range = 0,5

[State 1100]
type = VarRandom
trigger1 = 1
v = 12
range = 0,10

[State 1100]
type = VarRandom
trigger1 = 1
v = 13
range = 498,499

[State 1100]
type = Explod
trigger1 = anim = 1004
anim = var(13)
pos = 0+var(11),0+var(11)
postype = p1
facing = 1
sprpriority = 1

[State 1601, Hit]
type = HitDef
trigger1 = time = 0;!movecontact
attr = S, NA
damage    = 190, 99
animtype = Light
air.animtype = Back
guardflag = H
sparkno = s1610
guard.sparkno = s1610
sparkxy = 0,0
postype = p2
hitsound   = S4,11
guardsound = S4,11
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -15,0
air.velocity = -4,-5
air.fall = 1
fall.recover = 0
air.juggle = 3
yaccel = .45
p2stateno = 21245
envshake.time = 13
envshake.freq = 50
envshake.ampl = 5
palfx.time = 20
palfx.add = 0,75,150
palfx.sinadd = 0,65,140, 5
kill       = root, Var(9) = 0
fall.kill  = root, Var(9) = 0
guard.kill = root, Var(9) = 0

[State 0, Helper]
type = Helper
trigger1 = Movecontact = 1
stateno = 1401
pos = 0,0

[State 10000, rakieta]
type = destroyself
trigger1 = movecontact
trigger2 = FrontEdgeDist < -100
;---------------------------------------------------------------------------
;ELECTRIC
[Statedef 1600]
type    = S
movetype= A
physics = S
juggle  = 4
velset = 0,0
anim = 1000
sprpriority = 3
ctrl = 0

[State 10000, open]
type = PlaySnd
trigger1 = AnimElem = 2 
value = 4, 6

[State 10000, rakieta]
type = PlaySnd
trigger1 = AnimElem = 4 
value = 4, 4

[State 1600, misil Helper]
type = Helper
trigger1 = time = 14
trigger1 = numhelper(1601) < 2
trigger1 = p2stateno != 9010
trigger1 = p2life > 10
stateno = 1601
name = "misilteled"
id = 1601
postype = p1
pos = 20,-95
helpertype = normal
sprpriority = 3
keyctrl = 0
ownpal = 0
under = 1

; vuelve a normalidad
[State 1600, standing state]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;helper de misil
[Statedef 1601]
type = S
movetype = A
physics = N
anim = 1002
velset = 0,0
ctrl = 0
sprpriority = 2

[State 1601, mira Helper]
type = Helper
trigger1 = AnimElem = 1
trigger1 = numhelper(1610) = 0
trigger1 = p2stateno != 9010
trigger1 = p2life > 10
stateno = 1610
name = "mira"
id = 1610
postype = p2
pos = 20,-65
helpertype = normal
sprpriority = 3
keyctrl = 0
ownpal = 0
under = 1

[State 1601, vel]
type = VelSet
trigger1 = AnimElem = 6;time = 30
trigger2 = AnimElem = 9;time = 45
x = 1.5;1

[State 1601, vel]
type = VelSet
trigger1 = AnimElem = 2;time = 10
trigger2 = AnimElem = 8;time = 40
x = 3;2

[State 1601, vel]
type = VelSet
trigger1 = AnimElem = 18;time = 115
x = 6;4

[State 1601, vel]
type = VelSet
trigger1 = AnimElem = 18;time = 115
y = 0

[State 1601, vel]
type = VelSet
trigger1 = AnimElem = 10;time = 65
y = -2;-1

[State 1601, vel]
type = VelSet
trigger1 = AnimElem = 3;time = 15
trigger2 = AnimElem = 12;time = 75
y = 4;3

[State 1601, vel]
type = VelSet
trigger1 = AnimElem = 7;time = 35
y = -6;-5

;[State 1601, 1]
;type = PosAdd
;trigger1 = timemod = 10,0
;trigger1 = time = [125, 200]
;Y = -1

;[State 1601, 1.1]
;type = Posadd
;trigger1 = timemod = 10,4
;trigger1 = time = [125, 200]
;Y = 1

[State 1601, Hit]
type = HitDef
trigger1 = p2life > 10
trigger1 = time = 0
trigger1 = p2stateno != 9010
attr = S, SP
damage    = 140, 23
animtype = Light
air.animtype = Back
air.fall = 1
fall.recover = 0


guardflag = HL
pausetime = 0,2
sparkno = -1
guard.sparkno = -1
hitsound   = S4,18
guardsound = S4,18
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -15,0
air.velocity = -3,-4
air.fall = 1
fall.recover = 0


air.juggle = 3
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

;chau helper cohete
[State 1601, destroyself]
type = DestroySelf
trigger1 = Time = 100
trigger2 = MoveGuarded = 1
trigger3 = MoveContact = 1

;Mira seguidora ;)
[Statedef 1610]
type = S
physics = N
movetype = I
juggle  = 1     
velset = 0,0
ctrl = 0  
anim = 1610

[State 1610, 2]
type = SprPriority
trigger1 = Time >= 0
value = 21

;sigue ke te sigue
[State 1610, 1]
type = PosAdd
trigger1 = P2Dist X > -20
x = 6

[State 1610, 1]
type = PosAdd
trigger1 = P2Dist X < -20
x = -6

[State 1610, 1]
type = PosAdd
trigger1 = P2Dist Y > 70
y = 6

[State 1610, 1]
type = PosAdd
trigger1 = P2Dist Y < 70
y = -6

;desaparece el helper de la mira
[State 1610, destroyself]
type = DestroySelf
trigger1 = numhelper(1601) = 0

;-------------------------------------------------------
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
pos = 150*const(size.xscale),165*const(size.xscale)
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
; TTTTTTT
[StateDef 10000]
type    = A
movetype= A
physics = N
juggle  = 2
ctrl = 0
velset = 0,0,0
anim = 1016


[State 431, 3.2]
type = VarRandom
trigger1 = Time = 5
v = 11
range = 1, 60

[State 431, 3.5]
type = Playsnd
trigger1 = Var(11) = [1, 20]
trigger1 = time = 5
value = 4, 3
volume = 50

[State 431, 3.6]
type = Playsnd
trigger1 = Var(11) = [21, 40]
trigger1 = time = 5
value = 2, 0
volume = 50

[State 431, 3.7]
type = Playsnd
trigger1 = Var(11) = [41, 60]
trigger1 = time = 5
value = 2, 1
volume = 10

[State 1000, Accell]
type = VelAdd
trigger1 = Time < 6
x = 2

[State 1000, 10]
type = HitDef
trigger1 = AnimElem = 3
trigger1 = p2stateno != 5120
attr = S, SA
animtype  = back
damage    = 298, 149
guardflag = MA
hitflag = MAF
pausetime = 0,2
sparkno = -1
guard.sparkno = -1
hitsound   = 5,1
guardsound = 5,14
ground.type = High
ground.slidetime = 0
ground.hittime  = 0
ground.velocity = 0
air.velocity = -0.3,-4.2
air.hittime = 17  
p1stateno = 10100
p2stateno = 10300
yaccel = 0.5
fall = 1
fall.recover = 0
kill       = Var(9) = 0
fall.kill  = Var(9) = 0
guard.kill = Var(9) = 0

[State 1000, BounceOff]
type = ChangeState
trigger1 = MoveGuarded = 1
ctrl = 0
value = 10018

[State 1000, SlidToAHalt]
type = ChangeState
trigger1 = time > 50
trigger2 = P2Dist X <= -20
ctrl = 0
value = 10020

[State 1000, OverShoot]
type = ChangeState
trigger1 = FrontEdgeDist <= 20
ctrl = 0
value = 10030

;--------------------------------------------
; Torpedo Bounce
[StateDef 10010]
type    = A
movetype= I
physics = A
ctrl = 0
velset = -2,-8
anim = 1046

[State 1001, 10]
type = VelAdd
trigger1 = Time = [0, 7]
x = -0.2

[State 1001, 10]
type = PosAdd
trigger1 = Time = 0
y = -45

; Torpedo Bounce
[StateDef 10018]
type    = A
movetype= I
physics = A
ctrl = 0
velset = 0,-8
anim = 1046

[State 1001, 10]
type = VelAdd
trigger1 = Time = [0, 7]
x = -0.1

[State 1001, 10]
type = PosAdd
trigger1 = Time = 0
y = -45


;--------------------------------------------
; 
[StateDef 10020]
type    = S
movetype= I
physics = S
ctrl = 0
anim = 1045

[State 1001, 10]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0

;--------------------------------------------
[StateDef 10030]
type    = A
movetype= A
physics = N
juggle  = 2
ctrl = 0

[State 1000, 10]
type = HitDef
trigger1 = Time <= 5
trigger1 = p2stateno != 5120
attr = S, SA
animtype  = back
damage    = 298, 149
guardflag = MA
hitflag = HAF
pausetime = 0,2
sparkno = -1
guard.sparkno = -1
hitsound   = 5,1
guardsound = 4,14
ground.type = High
ground.slidetime = 0
ground.hittime  = 0
ground.velocity = 0
air.velocity = -0.3,-4.2
air.hittime = 17  
p1stateno = 10100
p2stateno = 10300
fall = 1
fall.recover = 0
kill       = Var(9) = 0
fall.kill  = Var(9) = 0
guard.kill = Var(9) = 0

[State 1001, 10]
type = ChangeState
trigger1 = Time = 10
ctrl = 0
value = 10020

;----------------------------------------------
; I hitum now fly.
[StateDef 10100]
type    = A
movetype= A
physics = N
juggle  = 2
ctrl = 0
anim = 1050

[State 1010, setSpeed]
Type = VelSet
trigger1 = Time = 0
trigger1 = Vel X < 12
X = 12

[State 1010, TurnToMe]
Type = TargetFacing
trigger1 = Time = 0
value = -1

[State 1010, StickToHands]
Type = TargetBind
trigger1 = Time >= 0
pos = 16*const(size.xscale), -67*const(size.xscale)

[State 1010, StopEarly]
Type = ScreenBound
trigger1 = Time >= 40
value = 0
;movecamera = 0, 0

[State 1010, BangHitWall]
type = PlaySnd
trigger1 = FrontEdgeDist <= 20
value = 9, 2

[State 1010, YouBounce]
type = ChangeState
trigger1 = FrontEdgeDist <= 20
value = 10110
ctrl = 0

;----------------------------------------------
; I hitum now fly.
[StateDef 10110]
type    = A
movetype= A
physics = N
juggle  = 2
ctrl = 0
velset = 0,0
anim = 1050

[State 1010, HimHitWall]
type = TargetState
trigger1 = Time = 5
value = 10310
ctrl = 0

[State 1010, YouBounce]
type = ChangeState
trigger1 = Time = 5
value = 10010
ctrl = 0

;----------------------------------------------
;----------------------------------------------
; I hitum now he fly.
[StateDef 10300]
type    = A
movetype= H
physics = N
juggle  = 2
ctrl = 0

[State 1030, OW]
type = ChangeAnim2
trigger1 = time = 0
value = 1056

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
[StateDef 10310]
type    = A
movetype= H
physics = N
juggle  = 2
velset = 0,0,0
ctrl = 0

[State 1031, Gravity]
type = VelAdd
Trigger1 = 1
y = .2

[State 1031, Falling]
type = ChangeAnim2
trigger1 = time = 0
value = 1031

[State 1031, HitGround]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100 ;Hit ground

;--------------------------------------------
; Air 
[StateDef 1100]
type    = A
movetype= A
physics = N
juggle  = 2
ctrl = 0
velset = 0,0,0
anim = 1016


[State 431, 3.2]
type = VarRandom
trigger1 = Time = 5
v = 11
range = 1, 60

[State 431, 3.5]
type = Playsnd
trigger1 = Var(11) = [1, 20]
trigger1 = time = 5
value = 4, 3
volume = 50

[State 431, 3.6]
type = Playsnd
trigger1 = Var(11) = [21, 40]
trigger1 = time = 5
value = 2, 0
volume = 50

[State 431, 3.7]
type = Playsnd
trigger1 = Var(11) = [41, 60]
trigger1 = time = 5
value = 2, 1
volume = 10

[State 1000, Accell]
type = VelAdd
trigger1 = Time < 6
x = 2

[State 1000, 10]
type = HitDef
trigger1 = AnimElem = 3
trigger1 = p2stateno != 5120
attr = S, SA
animtype  = back
damage    = 298, 149
guardflag = MA
hitflag = MAF
pausetime = 0,2
sparkno = -1
guard.sparkno = -1
hitsound   = 5,1
guardsound = 5,14
ground.type = High
ground.slidetime = 0
ground.hittime  = 0
ground.velocity = 0
air.velocity = -0.3,-4.2
air.hittime = 17  
p1stateno = 10100
p2stateno = 10300
fall = 1
fall.recover = 0
kill       = Var(9) = 0
fall.kill  = Var(9) = 0
guard.kill = Var(9) = 0

[State 1000, BounceOff]
type = ChangeState
trigger1 = MoveGuarded = 1
ctrl = 0
value = 10018

;[State 1000, SlidToAHalt]
;type = ChangeState
;trigger1 = time > 50
;trigger2 = P2Dist X <= -20
;ctrl = 0
;value = 10021

[State 1000, OverShoot]
type = ChangeState
trigger1 = FrontEdgeDist <= 20
ctrl = 0
value = 10030

;--------------------------------------------
; Torpedo Bounce
[StateDef 10010]
type    = A
movetype= I
physics = A
ctrl = 0
velset = -2,-8
anim = 1001

[State 1001, 10]
type = VelAdd
trigger1 = Time = [0, 7]
x = -0.2

[State 1001, 10]
type = PosAdd
trigger1 = Time = 0
y = -45

;--------------------------------------------
; 
[StateDef 10021]
type    = S
movetype= I
physics = S
ctrl = 0
anim = 10455

[State 1102, 10]
type = VelAdd
trigger1 = (Time < 6) && (Vel X > 0)
x = -2

[State 1102, 10]
type = PosAdd
trigger1 = AnimElem = 2
trigger2 = AnimElem = 3
y = 33


[State 1001, 10]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0

;--------------------------------------------
[StateDef 10030]
type    = A
movetype= A
physics = N
juggle  = 2
ctrl = 0

[State 1000, 10]
type = HitDef
trigger1 = Time <= 5
trigger1 = p2stateno != 5120
attr = S, SA
animtype  = back
damage    = 298, 149
guardflag = MA
hitflag = HAF
pausetime = 0,2
sparkno = -1
guard.sparkno = -1
hitsound   = 5,1
guardsound = 4,14
ground.type = High
ground.slidetime = 0
ground.hittime  = 0
ground.velocity = 0
air.velocity = -0.3,-4.2
air.hittime = 17  
p1stateno = 10100
p2stateno = 10300
fall = 1
fall.recover = 0
kill       = Var(9) = 0
fall.kill  = Var(9) = 0
guard.kill = Var(9) = 0

[State 1001, 10]
type = ChangeState
trigger1 = Time = 10
ctrl = 0
value = 10020

;----------------------------------------------
; I hitum now fly.
[StateDef 10100]
type    = A
movetype= A
physics = N
juggle  = 2
ctrl = 0
anim = 1050

[State 1010, setSpeed]
Type = VelSet
trigger1 = Time = 0
trigger1 = Vel X < 12
X = 12

[State 1010, TurnToMe]
Type = TargetFacing
trigger1 = Time = 0
value = -1

[State 1010, StickToHands]
Type = TargetBind
trigger1 = Time >= 0
pos = 16*const(size.xscale), -67*const(size.xscale)

[State 1010, StopEarly]
Type = ScreenBound
trigger1 = Time >= 40
value = 0
;movecamera = 0, 0

[State 1010, BangHitWall]
type = PlaySnd
trigger1 = FrontEdgeDist <= 20
value = 9, 2

[State 1010, YouBounce]
type = ChangeState
trigger1 = FrontEdgeDist <= 20
value = 10110
ctrl = 0

;----------------------------------------------
; I hitum now fly.
[StateDef 10110]
type    = A
movetype= A
physics = N
juggle  = 2
ctrl = 0
velset = 0,0
anim = 1050

[State 1010, HimHitWall]
type = TargetState
trigger1 = Time = 5
value = 10310
ctrl = 0

[State 1010, YouBounce]
type = ChangeState
trigger1 = Time = 5
value = 10010
ctrl = 0

;----------------------------------------------
;----------------------------------------------
; I hitum now he fly.
[StateDef 10300]
type    = A
movetype= H
physics = N
juggle  = 2
ctrl = 0

[State 1030, OW]
type = ChangeAnim2
trigger1 = time = 0
value = 1056

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
[StateDef 10310]
type    = A
movetype= H
physics = N
juggle  = 2
velset = 0,0,0
ctrl = 0

[State 1031, Gravity]
type = VelAdd
Trigger1 = 1
y = .2

[State 1031, Falling]
type = ChangeAnim2
trigger1 = time = 0
value = 1031

[State 1031, HitGround]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100 ;Hit ground

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