[Statedef 1100]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 1                      ;Number of air juggle points move takes
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0        
anim = 1100                ;Change animation (Def: no change)

[State 200, Play]
type = PlaySnd
trigger1 = animelem = 2
value = 10, 4

[State 201, 1]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage    = 106, 10                   ;Damage that move inflicts
animtype = Light                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
air.animtype = Back
guardflag = HL
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 2, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default
pausetime = 20,2                  ;Time attacker pauses, time victim shakes
sparkno = 3
sparkxy = -20,-70
guard.sparkno = -1
ground.type = High                 ;Type: High, Low, Trip (def: Normal)
p2facing = 1
ground.slidetime = 5
ground.hittime  = 20
guard.velocity = -15
ground.cornerpush.veloff = 0
guard.slidetime = 20
guard.ctrltime = 20 
ground.velocity = -30,0              ;Time to regain control after guard (def: guard.slidetime)
guard.velocity = -2
air.velocity = -2, 1
airguard.velocity = -1.9            ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.fall = 1
fall.recover = 0
p2stateno = 21238
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)
;envshake.time = 10
;envshake.freq = 30
;envshake.ampl = 5   

[State 201, 7]
type = ChangeState
trigger1 = AnimTime = 0 
value = 0
ctrl = 1

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
offset = 30*const(size.xscale), -100*const(size.xscale)
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
projanim = 1001
projhitanim = 1002
projremanim = 1002
offset = 30*const(size.xscale), -105*const(size.xscale)
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
trigger2 = Pos Y >= 0
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
anim = 1200
ctrl = 0

[State 1200, sonido]
type = Playsnd
trigger1 = time = 0
value = 10,3

[State 1200, 1]
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
p2stateno = 1202

[State 1200, 2]
type = Playerpush
trigger1 = time > 0
value = 0

[State 1200, 3]
type = Changestate
trigger1 = time = 20
;trigger2 = movehit = 1
value = 0
ctrl = 1

[State 1200, 4]
type = Changestate
trigger1 = moveguarded = 1
value = 1201
;-----------------------------------
;si es blockeado
[Statedef 1201]
type    = A
movetype= A
physics = A
juggle  = 4
poweradd= 120
velset = -.1,-13
anim = 1200
ctrl = 0

[State 1201, velsetter]
type = Veladd
trigger1 = time > 0
y = .2
;-------------------------------------
;state del oponente
[Statedef 1202]
Type = A
MoveType = H
Physics = N
Velset = 3.25, -5
ctrl = 1

[State 1202, CA]
type = Changeanim2
trigger1 = time = 0
value = 1202

[State 1202, gravedad]
type = veladd
trigger1 = time > 5
y = .3

[State 1202, CC]
type = Selfstate
trigger1 = Pos Y >= 0
trigger1 = time > 5
value = 5110

;-------------------------------------------------
[StateDef 2245]
type    = S
movetype= A
physics = S
juggle  = 4
ctrl = 0
anim = 2245

[State 1200, ZappySound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,0
volume = 100

[State 1200, Za]
type = VelSet
trigger1 = time = 1
trigger = Vel Y != 0
y = 0

[State 13130, BoltFat]
type = HitDef
trigger1 = time = 0
attr = S, NA
damage    = 298, 149
animtype  = Back
hitflag = MAF ;HAF
guardflag = HL
pausetime = 0,2
sparkno = -1
sparkxy = -18,-100
guard.sparkno = -1
hitsound   = 5,0
p2facing = 1
guardsound = 5,14
ground.cornerpush.veloff = -30
ground.type = High
guard.ctrltime = 20
guard.slidetime = 20
ground.slidetime = 20
ground.hittime = 20
ground.velocity = -1.2,-8;12
air.velocity = -1.2,-7;13
yaccel = 0.4
envshake.time = 15
envshake.freq = 70
envshake.ampl = 7
fall.recover = 0
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 2, Upperblood]
type = Helper
trigger1 = numhelper(28) < 1
trigger1 = movehit
ID = 28
stateno = 28
pos = 0, 0
postype = p1
persistent = 0
ignorehitpause = 1

[State 1200, 10]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0

[StateDef 1002]
type    = S
movetype= A
physics = S
juggle  = 7
ctrl = 0
velset = 0,0,0
anim = 10151

[State 1200, 10]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0