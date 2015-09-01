;-------FATAL
[Statedef 3000]
type    = S
movetype= A
physics = S
velset = 0,0,0
anim = 9809
ctrl = 0

[State 3010, envshake]
type = EnvShake
trigger1 = Time = 35
time = 20

[State 9130, SetFatal]
type = Varset
trigger1 = movehit
V = 4
value = 1

[State 210, 1]
type = Playsnd
trigger1 = time = 1
value = F5,11
volume = 60
channel = 1

[State 210, 1]
type = StopSnd
trigger1 = time = 0
channel = -1

[State 8000, sad]
type = BGPalFX
trigger1 = time = 1
time = 9999
add = -50, -50, -50

[State 1200, ZappySound]
type = PlaySnd
trigger1 = AnimElem = 1
value = 4, 17

[State 1200, Za]
type = VelSet
trigger1 = time = 1
trigger2 = Vel Y != 0
y = 0

[State 430, 31sdaa]
type = changeanim
trigger1 = Time = 60
value = 660

[State 3002]
type = Explod
triggerall = Time >= 77
trigger1 = Pos Y >= 0
persistent = 0
anim = F6
ID = 3000
pos = -6,-50
postype = p2
sprpriority = -1
bindtime = 1
ontop = 1

[State 3002]
type = Explod
triggerall = Time >= 30
trigger1 = Pos Y >= 0
persistent = 0
anim = F6
ID = 3000
pos = -10,-70
postype = p2
sprpriority = -1
bindtime = 1
ontop = 1

[State 3002]
type = Explod
triggerall = Time >= 30
trigger1 = Pos Y >= 0
persistent = 0
anim = F6
ID = 3000
pos = 10,-20
postype = p2
sprpriority = -1
bindtime = 1
ontop = 1

[State 3002]
type = Explod
triggerall = Time >= 30
trigger1 = Pos Y >= 0
persistent = 0
anim = F6
ID = 3000
pos = 10,-90
postype = p2
sprpriority = -1
bindtime = 1
ontop = 1

[State 3002]
type = Explod
triggerall = Time >= 30
trigger1 = Pos Y >= 0
persistent = 0
anim = F6
ID = 3000
pos = -10,-20
postype = p2
sprpriority = -1
bindtime = 1
ontop = 1

[State 210, 1]
type = Playsnd
trigger1 = time = 30
value = F5,35
volume = 600

[State 3002]
type = Explod
triggerall = Time >= 30
trigger1 = Pos Y >= 0
persistent = 0
anim = F6
ID = 3000
pos = 15,-100
postype = p2
sprpriority = -1
bindtime = 1
ontop = 1

[State 3002]
type = Explod
triggerall = Time >= 30
trigger1 = Pos Y >= 0
persistent = 0
anim = F6
ID = 3000
pos = 17,-120
postype = p2
sprpriority = -1
bindtime = 1
ontop = 1

[State 3002]
type = Explod
triggerall = Time >= 30
trigger1 = Pos Y >= 0
persistent = 0
anim = F6
ID = 3000
pos = -17,-120
postype = p2
sprpriority = -1
bindtime = 1
ontop = 1

[State 210, 1]
type = Playsnd
trigger1 = time = 36
value = F5,35
volume = 600

[State 3002]
type = Explod
triggerall = Time >= 30
trigger1 = Pos Y >= 0
persistent = 0
anim = F6
ID = 3000
pos = -10,-100
postype = p2
sprpriority = -1
bindtime = 1
ontop = 1

[State 2, helperbola]
type = Helper
trigger1 = animelem = 3
trigger1 = numhelper(3001) < 1
ID = 3002
stateno = 3001
pos = 15*const(size.xscale), -100*const(size.xscale)
postype = p1
persistent = 0
ignorehitpause = 1

[State 2, helperbola]
type = Helper
trigger1 = animelem = 3
trigger1 = numhelper(3001) < 1
ID = 3010
stateno = 3001
pos = 20*const(size.xscale), -100*const(size.xscale)
postype = p1
persistent = 0
ignorehitpause = 1

[State 2, helperbola]
type = Helper
trigger1 = animelem = 3
trigger1 = numhelper(3001) < 1
ID = 3004
stateno = 3001
pos = 20*const(size.xscale), -85*const(size.xscale)
postype = p1
persistent = 0
ignorehitpause = 1

[State 2, helperbola]
type = Helper
trigger1 = animelem = 3
trigger1 = numhelper(3001) < 1
ID = 3005
stateno = 14000
pos = 20*const(size.xscale), -95*const(size.xscale)
postype = p1
persistent = 0
ignorehitpause = 1

[State 2, helperbola]
type = Helper
trigger1 = animelem = 3
trigger1 = numhelper(3001) < 1
ID = 3006
stateno = 14000
pos = 30*const(size.xscale), -70*const(size.xscale)
postype = p1
persistent = 0
ignorehitpause = 1

[State 2, helperbola]
type = Helper
trigger1 = animelem = 3
trigger1 = numhelper(3001) < 1
ID = 3011
stateno = 14000
pos = 13*const(size.xscale), -75*const(size.xscale)
postype = p1
persistent = 0
ignorehitpause = 1

[State 2, helperbola]
type = Helper
trigger1 = animelem = 3
trigger1 = numhelper(3001) < 1
ID = 3003
stateno = 3001
pos = 15*const(size.xscale), -70*const(size.xscale)
postype = p1
persistent = 0
ignorehitpause = 1

[State 2, helperbola]
type = Helper
trigger1 = animelem = 4
trigger1 = numhelper(3001) < 1
ID = 3001
stateno = 3001
pos = 15*const(size.xscale), -90*const(size.xscale)
postype = p1
persistent = 0
ignorehitpause = 1

[State 2, helperbola]
type = Helper
trigger1 = animelem = 3
trigger1 = numhelper(3001) < 1
ID = 30000
stateno = 30000
pos = 15*const(size.xscale), -80*const(size.xscale)
postype = p1
persistent = 0
ignorehitpause = 1

[State 2, helperbola]
type = Helper
trigger1 = animelem = 3
trigger1 = numhelper(3001) < 1
ID = 14000
stateno = 14000
pos = 15*const(size.xscale), -110*const(size.xscale)
postype = p1
persistent = 0
ignorehitpause = 1

[State 3006]
type = HitDef
trigger1 = !movecontact 
attr = S, NA               
p2stateno= 3009

[State 1200, 10]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 0
value = 3005

;---------------------------------------------------------------------------------------------------------------------------
[Statedef 3001]
type    = S
movetype= A
physics = S
juggle  = 11
anim = 30000
sprpriority = 1

[State 3001, 0.12]
type = VelSet
trigger1 = time = 0
X = 9
Y = -3

[State 3001, 0.12]
type = Veladd
trigger1 = time < 4
trigger1 = time > 0
X = 9
Y = -0.5

[State 3001, 0.12]
type = Veladd
trigger1 = time >= 4
X = 9
Y = 0.4

[State 1000, 0.1]
type = Destroyself
trigger1 = movecontact
trigger2 = FrontEdgeBodyDist < -130

[State 3001, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;-------------------------------------------------------------------------------------
[Statedef 3009]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 21238

[state 333,play]
type = playsnd
trigger1 = time = 0
value = 3,0
channel = 4

[State 9329,change]
type = changestate
trigger1 = Pos Y > 0
value = 21238
;--------------------------------------------------------------------------------------------------------------------

[Statedef 3005]
type    = S
movetype= A
physics = S
velset = 0
anim = 9809
ctrl = 0

[State 9130, SetFatal]
type = Varset
trigger1 = movehit
V = 4
value = 1

[State 1200, ZappySound]
type = PlaySnd
trigger1 = AnimElem = 1
value = 4, 17

[State 1200, Za]
type = VelSet
trigger1 = time = 1
trigger2 = Vel Y != 0
y = 0

[State 1200, BoltFat]
type = Hitdef
trigger1 = !movecontact
velocity = 8, 0 
remvelocity = 0, 0
HitDef part of projectile info
attr = S, NT
animtype = Hard
air.animtype = Back
air.fall = 1
fall.recover = 0
numhits = - 1
guardflag = HL
pausetime = 0,0
sparkno = -1
guardsound = 5,14
p2facing = 1
p2stateno = 20002
guard.sparkno = -1
ground.type = High

[State 210, 1]
type = Playsnd
trigger1 = time = 30
value = F5,35
volume = 600

[State 3002]
type = Explod
triggerall = Time >= 30
trigger1 = Pos Y >= 0
persistent = 0
anim = F6
ID = 3000
pos = -6,-50
postype = p2
sprpriority = -1
bindtime = 1
ontop = 3

[State 210, 1]
type = Playsnd
trigger1 = time = 32
value = F5,35
volume = 600

[State 3002]
type = Explod
triggerall = Time >= 30
trigger1 = Pos Y >= 0
persistent = 0
anim = F6
ID = 3000
pos = 17,-120
postype = p2
sprpriority = -1
bindtime = 1
ontop = 1

[State 3002]
type = Explod
triggerall = Time >= 30
trigger1 = Pos Y >= 0
persistent = 0
anim = F6
ID = 3000
pos = -17,-120
postype = p2
sprpriority = -1
bindtime = 1
ontop = 1

[State 3002]
type = Explod
triggerall = Time >= 30
trigger1 = Pos Y >= 0
persistent = 0
anim = F6
ID = 3000
pos = -10,-70
postype = p2
sprpriority = -1
bindtime = 1
ontop = 3

[State 210, 1]
type = Playsnd
trigger1 = time = 34
value = F5,35
volume = 600

[State 3002]
type = Explod
triggerall = Time >= 30
trigger1 = Pos Y >= 0
persistent = 0
anim = F6
ID = 3000
pos = 10,-20
postype = p2
sprpriority = -1
bindtime = 1
ontop = 3

[State 210, 1]
type = Playsnd
trigger1 = time = 36
value = F5,35
volume = 600

[State 3002]
type = Explod
triggerall = Time >= 30
trigger1 = Pos Y >= 0
persistent = 0
anim = F6
ID = 3000
pos = 10,-90
postype = p2
sprpriority = -1
bindtime = 1
ontop = 3

[State 210, 1]
type = Playsnd
trigger1 = time = 38
value = F5,35
volume = 600

[State 3002]
type = Explod
triggerall = Time >= 30
trigger1 = Pos Y >= 0
persistent = 0
anim = F6
ID = 3000
pos = -10,-20
postype = p2
sprpriority = -1
bindtime = 1
ontop = 3

[State 3002]
type = Explod
triggerall = Time >= 30
trigger1 = Pos Y >= 0
persistent = 0
anim = F6
ID = 3000
pos = 15,-100
postype = p2
sprpriority = -1
bindtime = 1
ontop = 3

[State 3002]
type = Explod
triggerall = Time >= 30
trigger1 = Pos Y >= 0
persistent = 0
anim = F6
ID = 3000
pos = -10,-100
postype = p2
sprpriority = -1
bindtime = 1
ontop = 3

[State 2, helperbola]
type = Helper
trigger1 = animelem = 3
trigger1 = numhelper(3001) < 1
ID = 3006
stateno = 14000
pos = 30*const(size.xscale), -70*const(size.xscale)
postype = p1
persistent = 0
ignorehitpause = 1

[State 2, helperbola]
type = Helper
trigger1 = animelem = 3
trigger1 = numhelper(3001) < 1
ID = 3005
stateno = 14000
pos = 10*const(size.xscale), -100*const(size.xscale)
postype = p1
persistent = 0
ignorehitpause = 1

[State 2, helperbola]
type = Helper
trigger1 = animelem = 3
trigger1 = numhelper(3001) < 1
ID = 3002
stateno = 3001
pos = 15*const(size.xscale), -100*const(size.xscale)
postype = p1
persistent = 0
ignorehitpause = 1

[State 2, helperbola]
type = Helper
trigger1 = animelem = 3
trigger1 = numhelper(3001) < 1
ID = 3003
stateno = 3001
pos = 15*const(size.xscale), -70*const(size.xscale)
postype = p1
persistent = 0
ignorehitpause = 1

[State 2, helperbola]
type = Helper
trigger1 = animelem = 4
trigger1 = numhelper(3001) < 1
ID = 3001
stateno = 3001
pos = 15*const(size.xscale), -90*const(size.xscale)
postype = p1
persistent = 0
ignorehitpause = 1

[State 2, helperbola]
type = Helper
trigger1 = animelem = 3
trigger1 = numhelper(3001) < 1
ID = 30000
stateno = 30000
pos = 15*const(size.xscale), -80*const(size.xscale)
postype = p1
persistent = 0
ignorehitpause = 1

[State 2, helperbola]
type = Helper
trigger1 = animelem = 3
trigger1 = numhelper(3001) < 1
ID = 30001
stateno = 30000
pos = 20*const(size.xscale), -85*const(size.xscale)
postype = p1
persistent = 0
ignorehitpause = 1

[State 2, helperbola]
type = Helper
trigger1 = animelem = 3
trigger1 = numhelper(3001) < 1
ID = 30002
stateno = 30000
pos = 18*const(size.xscale), -105*const(size.xscale)
postype = p1
persistent = 0
ignorehitpause = 1

[State 2, helperbola]
type = Helper
trigger1 = animelem = 3
trigger1 = numhelper(3001) < 1
ID = 14000
stateno = 14000
pos = 15*const(size.xscale), -110*const(size.xscale)
postype = p1
persistent = 0
ignorehitpause = 1

[State 3010, envshake]
type = EnvShake
trigger1 = time = 30
time = 30

[State 1200, ZappySound]
type = PlaySnd
trigger1 = animelem = 8
value = F5, 17

[State 1200, 7]
type = changestate
trigger1 = AnimTime = 0 && Anim = 9809
value = 0
ctrl = 1

;---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
friendship

[Statedef 3100]
type    = S
movetype= A
physics = S
anim = 0
ctrl = 0

[State 3100, helper]
type = Helper
trigger1 = time = 60
stateno = 3701
name = "friendship"
postype = p1
pos = 0,0
sprpriority = 1
keyctrl = 0
ownpal = 0
under = 1

[State 3100, Pset]
type = varset
trigger1 = time = 61
v = 26
value = 1

[State 200, 7]
type = changestate
trigger1 = Time = 250
value = 0
ctrl = 1

[Statedef 3701]
type    = S
movetype= A
physics = S
ctrl = 0
anim = 169

[State 210, 1]
type = StopSnd
trigger1 = time = 0
channel = -1

[State 210, 1]
type = Playsnd
trigger1 = time = 1
value = F5,50
volume = 600

[State 9130, SetFatal]
type = ParentVarSet
trigger1 = movehit
V = 4
value = 3

[State 3102, golpearalpl2]
type = HitDef
trigger1 = time = 0
attr = S, NA
sparkno = -1
guard.sparkno = -1
p2stateno = 6002;3702

[State 3101, helper]
type = Helper
trigger1 = time = 0
stateno = 3702
name = "friendship"
postype = front
pos = -330,6
sprpriority = 1
keyctrl = 0
ownpal = 0

[Statedef 3702]
type    = S
movetype= A
physics = S
ctrl = 0
anim = 3807
sprpriority = 3

[State 210, 1]
type = StopSnd
trigger1 = time = 0
channel = -1

[State 210, 1]
type = Playsnd
trigger1 = time = 20
value = 11,2

[State 9130, SetFatal]
type = ParentVarSet
trigger1 = movehit
V = 4
value = 3

[State 3102, golpearalpl2]
type = HitDef
trigger1 = time = 0
attr = S, NA
sparkno = 2
guard.sparkno = 2
p2stateno = 6002;3702

[State 3102, helper]
type = Helper
trigger1 = time = 0
stateno = 3703
name = "friendship"
postype = front
pos = 0,6
sprpriority = 1
keyctrl = 0
ownpal = 0

[Statedef 3703]
type    = S
movetype= A
physics = S
ctrl = 0
anim = 3806
sprpriority = 9

[State 210, 1]
type = playSnd
trigger1 = time = 0
value = 10,1
volume = 600

[State 9130, SetFatal]
type = ParentVarSet
trigger1 = movehit
V = 4
value = 3

[State 3102, golpearalpl2]
type = HitDef
trigger1 = time = 0
attr = S, NA
sparkno = -1
guard.sparkno = -1
p2stateno = 6002;3702

;================================
Hara Kiri
;================================
[Statedef 3503]
type    = S
movetype= A
physics = S
anim = 0
ctrl = 0

[State 210, 1]
type = SprPriority
trigger1 = time = 0
value = 2

[State 210, 1]
type = StopSnd
trigger1 = time = 0
channel = -1

[State 3105, end]
type = changeanim
trigger1 = time = 60
value = 3500

[State 9873, 1]
type = AssertSpecial
trigger1 = 1
flag = timerfreeze

[State 430, 31sdaa]
type = changestate
trigger1 = anim = 0
trigger1 = animtime = 0
value = 3504

;---------------------
[Statedef 3504]
type    = S
movetype= A
physics = S
anim = 3500

[State 210, 1]
type = Playsnd
trigger1 = time = 60
value = 3,0

[State 210, 1]
type = Playsnd
trigger1 = time = 60
value = 30,1

[State 210, 1]
type = Playsnd
trigger1 = time = 100
value = 4,19
channel = 4

[State 1200, Za]
type = VelSet
trigger1 = time = 1
trigger2 = Vel Y != 0
y = 0

[State 1200, 1]
type = Explod
triggerall = Time >= 0
trigger1 = Pos Y >= 0
persistent = 0
stateno = 3504
anim = 3501
ID = 3503
pos = 0,0
postype = p1
sprpriority = -1
bindtime = 1
ontop = 1

[State 2, helperbola]
type = Helper
trigger1 = animelem = 1
trigger1 = numhelper(3507) < 1
ID = 3507
stateno = 3507
pos = 0*const(size.xscale), 0*const(size.xscale)
postype = p1
persistent = 0
ignorehitpause = 1

[State 430, 31sdaa]
type = changestate
trigger1 = time = 45
value = 3505

;---------------------
[Statedef 3507]
type    = S
movetype= A
physics = S
anim = 3507

[State 3507, 0.12]
type = VelSet
trigger1 = time = 10
X = 0
Y = -13

[State 3507, 0.12]
type = Veladd
trigger1 = time < 0
trigger1 = time > 0
X = 0
Y = 0

[State 3507, 0.12]
type = Veladd
trigger1 = time >= 4
X = -0.8
Y = 0.7

;-----------------------------
[Statedef 3505]
type    = S
movetype= H
physics = S
ctrl = 0
velset = 0,0,0
anim = 3500

[State 3100, Pset]
type = varset
trigger1 = time = 0
v = 26
value = 1

[State 1200, 2at]
type = Explod
trigger1 = time = 0
anim = 3502
pos = 0,0
postype = p1
sprpriority  = 1

[State 1200, 2at]
type = explod
trigger1 = time = 0
anim = F6
pos = 0,-110
postype = p1
sprpriority  = 4

[State 210, 1]
type = Playsnd
trigger1 = time = 0
value = 4,19
channel = 4

[State 1200, 2at]
type = Explod
trigger1 = time = 0
anim = F16
pos = 10,-118
postype = p1
sprpriority  >= 4

[State 22, round hit]
type = EnvShake
trigger1 = time = 70
freq = 48
time = 10
ampl = 4

[State 22, round hit]
type = EnvShake
trigger1 = time = 100
freq = 48
time = 10
ampl = 4

[State 1200, ound]
type = PlaySnd
trigger1 = time = 0
value = F5, 17
channel = 3

[State 209, 1]
type = Playsnd
trigger1 = time = 60
value = 10,9

[State 9010, 0.1]
type = Sprpriority
trigger1 = time = 50
value  >= 4

[State 9399, 2]
type = Selfstate
trigger1 = time = 100
value = 5150

[State 9399, 3]
type = Lifeadd
trigger1 = Time = 30
Value = -9999

[State 5150, 8]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1
ctrl = 1
