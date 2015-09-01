;----------------------------------------------------------------------------
;**********SCORPION'S DUCKING SPEAR**********
;HARPOON
[Statedef 8000]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 110
velset = 0,0
anim = 8000
ctrl = 0

[State 8000, PUNCH]
type = Varset
trigger1 = Var(19) != 1
V = 19
value = 1

[State 8000, 1]
type = Posset
trigger1 = Pos Y != 0
trigger1 = time = 0
Y = 0

[State 8000, 2]
type = Helper
trigger1 = animelem = 4
stateno = 8002
name = "Harpoon"
id = 8001
postype = p1
pos = 65, -58
helpertype = normal
sprpriority = -1
keyctrl = 0
ownpal = 1
under = 1

[State 8000, 3]
type = ChangeState
triggerall = Time >= 100
trigger1 = p2stateno != 8006
trigger1 = p2stateno != 8007
value = 0
ctrl = 1

[State 8000, 4]
type = Changestate
trigger1 = p2stateno = 8006
trigger1 = time = 85
trigger2 = p2stateno = 8007
value = 8001

;---------------------------------------------------------------------------
;PULL EM IN
[Statedef 8001]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 8002
ctrl = 0

[State 8001, 1]
type = VarRandom
trigger1 = time = 0
v = 11
range = 0, 100

[State 8001, 2]
type = Playsnd
trigger1 = Var(11) = [0, 49]
trigger1 = time = 1
value = 4000, 6

[State 8001, 3]
type = Playsnd
trigger1 = Var(11) = [50, 100]
trigger1 = time = 1
value = 4000, 7

[State 8001, 4]
type = ChangeState
trigger1 = p2stateno = 8007
trigger1 = time > 12
value = 0
ctrl = 1

[State 8001, 5]
type = Changestate
trigger1 = time > 50
value = 0
ctrl = 1
;---------------------------------------------------------------------------
;HARPOON ITSELF
[Statedef 8002]
type    = S
movetype= A
physics = N
juggle  = 4
velset = 5,0
anim = 1542
ctrl = 0

[State 8002, 1]
type = Playsnd
trigger1 = time = 0
value = 4000, 8

[State 8002, 2-1]
type = Helper
trigger1 = time = 0
stateno = 8003
name = "Rope"
pos = -22, 0
helpertype = normal
sprpriority = -2
keyctrl = 0
ownpal = 0
under = 1

[State 8002, 2-2]
type = Helper
trigger1 = time = 0
stateno = 8003
name = "Rope"
pos = -34, 0
helpertype = normal
sprpriority = -2
keyctrl = 0
ownpal = 0
under = 1

[State 8002, 3]
type = Helper
trigger1 = timemod = 4,0
trigger1 = time = [0, 60]
trigger1 = Pos X > -190
trigger1 = Pos X < 190
stateno = 8003
name = "Rope"
pos = 0, 0
helpertype = normal
sprpriority = -2
keyctrl = 0
ownpal = 0
under = 1

[State 8002, 4-1]
type = HitDef
trigger1 = time > 0
;trigger1 = p2stateno != 9010
attr = S, HA
damage    = 50,5
;Nothing = 0
priority  = 6
guardflag = L
sparkxy = -5, 0
hitsound   = S5,13
guardsound = 6,0
kill = 0
guard.slidetime = 20              ;Values for guarded attack (def: ground.slidetime)
guard.ctrltime = 10               ;Time to regain control after guard (def: guard.slidetime)
p1stateno = 8008
p2stateno = 8006
kill = (root, Var(9) = 0)
fall.kill  = (root, Var(9) = 0)
guard.kill = (root, Var(9) = 0)

[State 8002, 4-2]
type = HitDef
triggerall = time > 0
;trigger1 = p2stateno = 9010
trigger1 = root,Var(7) >= 2
attr = S, HA
damage    = 150,75
;Nothing = 0
priority  = 6
guardflag = L
sparkxy = -5, 0
hitsound   = S5,13
guardsound = 6,0
guard.slidetime = 20              ;Values for guarded attack (def: ground.slidetime)
guard.ctrltime = 10               ;Time to regain control after guard (def: guard.slidetime)

[State 8002, 5]
type = Changestate
trigger1 = MoveGuarded = 1
trigger2 = MoveContact != 0
trigger2 = root,Var(7) >= 2
value = 8005

;Attach a Spinng Spear Head...
[State 8002, 6]
type = Explod
trigger1 = time = 0
anim = 8021
id = 8021
name = "Spear Head"
postype = p1
pos = 0,0
helpertype = normal
sprpriority = 3
keyctrl = 0
ownpal = 0
removetime = 128
bindtime = 256

[State 8002, 7]
type = destroyself
trigger1 = time = 128

;---------------------------------------------------------------------------
;The Rope Animating the hidden Rope
[Statedef 8003]
type    = S
movetype= I
physics = N
anim = 1015
ctrl = 0

[State 8003, 1]
type = Changestate
trigger1 = p2stateno = 8006
value = 8004

[State 8003, 2]
type = Destroyself
trigger1 = root, stateno != [8000, 8001]
trigger2 = parent, stateno != [8000,8009]

;------------------------------------------------------------------------
;The Rope Becomes visible
[Statedef 8004]
type    = S
movetype= I
physics = N
anim = 1546
ctrl = 0

[State 8004, 1]
type = Destroyself
trigger1 = p2stateno = 8007
trigger2 = Parentdist X = [-10, 10]
trigger2 = Parent, Vel X = -8
trigger3 = parent, stateno != [8000,8009]

;------------------------------------------------------------------------
;MAKING THE HARPOON LESS CHEAP, IF HARPOON BLOCKED
[Statedef 8005]
type    = S
movetype= I
physics = N
anim = 1013
Velset = 0,0
ctrl = 0

[State 8005, 1]
type = RemoveExplod
trigger1 = animtime = 0
id = 8021

[State 8005, 2]
type = Destroyself
trigger1 = animtime = 0
trigger2 = parent, stateno != [8000,8009]

;---------------------------------------------------------------------------
;PLAYER 2 is HIT BY HARPOON
[Statedef 8006]
type    = S
movetype= H
physics = N
ctrl = 0

[State 8006, 1]
type = Changeanim2
trigger1 = time = 0
value = 8001

[State 8006, 2]
type = PlayerPush
trigger1 = time >= 0
value = 0

[State 8006, 3]
type = PosAdd
trigger1 = timemod = 10,0
trigger1 = time = [0, 50]
X = -1

[State 8006, 4]
type = Posadd
trigger1 = timemod = 10,4
trigger1 = time = [0, 50]
X = 1

[State 8006, 5]
type = Changestate
trigger1 = P2dist X = [-60, 60]
value = 8007

[State 8006, 6]
type = Selfstate
trigger1 = time = 400
value = 0
ctrl = 1

[State 8006, 7]
type = ChangeState
trigger1 = p2stateno != [8000,8009]
trigger1 = p2name = "ScorpionMO"
value = 1503

;-------------------------------------------------------------------------------
;PLAYER 2 is Stun by duck harpoon
[Statedef 8007]
type    = S
movetype= I
physics = N
velset = 0,0
ctrl = 0

[State 8007, 1]
type = Changeanim
trigger1 = animexist(5300)
trigger1 = anim != 5300
value = 5300

[State 8007, 2]
type = Changeanim2
trigger1 = !animexist(5300)
trigger1 = anim != 9010
value = 9010

[State 8007, 3]
type = PosSet
trigger1 = time = 0
Y = 0

[State 8007, 4]
type = Selfstate
trigger1 = time = 37
trigger1 = life > 0
value = 0
ctrl = 1

[State 8007, 5]
type = ChangeState
trigger1 = time = 37
trigger1 = life <= 0
value = 1503

;--------------------------------------------------------------------------
;Harpoon latching onto target
[Statedef 8008]
type    = S
movetype= A
physics = N
juggle  = 1
anim = 1549
Velset = 0, 0
ctrl = 0

[State 8008, 1]
type = targetbind
trigger1 = p2stateno = 8006
pos = 0,60 ;76

;[State 2008, 2]
;type = Helper
;trigger1 = time = 0
;stateno = 6030
;name = "HARPOON BLOOD"
;pos = 10,0
;helpertype = normal
;sprpriority = 2
;keyctrl = 1
;ownpal = 1
;under = 1

[State 8008, 3]
type = Velset
trigger1 = time = 50
X = -8

[State 8008, 4]
type = Velset
trigger1 = ParentDist X = [-60, 60]
X = 0

[State 8008, 5]
type = Destroyself
trigger1 = p2stateno != 8006
trigger2 = parent, stateno != [8000,8009]

[State 8008, 6]
type = RemoveExplod
trigger1 = time >= 0
id = 8021

;----------------------------------------
; Diagonal Snakes Spear!!!
[Statedef 2300]
type    = S
movetype= A
physics = S
juggle  = 0
poweradd= 110
velset = 0,0
anim = 2300
ctrl = 0

[State 1000, 0.1]
type = Posset
trigger1 = Pos Y != 0
trigger1 = time = 0
Y = 0

[State 1000, 1]
type = Helper
trigger1 = animelem = 3
stateno = 2310
name = "spear"
postype = p1
pos = 50, -121
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
triggerall = Time >= 100
trigger1 = p2stateno != 2320
trigger1 = p2stateno != 2321
value = 0
ctrl = 1

[State 1000, 8]
type = Changestate
trigger1 = p2stateno = 2320
value = 2301
;---------------------------------------------------------------------------
;PULL EM IN
[Statedef 2301]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 2305
ctrl = 0

[State 200, Play]
type = PlaySnd
trigger1 = animelem = 1
value = 4, 16
volume = 50

[State 1001, 7]
type = ChangeState
trigger1 = p2stateno = 2321
trigger1 = time > 12
value = 0
ctrl = 1

[State 1030, 1.54]
type = Destroyself
trigger1 = time = 150


[State 1001, 8]
type = Changestate
trigger1 = p2bodydist X <= 3
value = 0
ctrl = 1
;---------------------------------------------------------------------------

[Statedef 2310]
type    = S
movetype= A
physics = N
juggle = 13
velset = 6,-3
anim = 2301
ctrl = 0

[State 1010, 1]
type = Playsnd
trigger1 = animelem = 1
value = 4,12

[State 1010, 1.2]
type = Helper
trigger1 = time = 0
stateno = 2311
name = "Rope"
pos = 0, 0
helpertype = normal
sprpriority = -2
keyctrl = 0
ownpal = 0
under = 1

[State 1010, 1.55]
type = Helper
trigger1 = timemod = 4,0
trigger1 = Pos X > -190
trigger1 = Pos X < 190
stateno = 2311
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
trigger1 = p2stateno != 9010
attr = SA, SP
damage    = 10,2
p2facing = 1
priority  = 6
hitflag = MAF
guardflag = M
forcestand = 1
sparkno = 1
sparkxy = 30, 20
hitsound   = S88,0
guardsound = 14,5
animtype = Light
kill = 0
Fall = 0
Air.fall = 0
fall.recover = 0
guard.slidetime = 5
guard.ctrltime = 20
snap = 0,0
p1stateno = 2330
p2stateno = 2320

[State 1010, 4]
type = Changestate
trigger1 = MoveGuarded = 1
value = 2313

[State 1030, 1.54]
type = Destroyself
trigger1 = time = 150

;---------------------------------------------------------------------------
;The hidden Rope
[Statedef 2311]
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
trigger1 = p2stateno = 2320
value = 2312

[State 1011, 2]
type = Destroyself
trigger1 = root, stateno != [2300, 2301]
;------------------------------------------------------------------------
;The Rope Becomes visible
[Statedef 2312]
type    = S
movetype= I
physics = N
anim = 2303
ctrl = 0

;[State 1030, 1]
;type = PosAdd
;trigger1 = timemod = 5,0
;trigger1 = time = [0, 50]
;Y = 1

;[State 1030, 1.1]
;type = Posadd
;trigger1 = timemod = 5,4
;trigger1 = time = [0, 50]
;Y = -1

[State 1030, 1.54]
type = Destroyself
trigger1 = time = 150


[State 1011, 1]
type = Destroyself
trigger1 = p2stateno = 2321
trigger2 = Parentdist X = [-10, 10]
trigger2 = Parentdist Y = [-15, 5]
trigger2 = Parent, Vel X = -10
trigger2 = Parent, Vel Y = 5
;------------------------------------------------------------------------
; WBJ's Less cheap thingy
[Statedef 2313]
type    = S
movetype= I
physics = N
anim = 2313
Velset = 0,0
ctrl = 0
sprpriority = -1

[State 1030, 1234]
type = PosSet
trigger1 = Animelem = 1
Y = -39

[State 1013, 1]
type = Destroyself
trigger1 = animtime = 0
;---------------------------------------------------------------------------
; P2's hit by spear state
[Statedef 2320]
type    = A
movetype= H
physics = S
ctrl = 0
Velset = 0,0,0

[State 1030, 1.54]
type = Destroyself
trigger1 = time = 150

;[State 1020, sound]
;type = Playsnd
;trigger1 = time = 0
;value = 88,0

[State 1020, .5]
type = Changeanim2
trigger1 = time = 0
value = 2302

[State 1020, .75]
type = PlayerPush
trigger1 = time >= 0
value = 0

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

[State 1020, 1.123]
type = Posadd
trigger1 = time = 1
Y = 0

[State 1020, 1.123]
type = PosSET
trigger1 = time = 1
Y = 0

[State 1020, 2]
type = Changestate
trigger1 = P2dist X = [30, 40]
value = 2321

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
[Statedef 2321]
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

[State 1021, 1]
type = Changeanim2
trigger1 = !animexist(5300)
trigger1 = anim != 9010
trigger1 = time = 0
value = 9010

;[State 1021, 1234]
;type = ChangeState
;trigger1 = p2statetype = A
;trigger1 = time = 1
;value = 0
;ctrl = 1

[State 1021, 3]
type = Selfstate
trigger1 = time = 70
trigger2 = p2statetype = A
value = 0
ctrl = 1

;--------------------------------------------------------------------------
;Spear latching onto target
[Statedef 2330]
type    = S
movetype= A
physics = N
juggle  = 4
anim = 2304
Velset = 0, 0
ctrl = 0

[State 1030, 1]
type = targetbind
trigger1 = p2stateno = 2320
pos = 45,75

;[State 1030, 1]
;type = PosAdd
;trigger1 = timemod = 10,0
;trigger1 = time = [0, 50]
;Y = -.5

;[State 1030, 1.1]
;type = Posadd
;trigger1 = timemod = 10,4
;trigger1 = time = [0, 50]
;Y = .5

[State 1030, 1.01]
type = Velset
trigger1 = time = 0
X = -10
Y = 5

[State 1030, 1.4]
type = Changeanim
trigger1 = p2stateno = 2321
trigger1 = anim != 1015
value = 1015


[State 1030, 1.5]
type = Destroyself
trigger1 = p2stateno != 2321
trigger2 = p2stateno = 5000
trigger3 = p2stateno = 5030
trigger4 = p2stateno = 0
trigger5 = time = 200
trigger1 = anim = 1015
trigger1 = Parent, stateno != [1000, 1030]

;**********SMOKE'S SPEAR****************************************************
;HARPOON
[Statedef 1540]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 110
velset = 0,0
anim = 1540
ctrl = 0

[State 1540, PUNCH]
type = Varset
trigger1 = Var(19) != 1
V = 19
value = 1

[State 1540, 1]
type = Posset
trigger1 = Pos Y != 0
trigger1 = time = 0
Y = 0

[State 1540, 2-1]
type = Helper
trigger1 = animelem = 4
trigger1 = palno >= 7
stateno = 1542
name = "Harpoon"
id = 1541
postype = p1
pos = 65, -82
helpertype = normal
sprpriority = -1
keyctrl = 0
ownpal = 1
under = 1

[State 1540, 2-2]
type = Helper
trigger1 = animelem = 4
trigger1 = palno <= 6
stateno = 1542
name = "Trident"
id = 1542
postype = p1
pos = 65, -82
helpertype = normal
sprpriority = -1
keyctrl = 0
ownpal = 1
under = 1

[State 1540, 3]
type = ChangeState
triggerall = Time >= 100
trigger1 = p2stateno != 1546
trigger1 = p2stateno != 1547
value = 0
ctrl = 1

[State 1540, 4]
type = Changestate
trigger1 = p2stateno = 1546
trigger1 = time = 85
trigger2 = p2stateno = 1547
value = 1541

;---------------------------------------------------------------------------
;PULL EM IN
[Statedef 1541]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 1548
ctrl = 0

[State 1541, 1]
type = VarRandom
trigger1 = time = 0
v = 11
range = 0, 100

[State 1541, 2]
type = Playsnd
trigger1 = Var(11) = [0, 49]
trigger1 = palno != 6
trigger1 = time = 1
value = 4000, 6

[State 1541, 3]
type = Playsnd
trigger1 = Var(11) = [50, 100]
trigger1 = palno != 6
trigger1 = time = 1
value = 4000, 7

[State 1541, 4]
type = ChangeState
trigger1 = p2stateno = 1547
trigger1 = time > 12
value = 0
ctrl = 1

[State 1541, 5]
type = Changestate
trigger1 = time > 50
value = 0
ctrl = 1
;---------------------------------------------------------------------------
;HARPOON ITSELF
[Statedef 1542]
type    = S
movetype= A
physics = N
juggle  = 4
velset = 5,0
anim = 1542
ctrl = 0

[State 1542,Trident]
type = ChangeAnim
trigger1 = IsHelper(1542)
trigger1 = time = 0
value = 11542

[State 1542, 1]
type = Playsnd
trigger1 = time = 0
value = 4000, 8

[State 1542, 2-1]
type = Helper
trigger1 = time = 0
stateno = 1543
name = "Rope"
pos = -22, 0
helpertype = normal
sprpriority = -2
keyctrl = 0
ownpal = 0
under = 1

[State 1542, 2-2]
type = Helper
trigger1 = time = 0
stateno = 1543
name = "Rope"
pos = -34, 0
helpertype = normal
sprpriority = -2
keyctrl = 0
ownpal = 0
under = 1

[State 1542, 3]
type = Helper
trigger1 = timemod = 4,0
trigger1 = time = [0, 60]
trigger1 = Pos X > -190
trigger1 = Pos X < 190
stateno = 1543
name = "Rope"
pos = 0, 0
helpertype = normal
sprpriority = -2
keyctrl = 0
ownpal = 0
under = 1

[State 1542, 4-1]
type = HitDef
trigger1 = time > 0
attr = S, HA
damage    = 50,5
;Nothing = 0
priority  = 6
guardflag = MA
sparkxy = -5, 0
hitsound   = S5,13
guardsound = 6,0
kill = 0
guard.slidetime = 20              ;Values for guarded attack (def: ground.slidetime)
guard.ctrltime = 10               ;Time to regain control after guard (def: guard.slidetime)
p1stateno = 1548
p2stateno = 1546
kill = (root, Var(9) = 0)
fall.kill  = (root, Var(9) = 0)
guard.kill = (root, Var(9) = 0)

[State 1542, 4-2]
type = HitDef
triggerall = time > 0
trigger1 = root,Var(7) >= 2
attr = S, HA
damage = 150,75
;Nothing = 0
priority  = 6
guardflag = MA
sparkxy = -5, 0
hitsound   = S5,13
guardsound = 6,0
guard.slidetime = 20              ;Values for guarded attack (def: ground.slidetime)
guard.ctrltime = 10               ;Time to regain control after guard (def: guard.slidetime)

[State 1542, 5]
type = Changestate
trigger1 = MoveGuarded = 1
trigger2 = MoveContact = 1
trigger2 = root,Var(7) >= 2
value = 1545

[State 1542, 6]
type = destroyself
trigger1 = time = 128

;---------------------------------------------------------------------------
;The Rope Animating the hidden Rope
[Statedef 1543]
type    = S
movetype= I
physics = N
anim = 1015
ctrl = 0

[State 1543, 1]
type = Changestate
trigger1 = p2stateno = 1546
value = 1544

[State 1543, 2]
type = Destroyself
trigger1 = root, stateno != [1540, 1541]
trigger2 = parent, stateno != [1540,1549]

;------------------------------------------------------------------------
;The Rope Becomes visible
[Statedef 1544]
type    = S
movetype= I
physics = N
anim = 1546
ctrl = 0

[State 1544, 1]
type = Destroyself
trigger1 = p2stateno = 1547
trigger2 = Parentdist X = [-10, 10]
trigger2 = Parent, Vel X = -8
trigger3 = parent, stateno != [1540,1549]

;------------------------------------------------------------------------
;MAKING THE HARPOON LESS CHEAP, IF HARPOON BLOCKED
[Statedef 1545]
type    = S
movetype= I
physics = N
anim = 1013
Velset = 0,0
ctrl = 0

[State 1545,Trident]
type = ChangeAnim
trigger1 = IsHelper(1542)
trigger1 = time = 0
value = 11013

[State 1545, 1]
type = Destroyself
trigger1 = animtime = 0
trigger2 = parent, stateno != [1540,1549]

;---------------------------------------------------------------------------
;PLAYER 2 is HIT BY HARPOON
[Statedef 1546]
type    = S
movetype= H
physics = N
ctrl = 0

[State 1546, 1]
type = Changeanim2
trigger1 = time = 0
value = 1544

[State 1546, 2]
type = PlayerPush
trigger1 = time >= 0
value = 0

[State 1546, 3]
type = PosAdd
trigger1 = timemod = 10,0
trigger1 = time = [0, 50]
X = -1

[State 1546, 4]
type = Posadd
trigger1 = timemod = 10,4
trigger1 = time = [0, 50]
X = 1

[State 1546, 5]
type = Changestate
trigger1 = P2dist X = [-60, 60]
value = 1547

[State 1546, 6]
type = Selfstate
trigger1 = time = 400
value = 0
ctrl = 1

[State 1546, 7]
type = ChangeState
trigger1 = p2stateno != [1540,1549]
trigger1 = p2name = "SmokeMO"
value = 1503

;-------------------------------------------------------------------------------
;PLAYER 2 is Stun by harpoon
[Statedef 1547]
type    = S
movetype= I
physics = N
velset = 0,0
ctrl = 0

[State 1547, 1]
type = Changeanim
trigger1 = animexist(5300)
trigger1 = anim != 5300
value = 5300

[State 1547, 2]
type = Changeanim2
trigger1 = !animexist(5300)
trigger1 = anim != 9010
value = 9010

[State 1547, 3]
type = PosSet
trigger1 = time = 0
Y = 0

[State 1547, 4]
type = Selfstate
trigger1 = time = 37
trigger1 = life > 0
value = 0
ctrl = 1

[State 1547, 5]
type = ChangeState
trigger1 = time = 37
trigger1 = life <= 0
value = 1503

;--------------------------------------------------------------------------
;Harpoon latching onto target
[Statedef 1548]
type    = S
movetype= A
physics = N
juggle  = 1
anim = 1549
Velset = 0, 0
ctrl = 0

[State 1549,Trident]
type = ChangeAnim
trigger1 = IsHelper(1542)
trigger1 = time = 0
value = 11549

[State 1548, 1]
type = targetbind
trigger1 = p2stateno = 1546
pos = 0,76

;[State 1548, 2]
;type = Helper
;trigger1 = time = 0
;stateno = 6030
;name = "HARPOON BLOOD"
;pos = 10,0
;helpertype = normal
;sprpriority = 2
;keyctrl = 1
;ownpal = 1
;under = 1

[State 1548, 3]
type = Velset
trigger1 = time = 50
X = -8

[State 1548, 4]
type = Velset
trigger1 = ParentDist X = [-60, 60]
X = 0

[State 1548, 5]
type = Destroyself
trigger1 = p2stateno != 1546
trigger2 = parent, stateno != [1540,1549]


;************NOOB'S GHOST FIREBALL**(Soul)************
[StateDef 1504]
type    = S
movetype= A
physics = S
juggle  = 2
ctrl = 0
velset = 0,0,0
poweradd = 120
anim = 1502

[State 1504, 1]
type = PlaySnd
trigger1 = AnimElem = 3
value = 4000,3
;volume = 100

; The Ghost Fireball
[State 1504, 2]
type = Helper
trigger1 = AnimElem = 3
stateno = 1505
name = "Ghost Ball"
id = 1505
pos = 26, -65
postype = P1
helpertype = normal
sprpriority = -1
keyctrl = 1
ownpal = 1
under = 1

[State 1504, 3]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0

;GHOST FIREBALL
[StateDef 1505]
type    = S
movetype= A
physics = N
juggle  = 7
ctrl = 0
velset = 3,0,0
poweradd = 0
anim = 1504

[State 1505, 1]
type = Hitdef
trigger1 = time >= 0
attr = S, SP
damage = 75,20
getpower = 120,60
givepower = 120,60
animtype = Hard
air.animtype = Back
air.fall = 1
hitflag = MAF
guardflag = MA
pausetime = 0,0
sparkno = -1
sparkxy = 0,0
guard.sparkno = -1
hitsound   = S4000,12
guardsound = 6,0
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -6
air.velocity = -2.5,-5
air.juggle = 3
envshake.time = 42
fall.envshake.time = 40
palfx.time = 300
palfx.add = 0,0,0
palfx.mul = 255,255,255
palfx.sinadd = 255,255,255, 3
kill = (root, Var(9) = 0)
fall.kill  = (root, Var(9) = 0)
guard.kill = (root, Var(9) = 0)

;[State 1505, 2]
;type = VarSet
;v = 5
;value = 300
;trigger1 = MoveHit = 1

[State 1505, 2]
type = Explod
trigger1 = MoveHit = 1
anim = 1505
id = 1505
name = "GhostArua"
postype = p2
pos = 0,-63
helpertype = normal
sprpriority = 7
keyctrl = 1
ownpal = 1
bindtime = 666
ontop = 1

[State 1505, 3]
type = Helper
trigger1 = movehit = 1
trigger1 = numHelper(1506) = 0
ID = 1506
stateno = 1506
pos = -665, -667
postype = p1

[State 1505, 4]
type = destroyself
trigger1 = time = 128
trigger2 = MoveContact = 1

;---------
[StateDef 1506]
type    = S
movetype= I
physics = N
ctrl = 0
velset = 0,0,0
anim = 1015

[State 1506, 1]
type = nothitby
trigger1 = 1
value = CSA

[State 1506, 2]
type = Destroyself
trigger1 = time >= 300

;------------------------------------------Meteor-FireBall------------------------
[Statedef 1331]
type    = S
movetype= A
physics = N
juggle  = 1
ctrl = 0
anim = 1331
sprpriority = -1

[State 1331, VelMul]
type = VelMul
trigger1 = Time = 0
x = 0
y = 0

[State 1331, VelAdd]
type = VelAdd
trigger1 = Time >= 40
y = .39

[State 1331, Pow Mot]
type = Projectile
trigger1 = AnimElem = 6
projanim =           1332
projhitanim = 1333
projpriority = 1
projshadow = -1
projhits = 1
projmisstime = 0
projheightbound = -240,-10
offset = 0,-185
velocity =         5,3.5
attr = S, SP
animtype  = Heavy
damage    = 100, 33
givepower = 100
guardflag = MA
hitflag = MAFD
pausetime = 10,10
guard.sparkno = -1
sparkno = -1
sparkxy = 0, 0
hitsound   = S100,14
guardsound = S33,1
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -10, -5
air.velocity = -10, 10
air.animtype = Back
air.juggle = 3
air.type = High
air.fall = 1
airguard.velocity = -4
guard.velocity = -4
down.velocity = -6, 0
down.hittime = 30
envshake.time = 30
envshake.ampl = -10
envshake.freq = 30
fall.recover = 0
fall.animtype = hard
fall = 1

[State 1331, PlaySnd1]
type = PlaySnd
trigger1 = AnimElem = 5
value = 33, 0
channel = 0

[State 1331, DestroySelf]
type = DestroySelf
trigger1 = AnimTime = 0
trigger2 = stateno != 1331

[State 1331, 4]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0

;************NOOB'S AIR MK4 FIREBALL**************
[Statedef 1520]
type    = A
movetype= A
physics = N
juggle = 0
ctrl = 0
anim = 1520

[State 1520, 1]
type = VelMul
trigger1 = Time = 0
x = .05
y = .02

[State 1520, 2]
type = PlaySnd
trigger1 = time = 15
value = 4000,16

[State 1520, 3]
type = Helper
trigger1 = time = 15
stateno = 1521
name = "AirMK4Fireball"
id = 1501
postype = p1
pos = 7,-62
helpertype = normal
sprpriority = 2
keyctrl = 0
ownpal = 1

[State 1520, 4]
type = VelAdd
trigger1 = Time >= 42
y = .4

[State 1520, 5]
type = ChangeState
trigger1 = Pos Y >= 5
trigger1 = Vel Y > 0
trigger1 = time >= 42
value = 52

[State 1520, 6]
type = Velset
trigger1 = Pos Y >= 5
trigger1 = Vel Y > 0
y = 0

[Statedef 1521]
type    = S
movetype= A
physics = N
juggle  = 4
velset = 0,0
anim = 1501
ctrl = 0
sprpriority = 1

[State 1521, 1]
type = AfterImage
trigger1 = Time = 0
length = 8
TimeGap  = 1
FrameGap = 1
trans = add1
time = 9999
PalBright = 0,  0,  0
PalContrast = 128,128,128
PalAdd =   0,  0,  0
PalMul =  1,1,1

[State 1521, 2-1]
type = HitDef
trigger1 = time > 0
attr = S, HA
attr = S, SP
damage = 160,60                   ;Damage that move inflicts
animtype = heavy
guardflag = MA
hitflag = MAFP
pausetime = 0,10
;hitsound   = S4000,3
;guardsound = 6,0
;sparkxy = -1
ground.type = High
ground.slidetime = 25
ground.hittime  = 25
ground.Velocity = -7
air.animtype = Back
air.Velocity = -9,-6
air.juggle = 3
fall = 1
air.fall = 1
down.Velocity = -9,-6
down.hittime = 30
down.bounce = 0
;p1stateno = 1502
kill = (root, Var(9) = 0)
fall.kill  = (root, Var(9) = 0)
guard.kill = (root, Var(9) = 0)

[State 1521, 3-1]
type = Changestate
trigger1 = MoveContact = 1
value = 1502

[State 1521, 3-2]
type = Changestate
trigger1 = Pos Y >= 0
value = 1503

[State 1521, 4]
type = VelSet
trigger1 = 1
X = 8.5
Y = 6

[State 1521, 5]
type = DestroySelf
trigger1 = time = 100

;************NOOB'S MK4 FIREBALL**************
[Statedef 1500]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 50
velset = 0,0
anim = 1500
ctrl = 0
sprpriority = 2

[State 1500,1]
type = PlaySnd
trigger1 = Time = 0
value = 4000,16

[State 1500, 2]
type = Helper
trigger1 = time = 0
stateno = 1501
name = "MK4Fireball"
id = 1501
postype = p1
pos = 36,-63
helpertype = normal
sprpriority = 2
keyctrl = 0
ownpal = 1

[State 1500,3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 1501]
type    = S
movetype= A
physics = N
juggle  = 4
velset = 0,0
anim = 1501
ctrl = 0
sprpriority = 1

[State 1501, 1]
type = AfterImage
trigger1 = Time = 0
length = 8
TimeGap  = 1
FrameGap = 1
trans = add1
time = 9999
PalBright = 0,  0,  0
PalContrast = 128,128,128
PalAdd =   0,  0,  0
PalMul =  1,1,1

[State 1501, 2-1]
type = HitDef
trigger1 = time > 0
attr = S, HA
attr = S, SP
damage = 200,80                   ;Damage that move inflicts
animtype = heavy
guardflag = MA
hitflag = MAFP
pausetime = 0,10
;hitsound   = S4000,3
;guardsound = 6,0
;sparkxy = -1
ground.type = High
ground.slidetime = 25
ground.hittime  = 25
ground.Velocity = -7
air.animtype = Back
air.Velocity = -9,-6
air.juggle = 3
air.fall = 1
down.Velocity = -9,-6
down.hittime = 30
down.bounce = 0
;p1stateno = 1502
kill       = (root, Var(9) = 0)
fall.kill  = (root, Var(9) = 0)
guard.kill = (root, Var(9) = 0)

[State 1501, 3]
type = Changestate
trigger1 = MoveContact = 1 ;Guarded = 1
value = 1502

[State 1501, 4]
type = VelSet
trigger1 = 1
X = 8.5

[State 1501, 5]
type = DestroySelf
trigger1 = time = 100

[Statedef 1502]
type    = S
movetype= A
physics = N
velset = 0,0
anim = 1015
ctrl = 0

[State 1502, 1]
type = PlaySnd
trigger1 = time = 0
value = 4000,12

[State 1502, 2]
type = Explod
trigger1 = time = 0
trigger2 = timemod = 8,0
anim = 14022
id = 14022
name = "MK4Fire"
postype = p2
pos = 0,0
helpertype = normal
sprpriority = 7
keyctrl = 0
ownpal = 1
bindtime = 256
ontop = 1

[State 1502, 3]
type = DestroySelf
trigger1 = time = 20

[Statedef 1503]
type    = S
movetype= A
physics = N
velset = 0,0
anim = 1015
ctrl = 0

[State 1503, 1]
type = PlaySnd
trigger1 = time = 0
value = 4000,12

[State 1503, 2]
type = Explod
trigger1 = time = 0
trigger2 = timemod = 8,0
anim = 14022
id = 14022
name = "MK4Fire"
postype = p1
pos = 0,0
helpertype = normal
sprpriority = 0
keyctrl = 0
ownpal = 1
bindtime = 256
under = 1

[State 1503, 3]
type = DestroySelf
trigger1 = time = 20

;************NOOB'S MK4 FIREBALL (UPWARDS)**************
[Statedef 1580]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 50
velset = 0,0
anim = 1580
ctrl = 0
sprpriority = 2

[State 1580,1]
type = PlaySnd
trigger1 = Time = 15
value = 4000,16

[State 1580, 2]
type = Helper
trigger1 = time = 15
stateno = 1581
name = "UpperMK4Fireball"
id = 1501
postype = p1
pos = 15,-81
helpertype = normal
sprpriority = 2
keyctrl = 0
ownpal = 1

[State 1580,3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 1581]
type    = S
movetype= A
physics = N
juggle  = 4
velset = 0,0
anim = 1501
ctrl = 0
sprpriority = 1

[State 1581, 1]
type = AfterImage
trigger1 = Time = 0
length = 8
TimeGap  = 1
FrameGap = 1
trans = add1
time = 9999
PalBright = 0,  0,  0
PalContrast = 128,128,128
PalAdd =   0,  0,  0
PalMul =  1,1,1

[State 1581, 2-1]
type = HitDef
trigger1 = time > 0
attr = S, HA
attr = S, SP
damage = 200,80                   ;Damage that move inflicts
animtype = heavy
guardflag = MA
hitflag = MAFP
pausetime = 0,10
;hitsound   = S4000,3
;guardsound = 6,0
;sparkxy = -1
ground.type = High
ground.slidetime = 25
ground.hittime  = 25
ground.Velocity = -7
air.animtype = Back
air.Velocity = -9,-6
air.juggle = 3
fall = 1
air.fall = 1
down.Velocity = -9,-6
down.hittime = 30
down.bounce = 0
;p1stateno = 1502
kill = (root, Var(9) = 0)
fall.kill  = (root, Var(9) = 0)
guard.kill = (root, Var(9) = 0)

[State 1581, 3]
type = Changestate
trigger1 = MoveContact = 1
value = 1502

[State 1581, 4]
type = VelSet
trigger1 = 1
X = 8.5
Y = -6

[State 1581, 5]
type = DestroySelf
trigger1 = time = 100

;----------------------

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
juggle  = 2
ctrl = 0
anim = 700
sprpriority = 5

[State 1100, aAccell]
type = VelAdd
trigger1 = time <= 35
Y = -2.5

[State 1100, aAcXceDFll]
type = VelAdd
trigger1 = time >= 57
;trigger1 = pOS Y >= 0
Y = 1


[State 1100, aAccellas]
type = VelsET
trigger1 = time >= 19
trigger1 = time <= 24
TRIGGER2 = TIME >= 43
TRIGGER2 = TIME <= 55
Y = 0

[State 1100, aAccellasSD]
type = pOSsET
trigger1 = time = 20
Y = 300

[State 1100, aAccXCellasSDS]
type = TURN
trigger1 = time = 20

[State 1000, gibber]
type = PlaySnd
trigger1 = Time = 1
value = 4, 14

[State 1000, 10]
type = HitDef
trigger1 = !movecontact
attr = S, ST          ;Attributes: Standing, Normal Throw
hitflag = H          ;Affect only ground people who are not being hit
guardflag = CMH          ;Affect only ground people who are not being hit
priority = 1, Miss    ;Throw has low priority, must be miss or dodge type.
damage = 215,107
hitsound = 5,14
guardsound = 5,14
sparkno = -1          ;No spark
sprpriority = -1      ;Draw in front of p2
p2facing = -1       ;Force p2 to face KFM
p1stateno = 2001       ;On success, KFM changes to state 810
p2stateno = 20011       ;If hit, p2 changes to state 820 in KFM's cns
guard.dist = 0        ;This prevents p2 from going into a guard state if close
fall.recover = 0
yaccel = 0.5
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)



[State 700, 2]
type = PosAdd
trigger1 = TIME = 20
X = (P2Dist X) - 20

[State 1000, BounceOffsd]
type = Changeanim
trigger1 = Time = 18
value = 900


[State 2020]
type = Changestate
trigger1 = Pos Y >= -6
trigger1 = time >= 45
value = 52
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
;anim = 1040
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

[StateDef 1000]
type    = S
movetype= A
physics = S
juggle  = 4
ctrl = 0
velset = 0,0,0
anim = 1003

[State 1200, ZappySound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 4, 18
channel = 3
volume = 70

[State 1200, Za]
type = VelSet
trigger1 = 1
trigger2 = Vel Y != 0
y = 0


[State 342, at]
type = Helper
trigger1 = animelem = 2
ID = 1990
stateno = 1990
pos = 50, -75
postype = p1

[State 1200, 10]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0

[StateDef 1990]
type    = S
movetype = A
physics = S
velset = 0,0,0
anim = 1016
ctrl = 0

[State 1200, Za]
type = VelSet
trigger1 = 1
trigger1 = numHelper(1991) < 1
X = 7.5

[State 1200, BoltFat]
type = HitDef
trigger1 = !movecontact
trigger1 = numHelper(1991) < 1
attr = S, HA
damage    = 0, 0
animtype = Light
air.animtype = Back
air.fall = 1
fall.recover = 0
guardflag = HL
pausetime = 0,2
sparkno = -1
guard.sparkno = -1
hitsound   = S4,12
guardsound = S4,12
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -15,0
air.velocity = -4,-6
air.fall = 1
fall.recover = 0
air.juggle = 3
yaccel = 0.5
p2stateno = 21238
kill       = root,Var(9) = 0
fall.kill  = root,Var(9) = 0
guard.kill = root,Var(9) = 0
palfx.time = 170
palfx.mul = 200,200,200
palfx.add = 200,200,200
palfx.sinadd = 200,200,200,10

[State 3011, Firedf]
type = nothitby
trigger1 = 1
value = CSA

[State 342, ats]
type = Helper
trigger1 = movehit
trigger1 = numHelper(1991) = 0
ID = 1991
stateno = 1991
pos = 50, -75
postype = p2

[State 3011, Fir]
type = explod
trigger1 = movehit
trigger1 = numExplod(1991) = 0
anim = 1000
Id = 1991
pos = 0,-75
postype = p2
sprpriority = 5
removetime = 170
bindtime = -1
scale = .9,.9


[State 3110, chae]
type = Destroyself
trigger1 = time >= 40
trigger2 = root , Var(10) = 1

[State 3110, chaea]
type = changeanim
trigger1 = movehit
value = 888

[State 3110, chaesd]
type = VelSet
trigger1 = movehit
X = 0

;---------
[StateDef 1991]
type    = S
movetype= I
physics = N
ctrl = 0
velset = 0,0,0
anim = 888

[State 3011, Firedf]
type = nothitby
trigger1 = 1
value = CSA

[State 3110, chae]
type = Destroyself
trigger1 = time >= 170
trigger2 = root , Var(10) = 1

[StateDef 1992]
type    = S
movetype= I
physics = N
ctrl = 0
velset = 0,0,0
anim = 0

[State 240, 43]
type = ChangeState
trigger1 = 1
value = 10211

;--------------
[StateDef 1002]
type    = S
movetype= A
physics = S
juggle  = 4
ctrl = 0
velset = 0,0,0
anim = 1040

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
removetime = 20

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
anim = 1004

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
trigger1 = p2name != "kintaro"
trigger1 = p2name != "goro"
trigger1 = p2name != "shao kahn,"
attr = S, HA
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

[State 820, 4435E1]
type = hitdef
triggerall = !movecontact
trigger1 = p2name = "kintaro"
trigger2 = p2name = "goro"
trigger3 = p2name = "shao kahn,"
attr = S, HT
damage    = 0, 0
getpower = 130,0
animtype = Hard
air.animtype = Back
air.fall = 1
hitflag = CM
guardflag = CM
sparkno = -1
guard.sparkno = -1
p1stateno = 2681
p2stateno = 21238
hitsound   = 5,14
guardsound = 5,14
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

[Statedef 2681]
type    = S
movetype= A
physics = S
velset = 0,0
;sprpriority = -1
anim = 257

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
anim = 257

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