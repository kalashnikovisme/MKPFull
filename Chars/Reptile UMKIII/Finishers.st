[Statedef 3000]
type    = S
movetype= A
physics = S
juggle  = 2
ctrl = 0
velset = 0,0,0
anim = 0

[State 3100, helper]
type = Helper
trigger1 = time = 90
stateno = 3001
name = "reptilewin"
postype = p1
pos = 0,0
sprpriority = 1
keyctrl = 0
ownpal = 0
under = 1

[State 3100, Pset]
type = varset
trigger1 = time = 91
v = 26
value = 1

[State 430, 3451]
type = PAuse
trigger1 = Time = 25
time = 15

[State 430, 31sdaa]
type = changeanim
trigger1 = Time = 45
value = 3381

[State 9130, SetFatal]
type = Varset
trigger1 = movehit
V = 4
value = 1

[State 1200, BoltFat]
type = Explod
trigger1 = ANIMELEM = 8
trigger1 = p2name != "shao kahn,"
trigger1 = ANIM = 3381
anim = 3382
postype = p1
pos = 6,0;10,0
sprpriority  >= 4
scale = 1.05,1.05

[State 1200, BoltFat]
type = Explod
trigger1 = ANIMELEM = 8
trigger1 = p2name = "shao kahn,"
trigger1 = ANIM = 3381
anim = 3382
postype = p1
pos = 13,0;10,0
sprpriority  >= 4
scale = 1.2,1.1;1.2,1.2

[State 1200, ZappySound]
type = PlaySnd
trigger1 = AnimElem = 9
trigger1 = Anim = 3381
value = 4, 21
volume = 160

[State 1200, Zappy]
type = PlaySnd
trigger1 = AnimElem = 7
trigger1 = Anim = 3381
value = 4, 22
volume = 160

[State 1200, Za]
type = VelSet
trigger1 = time = 1
trigger2 = Vel Y != 0
y = 0

[State 1200, BoltFat]
type = Hitdef
trigger1 = AnimElem = 9
attr = S, NT                     ;Attribute: Standing, Normal Attack
animtype = Light                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
air.animtype = Back
guardflag = HL
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 2, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default
pausetime = 0,0                  ;Time attacker pauses, time victim shakes
sparkno = -1
sparkxy = -35,-105
guard.sparkno = -1
numhits = 0
ground.type = High                ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 20
ground.hittime  = 15
guard.ctrltime = 20
p2stateno = 3002

[State 200, 7]
type = changestate
trigger1 = Time = 190
value = 0
ctrl = 1

[Statedef 3001]
type    = S
movetype= I
physics = S
ctrl = 0
velset = 0,0,0

[State 200, 7]
type = changeanim
trigger1 = Time = 0
value = 3384

[Statedef 3002]
type    = S
movetype= H
physics = S
ctrl = 0
velset = 0,0,0

[State 1005, FREEZE]
type = Changeanim2
trigger1 = time = 0
value = 3383

[State 210, 1]
type = Playsnd
trigger1 = time = 40
value = 4, 1
volume = 50

[State 3001]
type = Explod
trigger1 = TimeMod=9,3
triggerall = time >25
anim = F19
name = "humo"
pos = 0, -80
postype = p1
bindtime = 1
vel = 0, 0
random = 60, 70
removetime = -1
shadow = -1, -1, -1

[State 9399, 3]
type = Lifeadd
trigger1 = Time = 65
Value = -9999

[State 9399, 2]
type = Selfstate
trigger1 = time = 70;71
value = 6007

[Statedef 30010] ; Acid on Shao kahn
type    = S
movetype= A
physics = S
anim = 3382
sprpriority  >= 4
scale = 1.5,1.5

[State 30010, 1]
type = HitDef
trigger1 = !movecontact
attr = S, NA
sparkno = -1
numhits = - 1
p2stateno = 30020

[Statedef 30020]     ;Shao Kahn
type    = S
movetype= H
physics = S
anim = 5300

[State 30020, 1]
type = sprpriority
trigger1 = time=0
value = -1

[State 30020, 2]
type = varset
trigger1 = time = 75
V = 26
value = 1

[State 30020, 3]
type = Explod
trigger1 = TimeMod=9,3
triggerall = time >25
anim = F19
name = "humo"
pos = 0, -80
postype = p1
sprpriority = 2
bindtime = 1
vel = 0, 0
random = 60, 70
removetime = -1
shadow = -1, -1, -1

[State 30020, 4]
type = veladd
trigger1 = Time > 90
trigger1 = time < 120
X = -1.5

[State 30020, 5]
type = LifeSet
trigger1 = time = 120
value = 0

[State 30020, 6]
type = playsnd
trigger1 = time = 50
value = 4,1

[State 30020, 7]
type = Selfstate
trigger1 = time = 121
value = 5150

;===========================
;Fatality : Tongue Lashing
;===========================
[Statedef 3100]
type    = S
movetype= A
physics = S
juggle  = 1
anim = 0
Velset = 0, 0
ctrl = 0

[State 3100, 1]
type = changeanim
trigger1 = Time = 60
value = 3100

[State 3100, 2]
type = Explod
trigger1 = anim = 3100
trigger1 = animelem = 9
anim = 3103
postype = p1
pos = 0,0
sprpriority = -5

[State 3100, 3]
type = playsnd
trigger1 = time = 115
value = 4, 12

[State 3100, 4]
type = Varset
trigger1 = movehit
V = 4
value = 1

[State 3100, 5]
type = Hitdef
trigger1 = Anim = 3100
trigger1 = AnimElem = 10
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
p2stateno = 6005
guard.sparkno = -1
hitsound   = 5,17
ground.type = High
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 3100, 6]
type = changeanim
trigger1 = Anim = 3100
trigger1 = AnimTime = 0
value = 3101

[State 3100, 7]
type = changestate
trigger1 = Anim = 3101
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;=====================
;Fatality : Invisible
;=====================
[Statedef 3200]
type    = S
movetype= A
physics = S
juggle  = 1
anim = 0
Velset = 0, 0
ctrl = 0

[State 3200, 1]
type = changeanim
trigger1 = Time = 60
value = 3102

[State 3200, 2]
type = playsnd
trigger1 = time = 120
value = 1, 0

[State 3200, 3]
type = playsnd
trigger1 = time = 164
value = 4, 12

[State 3200, 4]
type = Varset
trigger1 = movehit
V = 4
value = 1

[State 3200, 5]
type = Hitdef
trigger1 = Anim = 3102
trigger1 = AnimElem = 2
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
p2stateno = 2110
guard.sparkno = -1
hitsound   = 5,17
ground.type = High
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 3200, 6]
type = changestate
trigger1 = time = 221
value = 1401

[Statedef 2110] ; Exploding body code courtesy the MKP team
type    = S
movetype= H
physics = S

[State 45, fff]
type = LifeSet
trigger1 = time = 30
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


;=========================
; Hara Kiri : Acid Shower
;=========================
[Statedef 3503]
type    = S
movetype= A
physics = S
anim = 3383
ctrl = 0

[State 3503, 1]
type = varset
trigger1 = anim = 3383
trigger1 = animtime = 131
v = 26
value = 1

[State 3503, 2]
type = Explod
trigger1 = time = 60
anim = 3500
name = "barf"
postype = p1
pos = 0,0
sprpriority = 4

[State 3503, 3]
type = playsnd
trigger1 = time = 70
value = 4,21
volume = 600

[State 3503, 4]
type = playsnd
trigger1 = time = 79
value = 4,1

[State 3503, 5]
type = lifeadd
trigger1 = time = 140
value = -9999

[State 3503, 6]
type = changestate
trigger1 = time = 149
value = 5150


;==========
; Babality
;==========
[Statedef 3300]
type    = S
movetype= A
physics = S
anim = 0
Velset = 0, 0
ctrl = 0

[State 3300, 1]
type = Varset
trigger1 = movehit
V = 4
value = 2

[State 3300, 2]
type = changeanim
trigger1 = Time = 60
value = 3381

[State 3300, 3]
type = Hitdef
trigger1 = AnimElem = 9
trigger1 = Anim = 3381
velocity = 0, 0
remvelocity = 0, 0
attr = S, NT
animtype = Hard
air.animtype = Back
air.fall = 1
fall.recover = 0
guardflag = HL
pausetime = 0,0
sparkno = 11
sparkxy = 0,0
p2stateno = 6009
guard.sparkno = -1
hitsound   = F5,35
ground.type = High
kill       = (Var(9) = 1)
fall.kill  = (Var(9) = 1)
guard.kill = (Var(9) = 1)

[State 3300, 4]
type = playsnd
trigger1 = time = 100
value = F5,47

[State 3300, 5]
type = changestate
trigger1 = Anim = 3381
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;=====================================================
; Animality : Mad Monkey and his 35 Shots To The Nuts
;=====================================================
[Statedef 3800]
type    = S
movetype= A
physics = S
juggle  = 1
anim = 0
Velset = 0, 0
ctrl = 0

[State 3800, 1]
type = changeanim
trigger1 = Time = 60
value = 700

[State 3800, 2]
type = Playsnd
trigger1 = time = 80
value = 5,13

[State 3800, 3]
type = explod
trigger1 = anim = 700
trigger1 = animelem = 3
anim = F11
postype = p1
pos = 0,0
sprpriority = 4

[State 3800, 4]
type = changestate
trigger1 = Anim = 700
trigger1 = AnimTime = 0
value = 3801

[Statedef 3801]
type    = S
movetype= A
physics = S
anim = 3800

[State 3801, 1]
type = Playsnd
trigger1 = time = 1
value = 6,3

[State 3801, 2]
type = changestate
triggerall = p2name != "goro"
triggerall = p2name != "kintaro"
triggerall = p2name != "shao kahn,"
triggerall = p2name != "motaro"
triggerall = p2name != "kitana"
triggerall = p2name != "sindel"
triggerall = p2name != "mileena"
triggerall = p2name != "sonya"
triggerall = p2name != "sheeva"
triggerall = p2name != "jade"
triggerall = p2name != "khameleon"
trigger1 = Anim = 3800
trigger1 = AnimTime = 0
value = 3802

[State 3801, 3]
type = changestate
triggerall = Anim = 3800
triggerall = AnimTime = 0
trigger1 = p2name = "goro"
trigger2 = p2name = "kintaro"
trigger3 = p2name = "shao kahn,"
trigger4 = p2name = "motaro"
trigger5 = p2name = "kitana"
trigger6 = p2name = "sindel"
trigger7 = p2name = "mileena"
trigger8 = p2name = "sonya"
trigger8 = p2name = "sheeva"
trigger9 = p2name = "jade"
trigger10 = p2name = "khameleon"
value = 3803

[Statedef 3802]
type    = S
movetype= A
physics = S
anim = 3801

[State 3802, 1]
type = Varset
trigger1 = movehit
V = 4
value = 4

[State 3802, 2]
type = Hitdef
triggerall = anim = 3801
trigger1 = animelem = 1
trigger2 = animelem = 2
trigger3 = animelem = 3
trigger4 = animelem = 4
trigger5 = animelem = 5
trigger6 = animelem = 6
trigger7 = animelem = 7
trigger8 = animelem = 8
attr = S, NA
animtype  = Back
damage    = 9999, 9999
guardflag = M
hitflag = MAF
pausetime = 0,2
sparkno = -1
hitonce = 0
guard.sparkno = -1
guardsound = 5,14
hitsound = 5,1
ground.type = High
ground.slidetime = 0
ground.hittime  = 20
guard.ctrltime = 20
ground.velocity = 0
guard.velocity = -3
p2facing = 1
p2stateno = 3806
ground.cornerpush.veloff = 0
fall.recover = 0

[State 3802, 2]
type = changestate
trigger1 = time = 153
value = 3804

[Statedef 3803]
type    = S
movetype= A
physics = S
anim = 3801

[State 3803, 1]
type = Varset
trigger1 = movehit
V = 4
value = 4

[State 3803, 2]
type = Hitdef
triggerall = anim = 3801
trigger1 = animelem = 1
attr = S, NA
animtype  = Back
damage    = 9999, 9999
guardflag = M
hitflag = MAF
pausetime = 0,2
sparkno = -1
hitonce = 1
guard.sparkno = -1
guardsound = 5,14
hitsound = 5,1
ground.type = High
ground.slidetime = 0
ground.hittime  = 20
guard.ctrltime = 20
ground.velocity = 0
guard.velocity = -3
p2facing = 1
p2stateno = 21241
ground.cornerpush.veloff = -25
fall.recover = 0

[State 3803, 3]
type = changestate
trigger1 = anim = 3801
trigger1 = animtime = 0
value = 3804

[Statedef 3804]
type    = S
movetype= A
physics = S
anim = 3800

[State 3804, 1]
type = velset
trigger1 = 1
x = -3

[State 3804, 2]
type = StopSnd
trigger1 = time = 109
channel = -1

[State 3804, 3]
type = Playsnd
trigger1 = time = 110
value = 5,13

[State 3804, 4]
type = explod
trigger1 = time = 110
anim = F11
postype = p1
pos = 0,0
sprpriority = 4

[State 3804, 5]
type = changestate
trigger1 = time = 113
value = 151

[StateDef 3806]
type    = S
movetype= H
physics = N
ctrl = 0
velset = -0.1,0
anim = 216

[State 3806, 1]
type = VelSet
trigger1 = 1
Y = 0

[State 3806, 2]
type = PosSet
trigger1 = 1
Y = 0

[State 3806, 3]
type = Playsnd
trigger1 = Animelem = 1
value = 4,1

[State 3806, 4]
type = lifeadd
trigger1 = time = 30
value = -9999

[State 3806, 5]
type = Selfstate
trigger1 = time = 30
value = 5150

;==========================
; Friendship; Zombie Stomp
;==========================
[Statedef 3700]
type    = S
movetype= A
physics = S
anim = 0
ctrl = 0

[State 3700, 1]
type = Explod
trigger1 = time = 60
anim = 3701
postype = p1
pos = 12,0
sprpriority = 5

[State 3700, 2]
type = Playsnd
trigger1 = time = 60
value = 7,0

[State 3700, 3]
type = StopSnd
trigger1 = time = 170
channel = -1

[State 3700, 4]
type = Playsnd
trigger1 = time = 170
value = 7,1

[State 3700, 5]
type = changestate
trigger1 = Time = 380
value = 3701
ctrl = 0

[Statedef 3701]
type    = S
movetype= A
physics = S
ctrl = 0
anim = 3700

[State 3701, 1]
type = changestate
trigger1 = Time = 191
value = 3702
ctrl = 0

[Statedef 3702]
type    = S
movetype= A
physics = S
ctrl = 0
anim = 3702

[State 3702, 1]
type = VarSet
trigger1 = movehit
V = 4
value = 3

[State 3702, 2]
type = HitDef
trigger1 = time = 0
attr = S, NA
sparkno = -1
guard.sparkno = -1
p2stateno = 6002

[State 3702, 3]
type = changeanim
trigger1 = anim = 3702
trigger1 = animtime = 0
value = 0

[State 3702, 5]
type = changestate
trigger1 = time = 300
value = 151

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
trigger1 = animelem = 48
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
trigger2 = animelem = 7
trigger3 = animelem = 12
trigger4 = animelem = 17
trigger5 = animelem = 23
trigger6 = animelem = 28
trigger7 = animelem = 33
trigger8 = animelem = 36
trigger9 = animelem = 41
trigger10 = animelem = 45
trigger11 = animelem = 48
trigger12 = animelem = 52
trigger13 = animelem = 55
trigger14 = animelem = 60
trigger15 = animelem = 63
trigger16 = animelem = 68
trigger17 = animelem = 73
trigger18 = animelem = 78
trigger19 = animelem = 81
trigger20 = animelem = 85
trigger21 = animelem = 90
trigger22 = animelem = 95
trigger23 = animelem = 100
attr = S, NA                     ;Attribute: Standing, Normal Attack
animtype = Light                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 2, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default
sparkno = 1
sparkxy = -20,-105
hitsound = 5,21
ground.velocity = -1,0
ground.type = High                 ;Type: High, Low, Trip (def: Normal)
p2facing = 1
ground.hittime  = 20
envshake.time = 10
envshake.freq = 30
envshake.ampl = 5

[State 201, 1]
type = HitDef
trigger1 = AnimElem = 100
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

[State 9130, Setbrutal]
type = Varset
trigger1 = animelem = 100
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
