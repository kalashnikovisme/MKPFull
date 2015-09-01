[StateDef 13000]
type    = S
movetype= A
physics = S
juggle  = 4
ctrl = 0
velset = 0,0,0
anim = 6660

[State 1200, ZappySound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 4, 4
volume = 50

[State 1200, Za]
type = VelSet
trigger1 = time = 1
trigger2 = Vel Y != 0
y = 0

[State 1200, BoltFat]
type = Projectile
trigger1 = AnimElem = 7
projanim = 6661
offset = 60, -90
ID = 997
velocity = 9, 0 
remvelocity = 0, 0
attr = S, SP
p2stateno = 21238
air.animtype = back
damage    = 317, 178
guardflag = HL
sparkno = S6662
sparkxy = 20, 0
guard.sparkno = S6662
hitsound   = S14,0
guardsound = -1;S4,18
air.velocity = -4,-5
air.fall = 1
fall.recover = 0
air.juggle = 3
yaccel = 0.45
kill       = Var(9) = 0
fall.kill  = Var(9) = 0
guard.kill = Var(9) = 0

[State 1200, 10]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0

;------------------------------------blow

[Statedef 12440]
type    = S
movetype= A
physics = S
juggle  = 5
ctrl = 0
velset = 0,0,0
anim = 1110

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

[State 12440, 1.25]
type = Playsnd
trigger1 = animelem = 2
value = 14,0

[State 12440, 1.5]
type = Playsnd
trigger1 = animelem = 8
value = F5,15

[State 12440, 2]
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
hitsound = 5,21
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

[State 12440, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;------------------------------------

[StateDef 10000];gear
type    = S
movetype= A
physics = S
juggle  = 3
ctrl = 0
velset = 0,0,0
anim = 1610

[State 1200, ZappySound]
type = PlaySnd
trigger1 = AnimElem = 1
value = 7, 4

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

;________________

;throw
;---------------------

[Statedef 11000]   
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
value = 14, 4

[State 1000, 0.1]
type = Posset
trigger1 = Pos Y != 0
trigger1 = time = 0
Y = 0

[State 1200, BoltFat]
type = Projectile
trigger1 = AnimElem = 8
projanim = 696
projhitanim = 699
projremanim = 696
offset = 50*const(size.xscale), -110*const(size.xscale)
velocity = 9, 0 
;remvelocity = -10, -8
; HitDef part of projectile info
attr = S, SP
projID = 1234
damage    = 182, 91
animtype = Light
air.animtype = Back
guardflag = HL
pausetime = 0,2
sparkno = -1
sparkxy = 20,0
guard.sparkno = -1
hitsound   = s14,0
guardsound = 5,0
air.velocity = -4,-5
air.fall = 1
fall.recover = 0
air.juggle = 3
yaccel = 0.45
p2stateno = 21238
kill       = Var(9) = 0
fall.kill  = Var(9) = 0
guard.kill = Var(9) = 0

[State 1000, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;sparkling

[Statedef 12000] ;agarre que rebolea
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 1015
;sprpriority = 2

[State 820, 1]
type = Sprpriority
Trigger1 = Time = 0
value = 5;2;1

[State 800, open]
type = PlaySnd
trigger1 = AnimElem = 3 
value = F5, 27

[State 800, 1]
type = HitDef
trigger1 = p2name != "shao kahn,"
trigger1 = p2name != "kintaro"
trigger1 = p2name != "goro"
trigger1 = p2name != "motaro"
Trigger1 = animelem = 4;3
attr = S, NA          ;Attributes: Standing, Normal Throw
hitflag = HAF          ;Affect only ground people who are not being hit
priority = 1, Miss    ;Throw has low priority, must be miss or dodge type.
damage = 407,53
sparkno = s1117          
sparkxy = -30,-40
guardflag = HL
guard.pausetime = 30,0
hitsound = s14,6
guardsound = 5,14 
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
sprpriority = 5;-1      ;Draw in front of p2
p2facing = -1       ;Force p2 to face KFM
p1stateno = 12001;1016       ;On success, KFM changes to state 810
p2stateno = 1202;1017       ;If hit, p2 changes to state 820 in KFM's cns
guard.dist = 0        ;This prevents p2 from going into a guard state if close
;fall = 1              ;Force p2 into falling down
yaccel = 0.4
fall.recover = 0
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 800, 2]
type = ChangeState
Trigger1 = Animtime = 0
value = 0
ctrl = 1
;-------------
[Statedef 12001]
type    = S
movetype= A
physics = N
anim = 1016

[State 12000]
type = ChangeState
Trigger1 = Animtime = 0
value = 0
ctrl = 1

[Statedef 1202]
type    = A
movetype= H
physics = S
velset = 0,0
anim = 1017
;sprpriority = -1

[State 9010, 0.1]
type = Sprpriority
trigger1 = time = 0;animtime = 0
value = 1;>= 2

;[State 820, 1]
;type = ChangeAnim2
;Trigger1 = Time = 0
;value = 1017

[State 820, 435E1]
type = Playerpush
Trigger1 = 1
value = 0

[State 810, nd]
type = TURN
trigger1 = animtime =  0
trigger1 = anim =  1017

[State 820, 4435E1]
type = StateTypeSet
Trigger1 = animtime = 0
statetype = A
physics = A

[State 820, 4351]
type = posadd
Trigger1 = animtime = 0
trigger1 = anim =  1017
x = -5
y = -10

[State 820, 4351]
type = Velset
Trigger1 = animtime = 0
trigger1 = anim =  1017
x = -3;4.5
y = -5.5

[State 820, 4435E1]
type = changeanim
Trigger1 = animtime = 0
trigger1 = anim =  1017
value = 5030

[State 821, 4] ;Hit ground
type = SelfState
trigger1 = animtime = 0
trigger1 = anim =  5030
value = 5050 ;Hit ground
