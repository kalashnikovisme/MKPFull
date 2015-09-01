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
