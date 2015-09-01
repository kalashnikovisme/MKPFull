;--------------------------
[StateDef 1300];acido
type    = S
movetype= A
physics = S
juggle  = 9
ctrl = 0
velset = 0,0,0
anim = 10151

[State 1200, ZappySound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 4, 12
channel = 3
volume = 70

[State 1200, Za]
type = VelSet
trigger1 = time = 1
trigger2 = Vel Y != 0
y = 0

[State 1200, BoltFat]
type = Projectile
trigger1 = AnimElem = 3
projanim = 1016
projhitanim = 1040
projremanim = 1040
offset = 100*const(size.xscale), -109*const(size.xscale)
ID = 998
velocity = 7, 0
remvelocity = 0, 0
; HitDef part of projectile info
attr = S, SP
animtype  = Light
damage    = 180, 90
guardflag = HL
hitflag = MAF
pausetime = 0, 2
sparkno = 7
sparkxy = 15,-10
guard.sparkno = 7
p1stateno = 1301;1003
hitsound = 5,0
guardsound = 5,14
p2facing = 1
ground.type = High
ground.slidetime = 20
ground.hittime  = 15
guard.ctrltime = 20
ground.velocity = -15,0
air.velocity = -4,-5
air.fall = 1
air.juggle = 3
fall.recover = 0
p2stateno = 21238
yaccel = 0.45
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)



[State 1200, 10]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0
;--------------------
[StateDef 1301];p1state acido
type    = S
movetype= A
physics = S
juggle  = 2
ctrl = 0
velset = 0,0,0

[State 1200, Za]
type = VelSet
trigger1 = time = 1
trigger2 = Vel Y != 0
y = 0

[State 1200, 2at]
type = Explod
trigger1 = p2statetype != A
trigger1 = time = 16
anim = F7
pos = 70,-110
postype = p2
facing = -1
;ID = 112
sprpriority  >= 2
;ontop = 1

[State 1200, 2at]
type = Explod
trigger1 = p2statetype != A
trigger1 = time = 10
anim = F7
pos = 20,-112
postype = p2
facing = -1
;ID = 112
sprpriority  >= 2
;ontop = 1

[State 1200, 2at]
type = Explod
trigger1 = p2statetype != A
trigger1 = time = 7
anim = F7
pos = 40,-114
postype = p2
facing = -1
;ID = 112
sprpriority  >= 2
;ontop = 1

[State 1200, 2at]
type = Explod
trigger1 = p2statetype != A
trigger1 = time = 3
anim = F7
pos = 5,-110
postype = p2
facing = -1
;ID = 112
sprpriority  >= 2
;ontop = 1

[State 1200, 10]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0

;============================================================

[StateDef 1005]
type    = S
movetype= A
physics = S
juggle  = 6
ctrl = 0
velset = 0,0,0
anim = 1005
sprpriority = 9

[State 1200, ZappySound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 4, 12
channel = 3
volume = 70

[State 1200, Za]
type = VelSet
trigger1 = time = 1
trigger2 = Vel Y != 0
y = 0

[State 1200, BoltFat]
type = Projectile
trigger1 = AnimElem = 3
projanim = 1016
projhitanim = 1040
projremanim = 1040
offset = 100*const(size.xscale), -125*const(size.xscale)
ID = 998
velocity = 7, 0
remvelocity = 0, 0
; HitDef part of projectile info
attr = S, SP
animtype  = Light
damage    = 180, 90
guardflag = HL
hitflag = MAF
pausetime = 0, 2
sparkno = 7
sparkxy = 15,-10
guard.sparkno = 7
hitsound = 5,0
guardsound = 5,14
p2facing = 1
ground.type = High
ground.slidetime = 20
ground.hittime  = 15
guard.ctrltime = 20
ground.velocity = -15,0
air.velocity = -4,-5
air.fall = 1
air.juggle = 3
fall.recover = 0
p2stateno = 21238
yaccel = 0.45
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 88500, NotFreindly]
type = VarSet
trigger1 = AnimElem = 4
v = 5
value = 1

[State 88500, Fall]
type = ChangeState
trigger1 = time = 9
value = 1306
;--------------------
[Statedef 1306]; Drop
type    = A
movetype= I
physics = A
juggle  = 4
velset = 0,0
anim = 1006
ctrl = 0

[State 1101]
type = Veladd
trigger1 = time > 0
y = .3
;-------------------------------
[StateDef 2000];bola rapida
type    = S
movetype= A
physics = S
juggle  = 9
ctrl = 0
velset = 0,0,0
anim = 2000

[State 1200, ZappySound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 4, 14
channel = 3
volume = 70

[State 1200, Za]
type = VelSet
trigger1 = time = 1
trigger2 = Vel Y != 0
y = 0

[State 1200, BoltFat]
type = Projectile
trigger1 = AnimElem = 3
triggerall = p2stateno != 9010
;trigger1 = p2stateno != 12001
;trigger2 = p2stateno != 1009
projanim = 2001
projhitanim = 2002
projremanim = 2002
offset = 10*const(size.xscale), -90*const(size.xscale)
ID = 997
velocity = 5, 0
remvelocity = 0, 0
; HitDef part of projectile info
attr = S, SP
animtype  = Back
damage    = 149, 75
guardflag = M
hitflag = MAF
pausetime = 0, 2
sparkno = -1
guard.sparkno = -1
hitsound = 5,0
guardsound = 5,14
ground.type = High
ground.slidetime = 30
p2facing = 1
guard.ctrltime = 20
guard.velocity = -25
guard.slidetime = 20
ground.hittime  = 20
ground.velocity = 2.5,-8
air.velocity = 2.5,-8
air.hittime = 17
ground.cornerpush.veloff = -25
;fall = 1
fall.recover = 0
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 1200, 10]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0

;-------------------------------------
[StateDef 1100];empujon
type = S
movetype= A
physics = S
ctrl = 0
anim = 1100

[State 1100, change1]          ;si esta muy lejos, solo corre
type = ChangeState
trigger1 = BackEdgeDist < 13
trigger1 = p2bodydist X > 165
trigger2 = p2stateno = 9010
value = 1101                   ;state que lo deja cerca del enemigo

[State 1100, change2]          ;si el oponente esta saltando, o tirado en el piso
type = ChangeState             ;corre al otro lado
trigger1 = p2statetype != S
trigger1 = p2statetype != C
value = 1102                   ;state que lo deja del otro lado

[State 1100, hit]
type = HitDef
trigger1 = p2stateno != 130
trigger1 = p2stateno != 131
trigger1 = p2bodydist X < 40
attr = S,NA
sparkno = -1
p2stateno = 1104;no tiene control, solo defensa parado y agachado
numhits = -1

[State 1100, hit]
type = HitDef
trigger1 = p2stateno = 130
trigger2 = p2stateno = 131
triggerall = p2bodydist X < 5
attr = S,NA
sparkno = -1
guardflag = HL
guardsound = 5,14
numhits = -1

[State 1100, Bouncf]
type = ChangeState
trigger1 = moveguarded  ;si se defiende
value = 1109            ;vibra

[state 1100, plush]
type = playerpush
trigger1 = 1
value = 0

[State 1001, 10]
type = Changestate
trigger1 = p2bodydist X < -110
trigger2 = time > 30              ;porlas
value = 1105

[State 1100, aAccell]   ;lo hace correr
type = VelAdd
trigger1 = 1
x = 12
;-------------------------------
[StateDef 1101];si estaba lejos
type    = S
movetype= I
physics = S

[State 1100, aAccell]       ;lo hace correr
type = VelAdd
trigger1 = 1
x = 12

[State 1001, 10]
type = Changestate
trigger1 = p2bodydist X < 30
trigger2 = time = 21         ; porlas
value = 0
ctrl = 1
;---------------------
[StateDef 1102];si salta
type    = S
movetype= I
physics = S

[State 1100, aAccell]   ;lo hace correr
type = VelAdd
trigger1 = 1
x = 12

[state 999, plush]
type = playerpush
trigger1 = 1
value = 0

[State 1001, 10]
type = Changestate
trigger1 = p2bodydist X < -60
trigger2 = time > 30              ;porlas
value = 0
ctrl = 1
;-------------------------
[StateDef 1104]
type    = S
movetype= I
physics = S
anim = 0
ctrl = 0
velset = 0,0

[state 1104,null]       ;porlas modo team
type = changestate
trigger1 = time = 30
value = 0
ctrl = 1
;---------------------------
[StateDef 1105]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 1102

[state 1104,m]
type = turn
trigger1 = time = 0

[state 999, push]
type = playerpush
trigger1 = 1
value = 0

[State 1000, 10]
type = HitDef
trigger1 = time = 0
attr = S,NA
sparkno = -1
p1stateno = 1107
p2stateno = 1108
numhits = -1

[state 1107,ch]           ;porlas
type = changestate
trigger1 = time = 1
value = 1107
;-----------------------
[StateDef 1107]
type    = S
movetype= A
physics = S
velset = 0,0

[state 444,78]
type = veladd
trigger1 = animelem = 4
x = 40

[State 1000, 10]
type = HitDef
trigger1 = AnimElem = 4
attr = S,NA
animtype  = hard
damage    = 150, 75
guardflag = HL
pausetime = 20,0
hitflag = AHLMF
sparkno = 2;-1
sparkxy = -30,-90
guard.sparkno = -1
hitsound   = 5,0
guardsound = 5,14
ground.type = High
ground.slidetime = 0
ground.hittime  = 0
ground.velocity = -6,-4;3.6
air.velocity = -3,-4;3.6;2
air.hittime = 17
yaccel = 0.45
fall = 1
fall.recover = 0
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)
envshake.time = 15
envshake.freq = 130
envshake.ampl = 8

[state 444,5]
type = changestate
trigger1 = animtime = 0
trigger2 = time = 25       ;porlas
value = 0
ctrl = 1
;----------------------
[StateDef 1108]
type    = S
movetype= I
physics = S
velset = 0,0
anim = 5

[state 1104,m]
type = turn
trigger1 = time = 0

[state 1104,mov]
type = changeanim
trigger1 = animtime = 0
value = 0

[state 1104,mov]
type = veladd
trigger1 = FrontEdgeDist < 30
x = -30

[state 1106,ch]
type = selfstate
trigger1 = time = 10
value = 0
ctrl = 1
;----------------------
[StateDef 1109]
type    = S
movetype= I
physics = S
anim = 1101

[state 1109,biv]
type = velset
trigger1 = time = 0
X = 0

[state 1109,ch]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1
;--------------------------------
[Statedef 1500];teleport punch
type    = A
movetype= A
physics = N
juggle  = 6
velset = 0,0
anim = 1500
ctrl = 0

[State 2010, sound]
type = Playsnd
trigger1 = time = 0
value = 4,21

[State 2000, changepos]
type = Posadd
trigger1 = animtime = 0
x = (P2Dist X) + 40

[State 2000, changestate]
type = Changestate
trigger1 = animtime = 0
value = 1501
;------------------------------------
; Sek punch up
[Statedef 1501]
type    = A
movetype= A
physics = N
juggle  = 7
velset = 0,0
anim = 1501
ctrl = 0

[State 2010, sound]
type = Playsnd
trigger1 = time = 0
value = 4,21

[State 0, Turn]
type = Turn
trigger1 = time = 0


[State 2010, kill hit]
type = HitDef
trigger1 = !MoveContact
attr = C, NA
damage    = 200
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
ground.hittime  = 20
ground.velocity = -1.8,-11
air.velocity = -1.8,-12
yaccel = 0.38
envshake.time = 15
envshake.freq = 70
envshake.ampl = 7
fall.recover = 0
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)
priority = 1, Miss

[State 1200, 10]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0
