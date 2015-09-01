[Statedef 3000]
type    = S
movetype= A
physics = S
juggle  = 1
anim = 0
Velset = 0, 0
ctrl = 0

[State 430, 31sdaa]
type = changeanim
trigger1 = Time = 60
value = 660

[State 9130, SetFatal]
type = Varset
trigger1 = movehit
V = 4
value = 1

[State 1200, BoltFat]
type = Hitdef
trigger1 = AnimElem = 7
trigger1 = Anim = 660
velocity = 8, 0 
remvelocity = 0, 0
; HitDef part of projectile info
attr = S, NT
animtype = Hard
air.animtype = Back
air.fall = 1
fall.recover = 0
guardflag = HL
pausetime = 0,0
sparkno = 16
sparkxy = -20,-125
p2stateno = 6003;661
guard.sparkno = -1
hitsound   = 5,0
;guardsound = 5,0
ground.type = High
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 200, 7]
type = changestate
trigger1 = Anim = 660
trigger1 = AnimTime = 0
value = 0
ctrl = 1

; Fatality - Nut Cracker (MKSM)

[Statedef 3100]
type    = S
movetype= A
physics = S
juggle  = 1
anim = 0
Velset = 0, 0
ctrl = 0

[State 430, 31sdaa]
type = changeanim
trigger1 = Time = 60
value = 3100

[State 9130, SetFatal]
type = Varset
trigger1 = movehit
V = 4
value = 1

[state 9132, set pos]
type = posset
trigger1 = time = 1
Y = 0


[State 1200, BoltFat]
type = Hitdef
triggerall = Anim = 3100
trigger1 = animelem = 6
trigger2 = animelem = 8
attr = S, NT
animtype = Hard
air.animtype = Back
air.fall = 1
fall.recover = 0
guardflag = HL
pausetime = 0,0
sparkno = 3
sparkxy = -20,-55
p2stateno = 3008
guard.sparkno = -1
ground.type = High
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 90
value = 4,1

[State 430, 31sdaa]
type = changeanim
trigger1 = Time = 350
value = 3101

[State 1200, BoltFat]
type = Hitdef
trigger1 = Anim = 3101
trigger1 = animelem = 2
attr = S, NT
animtype = Hard
air.animtype = Back
air.fall = 1
fall.recover = 0
guardflag = HL
pausetime = 0,0
sparkno = -1
sparkxy = -20,-125
p2stateno = 3009
guard.sparkno = -1
hitsound   = 5,0
;guardsound = 5,0
ground.type = High
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 200, 7]
type = changestate
trigger1 = Anim = 3101
trigger1 = AnimTime = 0
value = 0
ctrl = 1
