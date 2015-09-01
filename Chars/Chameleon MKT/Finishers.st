[Statedef 3000]
type    = S
movetype= A
physics = S
juggle  = 1
anim = 0
Velset = 0, 0
ctrl = 0

[State 235]
type = varset
trigger1 = movehit
v = 4
value = 1

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = time = 60
value = 1010

[State 3011, Fire]
type = explod
trigger1 = Time = 60
anim = F11
shadow = -1,250,250
ID = 36
pos = -10,5
postype = p1
ontop = 1

[State 3011, Boom]
type = PlaySnd
trigger1 = time = 60
value = 4, 12

[State 3010, Var]
type = VarSet
trigger1 = time = 62
var(17) = 1

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = time = 124
value = 3000

[State 1200, BoltFat]
type = HitDef
trigger1 = anim = 3000
trigger1 = animelem = 1
p2stateno = 3002
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
envshake.time = 20
envshake.freq = 100
envshake.ampl = 4

[State 1235, PlaySnd]
type = PlaySnd
trigger1 = time = 255
trigger2 = time = 295
trigger3 = time = 335
value = 7,(random%2)

[State 1234, PlaySnd]
type = PlaySnd
trigger1 = time = 265
trigger2 = time = 305
trigger3 = time = 345
value = 7,(random%2)

[State 1236, PlaySnd]
type = PlaySnd
trigger1 = time = 275
trigger2 = time = 315
trigger3 = time = 355
value = 7,(random%2)

[State 2139, PlaySnd]
type = PlaySnd
trigger1 = time = 285
trigger2 = time = 325
trigger3 = time = 365
value = 7,(random%2)

[State 3011, Fire]
type = explod
trigger1 = Time = 400
anim = F11
shadow = -1,250,250
postype = p1
pos = -10,5
ontop = 1

[State 0, VarSet]
type = VarSet
trigger1 = time = 410
v = 17
value = 0

[State 3011, Boom]
type = PlaySnd
trigger1 = time = 400
value = 4, 12

[State 200, 7]
type = changestate
trigger1 = Time = 410
value = 0
ctrl = 1


