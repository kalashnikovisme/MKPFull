;-- FATALITY ESTILO JOHNNY --
[Statedef 3000]
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
value = 4,21
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
anim = 1600
ontop = 1
ownpal = 1

;Boom SND
[State 1200]
type = playsnd
trigger1 = time = 93
value = 25,2
volume = 210

[State 200, 7]
type = changestate
trigger1 = Anim = 660
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;########################################
; -- FATALITY -- MKD, Mutilation
[Statedef 3100]
type    = S
movetype= A
physics = S
juggle  = 1
anim = 0
Velset = 0, 0
ctrl = 0

[State 235]
type = varset
trigger1 = time = 61
v = 39
value = 1

[State 235]
type = explod
trigger1 = time = 60
trigger1 = var(17) = 0
anim = 2867
ownpal = 1
postype = p1

[State 235]
type = playsnd
trigger1 = time = 61
value = 25,5

[State 235, sssf]
type = envshake
trigger1 = time = 61
trigger2 = time = 181
time = 30
freq = 25
ampl = 3

[State 430]
type = playsnd
trigger1 = time = 61
value = 4,21
volume = 6000

[State 430, 31sdaa]
type = changeanim
trigger1 = Time = 60
value = 3100

[State 9130, SetFatal]
type = Varset
trigger1 = movehit
V = 4
value = 1

[State 1200, BoltFat]
type = HitDef
;triggerall = !movecontact
trigger1 = time = 0
;trigger1 = p2statetype = S
;trigger2 = p2statetype = C
attr = S, NA;SA
animtype  = Light
damage = 0
numhits = 0
guardflag = MA
hitflag = MAF 
;pausetime = 8, 8  
sparkno = -1  
p2facing = 1  
ground.type = high   
guardsound = 5, 14  
guard.velocity = 0; 
guard.slidetime = 0;20         
guard.ctrltime = 20              
p2stateno = 3003
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)
envshake.time = 20
envshake.freq = 100
envshake.ampl = 4

[State 200, 7]
type = changestate
trigger1 = Time = 320
value = 0
ctrl = 1

;########################################
; --- Hara Kiri ---

[Statedef 3500]
type    = S
movetype= A
physics = S
;anim = 0
ctrl = 0

;arregla el bug del tiempo
[State 9873, 1]
type = AssertSpecial
trigger1 = 1
flag = timerfreeze

[State 430, 31sdaa]
type = helper
trigger1 = time = 0
stateno = 3501
postype = p1

[State 430, 31sdaa]
type = changestate
trigger1 = Time = 0
value = 3503

[State 430, 31sdaa]
type = NotHitBy
trigger1 = 1
value = SCA

; Golpeamos al oponente y lo mandamos al custom state sin control...
[Statedef 3501]
type    = S
movetype= A
physics = S
anim = 9000
ctrl = 0

[State 1200, BoltFat]
type = HitDef
trigger1 = p2statetype = S
attr = S, NT
hitflag = MAFD
guardflag = A
sparkno = -1
;p1stateno = 3503
p2stateno = 3502

[State 200, 7]
type = destroyself
trigger1 = movehit

; El oponente queda sin control, la variable se pone en valor "hara kiri" y espera a que muera el otro para festejar.
[Statedef 3502]
movetype= H
ctrl = 0

;[State 9130, SetFatal];activar en caso de tener
;type = Varset
;trigger1 = time = 0
;V = 4
;value = 6

[State 3105, end]
type = changeanim
trigger1 = time = 0
value = 0

[State 430, 31sdaa]
type = selfstate
trigger1 = p2life <=0
value = 0
ctrl = 1

; Hace el Hara Kiri y muere
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
type = Playsnd
trigger1 = time = 1
value = F5,11
volume = 60
channel = 1

[State 8000, sad]
type = BGPalFX
trigger1 = time = 0
time = 9999
add = -20, -20, -20

[State 8000, sadsd]
type = BGPalFX
trigger1 = time = 2
time = 9999
add = -50, -50, -50

;[State 3105, end];si tiene anim ponerla aca
;type = changeanim
;trigger1 = time = 60
;value = 3500

;arregla el bug del tiempo
[State 9873, 1]
type = AssertSpecial
trigger1 = 1
flag = timerfreeze

;[State 430, 31sdaa]; esto va si tiene anim
;type = changestate
;trigger1 = anim = 3500
;trigger1 = animtime = 0 
;value = 3504

[State 3105, end];esto si no tiene anim va
type = lifeadd
trigger1 = time = 60
value = -9999

[State 430, 31sdaa];esto si no tiene anim va
type = changestate
trigger1 = time = 60
value = 5050

[Statedef 3504]; no se usa si no tiene anim al igual que todo lo que sigue
type    = S
movetype= A
physics = S
anim = 3501

[State 3100, helper]
type = Helper
trigger1 = time = 0
stateno = 3505
postype = p1
pos = 0,0

[State 3100, Pset]
type = varset
trigger1 = time = 0
v = 26
value = 1

[State 3105, end]
type = lifeadd
trigger1 = time = 1
value = -9999

[State 430, 31sdaa]
type = changestate
trigger1 = time = 1
value = 5150

[Statedef 3505]
type    = S
movetype= A
physics = S

[State 210, 1]
type = SprPriority
trigger1 = time = 0
value = 2

[State 430, 31sdaa]
type = changeanim
trigger1 = time = 0
value = 3501