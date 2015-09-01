[Statedef 1000]     ;un misil
type    = S
movetype= A
physics = S
juggle  = 2
velset = 0,0
anim = 1000
ctrl = 0

[State 10000, open]
type = PlaySnd
trigger1 = AnimElem = 2 
value = 4, 6

[State 1000, 0.1]
type = Posset
trigger1 = Pos Y != 0
trigger1 = time = 0
Y = 0

[State 9251,misil]
type = Helper
trigger1 = animelem = 3;4;9
postype = p1
pos = 0,-90
stateno = 1010

[State 1000, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;---------------------------
[Statedef 1010]     ;un misil
type    = S
movetype= A
physics = S
juggle  = 2
velset = 9,0
anim = 1100

[State 10000, rakieta]
type = PlaySnd
trigger1 = time = 0;AnimElem = 4 
value = 4, 4

[State 10000, rakieta]
type = veladd
trigger1 = 1
X = 9

[State 9327, explod] 
type = Explod
trigger1 = time%2=1
trigger1 = anim = 1100
anim = F20020
pos = -30, 0
postype = p1
ownpal = 0
ID = 1010

[State 1601, Hit]
type = HitDef
trigger1 = time = 0;!movecontact
attr = S, NA
damage    = 199, 98
animtype = Light
air.animtype = Back
guardflag = HL
sparkno = 6
guard.sparkno = 6
hitsound   = S4,18
guardsound = S4,18
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -15,0
air.velocity = -4,-5
air.fall = 1
fall.recover = 0
air.juggle = 3
yaccel = .45
p2stateno = 21238
kill       = root, Var(9) = 0
fall.kill  = root, Var(9) = 0
guard.kill = root, Var(9) = 0

[State 10000, rakieta]
type = destroyself
trigger1 = movecontact
trigger2 = FrontEdgeDist < -100

;-------------------------
[Statedef 1100]  ;Misil Teledirigido
type    = S
movetype= A
physics = S
juggle  = 4
velset = 0,0
anim = 1000
sprpriority = 3
ctrl = 0

[State 10000, open]
type = PlaySnd
trigger1 = AnimElem = 2 
value = 4, 6

[State 10000, rakieta]
type = PlaySnd
trigger1 = AnimElem = 4 
value = 4, 4

[State 1600, misil Helper]
type = Helper
trigger1 = time = 14
trigger1 = numhelper(1601) < 100
;trigger1 = p2stateno != 9010
;trigger1 = p2life > 10
trigger2 = time = 14
trigger2 = numhelper(1601) < 100
trigger2 = numenemy = 2
trigger2 = p2life < 10
stateno = 1101
name = "misilteled"
id = 1601
postype = p1
pos = 20,-95
helpertype = normal
sprpriority = 3
keyctrl = 0
ownpal = 0
under = 1

[State 1600, standing state]; vuelve a normalidad
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1
;-----------------
[Statedef 1101];helper de misil
type = S
movetype = A
physics = N
anim = 1002
velset = 0,0
ctrl = 0
sprpriority = 2

[State 1601, mira Helper]
type = Helper
trigger1 = AnimElem = 1
trigger1 = numhelper(1610) = 0
;trigger1 = p2stateno != 9010
;trigger1 = p2life > 10
stateno = 1102
name = "mira"
id = 1610
postype = p2
pos = 20,-65
helpertype = normal
sprpriority = 3
keyctrl = 0
ownpal = 0
under = 1

[State 1601, vel]
type = VelSet
trigger1 = AnimElem = 6;time = 30
trigger2 = AnimElem = 9;time = 45
x = 1.5;1

[State 1601, vel]
type = VelSet
trigger1 = AnimElem = 2;time = 10
trigger2 = AnimElem = 8;time = 40
x = 3;2

[State 1601, vel]
type = VelSet
trigger1 = AnimElem = 18;time = 115
x = 6;4

[State 1601, vel]
type = VelSet
trigger1 = AnimElem = 18;time = 115
y = 0

[State 1601, vel]
type = VelSet
trigger1 = AnimElem = 10;time = 65
y = -2;-1

[State 1601, vel]
type = VelSet
trigger1 = AnimElem = 3;time = 15
trigger2 = AnimElem = 12;time = 75
y = 4;3

[State 1601, vel]
type = VelSet
trigger1 = AnimElem = 7;time = 35
y = -6;-5

;[State 1601, 1]
;type = PosAdd
;trigger1 = timemod = 10,0
;trigger1 = time = [125, 200]
;Y = -1

;[State 1601, 1.1]
;type = Posadd
;trigger1 = timemod = 10,4
;trigger1 = time = [125, 200]
;Y = 1

[State 1601, Hit]
type = HitDef
trigger1 = time = 0
trigger1 = Var(4) = 0
attr = S, SP
damage    = 199, 98
animtype = Light
air.animtype = Back
guardflag = HL
pausetime = 0,2
sparkno = -1
guard.sparkno = -1
hitsound   = S4,18
guardsound = S4,18
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -15,0
air.velocity = -4,-5
air.fall = 1
fall.recover = 0
air.juggle = 3
yaccel = .45
p2stateno = 21238
kill       = root, Var(9) = 0
fall.kill  = root, Var(9) = 0
guard.kill = root, Var(9) = 0

[State 1601, explosion]
type = Explod
trigger1 = moveguarded = 1
anim = 1012
pos = 10,0
postype = p1
sprpriority = 5

[State 1601, explosion]
type = Explod
trigger1 = movehit = 1
anim = 1012
pos = 10,0
postype = p1
sprpriority = 5

;chau helper cohete
[State 1601, destroyself]
type = DestroySelf
trigger1 = Time = 900
trigger2 = MoveGuarded = 1
trigger3 = MoveContact = 1
trigger4 = stateno = 712
trigger5 = stateno = 713
trigger6 = p2stateno = 712
trigger7 = p2stateno = 713

;Mira seguidora ;)
[Statedef 1102]
type = S
physics = N
movetype = I
juggle  = 1     
velset = 0,0
ctrl = 0  
anim = 1610

[State 1610, 2]
type = SprPriority
trigger1 = Time >= 0
value = 21

;sigue ke te sigue
[State 1610, 1]
type = PosAdd
trigger1 = P2Dist X > -20
x = 6

[State 1610, 1]
type = PosAdd
trigger1 = P2Dist X < -20
x = -6

[State 1610, 1]
type = PosAdd
trigger1 = P2Dist Y > 70
y = 6

[State 1610, 1]
type = PosAdd
trigger1 = P2Dist Y < 70
y = -6

;desaparece el helper de la mira
[State 1610, destroyself]
type = DestroySelf
trigger1 = numhelper(1601) = 0
trigger4 = stateno = 712
trigger5 = stateno = 713
trigger6 = p2stateno = 712
trigger7 = p2stateno = 713
;--------------------------------
[Statedef 1200];teleport punch
type    = A
movetype= A
physics = N
juggle  = 6
velset = 0,15
anim = 2010
ctrl = 0

[State 2010, sound]
type = Playsnd
trigger1 = time = 0
value = 4,14

[State 2000, changepos]
type = Posadd
trigger1 = Pos Y > 200
x = (P2Dist X) + 40

[State 2000, changestate]
type = Changestate
trigger1 = Pos Y > 200
value = 1201
;------------------------------------
; Sek punch up
[Statedef 1201]
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
value = 1202
;-------------------------------------
[Statedef 1202]; drop 
type    = A
movetype= A
physics = N
juggle  = 4
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
;-------------------------------
[Statedef 1300];-- 2 misiles ----------
type    = S
movetype= A
physics = S
juggle  = 2
velset = 0,0
anim = 1000
ctrl = 0

[State 10000, open]
type = PlaySnd
trigger1 = AnimElem = 2 
value = 4, 6

[State 10000, rakieta]
type = PlaySnd
trigger1 = AnimElem = 4 
trigger2 =  AnimElem = 4, =15
value = 4, 4

[State 1000, 0.1]
type = Posset
trigger1 = Pos Y != 0
trigger1 = time = 0
Y = 0

[State 9251,misil]
type = Helper
trigger1 = AnimElem = 3;4 
trigger2 =  AnimElem = 3, =15
postype = p1
pos = 0,-90
stateno = 1010

[State 1000, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;---------------------
