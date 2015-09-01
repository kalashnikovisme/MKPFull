;=====================
;Special : Run Behind
;=====================
[StateDef 1100]
type = S
movetype= A
physics = S
ctrl = 0
anim = 1100      

[State 1100, 1]
type = PlaySnd
trigger1 = animelem = 1
value = F5, 30

[State 1100, 2]
type = ChangeState
trigger1 = BackEdgeDist < 13
trigger1 = p2bodydist X > 165
trigger2 = p2stateno = 9010
value = 1101         

[State 1100, 3]
type = ChangeState
trigger1 = p2statetype != S
trigger1 = p2statetype != C
value = 1102      

[State 1100, 4]
type = HitDef
trigger1 = p2stateno != 130
trigger1 = p2stateno != 131
trigger1 = p2bodydist X < 40
attr = S,NA
sparkno = -1
p2stateno = 1104
numhits = -1

[State 1100, 5]
type = HitDef
trigger1 = p2stateno = 130
trigger2 = p2stateno = 131
triggerall = p2bodydist X < 5
attr = S,NA
sparkno = -1
guardflag = HL
guardsound = 5,14
numhits = -1

[State 1100, 6]
type = ChangeState
trigger1 = moveguarded  
value = 1109            

[state 1100, 7]
type = playerpush
trigger1 = 1
value = 0

[State 1100, 8]
type = Changestate
trigger1 = p2bodydist X < -110
trigger2 = time > 30    
value = 1105

[State 1100, 9]   
type = VelAdd
trigger1 = 1
x = 12

[StateDef 1101]
type    = S
movetype= I
physics = S

[State 1101, 1]   
type = VelAdd
trigger1 = 1
x = 12

[State 1101, 2]
type = Changestate
trigger1 = p2bodydist X < 30
trigger2 = time = 21
value = 0
ctrl = 1

[StateDef 1101, 3]
type    = S
movetype= I
physics = S

[State 1101, 4]
type = VelAdd
trigger1 = 1
x = 12

[state 1101, 5]
type = playerpush
trigger1 = 1
value = 0

[State 1101, 6]
type = Changestate
trigger1 = p2bodydist X < -60
trigger2 = time > 30
value = 0
ctrl = 1

[StateDef 1104]
type    = S
movetype= I
physics = S
anim = 0
ctrl = 0
velset = 0,0

[state 1104, 1]
type = changestate
trigger1 = time = 30
value = 0
ctrl = 1

[StateDef 1105]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 1005

[state 1105, 1]
type = turn
trigger1 = time = 0

[state 1105, 2]
type = playerpush
trigger1 = 1
value = 0

[State 1105, 3]
type = HitDef
trigger1 = movehit
attr = S,NA
sparkno = -1
p1stateno = 1107
p2stateno = 1108
numhits = -1

[state 1105, 4] 
type = changestate
trigger1 = time = 1
value = 1107

[StateDef 1107]
type    = S
movetype= A
physics = S
velset = 0,0

[state 1107, 1]
type = veladd
trigger1 = animelem = 9
x = 40

[state 1107, 2]
type = HitDef
trigger1 = time = 0
attr = S,NA
animtype  = hard
damage    = 150, 75
guardflag = HL
pausetime = 3,0
hitflag = AHLMF
sparkno = 2
sparkxy = -30,-90
guard.sparkno = -1
hitsound   = 5,0
guardsound = 5,14
ground.type = High
ground.slidetime = 0
ground.hittime  = 0
ground.velocity = -6,-4
air.velocity = -3,-4
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

[state 1107, 3]
type = changestate
trigger1 = animtime = 0
;trigger2 = time = 25 
value = 0
ctrl = 1

[StateDef 1108]
type    = S
movetype= I
physics = S
velset = 0,0
anim = 5

[state 1108, 1]
type = turn
trigger1 = time = 0

[state 1108, 2]
type = changeanim
trigger1 = animtime = 0
value = 0

[state 1108, 3]
type = veladd
trigger1 = FrontEdgeDist < 30
x = -30

[state 1108, 4]
type = selfstate
trigger1 = time = 10
value = 0
ctrl = 1

[StateDef 1109]
type    = S
movetype= I
physics = S
anim = 1101

[state 1109, 1]
type = velset
trigger1 = time = 0
X = 0

[state 1109, 2]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

;=====================
;Special : The Ball
;=====================
[StateDef 1200]
type    = S
movetype= A
physics = S
juggle  = 9
ctrl = 0
velset = 0,0,0
anim = 1003

[State 1200, 1]
type = PlaySnd
trigger1 = AnimElem = 3
value = 3, 4
channel = 3
volume = 100

[State 1200, 2]
type = VelSet
trigger1 = time = 1
trigger2 = Vel Y != 0
y = 0

[State 1200, 3]
type = Explod
trigger1 = animelem = 8
anim = 888
pos = 5,-110
postype = p1
facing = -1
ID = 1002
sprpriority  >= 2
removetime = 1000

[State 1200, 4]
type = Projectile
trigger1 = AnimElem = 3
triggerall = p2stateno != 9010
projanim = 1001
projhitanim = 1000
projremanim = 1000
offset = 30*const(size.xscale), -99*const(size.xscale)
ID = 998
velocity = 2, 0 
remvelocity = 0, 0
; HitDef part of projectile info
attr = S, SP
animtype  = Back
damage    = 180, 90
guardflag = M
hitflag = MAF
pausetime = 0, 2
sparkno = -1
guard.sparkno = -1
hitsound = 5,0
guardsound = 5,14
ground.type = High
ground.slidetime = 30
p2facing = 1
guard.ctrltime = 20
guard.velocity = -25
guard.slidetime = 20
ground.hittime  = 30
ground.velocity = 2.5,-8            
air.velocity = 2.5,-8
air.hittime = 17  
ground.cornerpush.veloff = -25
fall.recover = 0
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 1200, 5]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0

;====================
;Special : The Spear
;====================
[StateDef 1300]
type    = S
movetype= A
physics = S
juggle  = 9
ctrl = 0
velset = 0,0,0
anim = 10151

[State 1300, 1]
type = PlaySnd
trigger1 = AnimElem = 3
value = 4, 18
channel = 3
volume = 80

[State 1300, 2]
type = VelSet
trigger1 = time = 1
trigger2 = Vel Y != 0
y = 0

[State 1300, 3]
type = Projectile
trigger1 = AnimElem = 3
projanim = 1016
projhitanim = 1000
projremanim = 1040
offset = 70*const(size.xscale), -99*const(size.xscale)
ID = 998
velocity = 4, 0 
remvelocity = 0, 0
; HitDef part of projectile info
attr = S, SP
animtype  = Light
damage    = 180, 90
guardflag = HL
hitflag = MAF
pausetime = 0, 2
sparkno = -1
sparkxy = 15,-10
guard.sparkno = -1
p1stateno = 1301;1003
hitsound = 5,0
guardsound = 5,14
p2facing = 1
ground.type = High
ground.slidetime = 20
ground.hittime  = 15
guard.ctrltime = 20 
ground.velocity = -15,0
air.velocity = -4,-5
air.fall = 1
air.juggle = 3
fall.recover = 0
p2stateno = 21238
yaccel = 0.45
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 1300, 4]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0

[StateDef 1301]
type    = S
movetype= A
physics = S
juggle  = 2
ctrl = 0
velset = 0,0,0

[State 1301, 1]
type = VelSet
trigger1 = time = 1
trigger2 = Vel Y != 0
y = 0

[State 1301, 2]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0

;====================
;Special : Invisible
;====================
[Statedef 1400]
type = S
movetype = I
physics = S
anim = 700 + var(17)
ctrl = 0
velset = 0,0

[State 1400, 1]
type = explod
trigger1 = animelem = 3
anim = 2050
ID = 36
pos = 0,0
shadow = -1,250,250
postype = p1
ontop = 1

[State 1400, 2]
type = PlaySnd
trigger1 = time = 1
value = 4, 19

[State 1400, 3]
type = VarSet
trigger1 = AnimTime = 0 
var(17) = 1

[State 1400, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 1401]
type = S
movetype = I
physics = S
anim = 900 + var(0)
ctrl = 0
velset = 0,0

[State 1401, 1]
type = explod
trigger1 = Time = 1
trigger1 = stateno != 3010
anim = 2050
shadow = -1,250,250
ID = 36
pos = 0,0
postype = p1
ontop = 1

[State 1401, 2]
type = VarSet
trigger1 = AnimTime = 0 
trigger2 = roundstate = 3
trigger3 = roundstate = 4
var(17) = 0

[State 1401, 3]
type = PlaySnd
trigger1 = time = 1
trigger1 = stateno != 3010
value = 4, 19

[State 1401, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;========================
;Special : The Butterfly
;========================
[StateDef 1500]
type    = S
movetype= A
physics = S
juggle  = 2
ctrl = 0
anim = 1004

[State 1500, 1]
type = VelAdd
trigger1 = Time < 22
x = 3

[State 1500, 2]
type = PlaySnd
trigger1 = animelem = 1
value = 3, 7

[State 1500, 3]
type = HitDef
trigger1 = animelem = 3
attr = S, SA
animtype  = back
air.animtype  = Back
air.hittime  = 17
air.velocity = -3, -7
yaccel = 0.5
damage    = 200, 68
guardflag = L
hitflag = AHLMF
pausetime = 0,2
sparkno = -1
guard.sparkno = -1
hitsound   = -1
p1stateno = 1501
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

[State 1500, 4]
type = ChangeState
trigger1 = movecontact
value = 1501;2001

[State 1500, 5]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0

[StateDef 1501]
type    = S
movetype= I
physics = S
ctrl = 0

[State 1501, 1]
type = VelSet
trigger1 = time = 0
x = 0

[State 1501, 2]
type = Changestate
trigger1 = AnimTime = 0
value = 0
ctrl = 1
