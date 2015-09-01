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

[State 9251,misil fire]
type = Helper
trigger1 = animelem = 3;4;9
postype = p1
pos = -10,-90
stateno = 10110

[State 9251,misil smoke]
type = Helper
trigger1 = animelem = 3;4;9
postype = p1
pos = -10,-90
stateno = 10111

[State 1000, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;----------------
[Statedef 10110]     ;misil fire
type    = S
movetype= A
physics = S
juggle  = 2
velset = 9,0
anim = 1001

[State 10000, rakieta]
type = veladd
trigger1 = 1
X = 9


[State 10000, rakieta]
type = destroyself
trigger1 = p2stateno = 21238
trigger2 = p2stateno = 150
trigger3 = FrontEdgeDist < -100

;----------------
[Statedef 10111]     ;misil smoke
type    = S
movetype= A
physics = S
juggle  = 2
velset = 0,0
anim = 10101

[State 10000, rakieta]
type = destroyself
trigger1 = p2stateno = 21238
trigger2 = p2stateno = 150
trigger3 = FrontEdgeDist < -100

;---------------------------


;---------------------------
[Statedef 1010]     ;un misil
type    = S
movetype= A
physics = S
juggle  = 2
velset = 9,0
anim = 10010


[State 10000, rakieta]
type = PlaySnd
trigger1 = time = 0;AnimElem = 4 
value = 4, 4
;volume = 110

[State 10000, rakieta]
type = veladd
trigger1 = 1
X = 9


[State 9327, explod] 
type = changeanim
trigger1 = p2stateno = 21238
trigger2 = p2stateno = 150
value = 10201

[State 9327]
type = Explod
trigger1 = anim = 10201
trigger1 = animelem = 2
anim = 10301
pos = -90,0;0, -90
postype = p1
bindtime = 1
vel = 0, 0
removetime = -2
sprpriority = -1

[State 1601, Hit]
type = HitDef
trigger1 = time = 0;!movecontact
attr = S, NA
damage    = 199, 98
animtype = Light
air.animtype = Back
guardflag = H
sparkno = s1012
guard.sparkno = s10121
sparkxy = 0,0
postype = p2
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
value = 14, 9

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
trigger1 = Time = 100
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
anim = 2011
ctrl = 0

[State 2010, sound]
type = Playsnd
trigger1 = time = 0
value = 4,14

[State -3]
type = Explod
triggerall = var(50) = 0
trigger1 = time = 0
anim = 36641
name = "humoarriba"
pos = 15,-25;0, -90
postype = p1
bindtime = 1
vel = 1, -3
random = 30, 50
removetime = -2
sprpriority = 1

[State -3]
type = Explod
triggerall = var(50) = 0
trigger1 = time = 0
anim = 36642
name = "humoarriba"
pos = -15,-25;0, -90
postype = p1
bindtime = 1
vel = -1, -3
random = 30, 50
removetime = -2
sprpriority = 1


[State -3]
type = Explod
triggerall = var(50) = 0
trigger1 = time = 0
anim = 36643
name = "humoarriba"
pos = -15,-35;0, -90
postype = p1
bindtime = 1
vel = 0.6, -3
random = 30, 50
removetime = -2
sprpriority = 1




[State 9327]
type = Explod
trigger1 = time = 0
anim = 3661
pos = 0,-8;0, -90
postype = p1
bindtime = 1
vel = 0, 0
removetime = -2
sprpriority = -6
;ontop = 0

[State 9327]
type = Explod
trigger1 = time = 0
anim = 3662
pos = 0,-8;0, -90
postype = p1
bindtime = 1
vel = 0, 0
removetime = -2
sprpriority = -4

[State 9327]
type = Explod
trigger1 = time = 0
anim = 3663
pos = 0,-8;0, -90
postype = p1
bindtime = 1
vel = 0, 0
removetime = -2
ontop = 1

[State 2000, changepos]
type = Posadd
trigger1 = Pos Y > 200
x = (P2Dist X) + 40

[State 2000, changestate]
type = Changestate
trigger1 = Pos Y > 200
value = 1201
;-------------------------
[Statedef 1220];teleport punch
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

[State -3]
type = Explod
triggerall = var(50) = 0
trigger1 = animelem = 2
anim = 36641
name = "humoarriba"
pos = 15,-17;0, -90
postype = p1
bindtime = 1
vel = 1, -3
random = 30, 50
removetime = -2
sprpriority = 1

[State -3]
type = Explod
triggerall = var(50) = 0
trigger1 = animelem = 2
anim = 36642
name = "humoarriba"
pos = -15,-17;0, -90
postype = p1
bindtime = 1
vel = -1, -3
random = 30, 50
removetime = -2
sprpriority = 1


[State -3]
type = Explod
triggerall = var(50) = 0
trigger1 = animelem = 2
anim = 36643
name = "humoarriba"
pos = -15,-27;0, -90
postype = p1
bindtime = 1
vel = 0.6, -3
random = 30, 50
removetime = -2
sprpriority = 1




[State 9327]
type = Explod
trigger1 = animelem = 2
anim = 3661
pos = 0,0;0, -90
postype = p1
bindtime = 1
vel = 0, 0
removetime = -2
sprpriority = -6
;ontop = 0

[State 9327]
type = Explod
trigger1 = animelem = 2
anim = 3662
pos = 0,0;0, -90
postype = p1
bindtime = 1
vel = 0, 0
removetime = -2
sprpriority = -4
;ontop = 0

[State 9327]
type = Explod
trigger1 = animelem = 2
anim = 3663
pos = 0,0;0, -90
postype = p1
bindtime = 1
vel = 0, 0
removetime = -2
;sprpriority = -6
ontop = 1

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

[State -3]
type = assertspecial
trigger1 = time = 0
flag = noshadow
time = 15

[State -3]
type = Explod
triggerall = var(50) = 0
trigger1 = time = 0
anim = 36644
name = "humoarriba"
pos = 15,-215;0, -90
postype = p1
bindtime = 1
vel = 1, -3
random = 30, 50
removetime = -2
sprpriority = 1

[State -3]
type = Explod
triggerall = var(50) = 0
trigger1 = time = 0
anim = 36645
name = "humoarriba"
pos = -15,-215;0, -90
postype = p1
bindtime = 1
vel = -1, -3
random = 30, 50
removetime = -2
sprpriority = 1


[State -3]
type = Explod
triggerall = var(50) = 0
trigger1 = time = 0
anim = 36646
name = "humoarriba"
pos = -15,-225;0, -90
postype = p1
bindtime = 1
vel = 0.6, -3
random = 30, 50
removetime = -2
sprpriority = 1


State -3]
type = Explod
triggerall = var(50) = 0
trigger1 = time = 0
anim = 36647
name = "humoarriba"
pos = 15,-210;0, -90
postype = p1
bindtime = 1
vel = 1, -3
random = 30, 50
removetime = -2
sprpriority = 1

[State -3]
type = Explod
triggerall = var(50) = 0
trigger1 = time = 0
anim = 36648
name = "humoarriba"
pos = -15,-210;0, -90
postype = p1
bindtime = 1
vel = -1, -3
random = 30, 50
removetime = -2
sprpriority = 1


[State -3]
type = Explod
triggerall = var(50) = 0
trigger1 = time = 0
anim = 36649
name = "humoarriba"
pos = -15,-220;0, -90
postype = p1
bindtime = 1
vel = 0.6, -3
random = 30, 50
removetime = -2
sprpriority = 1


[State -3]
type = Explod
triggerall = var(50) = 0
trigger1 = time = 0
anim = 366410
name = "humoarriba"
pos = 15,-215;0, -90
postype = p1
bindtime = 1
vel = 1, -3
random = 30, 50
removetime = -2
sprpriority = 1

[State -3]
type = Explod
triggerall = var(50) = 0
trigger1 = time = 0
anim = 366411
name = "humoarriba"
pos = -15,-215;0, -90
postype = p1
bindtime = 1
vel = -1, -3
random = 30, 50
removetime = -2
sprpriority = 1


[State -3]
type = Explod
triggerall = var(50) = 0
trigger1 = time = 0
anim = 366412
name = "humoarriba"
pos = -15,-225;0, -90
postype = p1
bindtime = 1
vel = 0.6, -3
random = 30, 50
removetime = -2
sprpriority = 1




[State 9327]
type = Explod
trigger1 = time = 0
anim = 3661
pos = 0,-183;0, -90
postype = p1
bindtime = 1
vel = 0, 0
removetime = -2
sprpriority = -6
;ontop = 0

[State 9327]
type = Explod
trigger1 = time = 0
anim = 3662
pos = -0,-183;0, -90
postype = p1
bindtime = 1
vel = 0, 0
removetime = -2
sprpriority = -4
;ontop = 0

[State 9327]
type = Explod
trigger1 = time = 0
anim = 3663
pos = 0,-183;0, -90
postype = p1
bindtime = 1
vel = 0, 0
removetime = -2
;sprpriority = -6
ontop = 1

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
trigger2 = p2life > 20
value = 4, 4
;volume = 110

[State 1000, 0.1]
type = Posset
trigger1 = Pos Y != 0
trigger1 = time = 0
Y = 0

[State 9251,misil]
type = Helper
trigger1 = AnimElem = 3;4 
trigger2 =  AnimElem = 3, =15
trigger2 = p2life > 20
postype = p1
pos = 0,-90
stateno = 1010

[State 9251,misil fire]
type = Helper
trigger1 = animelem = 3;4;9
trigger2 =  AnimElem = 3, =15
trigger2 = p2life > 20
postype = p1
pos = -10,-90
stateno = 10110

[State 9251,misil smoke]
type = Helper
trigger1 = animelem = 3;4;9
trigger2 =  AnimElem = 3, =15
trigger2 = p2life > 20
postype = p1
pos = -10,-90
stateno = 10111

[State 1000, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;---------------------

;==========================
;-------------------------flame on
[Statedef 2445]
type    = S
movetype= A
physics = S
juggle  = 5
ctrl = 0
velset = 0,0,0
anim = 333777

[State 240, 1.5]
type = Playsnd
trigger1 = animelem = 1
value = 20,1

[State 3,33]
type = Explod
trigger1 = p2stateno = 21238
trigger1 = var(50) = 0
anim = 3446
name = "Smoke"
pos = -10, -45
postype = p2
bindtime = -2
vel = 1, -1
removetime = -2
ontop = 0
removeongethit = 0

[State -3]
type = Explod
trigger1 = p2stateno = 21238
triggerall = var(50) = 0
anim = 3445
name = "humoarriba"
pos = -0,-70;0, -90
postype = p2
bindtime = 1
vel = 1, -1
random = 30, 70
removetime = -2
sprpriority = 10

[State -3]
type = Explod
trigger1 = animelem = 4
anim = 3447
name = "fire"
pos = 0,0;0, -90
postype = p1
bindtime = 1
vel = 0, 0
removetime = -2
sprpriority = 1
removeongethit = 1

[State -3]
type = Explod
trigger1 = animelem = 5
anim = 3448
name = "blaze"
pos = 0,0;0, -90
postype = p1
bindtime = 1
vel = 0, 0
removetime = -2
sprpriority = 6
removeongethit = 1

[State -3]
type = Explod
trigger1 = animelem = 5
anim = 3449
name = "sparkles"
pos = 60,-100;0, -90
postype = p1
bindtime = 1
vel = 0, 0
random = 30, 30
removetime = -2
sprpriority = 6
removeongethit = 1

[State -3]
type = Explod
trigger1 = p2stateno = 21238
anim = 3449
name = "sparks"
pos = -0,-90;0, -90
postype = p2
bindtime = 1
vel = -1, -1
removetime = -2
sprpriority = 1

[State -3]
type = Explod
trigger1 = p2stateno = 21238
triggerall = var(50) = 0
anim = 3445
name = "humoarriba"
pos = -0,-70;0, -90
postype = p2
bindtime = 1
vel = -1, -1
random = 30, 70
removetime = -2
sprpriority = 1

[State -3]
type = Explod
trigger1 = p2stateno = 21238
triggerall = var(50) = 0
anim = 3445
name = "humoarriba"
pos = -0,-70;0, -90
postype = p2
bindtime = 1
vel = -0.7, -1.3
random = 30, 70
removetime = -2
sprpriority = 1

[State -3]
type = Explod
trigger1 = p2stateno = 21238
triggerall = var(50) = 0
anim = 3445
name = "humoarriba"
pos = -0,-70;0, -90
postype = p2
bindtime = 1
vel = 0.6, -1.6
random = 30, 70
removetime = -2
sprpriority = 1

[State 201, 1]
type = HitDef
trigger1 = !movecontact
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage    = 250, 100                   ;Damage that move inflicts
animtype = Medium                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
air.animtype = Back
guardflag = HL
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 2, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default
pausetime = 0,2                  ;Time attacker pauses, time victim shakes
sparkno = -1
guard.sparkno = s3449
sparkxy = 0,-100
ground.cornerpush.veloff = -1
hitsound = s20,2
guardsound = -1
ground.type = High                 ;Type: High, Low, Trip (def: Normal)
p2facing = 1
guard.velocity = 0
guard.slidetime = 0
guard.ctrltime = 20
ground.hittime  = 30
air.velocity = -2, 1
air.hittime = 17
ground.cornerpush.veloff = -1
p2stateno = 21238
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 240, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;--------------------------------
;-------------------------laser pistol
[Statedef 2446]
type    = S
movetype= A
physics = S
juggle  = 5
ctrl = 0
velset = 0,0,0
anim = 333888

[State 240, 1.5]
type = Playsnd
trigger1 = animelem = 3
value = 20,3



[State 3,33]
type = Explod
trigger1 = p2stateno = 21238
trigger1 = var(50) = 0
anim = 3551
name = "Smoke"
pos = -10, -110
postype = p2
bindtime = -2
vel = 1, -1
removetime = -2
ontop = 1
removeongethit = 0

[State -3]
type = Explod
trigger1 = animelem = 4
anim = 3550
name = "beam"
pos = 0,-1;0, -90
postype = p1
bindtime = 1
vel = 0, 0
removetime = -2
ontop = 0
removeongethit = 1

[State -3]
type = Explod
trigger1 = animelem = 4
anim = 3554
name = "blaze"
pos = 0,0;0, -90
postype = p1
bindtime = 1
vel = 0, 0
removetime = -2
sprpriority = 6
removeongethit = 1

[State -3]
type = Explod
trigger1 = animelem = 3
anim = 3552
name = "sparkles"
pos = 55,-110;0, -90
postype = p1
bindtime = 1
vel = 0, 0
removetime = -2
sprpriority = 6
removeongethit = 1

[State -3]
type = Explod
trigger1 = p2stateno = 21238
anim = 3449
name = "sparks"
pos = -0,-90;0, -90
postype = p2
bindtime = 1
vel = -1, -1
removetime = -2
sprpriority = 1

[State -3]
type = Explod
trigger1 = p2stateno = 21238
triggerall = var(50) = 0
anim = 3553
name = "humoarriba"
pos = -0,-120;0, -90
postype = p2
bindtime = 1
vel = -1, -2
random = 10, 70
removetime = -2
sprpriority = 1

[State -3]
type = Explod
trigger1 = p2stateno = 21238
triggerall = var(50) = 0
anim = 3553
name = "humoarriba"
pos = -0,-120;0, -90
postype = p2
bindtime = 1
vel = -0.7, -2.6
random = 10, 70
removetime = -2
sprpriority = 1

[State -3]
type = Explod
trigger1 = p2stateno = 21238
triggerall = var(50) = 0
anim = 3553
name = "humoarriba"
pos = -0,-120;0, -90
postype = p2
bindtime = 1
vel = 0.6, -3.2
random = 10, 70
removetime = -2
sprpriority = 1

[State 201, 1]
type = HitDef
trigger1 = !movecontact
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage    = 150, 60                   ;Damage that move inflicts
animtype = Medium                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
air.animtype = Back
guardflag = HL
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 2, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default
pausetime = 0,2                  ;Time attacker pauses, time victim shakes
sparkno = -1
guard.sparkno = s3445
sparkxy = -10,-55
ground.cornerpush.veloff = -1
hitsound = s20,4
guardsound = -1
ground.type = High                 ;Type: High, Low, Trip (def: Normal)
p2facing = 1
guard.velocity = 0
guard.slidetime = 0
guard.ctrltime = 20
ground.hittime  = 30
air.velocity = -2, 1
air.hittime = 17
ground.cornerpush.veloff = -1
p2stateno = 21238
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 240, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;--------------------------------
;--------------------------------
;-------------------------laser overdose
[Statedef 2448]
type    = S
movetype= A
physics = S
juggle  = 5
ctrl = 0
velset = 0,0,0
anim = 333999

[State 240, 1.5]
type = Playsnd
trigger1 = animelem = 4
value = 20,4

[State 3,33]
type = Explod
trigger1 = animelem = 4
trigger2 = animelem = 6
trigger3 = animelem = 8
anim = 3557
name = "circuit"
pos = 45, -105
postype = p1
bindtime = -2
vel = 0, 0
removetime = -2
ontop = 0
removeongethit = 1

[State 3,33]
type = Explod
trigger1 = animelem = 5
anim = 3554
name = "sparkflare"
pos = 0, 0
postype = p1
bindtime = -2
vel = 0, 0
removetime = -2
ontop = 1
removeongethit = 1

[State 3,33]
type = Explod
trigger1 = animelem = 6
anim = 3559
name = "mcl"
pos = 20, -130
postype = p1
bindtime = -2
vel = 0, 0
removetime = -2
ontop = 1
removeongethit = 1

[State 3,33]
type = playsnd
trigger1 = animelem = 6
value = 20,6


[State 3,33]
type = playsnd
trigger1 = animelem = 8
value = 20,7
volume = 240

[State 3,33]
type = playsnd
trigger1 = animelem = 10
trigger2 = animelem = 11
value = 20,8

[State 3,33]
type = Explod
trigger1 = animelem = 7
trigger2 = animelem = 9
anim = 3555
name = "mcl flare"
pos = 0, 0
postype = p1
bindtime = -2
vel = 0, 0
removetime = -2
ontop = 1
removeongethit = 1

[State 3,33]
type = Explod
trigger1 = animelem = 9
anim = 3552
name = "mega flare"
pos = 60, -110
postype = p1
bindtime = -2
vel = 0, 0
removetime = -2
ontop = 1
removeongethit = 1

[State 3,33]
type = Explod
trigger1 = animelem = 10
anim = 3558
name = "giga flare"
pos = 0,0
postype = p1
bindtime = -2
vel = 0, 0
removetime = -2
ontop = 1
removeongethit = 0

[State 3,33]
type = Explod
trigger1 = animelem = 10
trigger2 = animelem = 11
anim = 3556
name = "breaker"
pos = 0,0
postype = p1
bindtime = -2
vel = 0, 0
removetime = -2
ontop = 1
removeongethit = 1

[State 3,33]
type = Explod
trigger1 = animelem = 11
anim = 3553
name = "smokie"
pos = 60, -115
postype = p1
bindtime = -2
vel = 0, 0
removetime = -2
ontop = 1
removeongethit = 0

[State 3,33]
type = Explod
trigger1 = animelem = 12
anim = 3553
name = "smokie"
pos = 50, -95
postype = p1
bindtime = -2
vel = 0, 0
removetime = -2
ontop = 1
removeongethit = 0

[State 3,33]
type = Explod
trigger1 = animelem = 13
anim = 3553
name = "smokie"
pos = 40, -90
postype = p1
bindtime = -2
vel = 0, 0
removetime = -2
ontop = 1
removeongethit = 0



[State -3]
type = Explod
trigger1 = p2stateno = 117
triggerall = var(50) = 0
anim = 3553
name = "humoarriba"
pos = -0,-120;0, -90
postype = p2
bindtime = 1
vel = -0.7, -2.6
random = 10, 70
removetime = -2
sprpriority = 1


[State 201, 1]
type = HitDef
trigger1 = !movecontact
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage    = 0,50                   ;Damage that move inflicts
animtype = Medium                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
air.animtype = Back
guardflag = HL
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 2, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default
pausetime = 0,2                  ;Time attacker pauses, time victim shakes
sparkno = s3666
guard.sparkno = -1
sparkxy = -30,0
sparkontop = 0
ground.cornerpush.veloff = -1
hitsound = s20,9
guardsound = -1
ground.type = High                 ;Type: High, Low, Trip (def: Normal)
p2facing = 1
guard.velocity = 0
guard.slidetime = 0
guard.ctrltime = 20
ground.hittime  = 30
air.velocity = -2, 1
air.hittime = 17
ground.cornerpush.veloff = -1
p2stateno = 117
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 240, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;-----------------death
[Statedef 117]
type    = S
movetype= H
physics = S
ctrl = 0
velset = 0,0,0

[State 9130, Setdisappear]
type = Varset
trigger1 = 1
V = 2
value = 1



[State 1, 123]
type = playsnd
Trigger1 = Time = 10
value = 4,1

[State 1, 123]
type = playsnd
Trigger1 = Time = 40
value = f5,6

[State 1, 123]
type = playsnd
Trigger1 = Time = 100
value = f200,1

[State 1, 123]
type = ChangeAnim2
Trigger1 = Time = 0
value = 888

[State 1, hp]
type = LifeSet
trigger1 = time >= 100
value = 0

[State 1, 335]
type = SelfState
trigger1 = Time = 101
value = 5150

;==================================upward

[Statedef 13000]     ;un misil
type    = S
movetype= A
physics = S
juggle  = 2
velset = 0,0
anim = 33221
ctrl = 0



[State 10000, open]
type = PlaySnd
trigger1 = AnimElem = 2 
value = 4, 6


[State -3]
type = Explod
trigger1 = animelem = 3
anim = 33223
name = "missile up"
pos = -21,-90;0, -90
postype = p1
bindtime = 1
vel = 0, -9
removetime = -2
sprpriority = 2

[State -3]
type = Explod
trigger1 = animelem = 3
anim = 33224
name = "fire up"
pos = -21,-80;0, -90
postype = p1
bindtime = 1
vel = 0, -9
removetime = -2
sprpriority = 1

[State -3]
type = Explod
trigger1 = animelem = 3
anim = 33222
name = "smoke up"
pos = -21,-40;0, -90
postype = p1
bindtime = 1
vel = 0, 0
removetime = -2
ontop = 0


[State 9251,misil]
type = Helper
trigger1 = animelem = 3;4;9
postype = p2
pos = 0,-240
stateno = 13010


[State 1000, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 13010]     ;up misil
type    = S
movetype= A
physics = S
juggle  = 2
velset = 0,0
anim = 33225

[State 10000, rakieta]
type = PlaySnd
trigger1 = time = 0;AnimElem = 4 
value = 14, 9
;volume = 125

[State 10000, rakieta]
type = veladd
trigger1 = time = 27
Y = 9

[State 1601, Hit]
type = HitDef
trigger1 = time = 0;!movecontact
attr = S, NA
damage    = 199, 98
animtype = Light
air.animtype = Back
guardflag = H
sparkno = s1012
guard.sparkno = s33226
sparkxy = -10,5
postype = p2
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

[State 10000, rakieta]
type = changeanim
trigger1 = time = 53
value = 33226

[State 10000, rakieta]
type = veladd
trigger1 = time = 53
Y = -9

[State 10000, rakieta]
type = playsnd
trigger1 = time = 53
value = 4,18
;-------------------------

[Statedef 2240]
type    = S
movetype= A
physics = S
juggle  = 4
ctrl = 0
anim = 333555



[State -3]
type = Explod
trigger1 = time = 10
triggerall = frontedgedist > 60
anim = 10101
name = "smoke"
pos = 0,-80;0, -90
postype = p1
bindtime = 1
vel = -6, 0
removetime = -2
ontop = 0
removeongethit = 1

[State -3]
type = Explod
trigger1 = time = 14
triggerall = frontedgedist > 60
anim = 10101
name = "smoke"
pos = 10,-90;0, -90
postype = p1
bindtime = 1
vel = -6, 0
removetime = -2
ontop = 0
removeongethit = 1

[State -3]
type = Explod
trigger1 = time = 14
triggerall = frontedgedist > 60
anim = 10101
name = "smoke"
pos = 20,-70;0, -90
postype = p1
bindtime = 1
vel = -6, 0
removetime = -2
ontop = 0
removeongethit = 1

[State -3]
type = Explod
trigger1 = time = 15
triggerall = frontedgedist > 60
anim = 10101
name = "smoke"
pos = 0,0;0, -90
postype = p1
bindtime = 1
vel = -4, 0
removetime = -2
ontop = 0
removeongethit = 1

[State -3]
type = Explod
trigger1 = time = 10
anim = 1001
name = "fire"
pos = -30,-80;0, -90
postype = p1
bindtime = -2
vel = 0, 0
removetime = -2
ontop = 0

[State -3]
type = Explod
trigger1 = time = 10
anim = 1001
name = "fire"
pos = -40,-75;0, -90
postype = p1
bindtime = -2
vel = 0, 0
removetime = -2
ontop = 0

[State -3]
type = Explod
trigger1 = time = 10
anim = 1001
name = "fire"
pos = -30,-70;0, -90
postype = p1
bindtime = -2
vel = 0, 0
removetime = -2
ontop = 0




[State 1100, aAccell]
type = VelAdd
trigger1 = time >= 10
x = 8

[State 1100, aAccell]
type = VelAdd
trigger1 = time >= 30
x = -8

[State 1000, bber]
type = PlaySnd
trigger1 = Time = 1
value = 4, 18
volume = 70

[State 1000, 10]
type = HitDef
trigger1 = AnimElem = 2
attr = S, SA
animtype  = back
damage    = 150, 75
guardflag = HLMF
hitflag = AHLMF
pausetime = 0,2
sparkno = -1
guard.sparkno = -1
hitsound   = 5,0
guardsound = 5,14 
ground.type = High
ground.slidetime = 0
ground.hittime  = 0
ground.velocity = -5,-6;4.5
air.velocity = -5,-5;5
air.hittime = 17  
yaccel = 0.5
fall = 1
fall.recover = 0
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)



[State 1001, 10]
type = Changestate
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;=========================pulse blades


[Statedef 12600]
type    = A
movetype= A
physics = A
juggle  = 2
ctrl = 0
anim = 333333

[State 621, adjust]
type = Turn
trigger1 = Time = 0
trigger1 = (P2Dist X < 0) && (P2Dist X > -55)

;[State 620, Select]
;type = VarRandom
;trigger1 = Time = 1
;v = 11
;range = 11, 12

[State 620, 1.5]
type = Playsnd
trigger1 = p2bodydist y > 79
trigger1 = Animelem = 1
value = 20,10

;[State 620, 145]
;type = Playsnd
;trigger1 = Animelem = 1
;value = 4,15

[State -3]
type = Explod
trigger1 = animelem = 1
trigger1 = p2bodydist y > 79
anim = 33331
name = "blade1"
pos = 0,0;0, -90
postype = p1
bindtime = -2
vel = 0, 0
removetime = -2
ontop = 1
removeongethit = 1

[State -3]
type = Explod
trigger1 = animelem = 1
trigger1 = p2bodydist y > 79
anim = 33332
name = "blade2"
pos = 0,0;0, -90
postype = p1
bindtime = -2
vel = 0, 0
removetime = -2
ontop = 0
removeongethit = 1

[State 620, 2]
type = HitDef
;trigger1 = time > 0
trigger1 = !movecontact 
attr = A, NA
damage    = 260,70
animtype  = Back
hitflag = CMAFD
;;Nothing = 10
guardflag = HL
priority = 7
;p1stateno = 621
p2facing = 1
pausetime = 0,2
sparkno = -1
sparkxy = -15,-50
guard.sparkno = -1
hitsound   = s20,11
guardsound = s20,11
ground.type = High
ground.slidetime = 40
guard.ctrltime = 20
ground.hittime  = 20
ground.velocity = -3, 2
air.velocity = -3, 6
;air.hittime  = 45
yaccel = 0.58
;fall = 1
;air.fall = 0
fall.recover = 0
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 620, 4]
type = Changestate
trigger1 = animtime = 0
value = 0
ctrl = 1
  
--------------------------------------
;-------------satellite drop
[Statedef 1110]     
type    = S
movetype= A
physics = S
juggle  = 2
velset = 0,0
anim = 30031
ctrl = 0

[State -3]
type = Explod
trigger1 = animelem = 1
trigger1 = p2statetype != A
anim = 1610
name = "target"
pos = -0,-10;0, -90
postype = p2
bindtime = -2
vel = 0, 0
random = 10, 40
removetime = 30
ontop = 1

[State -3]
type = Explod
trigger1 = time = 26
trigger1 = p2statetype = A
anim = 1611
name = "target miss"
pos = 30,-120;0, -90
postype = p1
bindtime = -2
vel = 0, 0
facing = 1
removetime = 30
ontop = 1

[State 10000, tab]
type = PlaySnd
trigger1 = time = 15 
value = 20, 12

[State 1000, 0.1]
type = Posset
trigger1 = Pos Y != 0
trigger1 = time = 0
Y = 0

[State 9251,misil]
type = Helper
trigger1 = time = 25
trigger1 = p2statetype != A
postype = p2
pos = 0,0
stateno = 1210

[State 1000, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;----------------
[Statedef 1210]     ;satelit fire
type    = S
movetype= A
physics = S
juggle  = 2
velset = 0,0
anim = 30032
;sprpriority = 6
ontop = 1
flag = noshadow

[State 10000, rakieta]
type = PlaySnd
trigger1 = AnimElem = 1 
value = 20, 13

[State -2, Noshadow]
type = AssertSpecial
trigger1 = time >= 0
flag = noshadow



[State 1601, Hit]
type = HitDef
trigger1 = time = 0;!movecontact
attr = S, NA
damage    = 188, 88
animtype = Light
air.animtype = Back
guardflag = H
sparkno = s3553
guard.sparkno = s3553
sparkxy = 0,-60
postype = p2
hitsound   = S20,2
guardsound = S20,8
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = 2,-15
air.velocity = -4,-5
air.fall = 1
fall.recover = 0
air.juggle = 3
yaccel = .45
;p2stateno = 21238
kill       = root, Var(9) = 0
fall.kill  = root, Var(9) = 0
guard.kill = root, Var(9) = 0
;palfx.sat = -100,-100,-100
;palfx.time = 40

[State -3]
type = Explod
trigger1 = movehit
triggerall = var(50) = 0
anim = 3553
name = "humoarriba"
pos = -0,-120;0, -90
postype = p2
bindtime = -1
vel = -1, -2
random = 10, 40
removetime = -2
sprpriority = 1

[State -3]
type = Explod
trigger1 = movehit
triggerall = var(50) = 0
anim = 3553
name = "humoarriba"
pos = -0,-120;0, -90
postype = p2
bindtime = -1
vel = -0.7, -2.6
random = 10, 40
removetime = -2
sprpriority = 1


[State 10000, rakieta]
type = destroyself
trigger1 = animtime = 0