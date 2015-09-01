; --- Animality ---
[Statedef 3800]
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
value = 3800

[State 210, 1]
type = Playsnd
trigger1 = time = 60
value = F5,51

[State 210, 1]
type = StopSnd
trigger1 = time = 59
channel = -1

[State 210, 1]
type = Playsnd
trigger1 = time = 60
value = F5,52
volume = 600
loop = 1

[State 200, 7]
type = changestate
trigger1 = Anim = 3800
trigger1 = AnimTime = 0
value = 3801
;------------------------
[Statedef 3801]
type    = S
movetype= A
physics = S
anim = 3801

[State 9130, SetFatal]
type = velset
trigger1 = 1
x = 4;.5

[State 9130, SetFatal]
type = Varset
trigger1 = movehit
V = 4
value = 4

[State 2, Upperblood]
type = Helper
trigger1 = movehit
ID = 28
stateno = 28
pos = 130, 0
postype = p1
persistent = 0
ignorehitpause = 1

[State 1200, BoltFat]
type = Hitdef
trigger1 = time = 0
attr = S, NA
hitflag = M
animtype = Hard
damage = 9999,0
;pausetime = 40,0
sparkno = -1
sparkxy = -20,-125
guard.sparkno = -1
ground.velocity = -10,0
;hitsound   = 5,0
;guardsound = 5,0
ground.type = High
ground.cornerpush.veloff = 0    
p2facing = 1
p2stateno = 3803

[State 9130, SetFatal]
type = velset
trigger1 = movecontact
x = 0

[State 200, 7]
type = changestate
trigger1 = Anim = 3801
trigger1 = AnimTime = 0
value = 3802

[Statedef 3802]
type    = S
movetype= A
physics = S
anim = 3802

[State 200, 7]
type = changestate
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 3803]
type    = S
movetype= H
physics = N
anim = 5030
ctrl = 0

[State 210, 1]
type = velset
trigger1 = time = 1
x = -9

[State 210, 1]
type = Playsnd
trigger1 = time = 0
value = 4,1

[State 2000, 0.6]
type = ScreenBound
trigger1 = time = [0, 1000]
value = 0
movecamera = 0,0

[State 3105, cambiapos]
type = Posset
trigger1 = time = 30
Y = 900
X = 0

[State 3105, end]
type = Selfstate
trigger1 = time = 30
value = 5150
; --- Fatality 1 ---
[Statedef 3000]
type    = S
movetype= A
physics = S
;juggle  = 1
anim = 0
Velset = 0, 0
ctrl = 0

[State 9130, SetFatal]
type = Varset
trigger1 = time = 0
V = 4
value = 1

[State 430, 31sdaa]
type = changeanim
trigger1 = Time = 60
value = 3000

[State 210, 1]
type = Playsnd
triggerall = anim = 3000
trigger1 = animelem = 1
trigger2 = animelem = 10
value = 7,0+(animelem = 10)

[State 1200, BoltFat]
type = Hitdef
trigger1 = !movecontact
attr = S, NA
hitflag = M
animtype = Hard
sparkno = -1
sparkxy = -20,-125
guard.sparkno = -1
;hitsound   = 5,0
;guardsound = 5,0
ground.type = High
ground.cornerpush.veloff = 0    
p2facing = 1
p2stateno = 3002
numhits = -100

[State 9251,cyrax]
type = Helper
trigger1 = time = 109
postype = p1
pos = 126,-152
stateno = 3001

[State 200, 7]
type = changestate
trigger1 = time = 250
value = 0
ctrl = 1
;-------------------
[Statedef 3001]
type    = S
movetype= A
physics = N
anim = 3001
velset = 0,1.5

[State 1200, BoltFat]
type = Hitdef
trigger1 = !movecontact;time = 0
attr = S, NA
hitflag = M
animtype = Hard
sparkno = -1
sparkxy = -20,-125
guard.sparkno = -1
;ground.velocity = -10,0
;hitsound   = 5,0
;guardsound = 5,0
ground.type = High
ground.cornerpush.veloff = 0    
p2facing = 1
p2stateno = 3003
numhits = -100

[State 200, 7]
type = destroyself
trigger1 = movecontact
;-----------
[Statedef 3002]
type    = S
movetype= H
physics = N
ctrl = 0

[State 430, 31sdaa]
type = changeanim2
trigger1 = Time = 5;6
value = 3002
;-----------
[Statedef 3003]
type    = S
movetype= H
physics = N
;anim = 5030
ctrl = 0

[State 210, 1]
type = posadd
trigger1 = (time=11 || time=15 || time =19)
Y = 2

[State 210, 1]
type = posadd
trigger1 = (time=13 || time=18 || time =21)
Y = -2

[State 9251,cyrax]
type = explod
trigger1 = time = 50
postype = p1
pos = 0,-70
anim = F17
removetime = 14*3

[State 3105, cambiapos]
type = varset
trigger1 = time = 50
V = 26
value = 1

[State 210, 1]
type = Playsnd
trigger1 = time = 12
value = 4,1

[State 210, 1]
type = Playsnd
trigger1 = time = 50
value = F5,27

[State 235, sssa]
type = envshake
trigger1 = time = 50
time = 20;15
freq = 150
ampl = 10;7

;[State 3105, cambiapos]
;type = Posset
;trigger1 = time = 30
;Y = 900
;X = 0

[State 9399, 3]
type = Lifeadd
trigger1 = Time = 50
Value = -9999

[State 3105, end]
type = Selfstate
trigger1 = time = 55
value = 5150

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
trigger1 = animelem = 35
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
trigger3 = animelem = 10
trigger4 = animelem = 13
trigger5 = animelem = 18
trigger6 = animelem = 21
trigger7 = animelem = 27
trigger8 = animelem = 32
trigger9 = animelem = 35
trigger10 = animelem = 38
trigger11 = animelem = 42
trigger12 = animelem = 45
trigger13 = animelem = 51
trigger14 = animelem = 56
trigger15 = animelem = 61
trigger16 = animelem = 64
trigger17 = animelem = 67
trigger18 = animelem = 71
trigger19 = animelem = 74
trigger20 = animelem = 79
trigger21 = animelem = 82
trigger22 = animelem = 88
trigger23 = animelem = 93
trigger24 = animelem = 96
trigger25 = animelem = 99
trigger26 = animelem = 103
trigger27 = animelem = 106
trigger28 = animelem = 112
trigger29 = animelem = 117
trigger30 = animelem = 122
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
trigger1 = AnimElem = 122
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
trigger1 = animelem = 61
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

; --- Friendship... friendship, again? ---
[Statedef 7300]
type    = S
movetype= A
physics = S
anim = 0
ctrl = 0

[State 3100, helper]
type = Helper
trigger1 = time = 60
stateno = 7301
name = "Cfriendship"
postype = p1
pos = 0,0
sprpriority = 1
keyctrl = 0
ownpal = 0
under = 1

[State 3100, Pset]
type = varset
trigger1 = time = 61
v = 26
value = 1

[State 200, 7]
type = changestate
trigger1 = Time = 250
value = 0
ctrl = 1

[Statedef 7301]
type    = S
movetype= A
physics = S
ctrl = 0
anim = 7300

[State 210, 1]
type = StopSnd
trigger1 = time = 0
channel = -1

[State 210, 1]
type = Playsnd
trigger1 = time = 1
value = F5,50
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
p2stateno = 6002;3702

; --- Friendship... friendship, again? ---
[Statedef 7310]
type    = S
movetype= A
physics = S
anim = 0
ctrl = 0

[State 3100, helper]
type = Helper
trigger1 = time = 60
stateno = 7311
name = "Sfriendship"
postype = p1
pos = 0,0
sprpriority = 1
keyctrl = 0
ownpal = 0
under = 1

[State 3100, Pset]
type = varset
trigger1 = time = 61
v = 26
value = 1

[State 200, 7]
type = changestate
trigger1 = Time = 250
value = 0
ctrl = 1

[Statedef 7311]
type    = S
movetype= A
physics = S
ctrl = 0
anim = 7310

[State 210, 1]
type = StopSnd
trigger1 = time = 0
channel = -1

[State 210, 1]
type = Playsnd
trigger1 = time = 1
value = F5,50
volume = 600

[State 210, 1]
type = Playsnd
trigger1 = time = 34
value = 7,2
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
p2stateno = 6002;3702
