; --- Fatality ---
[Statedef 3000]
type    = S
movetype= A
physics = S
juggle  = 1
anim = 0
Velset = 0, 0
ctrl = 0

[State 9130, SetFatal]
type = Varset
trigger1 = movehit
V = 4
value = 1

[State 430, 31sdaa]
type = changeanim
trigger1 = Time = 60
value = 430

[State 1200, BoltFat]
type = HitDef
trigger1 = !movecontact
attr = S, NT
damage    = 0, 0
animtype = Light
air.animtype = Back
p2stateno = 6003;661
air.fall = 1
numhits = -1
fall.recover = 0
guardflag = HL
pausetime = 40,10
sparkno = 16
sparkxy = 0,-145
guard.sparkno = -1
hitsound   = 5,0
guardsound = 5,0

[State 200, 7]
type = changestate
trigger1 = AnimTime = 0
trigger1 = anim = 430;0
value = 0
ctrl = 1

;-------------------------------------------------------------
[Statedef 3200]
type    = S
movetype= A
physics = S
anim = 0
ctrl = 0

[State 1001, 10]
type = Changeanim
trigger1 = time = 60
value = 240

[State 9130, SetFatal]
type = Varset
trigger1 = movehit
V = 4
value = 1

[State 1000, 10]
type = HitDef
trigger1 = !movecontact
attr = S, NA
hitflag = M
sparkno = -1
p2stateno = 3001
numhits = 0
fall = 1

[State 1001, 10]
type = Changeanim
trigger1 = AnimTime = 0
trigger1 = Anim = 240
value = 0

[State 1001, 10]
type = Changestate
trigger1 = Time = 190
value = 0
ctrl = 1

[Statedef 3001]
type    = S
movetype= H
physics = S
ctrl = 0

[State 1200, ound]
type = PlaySnd
trigger1 = time = 0
value = F5, 29
volume = 50

[State 9130, SetFatal]
type = posadd
trigger1 = time = 0
x = - 35

[State 1001, 10]
type = selfstate
trigger1 = Time = 1
value = 6004

;---------------------------------------------------
[Statedef 3300]
type    = S
movetype= A
physics = S
juggle  = 1
anim = 0
Velset = 0, 0
ctrl = 0

[State 235]
type = explod
trigger1 = time = 60
trigger1 = var(17) = 0
anim = 2866
id = 2866
postype = p1
ownpal = 1

[State 235, sssf]
type = envshake
trigger1 = time = 80
time = 30
freq = 25
ampl = 3

[State 430]
type = playsnd
trigger1 = time = 61
value = 1,0
volume = 6000

[State 430, 31sdaa]
type = changeanim
trigger1 = Time = 60
value = 660

[State 9130, SetFatal]
type = Varset
trigger1 = movehit
V = 4
value = 1

[State 235]
type = playsnd
trigger1 = time = 60
value = 25,6

[State 1200, BoltFat]
type = Hitdef
trigger1 = time = 95
trigger1 = Anim = 660
velocity = 8, 0 
remvelocity = 0, 0
; HitDef part of projectile info
attr = S, NT
animtype = Hard
air.animtype = Back
air.fall = 1
numhits = 0
fall.recover = 0
guardflag = HL
pausetime = 0,0
sparkno = 16
sparkxy = -20,-125
p2stateno = 6003;661
guard.sparkno = -1
hitsound   = -1,-1
;guardsound = 5,0
ground.type = High
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

;Explosion P2
[State 1200]
type = explod
trigger1 = time = 93
postype = p2
anim = 910
ontop = 1
ownpal = 1

;Boom SND
[State 1200]
type = playsnd
trigger1 = time = 93
value = 4,19
volume = 210

[State 200, 7]
type = changestate
trigger1 = Anim = 660
trigger1 = AnimTime = 0
value = 0
ctrl = 1