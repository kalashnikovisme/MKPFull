[Statedef 3000]
type    = S
movetype= A
physics = S
juggle  = 2
ctrl = 0
velset = 0,0,0
anim = 0

[State 9130, SetFatal]
type = Varset
trigger1 = movehit
V = 4
value = 1

[State 3100, helper]
type = Helper
trigger1 = animelem = 8
trigger1 = anim = 3381
stateno = 3001
name = "reptilewin"
postype = p1
pos = 0,0
sprpriority = 1
keyctrl = 0
ownpal = 0
under = 1

[State 430, 31sdaa]
type = changeanim
trigger1 = Time = 45
value = 3381

[State 1200, BoltFat]
type = Explod
trigger1 = ANIMELEM = 8
trigger1 = p2name != "shao kahn,"
trigger1 = ANIM = 3381
anim = 3382
postype = p2
pos = 0,0;10,0
sprpriority  >= 4
scale = 1.05,1.05

[State 1200, BoltFat]
type = Explod
trigger1 = ANIMELEM = 8
trigger1 = p2name = "shao kahn,"
trigger1 = ANIM = 3381
anim = 3382
postype = p2
pos = 0,0;10,0
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

[State 1200, BoltFat]
type = Hitdef
trigger1 = AnimElem = 8
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
trigger1 = animtime = 0
trigger1 = anim = 3381
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

[State 1200, BoltFat]
type = Explod
trigger1 = time = 0
anim = 3384
postype = p1
pos = 0,0;10,0
ontop = 1

[State 0, DestroySelf]
type = DestroySelf
trigger1 = p2stateno = 3002


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
trigger1 = Time = 40
Value = -9999

[State 9399, 2]
type = Selfstate
trigger1 = time = 42;71
value = 6007

;---FATALITY Nº 2 "Chip Fatality"!!!  (observar bien como esta creada)
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
value = 3001

[State 9130, SetFatal]
type = Varset
trigger1 = movehit
V = 4
value = 1

[State 1000, 1]
type = Helper
trigger1 = animelem = 4
trigger1 = anim = 3001
stateno = 3101
name = "chip"
id = 3002
postype = p1
pos = 105 , -115
helpertype = normal
sprpriority = -1
keyctrl = 0
ownpal = 0
under = 1

[State 1200, BoltFat]
type = Hitdef
trigger1 = animelem = 2
trigger1 = Anim = 3001
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

[State 200, 7]
type = changestate
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Chip
[Statedef 3101]
type    = S
movetype= A
physics = N
juggle = 13
velset = 7,0
anim = 3002
ctrl = 0

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
sparkno = -1
sparkxy = 0,0
p2stateno = 3102;661
guard.sparkno = -1
hitsound   = F5,17
;guardsound = 5,0
ground.type = High
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 0, Explod]
type = Explod
trigger1 = p2stateno = 3102
anim = 3003
ID = 3003
pos = -10,-115
postype = p2
ontop = 1

[State 0, DestroySelf]
type = DestroySelf
trigger1 = p2stateno = 3102

;---------------------------------------------------------------------------
[Statedef 3102]
type    = S
movetype= A
physics = N
juggle = 13
velset = 0,0
anim = 0
ctrl = 0

[State 0, ChangeAnim2]
type = ChangeAnim2
trigger1 = time = 0
value = 3004


[State 0, Explod]
type = Explod
trigger1 = animtime = 0
anim = F6
ID = 6
pos = -10,-115
postype = p1
ontop = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animtime = 0
value = F5,29

[State 200, 7]
type = changestate
trigger1 = AnimTime = 0
value = 6004
ctrl = 1


