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
anim = 493
pos = -30, 0
postype = p1
ownpal = 0
ID = 1010

[State 1601, Hit]
type = HitDef
trigger1 = time = 0;!movecontact
attr = S, HA
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
envshake.time = 13
envshake.freq = 50
envshake.ampl = 5
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
trigger1 = numhelper(1601) < 2
;trigger1 = p2stateno != 9010
;trigger1 = p2life > 10
trigger2 = time = 14
trigger2 = numhelper(1601) < 2
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
anim = 11221
velset = 3,0
ctrl = 0
sprpriority = 2

[State 9327, explod]
type = Explod
trigger1 = time%8=3
trigger1 = anim = 11221
anim = 493
pos =  -10, 5
postype = p1
ownpal = 0
ID = 1010

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

[State 1601]
type = changeanim
trigger1 = time <= 5
value = anim
elem = 1

[State 1601]
type = changeanim
trigger1 = time = (5,10]
value = anim
elem = 2

[State 1601]
type = changeanim
trigger1 = time = (10,15]
value = anim
elem = 3

[State 1601]
type = changeanim
trigger1 = time = (15,25]
value = anim
elem = 4

[State 1601, t15]
type = velset
trigger1 = time = 5
y = -2.25

[State 1601, t25]
type = velset
trigger1 = time = 10
x = 7
y = -3

[State 1601, t35]
type = velset
trigger1 = time = 15
x = 0
y = -3

; BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB

[State 1601, 0]
type = VelSet
triggerall = time > 25
trigger1 = Abs(p2dist X / (p2dist Y + 70)) > 4
trigger2 = p2dist Y = [69,71]
x = IfElse(p2dist X > 0, 4, -4)
y = 0

[State 1601, 30]
type = VelSet
triggerall = time > 25
triggerall = Abs(p2dist X / (p2dist Y + 70)) = [1, 4]
trigger1 = p2dist Y > 71
trigger2 = p2dist Y < 69
x = IfElse(p2dist X > 0, 4, -4)
y = IfElse(p2dist Y > 70,4,-4)

[State 1601, 60]
type = VelSet
triggerall = time > 25
triggerall = Abs(p2dist X / (p2dist Y + 70)) = [0.2, 1)
trigger1 = p2dist Y > 71
trigger2 = p2dist Y < 69
x = IfElse(p2dist X > 0,4,-4)
y = IfElse(p2dist Y > 70, 4, -4)

[State 1601, 90]
type = VelSet
triggerall = time > 25
triggerall = p2dist X / (p2dist Y + 70) = [-0.2, 0.2]
trigger1 = p2dist Y > 71
trigger2 = p2dist Y < 69
x = 0
y = IfElse(p2dist Y > 70, 4, -4)

[State 1601, 0A]
type = changeanim
triggerall = time > 25
trigger1 = Abs(p2dist X / (p2dist Y + 70)) > 4
trigger2 = p2dist Y = [69,71]
value = anim
elem = 1 + 6*(p2dist X < 0)

[State 1601, 30A]
type = changeanim
triggerall = time > 25
triggerall = Abs(p2dist X / (p2dist Y + 70)) = [1, 4]
trigger1 = p2dist Y > 71
trigger2 = p2dist Y < 69
value = anim
elem = IfElse(p2dist Y > 70,12 - 4*(p2dist X < 0), 2 + 4*(p2dist X < 0))

[State 1601, 60A]
type = changeanim
triggerall = time > 25
triggerall = Abs(p2dist X / (p2dist Y + 70)) = [0.2, 1)
trigger1 = p2dist Y > 71
trigger2 = p2dist Y < 69
value = anim
elem = IfElse(p2dist Y > 70,11 - 2*(p2dist X < 0), 3 + 2*(p2dist X < 0))

[State 1601, 90A]
type = changeanim
triggerall = time > 25
triggerall = p2dist X / (p2dist Y + 70) = [-0.2, 0.2]
trigger1 = p2dist Y > 71
trigger2 = p2dist Y < 69
value = anim
elem = 4 + 6*(p2dist Y > 70)

; EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE

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
envshake.time = 13
envshake.freq = 50
envshake.ampl = 5
kill       = root, Var(9) = 0
fall.kill  = root, Var(9) = 0
guard.kill = root, Var(9) = 0

[State 1601, explosion]
type = Explod
trigger1 = moveguarded = 1
trigger2 = movehit = 1
trigger3 = Time = 200
trigger4 = p2dist X= [-1,1]
trigger4 = p2dist Y= [69,71]
trigger5 = p2life = 0
anim = 1012
pos = 10,0
postype = p1
sprpriority = 5

;[State 1601, explosion]
;type = Explod
;trigger1 = movehit = 1
;anim = 1012
;pos = 10,0
;postype = p1
;sprpriority = 5

;chau helper cohete
[State 1601, destroyself]
type = DestroySelf
trigger1 = Time = 200
trigger2 = MoveGuarded = 1
trigger3 = MoveContact = 1
trigger4 = stateno = 712
trigger5 = stateno = 713
trigger6 = p2stateno = 712
trigger7 = p2stateno = 713
trigger8 = p2dist X= [-1,1]
trigger8 = p2dist Y= [69,71]
trigger9 = p2life = 0

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
trigger2 = p2life = 0
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
velset = 0,-15
anim = 2010
ctrl = 0

[State 9327, explod]
type = Explod
trigger1 = time%2=1
trigger1 = anim = 2010
anim = 493
pos = -7, 3
postype = p1
ownpal = 0
ID = 1010

[State 2010, sound]
type = Playsnd
trigger1 = time = 0
value = 4,4

[State 2010, sound]
type = Playsnd
trigger1 = time = 0
value = 4,14

[State 2000, changestate]
type = Changestate
trigger1 = time = 15
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

[State 9327, explod]
type = Explod
trigger1 = time%2=1
trigger1 = anim = 2000
anim = 493
pos = -7, 3
postype = p1
ownpal = 0
ID = 1010

[State 2000, changepos]
type = Posadd
trigger1 = time = 0
y = (P2Dist Y) + 200
x = (P2Dist X) + 40

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
trigger1 = !movecontact
;trigger1 = p2statetype != C
attr = A, NA
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
envshake.time = 10
envshake.freq = 30
envshake.ampl = 5
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

[Statedef 1400]
type    = A
movetype= A
physics = N
juggle  = 5
ctrl = 0
anim = 1400
sprpriority = 2

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = time = 11
value = 1410

[State 9327, explod]
type = Explod
trigger1 = time%2=1
trigger1 = anim = 1410
anim = 493
pos = -70, -93
postype = p1
ownpal = 0
ID = 1010

[State 1100, aAccell]
type = VelAdd
trigger1 = command = "holdfwd"
x = .8

[State 1100, aAccell]
type = VelAdd
trigger1 = command = "holdup"
y = -.4

[State 1100, aAccell]
type = VelAdd
trigger1 = command = "holddown"
trigger1 = pos Y != 0
y = .4

[State 3443]
type = VelSet
trigger1 = time = 0
y = 0
X = 0

[State 3443]
type = VelSet
trigger1 = time > 16
y = 0
X = 11

[State 3443, 1]
type = PlaySnd
trigger1 = Time = 16
value = 4, 4

[State 3443, 3]
type = HitDef
trigger1 = !movecontact
attr = S, NA
animtype  = Back
damage    = 290, 40
guardflag = HL
hitflag = MAF
pausetime = 10,2
sparkno = -1
guard.sparkno = -1
hitsound = 5,0
guardsound = 5,14
ground.type = High
ground.slidetime = 30
p2facing = 1
guard.ctrltime = 20
guard.slidetime = 20
ground.hittime  = 30
ground.velocity = -6,-3
air.velocity = -6,-3
air.hittime = 17
fall.recover = 0
envshake.time = 13
envshake.freq = 50
envshake.ampl = 5
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 3443, 4]
type = ChangeState
trigger1 = AnimTime = 0
trigger1 = pos Y = 0
value = 0
ctrl = 1

[State 88500, Fall]
type = ChangeState
trigger1 = Animelem = 17
trigger1 = pos Y != 0
value = 1401
;--------------------
[Statedef 1401]; Drop
type    = A
movetype= I
physics = A
juggle  = 4
velset = 0,0
anim = 1401
ctrl = 0

[State 1101]
type = Veladd
trigger1 = time > 0
y = .3
x = .3
