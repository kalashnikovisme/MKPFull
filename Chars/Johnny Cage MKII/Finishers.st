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
trigger1 = Time = 60
value = 660

[State 9130, SetFatal]
type = Varset
trigger1 = movehit
V = 4
value = 1

[State 1200, BoltFat]
type = Hitdef
trigger1 = AnimElem = 7
trigger1 = Anim = 660
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
p2stateno = 6003;661
guard.sparkno = -1
hitsound   = 5,0
;guardsound = 5,0
ground.type = High
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 200, 7]
type = changestate
trigger1 = Anim = 660
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;------------------

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
trigger1 = Time = 60
value = 3100

[State 9130, SetFatal]
type = Varset
trigger1 = movehit
V = 4
value = 1

[state 9132, set pos]
type = posset
trigger1 = time = 1
Y = 0


[State 1200, BoltFat]
type = Hitdef
triggerall = Anim = 3100
trigger1 = animelem = 5
trigger2 = animelem = 8
attr = S, NT
animtype = Hard
air.animtype = Back
air.fall = 1
fall.recover = 0
guardflag = HL
pausetime = 0,0
sparkno = 3
sparkxy = -20,-55
p2stateno = 3008
guard.sparkno = -1
ground.type = High
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 90
value = 4,1

[State 430, 31sdaa]
type = changeanim
trigger1 = Time = 350
value = 3101

[State 1200, BoltFat]
type = Hitdef
trigger1 = Anim = 3101
trigger1 = animelem = 2
attr = S, NT
animtype = Hard
air.animtype = Back
air.fall = 1
fall.recover = 0
guardflag = HL
pausetime = 0,0
sparkno = -1
sparkxy = -20,-125
p2stateno = 3009
guard.sparkno = -1
hitsound   = 5,0
;guardsound = 5,0
ground.type = High
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 200, 7]
type = changestate
trigger1 = Anim = 3101
trigger1 = AnimTime = 0
value = 0
ctrl = 1

; --- Brutality ---
[Statedef 2100]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 1                      ;Number of air juggle points move takes
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0
anim = 2100          ;Change animation (Def: no change)

[State 0, StopSnd]
type = StopSnd
trigger1 = time = 0
channel = -1

[State 0]
type = Helper
trigger1 = animelem = 39
stateno = 2102

[State 200, Play]
type = PlaySnd
trigger1 = time = 1
trigger1 = 1
value = F5, 15

[State 442, 3.3]
type = hitAdd
trigger1 = movehit = 1
;trigger1 = p2statetype != S
Value = -1

[State 201, 1]
type = HitDef
trigger1 = animelem = 3
trigger2 = animelem = 6
trigger3 = animelem = 9
trigger4 = animelem = 13
trigger5 = animelem = 16
trigger6 = animelem = 19
trigger7 = animelem = 24
trigger8 = animelem = 27
trigger9 = animelem = 31
trigger10 = animelem = 35
trigger11 = animelem = 39
trigger12 = animelem = 42
trigger13 = animelem = 46
trigger14 = animelem = 49
trigger15 = animelem = 52
trigger16 = animelem = 55
trigger17 = animelem = 58
trigger18 = animelem = 61
trigger19 = animelem = 63
trigger20 = animelem = 67
trigger21 = animelem = 70
attr = S, NA                     ;Attribute: Standing, Normal Attack
animtype = Light                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 2, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default
sparkno = 1
sparkxy = -20,-105
hitsound = 5,1
ground.velocity = -1,0
ground.type = High                 ;Type: High, Low, Trip (def: Normal)
p2facing = 1
ground.hittime  = 20
envshake.time = 10
envshake.freq = 30
envshake.ampl = 5

[State 201, 1]
type = HitDef
trigger1 = AnimElem = 74
attr = S, NA
hitflag = MAF ;HAF
sparkno = -1
sparkxy = -18,-100
hitsound   = 5,0
envshake.time = 15
envshake.freq = 70
envshake.ampl = 7
numhits = 0
p2stateno = 2101

[State 0, EnvShake]
type = EnvShake
trigger1 = AnimElem = 74
time = 15
freq = 70
ampl = 7

[State 9130, Setbrutal]
type = Varset
trigger1 = animelem = 74
V = 4
value = 5

[State 201, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-------
[Statedef 2101]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= H                      ;Move-type: A-attack, I-idle, H-gethit
physics = S

[State 45, fff]
type = LifeSet
trigger1 = time = 30
value = 0

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

[Statedef 2102]
type = S
movetype = A
anim = 888

[State 0, StopSnd]
type = StopSnd
trigger1 = time = 0
channel = -1

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

[State 0]
type = DestroySelf
trigger1 = time = 2
