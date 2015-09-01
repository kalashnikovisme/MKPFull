[Statedef 3000]
type    = S
movetype= A
physics = S
anim = 0
Velset = 0, 0
ctrl = 0

[State 235]
type = varset
trigger1 = 1
v = 4
value = 1

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = time = 60
value = 3000

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 60
value = 9,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 75
value = 9,1
volume = 200

[State 3100, helper]
type = Helper
trigger1 = time = 150
stateno = 3002
name = "winner"
postype = p1
pos = 0,0
sprpriority = 1
keyctrl = 0
ownpal = 0
under = 1

[State 3100, Pset]
type = varset
trigger1 = time = 151
v = 26
value = 1

[State 0, Helper]
type = Helper
trigger1 = time = 250
helpertype = normal
name = "killer"
ID = 1254
stateno = 3001
pos = 0,0
postype = p2    ;p2,front,back,left,right
facing = -1

[State 200, 7]
type = changestate
trigger1 = Time = 310
value = 0
ctrl = 1

[Statedef 3001]
type    = S
movetype= A
physics = S
anim = 3001
Velset = 0, 0
ctrl = 0

[State 1200, BoltFat]
type = HitDef
trigger1 = anim = 3001
trigger1 = animelem = 1
p2stateno = 3003
attr = S, NA
animtype  = Light
damage = 0
numhits = 0
guardflag = MA
hitflag = MAF
sparkno = -1
p2facing = 1
ground.type = high
guardsound = 5, 14
guard.velocity = 0;
guard.slidetime = 0;20
guard.ctrltime = 20
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 0, DestroySelf]
type = DestroySelf
trigger1 = time = 10

[Statedef 3002]
type    = S
movetype= I
physics = S
ctrl = 0
velset = 0,0,0

[State 200, 7]
type = changeanim
trigger1 = Time = 0
value = 3002

