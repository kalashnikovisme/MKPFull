;KANO'S HEART RIP 
[Statedef 3000]
type    = S
movetype= A
physics = S
juggle  = 1
anim = 0
Velset = 0, 0
ctrl = 0

;SND - Sangre en el piso
[State 210]
type = playsnd
trigger1 = time = 127
trigger2 = time = 170
VALUE = 5,19

;Pone variable para animacion de corazon
[State 090]
type = varset
trigger1 = time = 0
v = 46
value = 1

;Jah!!
[State 090]
type = playsnd
trigger1 = time = 62
value = 4,11

;Inicia Fatal
[State 430, 31sdaa]
type = changeanim
trigger1 = Time = 60
value = 660

;Cambia Anim - Fuera Corazón
[State 9130]
type = changeanim
trigger1 = time = 125
value = 3001

;FATALITY!! >=)
[State 9130, SetFatal]
type = Varset
trigger1 = movehit
V = 4
value = 1

;HIT =P
[State 1200, BoltFat]
type = Hitdef
trigger1 = AnimElem = 4
velocity = 8, 0 
remvelocity = 0, 0
; HitDef part of projectile info
attr = S, NT
animtype = Hard
air.animtype = Back
air.fall = 1
fall.recover = 0
damage = 99999
guardflag = HL
pausetime = 0,0
sparkno = -1
sparkxy = 3,-88
p2stateno = 3003
guard.sparkno = -1
hitsound   = 5,17
;guardsound = 5,0
ground.type = High

;Explod Sangre
[State 1200]
type = explod
trigger1 = movehit = 1
trigger2 = time = 124
anim = F1
postype = p2
pos = 3,-88
ontop = 1

;State 0
[State 200, 7]
type = changestate
trigger1 = Anim = 3001
trigger1 = AnimTime = 0
value = 0
ctrl = 1