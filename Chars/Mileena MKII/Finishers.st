;--------------------
[Statedef 3000]
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 0

[State 9130, SetFatal]
type = Varset
trigger1 = time = 60
V = 4
value = 1

[State 430, 31sdaa]
type = changeanim
trigger1 = Time = 60
value = 3000

[State 800, 1]
type = HitDef
Trigger1 = animelem = 1
pausetime = 0,0
attr = S, NT          ;Attributes: Standing, Normal Throw
hitflag = CM          ;Affect only ground people who are not being hit
priority = 1, Miss    ;Throw has low priority, must be miss or dodge type.
hitsound = S10,4
sparkno = 3
sparkxy = 15,-70
sprpriority = -1      ;Draw in front of p2
p2facing = 1       ;Force p2 to face KFM
p1stateno = 3001       ;On success, KFM changes to state 810
p2stateno = 3002       ;If hit, p2 changes to state 820 in KFM's cns
guard.dist = 0        ;This prevents p2 from going into a guard state if close
fall.recover = 0
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

;-------------

[Statedef 3001]
type    = S
movetype= A
physics = N

[State 442, 3.3]
type = hitAdd
trigger1 = movehit = 1
trigger1 = p2statetype != S
trigger2 = time = 0
Value = -1

[State 50000, 1]
type = HitDef
trigger1 = animelem = 2
trigger2 = animelem = 5
trigger3 = animelem = 7
trigger4 = animelem = 9
trigger5 = animelem = 12
trigger6 = animelem = 14
trigger7 = animelem = 17
trigger8 = animelem = 19
trigger9 = animelem = 21
trigger10 = animelem = 24
trigger11 = animelem = 26
trigger12 = animelem = 29
trigger13 = animelem = 31
trigger14 = animelem = 33
attr = S, NA
hitflag = HAF
hitsound = S10,4
sparkno = 3
sparkxy = -25,-90
p2facing = 1
p2stateno = 1000000; Falso state, para arreglar el puto bug
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

;** Movemos al enemigo a diferentes posiciones
[State 50001, Bind 2-4]
type = TargetBind
trigger1 = time = 0
pos = 40, -20

[State 820, 1]
type = Sprpriority
Trigger1 = Time = 0
value = 5

[State 50000, 1]
type = Hitdef
trigger1 = animelem = 36
attr = S, NA
hitflag = HAF
hitsound = S10,4
animtype = Hard
damage = 9999,0
sparkno = 3
sparkxy = -25,-90
air.velocity = -3, -2
ground.type = High
ground.cornerpush.veloff = 0    
p2facing = 1

[State 810, State End]
type = ChangeState
trigger1 = Animtime =  0
value = 0
ctrl = 1
;-------------

[Statedef 3002]
type    = A
movetype= H
physics = N
velset = 0,0
;sprpriority = -1

[State 820, 1]
type = ChangeAnim
Trigger1 = Time = 0
value = 21238

[State 200,grito]
type = playsnd
trigger1 = Time = 0
value = 4,1

[State 45, 34fff]
type = Selfstate
trigger1 = time = 30
value = 5150


; --- Fatality ---
[Statedef 3100]
type    = S
movetype= A
physics = S
juggle  = 1
anim = 0
Velset = 0, 0
ctrl = 0

[State 9130, SetFatal]
type = Varset
trigger1 = movehit
V = 4
value = 1

[State 430, 31sdaa]
type = changeanim
trigger1 = Time = 60
value = 240

[State 1200, BoltFat]
type = HitDef
trigger1 = !movecontact
attr = S, NT
damage    = 0, 0
animtype = Light
air.animtype = Back
p2stateno = 6003;661
air.fall = 1
numhits = -1
fall.recover = 0
guardflag = HL
pausetime = 40,10
sparkno = 16
sparkxy = 0,-145
guard.sparkno = -1
hitsound   = 5,0
guardsound = 5,0

[State 200, 7]
type = changestate
trigger1 = AnimTime = 0
trigger1 = anim = 240;0
value = 0
ctrl = 1

; --- Friendship... friendship, again? ---
[Statedef 3700]
type    = S
movetype= A
physics = S
anim = 0
ctrl = 0

[State 3100, helper]
type = Helper
trigger1 = time = 60
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
trigger1 = time = 61
v = 26
value = 1

[State 200, 7]
type = changestate
trigger1 = Time = 250
value = 0
ctrl = 1

[Statedef 3701]
type    = S
movetype= A
physics = S
ctrl = 0
anim = 3700

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
p2stateno = 6002

[State 3100, helper]
type = Helper
trigger1 = animelem = 3
stateno = 3702
postype = p1
pos = 55,-100
sprpriority = 1
keyctrl = 0
ownpal = 0
under = 1

[Statedef 3702]
type = S
movetype = A
anim = 3701

[State 0]
type = VelAdd
trigger1 = Pos Y < 0
y = 0.2

[State 0]
type = changestate
trigger1 = Pos Y >= 0
value = 3703

[Statedef 3703]
type = S
movetype = A
anim = 3702

[State 0]
type = VelSet
trigger1 = time = 0
y = 0

; --- Babality ---
[Statedef 3600]
type    = S
movetype= A
physics = S
anim = 0
ctrl = 0

[State 3100, helper]
type = Helper
trigger1 = time = 60
stateno = 3601
name = "babality"
postype = p1
pos = 0,0
sprpriority = 1
keyctrl = 0
ownpal = 0
under = 1

[State 200, 7]
type = changestate
trigger1 = Time = 235
value = 0
ctrl = 1

[Statedef 3601]
type    = S
movetype= A
physics = S
ctrl = 0
anim = 9000

[State 210, 1]
type = StopSnd
trigger1 = time = 0
channel = -1

[State 9130, SetFatal]
type = ParentVarSet
trigger1 = movehit
V = 4
value = 2

[State 3010, Fire]
type = explod
trigger1 = Time = 0
anim = F11
ID = 36
pos = -10,7
shadow = -1,250,250
postype = p2
ontop = 1

[State 3102, golpearalpl2]
type = HitDef
trigger1 = time = 0
attr = S, NA
sparkno = -1
guard.sparkno = -1
p2stateno = 3602

[Statedef 3602]
type = S
movetype = A

[State 0]
type = VarSet
trigger1 = time = 0
v = 26
value = 1

[State 210, 1]
type = Playsnd
trigger1 = time = 1
value = F5,47
volume = 600

[State 0]
type = explod
trigger1 = time = 0
anim = 3600

[State 0]
type = changestate
trigger1 = time = 1
value = 6002

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
trigger2 = animelem = 5
trigger3 = animelem = 8
trigger4 = animelem = 11
trigger5 = animelem = 14
trigger6 = animelem = 17
trigger7 = animelem = 19
trigger8 = animelem = 21
trigger9 = animelem = 24
trigger10 = animelem = 28
trigger11 = animelem = 31
trigger12 = animelem = 35
trigger13 = animelem = 37
trigger14 = animelem = 40
trigger15 = animelem = 43
trigger16 = animelem = 46
trigger17 = animelem = 49
trigger18 = animelem = 51
trigger19 = animelem = 53
trigger20 = animelem = 56
trigger21 = animelem = 60
trigger22 = animelem = 63
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
trigger1 = AnimElem = 68
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
trigger1 = animelem = 68
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