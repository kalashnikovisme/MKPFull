[StateDef 1000];bola rapida
type    = S
movetype= A
physics = S
juggle  = 9
ctrl = 0
velset = 0,0,0
anim = 1003

[State 1200, ZappySound]
type = PlaySnd
trigger1 = AnimElem = 5
value = 4, 14
channel = 3
volume = 70

[State 1200, Za]
type = VelSet
trigger1 = time = 1
trigger2 = Vel Y != 0
y = 0

[State 1200, 2at]
type = Explod
trigger1 = animelem = 8
anim = 888
pos = 5,-110
postype = p1
facing = -1
ID = 1002
sprpriority  >= 2
removetime = 1000

[State 1200, BoltFat]
type = Projectile
trigger1 = AnimElem = 6
triggerall = p2stateno != 9010
;trigger1 = p2stateno != 12001
;trigger2 = p2stateno != 1009
projanim = 1001
projhitanim = 1000
projremanim = 1000
offset = 60*const(size.xscale), -75*const(size.xscale)
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
;-------------------------------------
[StateDef 1200];bola lenta
type    = S
movetype= A
physics = S
juggle  = 9
ctrl = 0
velset = 0,0,0
anim = 1003

[State 1200, ZappySound]
type = PlaySnd
trigger1 = AnimElem = 5
value = 4, 14
channel = 3
volume = 70

[State 1200, Za]
type = VelSet
trigger1 = time = 1
trigger2 = Vel Y != 0
y = 0

[State 1200, 2at]
type = Explod
trigger1 = animelem = 8
anim = 888
pos = 5,-110
postype = p1
facing = -1
ID = 1002
sprpriority  >= 2
removetime = 1000

[State 1200, BoltFat]
type = Projectile
trigger1 = AnimElem = 6
triggerall = p2stateno != 9010
;trigger1 = p2stateno != 12001
;trigger2 = p2stateno != 1009
projanim = 1001
projhitanim = 1000
projremanim = 1000
offset = 60*const(size.xscale), -75*const(size.xscale)
ID = 998
velocity = 2, 0 
remvelocity = 0, 0
; HitDef part of projectile info
attr = S, SP
animtype  = Back
damage    = 180, 90
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
ground.hittime  = 30
ground.velocity = 2.5,-8            
air.velocity = 2.5,-8
air.hittime = 17  
ground.cornerpush.veloff = -25
fall.recover = 0
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 1200, 10]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0
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
offset = 70*const(size.xscale), -99*const(size.xscale)
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
;-------------------------
[Statedef 1400];invisible
type = S
movetype = I
physics = S
anim = 700 + var(17)
ctrl = 0
velset = 0,0

[State 3010, Fire]
type = explod
trigger1 = animelem = 3
anim = F11
ID = 36
pos = 0,0
shadow = -1,250,250
postype = p1
ontop = 1

[State 3011, Boom]
type = PlaySnd
trigger1 = time = 1
value = 4, 18

[State 3010, Var]
type = VarSet
trigger1 = AnimTime = 0 
var(17) = 1

[State 3010, CS]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;-----------------------
[Statedef 1401];desinvisible ;)
type = S
movetype = I
physics = S
anim = 900 + var(0)
ctrl = 0
velset = 0,0

[State 3011, Fire]
type = explod
trigger1 = Time = 1
trigger1 = stateno != 3010
anim = F11
shadow = -1,250,250
ID = 36
pos = 0,0
postype = p1
ontop = 1

[State 3011, Var]
type = VarSet
trigger1 = AnimTime = 0 
trigger2 = roundstate = 3
trigger3 = roundstate = 4
var(17) = 0 ;ifelse(var(17) = 0, 1, 0)

[State 3011, Boom]
type = PlaySnd
trigger1 = time = 1
trigger1 = stateno != 3010
value = 4, 18

[State 3011, CS]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;------------------------
[StateDef 1500];barrida
type    = S
movetype= A
physics = S
juggle  = 2
ctrl = 0
anim = 1004

[State 1100, aAccell]
type = VelAdd
trigger1 = Time < 22
x = 9

[State 1000, gibber]
type = PlaySnd
trigger1 = animelem = 1
value = 14, 0

[State 1000, 10]
type = HitDef
trigger1 = AnimElem = 3
attr = S, SA
animtype  = back
air.animtype  = Back
air.hittime  = 17;55
air.velocity = -3, -7
yaccel = 0.5
damage    = 132, 68
guardflag = L
hitflag = AHLMF
pausetime = 10,2
sparkno = -1
guard.sparkno = -1
hitsound   = -1
p1stateno = 1501
guardsound = 5,14
ground.type = High
ground.slidetime = 0
ground.hittime  = 0
ground.velocity = -3,-5
fall = 1
fall.recover = 0
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)


[State 1000, Bouncf]
type = ChangeState
trigger1 = movecontact
value = 1501;2001

[State 1000, BounceOff]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0
;--------------------------------------------
[StateDef 1501]
type    = S
movetype= I
physics = S
ctrl = 0

[State 1000, Accellw]
type = VelSet
trigger1 = time = 0
x = 0

[State 1001, 10]
type = Changestate
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;------------------------------------
[Statedef 1901]; Sek punch up
type    = A
movetype= A
physics = N
juggle  = 7
velset = 0,-18
anim = 2000
ctrl = 0

[State 181, ED]
type = Explod
trigger1 = time = 1
;trigger1 = movehit
anim = 888
id = 12000
pos = 168,100
postype = left
facing = 1
sprpriority = 1
ownpal = 1
removetime = 550

[State 2010, turn]
type = turn
trigger1 = time = 0

[State 2010, kill hit]
type = HitDef
trigger1 = time = 0
;trigger1 = p2statetype != C
attr = A, NP   
damage    = 155, 77
p2facing = 1
animtype = Back
guardflag = CM
hitflag = MHAF
priority = 3, Hit
pausetime = 0,5
sparkno = -1
;sparkxy = -10,-70
hitsound = F5,0
guardsound = 5,14
ground.type = Low
ground.slidetime = 5
ground.hittime  = 20
ground.velocity = -1, -12.5
air.velocity = -1.5,-12
yaccel = .5
fall.recover = 0
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 2010, change]
type = Changestate
;trigger1 = movecontact
trigger1 = Pos Y <= -80
value = 1902
;-------------------------------------
[Statedef 1902]; drop 
type    = A
movetype= A
physics = N
;juggle  = 4
velset = 0,-1
anim = 2020
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
