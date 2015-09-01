;-- FATALITY Nº 1 "Mordida" --
[Statedef 3000]
type    = S
movetype= A
physics = S
juggle  = 1
anim = 0
Velset = 0, 0
ctrl = 0

[State 430, 31sdaa]
type = changeanim
trigger1 = time = 0
value = 9100

[State 9130, SetFatal]
type = Varset
trigger1 = movehit
V = 4
value = 1

[State 1200, BoltFat]
type = Hitdef
trigger1 = animelem = 4
trigger1 = Anim = 9100
velocity = 8, 0
remvelocity = 0, 0
; HitDef part of projectile info
attr = S, NT
damage = 0
animtype = Hard
air.animtype = Back
air.fall = 1
numhits = 1
fall.recover = 0
guardflag = HL
pausetime = 0,0
sparkno = 16
sparkxy = -20,-95
p2stateno = 1;661
guard.sparkno = -1
hitsound   = -1,-1
;guardsound = 5,0
ground.type = High
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 5
value = S88,0


[State 0, EnvShake]
type = EnvShake
trigger1 = animelem = 5
time = 20
freq = 60
ampl = -4
phase = 90

[State 200, 7]
type = changestate
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;-------------------------------------------------------------------------
;---FATALITY Nº 3 "Snake Fatality"!!!  (observar bien como esta creada)
[Statedef 3100]
type    = S
movetype= A
physics = S
juggle  = 1
anim = 0
Velset = 0, 0
ctrl = 0

[State 430, 31sdaa]
type = changeanim
trigger1 = time = 30
value = 3020

[State 9130, SetFatal]
type = Varset
trigger1 = movehit
V = 4
value = 1

[State 1000, 1]
type = Helper
trigger1 = animelem = 3
trigger1 = anim = 3020
stateno = 3101
name = "snake"
id = 3021
postype = p1
pos = 105 , -115
helpertype = normal
sprpriority = -1
keyctrl = 0
ownpal = 0
under = 1

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = time = 190
value = 3024

[State 1200, BoltFat]
type = Hitdef
trigger1 = animelem = 1
trigger1 = Anim = 3020
velocity = 8, 0
remvelocity = 0, 0
; HitDef part of projectile info
attr = S, NT
damage = 0
animtype = Hard
air.animtype = Back
air.fall = 1
numhits = 1
fall.recover = 0
guardflag = HL
pausetime = 0,0
sparkno = -1
sparkxy = -20,-95
guard.sparkno = -1
hitsound   = -1,-1
p2stateno = 9100
;guardsound = 5,0
ground.type = High
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 0, EnvShake]
type = EnvShake
trigger1 = animelem = 1
trigger1 = anim = 3024
time = 20
freq = 60
ampl = -4
phase = 90

[State 200, 7]
type = changestate
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Snake
[Statedef 3101]
type    = S
movetype= A
physics = N
juggle = 13
velset = 7,0
anim = 3021
ctrl = 0

[State 1030, 1.54]
type = Destroyself
trigger1 = time = 150

[State 1010, 1]
type = Playsnd
trigger1 = time = 0
value = 4,12

[State 1010, 1.2]
type = Helper
trigger1 = time = 0
stateno = 3103
name = "Rope"
pos = -22, 0
helpertype = normal
sprpriority = -2
keyctrl = 0
ownpal = 0
under = 1

[State 1010, 1.55]
type = Helper
trigger1 = timemod = 4,0
trigger1 = time = [0, 60]
trigger1 = Pos X > -190
trigger1 = Pos X < 190
stateno = 3103
name = "Rope"
pos = 0, 0
helpertype = normal
sprpriority = -2
keyctrl = 0
ownpal = 0
under = 1

[State 1200, BoltFat]
type = Hitdef
trigger1 = animelem = 1
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
sparkxy = -40,0
p2stateno = 3;661
guard.sparkno = -1
hitsound   = F5,17
;guardsound = 5,0
ground.type = High
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 0, Explod]
type = Explod
trigger1 = p2stateno = 3
anim = 3025
ID = 30025
pos = -10,-115
postype = p2
ontop = 1

[State 0, DestroySelf]
type = DestroySelf
trigger1 = p2stateno = 3
;---------------------------------------------------------------------------
; P2's hit by snake in head
[Statedef 3]
type    = S
movetype= H
physics = S
ctrl = 0
Velset = 0,0,0

[State 1020, .5]
type = Changeanim2
trigger1 = time = 0
value = 3022

[State 0, Explod]
type = Explod
trigger1 = animelem = 3
trigger2 = animelem = 7
anim = F16
pos = -20,-115
postype = p1
ownpal=1
removeongethit = 1
supermovetime = -1
bindtime = -1
under = 1


[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
trigger2 = animelem = 3
trigger3 = animelem = 7
value = S3,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animtime = 0
value = S4,1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
trigger2 = animelem = 7
value = F5,17

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animtime = 0
value = F5,18

[State 1200, 10]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 6003
;------------------------------------------------------------------------
;The Body Becomes invisible
[Statedef 3103]
type    = S
movetype= I
physics = N
anim = 1015
ctrl = 0

[State 1011, 1]
type = Changestate
trigger1 = p2stateno = 3
value = 3102
;------------------------------------------------------------------------
;The Body Becomes visible
[Statedef 3102]
type    = S
movetype= I
physics = N
anim = 1002
ctrl = 0


;[State 1030, 1]
;type = PosAdd
;trigger1 = timemod = 5,0
;trigger1 = time = [0, 50]
;Y = 1

;[State 1030, 1.1]
;type = Posadd
;trigger1 = timemod = 5,4
;trigger1 = time = [0, 50]
;Y = -1

[State 0, DestroySelf]
type = DestroySelf
trigger1 = p2stateno = 6003
;-- FATALITY Nº 2--
[Statedef 3010]
type    = S
movetype= A
physics = S
juggle  = 1
anim = 0
Velset = 0, 0
ctrl = 0

[State 235]
type = explod
trigger1 = animelem = 1
trigger1 = var(17) = 0
anim = 2866
id = 2866
postype = p1
ownpal = 1

[State 430, 31sdaa]
type = changeanim
trigger1 = time = 0
value = 240

[State 9130, SetFatal]
type = Varset
trigger1 = time = 0
V = 4
value = 1

[State 235]
type = playsnd
trigger1 = animelem = 5
value = 88,0

[State 1200, BoltFat]
type = Hitdef
trigger1 = animelem = 5
trigger1 = Anim = 240
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
p2stateno = 6005;661
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
trigger1 = animelem = 5
postype = p2
anim = 1600
ontop = 1
ownpal = 1

;Boom SND
[State 1200]
type = playsnd
trigger1 = animelem = 5
value = 88,0
volume = 210

[State 200, 7]
type = changestate
trigger1 = Anim = 240
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;-- FATALITY Mordida  Parte 2--
[Statedef 1]
type    = S
movetype= A
physics = S
juggle  = 1
anim = 8881
Velset = 0, 0
ctrl = 0

[State -3]
type = Explod
trigger1 = TimeMod=12,3;8,3
;triggerall = var(17) = 0
anim = F19
name = "humoarriba"
pos = -20,-110;0, -90
postype = p1
bindtime = 1
vel = 0, 0
random = 30, 70
removetime = -2
sprpriority = 1
;ontop = 1
shadow = -1, -1, -1
removeongethit = 0

[State -2, Steam1]
type = Explod
trigger1 = TimeMod=8,3;8,3
;triggerall = var(17) = 0
anim = F19
name = "humomedio"
pos = 0, -90
postype = p1
bindtime = 1
vel = 0, 0
random = 30, 70
removetime = -2
sprpriority = 1
ontop = 1
shadow = -1, -1, -1
removeongethit = 0

[State -2, Steam6]
type = Explod
trigger1 = TimeMod=12,5;8,3
;triggerall = var(17) = 0
anim = F19
name = "humoabajo"
pos = 0, -50
postype = p1
bindtime = 1
vel = 0,  -2
random = 30, 70
removetime = -2
ontop = 1
ownpal = 1
shadow = -1,-1,-1
removeongethit = 0

[State 0, AllPalFX]
type = Palfx
trigger1 = time = 0
time = 50
add = 116, 83, 158
mul = 116, 83, 158
color = 256

[State 0, AllPalFX]
type = Palfx
trigger1 = time = 40
time = 50
add = 75, 50, 133
mul = 75, 50, 133
color = 256

[State 0, AllPalFX]
type = Palfx
trigger1 = time = 80
time = 99999
add = 17, 1, 75
mul = 17, 1, 75
color = 256

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 80
value = S4,1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 120
value = F5,29
volume = 200

[State 200, 7]
type = changestate
trigger1 = time = 120
value = 2110
ctrl = 1

;----------------------
[Statedef 2110]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= H                      ;Move-type: A-attack, I-idle, H-gethit
physics = S

[State 45, fff]
type = LifeSet
trigger1 = time = 0
value = 0

[state 3404,play1]
type = playsnd
trigger1 = time = 0
value = F5,(4+random%2);F5,13
channel = 1

[state 3404,play1]
type = playsnd
trigger1 = time = 2
value = 4,1
channel = 2

[State 45, 34fff]
type = Selfstate
trigger1 = time = 30
value = 5150

[State 5, Vel XY]
type = PosSet
trigger1 = Time = 0
Y = 900;-140

[State 235, sss]
type = envshake
trigger1 = time = 0;228
time = 10
freq = 40
ampl = 4

[State 235, sssa]
type = envshake
trigger1 = animelem = 22
time = 15
freq = 150
ampl = 7

[State 9000, 123]
type = Explod
trigger1 = time = 0;228
anim = F16
postype = p1
pos = 0,-990
facing = 1
sprpriority = 2
;ontop = 1
ownpal = 1

[State 9000, 123]
type = Explod
trigger1 = time = 7;235
anim = F16
postype = p1
pos = 10,-1030
facing = 1
sprpriority = 2
;ontop = 1
ownpal = 1


[State 9000, 1]
type = Explod
trigger1 = time = 0;228
anim = F17
postype = p1
pos = 0,-1010
facing = 1
sprpriority = 2
ontop = 1
ownpal = 1

[State 9000, 1]
type = Explod
trigger1 = time = 0;228
anim = F17
postype = p1
pos = 0,-980
facing = 1
sprpriority = 2
;ontop = 1
ownpal = 1

[State 9000, 1]
type = Explod
trigger1 = time = 0;228
anim = F17
postype = p1
pos =0,-960
facing = 1
sprpriority = 2
ontop = 1
ownpal = 1

[State 9000, 123]
type = Explod
trigger1 = time = 3;231
anim = 43051
postype = p1
pos = 0,-1010
vel = -2 , 2
;postype = front
bindtime = 1
facing = 1
sprpriority = 3
ontop = 1
ownpal = 1
removetime = -1

[State 9000, 123]
type = Explod
trigger1 = time = 4;232
anim = 43052
postype = p1
pos = 0,-1050
vel = 9 , -6
;postype = front
bindtime = 1
facing = 1
sprpriority = 3
ontop = 1
ownpal = 1
removetime = -1

[State 9000, 123]
type = Explod
trigger1 = time = 6;234
anim = 43052
postype = p1
facing = -1
pos = 40,-1050
vel = -10 , -8
;postype = front
bindtime = 1
facing = 1
sprpriority = 3
ontop = 1
ownpal = 1
removetime = -1

[State 9000, 123]
type = Explod
trigger1 = time = 4;232
anim = 43053
postype = p1
pos = 0,-990
vel = -7 , -6
;postype = front
bindtime = 1
facing = 1
sprpriority = 3
ontop = 1
ownpal = 1
removetime = -1

[State 9000, 123]
type = Explod
trigger1 = time = 4;232
anim = 43053
postype = p1
pos = 50,-990
vel = 14 , -2
facing = -1
;postype = front
bindtime = 1
facing = 1
sprpriority = 3
ontop = 1
ownpal = 1
removetime = -1

[State 9000, 123]
type = Explod
trigger1 = time = 4;232
anim = 43054
postype = p1
pos = 0,-1030
vel = 1,3
;postype = front
bindtime = 1
facing = 1
sprpriority = 2
ontop = 1
ownpal = 1
removetime = -1

[State 9000, 123]
type = Explod
trigger1 = time = 6;234
anim = F16
postype = p1
pos = 80,-1080
facing = 1
sprpriority = 2
ontop = 1
ownpal = 1

[State 9000, 000]
type = Explod
trigger1 = time = 4;232
anim = 888
ID = 333
postype = p1
pos = -50,-990
facing = 1
sprpriority = 2
removetime = -1
ontop = 1
ownpal = 1
