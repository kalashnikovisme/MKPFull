; --- Fatality ---
[Statedef 300000]
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
value = 9898

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

[State 200, as2as]
type = Posadd
trigger1 = time = 140
X = 150

;[State 200, as2as]
;type = PosSet
;trigger1 = time = 55
;pos = 0,0
;postype = p1

[State 200, 7]
type = changestate
trigger1 = AnimTime = 0
trigger1 = anim = 9898;0
value = 0
ctrl = 1

