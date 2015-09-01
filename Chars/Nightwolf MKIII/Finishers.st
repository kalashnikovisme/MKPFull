;---------------------------------------;
;	-	 Fatality 1	 -	;
;---------------------------------------;
;--------- - SuperHachazo :P - ---------;
;---------------------------------------;

[Statedef 3000]
type    = S
movetype= A
physics = S
juggle  = 2
ctrl = 0
velset = 0,0,0
anim = 0

[State 430, 1]
type = PlaySnd
trigger1 = Time = 1
value = F5, 15

[State 430, 3451]
type = PAuse
trigger1 = Time = 3
time = 15

[State 430, 31]
type = changeanim
trigger1 = Time = 30;15
value = 3000

[State 9130, SetFatal]
type = Varset
trigger1 = movehit
V = 4
value = 1

[State 1200, Za]
type = VelSet
trigger1 = time = 1
trigger2 = Vel Y != 0
y = 0

[State 1200, BoltFat]
type = Hitdef
trigger1 = AnimElem = 5;7
trigger1 = Anim = 3000
velocity = 8, 0
remvelocity = 0, 0
; HitDef part of projectile info
attr = S, NT
animtype = Hard
air.animtype = Back
air.fall = 1
fall.recover = 0
guardflag = HL
pausetime = 0,0
sparkno = 16
sparkxy = -20,-125
p2stateno = 6003
guard.sparkno = -1
hitsound   = 5,0
;guardsound = 5,0
ground.type = High
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 200, 7]
type = changestate
trigger1 = AnimTime = 0
value = 0
ctrl = 1


[Statedef 10101]
type    = S
movetype= H
physics = N
velset = 0,999
ctrl = 0
anim = 702

[State 9125, 0.3]
type = SprPriority
trigger1 = time = 0
value = 0

[State 9125, 2.6]
type = Posset
trigger1 = time = 0
Y = 900

[State 9125, OkayYouCanStop]
type = PalFX
trigger1 = time = 1
time = 1
add = 0, 0, 0
mul = 0, 0, 0

[State 9100, NoBGM]
type = AssertSpecial
trigger1 = Time >= 1
flag = nokoslow

[State 9125, 3]
type = Lifeadd
trigger1 = Time = 1
Value = -9999

[State 9125, 2]
type = Selfstate
trigger1 = Time = 20
value = 5150

;---------------------------------------;
;	-	 Fatality 2	 -	;
;---------------------------------------;
;--------- - Moonlight Death - ---------;
;---------------------------------------;

[Statedef 3100]
type    = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
anim = 0
ctrl = 0

[State 430, 3451]
type = Pause
trigger1 = Time = 3
time = 15

[State 430, 31]
type = changeanim
trigger1 = Time = 30
value = 3100

[State 9130, SetFatal]
type = Varset
trigger1 = 1
V = 4
value = 1

[State 1200, Za]
type = VelSet
trigger1 = time = 1
trigger2 = Vel Y != 0
y = 0

[State 3000, 2]
type = Helper
trigger1 = animelem = 3
trigger1 = anim = 3100
trigger1 = NumHelper(3102) = 0
ID = 3102
pos = 0,0
postype = P2
stateno = 3102
helpertype = normal
name = "Moonlight Death (campo de fuerza)"
keyctrl = 0
sprpriority >= -2

[State 3000, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-----------------------------------
;Helper: Campo de Fuerza
[Statedef 3101]
type    = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0

[State 11000, 1]
type = Helper
trigger1 = NumHelper(3102) = 0
ID = 3102
pos = 38,0
postype = P1
stateno = 3102
helpertype = normal
name = "Moonlight Death (campo de fuerza)"
keyctrl = 0
sprpriority >= -2

[State 11000, 2]
type = Destroyself
trigger1 = AnimTime = 0

;----------------------------------------------------------------------
;HitDef: campo de fuerza
[Statedef 3102]
type = S
movetype = A
physics = S
anim = 3102
velset = 0,0
ctrl = 0

[State 3010, 1]
type = HitDef
trigger1 = animelem = 3;Time = 14
attr = S, SA
;damage = 99
hitflag = MFA
priority = 7
sparkno = -1
hitsound = -1
p2stateno = 3103

;-----------------------------------
;Custom state de P2 durante Moonlight Death
[Statedef 3103]
type    = S
movetype= H
physics = S
juggle  = 1
velset = 0,0
ctrl = 0

;se va de la pantalla
[State 867033, 1]
type = PosSet
trigger1 = 1;p2bodydist X <= 60
y = 1500

;Sin sombra
[state 867033, 2]
type = AssertSpecial
trigger1 = 1;p2bodydist X <= 60
flag = noshadow

[State 867033, 3]
type = lifeadd
trigger1 = time = 130
value = -9999

;Vuelve a su próprio CNS pa morir como un perro
[State 867033, 3]
type = SelfState
trigger1 = life = 0
value = 5150

;---------------------------------------;
;	-	 Fatality 3	 -	;
;---------------------------------------;
;----------- - Lighting Fry - ----------;
;---------------------------------------;

[Statedef 3200]
type    = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
anim = 0
ctrl = 0

[State 430, 3451]
type = Pause
trigger1 = Time = 3
time = 15

[State 430, 31]
type = changeanim
trigger1 = Time = 0;30
value = 3200


[State 9130, SetFatal]
type = Varset
trigger1 = 1
V = 4
value = 1

[State 1200, Za]
type = VelSet
trigger1 = time = 1
trigger2 = Vel Y != 0
y = 0

[State 3100, 2]
type = Helper
trigger1 = NumHelper(3201) = 0
trigger1 = Stateno = 3200 && Time = 1
ID = 3201
pos = 0,0
postype = P1
stateno = 3201
helpertype = normal
name = "Lighting Fry (ray)"
keyctrl = 0
sprpriority >= -2

[State 3100, 3]
type = Helper
trigger1 = NumHelper(3202) = 0
trigger1 = Stateno = 3200 && Time = 47
ID = 3202
pos = 0,0
postype = P2
facing = -1
stateno = 3202
helpertype = normal
name = "Lighting Fry (carbonization)"
keyctrl = 0
sprpriority >= -2

[State 3100, 4]
type = Helper
trigger1 = NumHelper(3203) = 0
trigger1 = P2Stateno = 3204
ID = 3203
pos = 25,-80
postype = P2
facing = -1
stateno = 3203
helpertype = normal
name = "Lighting Fry (smoke)"
keyctrl = 0
sprpriority =-2

[State 3100, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-----------------------------------
;Helper: Rayo
[Statedef 3205]
type    = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0

[State 12000, 1]
type = Helper
trigger1 = NumHelper(3201) = 0
ID = 3201
pos = 0,0
postype = P1
stateno = 3201
helpertype = normal
name = "Lighting Fry (ray)"
keyctrl = 0
sprpriority >= -2
p2stateno = 3204

[State 12000, 2]
type = Destroyself
trigger1 = AnimTime = 0

;----------------------------------------------------------------------
;HitDef: Rayo
[Statedef 3201]
type = S
movetype = A
physics = S
anim = 3201
velset = 0,0
ctrl = 0

[State 3110, 1]
type = HitDef
trigger1 = AnimElem = 8
attr = S, SA
hitflag = HLMAF
priority = 7
sparkno = -1
hitsound = -1
guardsound = -1
p2stateno = 3204

;-----------------------------------
;Oponente Carbonizando
[Statedef 3202]
type    = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
anim = 3202
ctrl = 0

[State 3120, 1]
type = Helper
trigger1 = NumHelper(3202) = 0
trigger1 = Time = 1
ID = 3202
pos = 0,0
postype = P2
facing = -1
stateno = 3202
helpertype = normal
name = "Lighting Fry (carbonization)"
keyctrl = 0
sprpriority >= -2

[State 3120, 2]
type = Destroyself
trigger1 = AnimTime = 0

;-----------------------------------
;Fumaça
[Statedef 3203]
type    = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
anim = 3203
ctrl = 0

[State 3130, 1]
type = PosAdd
trigger1 = Time = 130
x = 35
y = 30

[State 3130, 2]
type = Helper
trigger1 = NumHelper(3203) = 0
trigger1 = P2Stateno = 3204
ID = 3203
pos = 45,-80
postype = P2
facing = -1
stateno = 3203
helpertype = normal
name = "Lighting Fry (smoke)"
keyctrl = 0
sprpriority >= -2

[State 3130, 3]
type = Destroyself
trigger1 = AnimTime = 0

;-----------------------------------
;Custom do P2 durante Lighting Fry
[Statedef 3204]
type    = S
movetype= H
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
sprpriority = -1

;;Oponente fica invisível
;[State 867034, 1]
;type = AssertSpecial
;trigger1 = 1;
;flag = invisible

;;Sem sombra
;[state 867034, 2]
;type = AssertSpecial
;trigger1 = 1
;flag = noshadow

;Vida vai a zero
[State 867034, 3]
type = LifeSet
trigger1 = time = 127
value = 0

;Volta a seu próprio CNS
[State 867034, 4]
type = SelfState
trigger1 = life = 0;Time = 127
value = 5150

;---------------------------------------;
;	-      Friendship	 -	;
;---------------------------------------;
;----- - Juggling Act (MKT - N64)- -----;
;---------------------------------------;

[Statedef 3700]
type    = S
movetype= A
physics = S
anim = 0
ctrl = 0

[State 3100, helper]
type = Helper
trigger1 = time = 100
stateno = 3701
name = "friendship"
postype = p1
pos = 0,0
sprpriority = 1
keyctrl = 0
ownpal = 0
under = 1

[State 3100, Pset]
type = varset
trigger1 = time = 101
v = 26
value = 1

[State 200, 7]
type = changestate
trigger1 = Time = 140
value = 0
ctrl = 1

[Statedef 3701]
type    = S
movetype= A
physics = S
ctrl = 0
anim = 3700

[State 210, 1]
type = Playsnd
trigger1 = time = 1
value = 37,0
volume = 600

[State 210, 1]
type = Playsnd
trigger1 = timemod = 18,3
value = 37,1
volume = 600

[State 9130, SetFatal]
type = ParentVarSet
trigger1 = movehit
V = 4
value = 3

[State 3102, golpearalpl2]
type = HitDef
trigger1 = time = 0
attr = S, NA
sparkno = -1
guard.sparkno = -1
p2stateno = 6002
;-------------------------------------

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

[State 3105, end]
type = changeanim
trigger1 = time = 30
value = 3500

[State 430, 31sdaa]
type = changestate
trigger1 = anim = 3500
trigger1 = animtime = 0
value = 3504

[State 210, 1]
type = Playsnd
trigger1 = anim = 3500
trigger1 = animelem = 2
value = 14,5

[State 210, 1]
type = Playsnd
trigger1 = anim = 3500
trigger1 = animelem = 9
value = 14,6

[State 201, 347]
type = EnvShake
trigger1 = anim = 3500
trigger1 = animelem = 35
time = 15
freq = 70
ampl = 7

[State 210, 1]
type = Playsnd
trigger1 = anim = 3500
trigger1 = animelem = 35
value = F20,0

[State 210, 1]
type = Playsnd
trigger1 = anim = 3500
trigger1 = animelem = 9
value = 4,1

[State -3]
type = Explod
trigger1 = TimeMod=12,3
trigger1 = animelem = 8
trigger2 = animelem = 9
trigger3 = animelem = 10
trigger4 = animelem = 11
trigger5 = animelem = 12
trigger6 = animelem = 13
trigger7 = animelem = 14
trigger8 = animelem = 15
trigger9 = animelem = 16
trigger10 = animelem = 17
trigger11 = animelem = 18
trigger12 = animelem = 19
trigger13 = animelem = 20
trigger14 = animelem = 21
trigger15 = animelem = 22
trigger16 = animelem = 23
trigger17 = animelem = 24
trigger18 = animelem = 25
trigger19 = animelem = 26
trigger20 = animelem = 27
trigger21 = animelem = 28
trigger22 = animelem = 29
trigger23 = animelem = 30
trigger24 = animelem = 31
trigger25 = animelem = 32
trigger26 = animelem = 33
trigger27 = animelem = 34
trigger28 = animelem = 35
triggerall = var(26) = 0
anim = F19
name = "humoarriba"
pos = -20,-110;0, -90
postype = p1
bindtime = 1
vel = 0, 0
random = 30, 70
removetime = -2
sprpriority = 5
shadow = -1, -1, -1

[State -2, Steam1]
type = Explod
trigger1 = TimeMod=8,3
trigger1 = animelem = 8
trigger2 = animelem = 9
trigger3 = animelem = 10
trigger4 = animelem = 11
trigger5 = animelem = 12
trigger6 = animelem = 13
trigger7 = animelem = 14
trigger8 = animelem = 15
trigger9 = animelem = 16
trigger10 = animelem = 17
trigger11 = animelem = 18
trigger12 = animelem = 19
trigger13 = animelem = 20
trigger14 = animelem = 21
trigger15 = animelem = 22
trigger16 = animelem = 23
trigger17 = animelem = 24
trigger18 = animelem = 25
trigger19 = animelem = 26
trigger20 = animelem = 27
trigger21 = animelem = 28
trigger22 = animelem = 29
trigger23 = animelem = 30
trigger24 = animelem = 31
trigger25 = animelem = 32
trigger26 = animelem = 33
trigger27 = animelem = 34
trigger28 = animelem = 35
triggerall = var(26) = 0
anim = F19
name = "humomedio"
pos = 0, -90
postype = p1
bindtime = 1
vel = 0, 0
random = 30, 70
removetime = -2
sprpriority = 5
shadow = -1, -1, -1

[Statedef 3504]
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

[State -3]
type = Explod
trigger1 = TimeMod=12,3
triggerall = var(26) = 0
anim = F19
name = "humoarriba"
pos = -70,-70;0, -90
postype = p1
bindtime = 1
vel = 0, 0
random = 30, 70
removetime = -2
sprpriority = 5
shadow = -1, -1, -1

[State -2, Steam1]
type = Explod
trigger1 = TimeMod=8,3
triggerall = var(26) = 0
anim = F19
name = "humomedio"
pos = -70, -60
postype = p1
bindtime = 1
vel = 0, 0
random = 30, 70
removetime = -2
sprpriority = 5
shadow = -1, -1, -1

[State 430, 31sdaa]
type = changeanim
trigger1 = time = 0
value = 3501
