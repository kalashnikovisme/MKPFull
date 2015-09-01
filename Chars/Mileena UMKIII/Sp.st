;** sai de mileena en el suelo **
[StateDef 1000]
type    = S
movetype= A
physics = S
juggle  = 2
velset = 0,0
anim = 1000
ctrl = 0

[State 1000, sai]
type = PlaySnd
trigger1 = AnimElem = 3
value = 10, 1


[State 1000, 0.1]
type = Posset
trigger1 = Pos Y != 0
trigger1 = time = 0
Y = 0

[State 1000, saivolando]
type = Projectile
trigger1 = AnimElem = 4;3
projanim = 1001
projhitanim = 1002
projremanim = 1002
offset = 60*const(size.xscale), -110*const(size.xscale)
velocity = 9, 0 
remvelocity = 0, 0
; info del HitDef del proyectíl
attr = S, SP
p2stateno = 21238
projID = 1234
damage    = 240, 120
animtype = Light
air.animtype = Back                               
guardflag = HL
hitflag = MAF            
priority = 2, Hit                    
animtype = Light
air.animtype = Back
guardflag = HL
pausetime = 0,2
sparkno = -1
guard.sparkno = -1
hitsound   = S10,2
guardsound = 5,14
ground.type = High
ground.slidetime = 20
ground.hittime  = 15
ground.velocity = -15,0
air.velocity = -4,-5
yaccel = 0.45
air.fall = 1
fall.recover = 0
air.juggle = 3
kill       = Var(9) = 0
fall.kill  = Var(9) = 0
guard.kill = Var(9) = 0

[State 1000, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;--------------------------------------------
;** sai de mileena en el aire **
[StateDef 1010]
type    = A
movetype= A
physics = S
juggle  = 2
velset = 0,0
anim = 1010
ctrl = 0

[State 1010, sai]
type = PlaySnd
trigger1 = AnimElem = 2
value = 10, 1

[State 1010, saivolando]
type = Projectile
trigger1 = AnimElem = 3
projanim = 1011
projhitanim = 1002
projremanim = 1002
offset = 60*const(size.xscale), -110*const(size.xscale)
velocity = 9, 0 
remvelocity = 0, 0
; info del HitDef del proyectíl
attr = S, SP
p2stateno = 21238
projID = 1234
damage    = 240, 120
animtype = Light
air.animtype = Back                               
guardflag = HL
hitflag = MAF            
priority = 2, Hit                    
animtype = Light
air.animtype = Back
guardflag = HL
pausetime = 0,2
sparkno = -1
guard.sparkno = -1
hitsound   = S10,2
guardsound = 5,14
ground.type = High
ground.slidetime = 20
ground.hittime  = 15
ground.velocity = -15,0
air.velocity = -3,-4
air.fall = 1
fall.recover = 0
air.juggle = 3
kill       = Var(9) = 0
fall.kill  = Var(9) = 0
guard.kill = Var(9) = 0

[State 1010, cae]
type = ChangeState
trigger1 = AnimTime = 0
value = 1011

;cae
[Statedef 1011]
type    = A
movetype= I
physics = A
juggle  = 4
poweradd= 120
velset = 0,0
anim = 2244
ctrl = 0

[State 1011]
type = Veladd
trigger1 = time > 0
y = .2

;-------------------------------------
;Teleport kick
[Statedef 2000]
type    = S
movetype= A
physics = N
juggle  = 4
poweradd= 120
velset = 0,13
anim = 2020
ctrl = 0

[State 3000, 1]
type = Playsnd
trigger1 = Animelem = 1
value = 10, 3

[State 2000, NHB]
type = nothitby
trigger1 = time > 0
value = SCA

[State 2000, changepos]
type = Posadd
trigger1 = Pos Y > 80
x = (P2Dist X) - 65
y = -300

[State 2000, changestate]
type = Changestate
trigger1 = Pos Y < -80
value = 2010
;------------------------------------
;Cae del cielo
[Statedef 2010]
type    = S
movetype= A
physics = N
juggle  = 4
poweradd= 120
velset = 0,13
anim = 2000
ctrl = 0

[State 210, 1.4]
type = Playsnd
trigger1 = Animelem = 2
value = F5,15

[State 210, 1]
type = Playsnd
trigger1 = Animelem = 2
value = 4,15

[State 2010, kill hit]
type = HitDef
trigger1 = time = 0
attr = C, NA   
p2stateno = 21238
damage    = 191,47
animtype = Back
guardflag = M
hitflag = MAF
priority = 3, Hit
pausetime = 8,8
sparkno = -1
guard.sparkno = -1
sparkxy = -10,-70
hitsound = 5,1
guardsound = 5,14
ground.type = low
ground.slidetime = 25
ground.hittime  = 25
ground.velocity = -5
air.velocity = -1,-3
air.fall = 1
yaccel = 0.45
fall.recover = 0
kill = (Var(9) = 0)

[State 2010, change]
type = Changestate
trigger1 = movecontact
trigger2 = Pos Y >= -40
value = 2020
;-------------------------------------
;patrás
[Statedef 2020]
type    = A
movetype= A
physics = N
juggle  = 4
poweradd= 120
velset = -2,-3
anim = 2010
ctrl = 0

[State 2020]
type = Veladd
trigger1 = time > 3
y = .4

[State 2020]
type = Changestate
trigger1 = Pos Y >= -6
value = 0
ctrl = 1
;----------------------------------------
;Roll
[Statedef 1200]
type    = C
movetype= A
physics = N
juggle  = 4
poweradd= 120
velset = 10,0
anim = 3000
ctrl = 0

[State 3000, sonido]
type = Playsnd
trigger1 = time = 0
value = 10, 0

[State 3000, 1]
type = HitDef
trigger1 = time = 0
attr = C, NA   
damage    = 220, 110 
animtype = Light
guardflag = M
hitflag = MAF
priority = 3, Hit
pausetime = 0,0
sparkno = -1
guard.sparkno = -1
guardsound = 5,14
ground.type = Low
ground.slidetime = 5
ground.hittime  = 11
ground.velocity = -2
air.velocity = -1,-3
fall = 1
kill       = Var(9) = 0
fall.kill  = Var(9) = 0
guard.kill = Var(9) = 0
p2stateno = 3002

[State 3000, 2]
type = Playerpush
trigger1 = time > 0
value = 0

[State 3000, 3]
type = Changestate
trigger1 = time = 20
;trigger2 = movehit = 1
value = 0
ctrl = 1

[State 3000, 4]
type = Changestate
trigger1 = moveguarded = 1
value = 3001
;-----------------------------------
;si es blockeado
[Statedef 3001]
type    = A
movetype= A
physics = A
juggle  = 4
poweradd= 120
velset = -.1,-13
anim = 3000
ctrl = 0

[State 3001, velsetter]
type = Veladd
trigger1 = time > 0
y = .2
;-------------------------------------
;state del oponente
[Statedef 3002]
Type = A
MoveType = H
Physics = N
Velset = 3.25, -5
ctrl = 1

[State 3002, CA]
type = Changeanim2
trigger1 = time = 0
value = 3002

[State 3002, gravedad]
type = veladd
trigger1 = time > 5
y = .3

[State 3002, CC]
type = Selfstate
trigger1 = Pos Y >= 0
trigger1 = time > 5
value = 5110