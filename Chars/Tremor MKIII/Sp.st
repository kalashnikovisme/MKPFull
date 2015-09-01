[StateDef 1000]
type    = S
movetype= A
physics = S
juggle  = 2
ctrl = 0
velset = 0,0,0
anim = 1003

[State 1000, ZappySound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 4, 18
channel = 3
volume = 70

[State 1000, Za]
type = VelSet
trigger1 = time = 1
trigger2 = Vel Y != 0
y = 0

[State 0, Explod]
type = Explod
trigger1 = animelem = 2
anim = 1013
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
sprpriority = 1

[State 1000, BoltFat]
type = Projectile
trigger1 = AnimElem = 4
projanim = 1001
projscale = 1.5,1.5
offset = 40*const(size.xscale), -68*const(size.xscale)
ID = 997
velocity = 7.7, 0
remvelocity = 0, 0
attr = S, SP
damage    = 195, 98
animtype = Light
air.animtype = Back
air.fall = 1
fall.recover = 0
air.juggle = 1
guardflag = HL
pausetime = 0,2
sparkno = 6
guard.sparkno = 6
hitsound   = S4,12
guardsound = S4,12
ground.type = Low
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -18.5,0
air.velocity = -4,-6
air.fall = 1
fall.recover = 0
yaccel = 0.55
p2stateno = 21238
kill       = Var(9) = 0
fall.kill  = Var(9) = 0
guard.kill = Var(9) = 0


[State 1000, 10]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0

;==========================================================
[StateDef 6000]
type    = S
movetype= A
physics = S
juggle  = 4
ctrl = 0
anim = 6000

[State 1200,ZappySound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 4, 9
volume = 100

[State 1200,Za]
type = VelSet 
trigger1 = time = 1
trigger2 = Vel Y != 0
y = 0

[State 13130,BoltFat]
type = HitDef
trigger1 = time = 0
attr = S, NA
damage   = 85, 13
animtype = Back
hitflag = MAF ;HAF
guardflag = HL
pausetime = 0,2
sparkno = -1
spakxy = -18,-100
guard.sparkno = -1
hitsound = 5,0
p2facing = 1
guardsound = 5,14
ground.cornerpush.veloff = -30
ground.type = High
guard.ctrltime = 20
guard.slidetime = 20
ground.slidetime = 20
ground.hittime = 20
ground.velocity = -1.2,-8;12
air.velocity = -1.2,-7;13
yaccel = 0.4
envshake.time = 15
envshake.fret = 70
envshake.ampl = 7
fall.recover = 0
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 2, Upperblood]
type = Helper
trigger1 = numhelper(28) < 1
trigger1 = movehit
ID = 28
stateno = 28
pos = 0, 0
postype = p1
persistent = 0
ignorehitpause = 1

[State 1200, 10]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0

[StateDef 1002]
type    = S
movetype= A
physics = S
juggle = 7
ctrl = 0
velset = 0,0,0
anim = 10151

[State 1200,10]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0

;========================================================
[StateDef 1200]
type    = A
movetype= A
physics = S
juggle  = 2
ctrl = 0
anim = 910


[State 1100, aAccell]
type = VelAdd
trigger1 = Time < 30
x = 5

[State 1100, aAccelsal]
type = VelAdd
trigger1 = Time > 8
trigger1 = Time < 40
Y = -.2

[State 1100, aAccelsal]
type = VelSet
trigger1 = Time > 45
trigger1 = Time < 50
Y = 0


[State 1100, aAccella]
type = VelAdd
trigger1 = time >= 65
y = 1

[State 1100, aAcce]
type = VelAdd
trigger1 = Time < 15
trigger1 = movehit = 1
x = 2

[State 1000, gibber]
type = PlaySnd
trigger1 = Time = 0
value = 4, 9

[State 1000, 10]
type = HitDef
trigger1 = AnimElem = 6
trigger2 = AnimElem = 9
trigger3 = AnimElem = 12
trigger4 = AnimElem = 15
;trigger5 = AnimElem = 18
;trigger6 = AnimElem = 16
attr = S, SA
animtype = Light                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
air.animtype = Back
damage = 85, 13
guardflag = HL
hitflag = HAF                    ;Flags of conditions that move can hit
priority = 2, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default
pausetime = 2,2                  ;Time attacker pauses, time victim shakes
sparkno = -1
guard.sparkno = -1
hitsound = 5,1
guardsound = 5,14             
ground.type = Low                 ;Type: High, Low, Trip (def: Normal)
p2facing = 1
numhits = -1
ground.slidetime = 20
ground.hittime  = 20
guard.ctrltime = 20 
ground.velocity = -1,-5              ;Time to regain control after guard (def: guard.slidetime)
guard.velocity = -2
air.velocity = -1, -5.6
airguard.velocity = -1.9            ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.fall = 1
fall.recover = 0
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 1000, 10]
type = HitDef
trigger1 = AnimElem = 18
attr = S, SA
animtype = Light                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
air.animtype = Back
damage = 18,6
guardflag = HL
hitflag = HAF                    ;Flags of conditions that move can hit
priority = 2, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default
pausetime = 10,2                  ;Time attacker pauses, time victim shakes
sparkno = -1
guard.sparkno = -1
hitsound = 5,1
guardsound = 5,14             
ground.type = Low                 ;Type: High, Low, Trip (def: Normal)
p2facing = 1
ground.slidetime = 20
ground.hittime  = 20
guard.ctrltime = 20 
ground.velocity = -18,0              ;Time to regain control after guard (def: guard.slidetime)
guard.velocity = -2
air.velocity = -2.3, -2.6
airguard.velocity = -1.9            ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
ground.cornerpush.veloff = -10
air.fall = 1
fall.recover = 0
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)


[State 1000, BounceOff]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0

;============================================================
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
value = 4, 12
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

[State 0, Explod]
type = Explod
trigger1 = time = 1
anim = 3000
postype = p2  ;p2,front,back,left,right
facing = 1
ontop = 1

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

[State 0, Explod]
type = Explod
trigger1 = timemod = 8,3
anim = 5870
pos = 54,0
postype = p1  ;p2,front,back,left,right

[State 1000, 10]
type = HitDef
trigger1 = AnimElem = 2
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
