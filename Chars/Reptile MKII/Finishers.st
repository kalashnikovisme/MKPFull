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

;----------------------------------------------------
[Statedef 3300]
type    = S
movetype= A
physics = S
anim = 0
ctrl = 0

[State 1001, 10]
type = Changeanim
trigger1 = time = 60
value = 2245

[State 1000, bber]
type = PlaySnd
trigger1 = Time = 1
value = 5, 13
volume = 70

[State 9130, SetFatal]
type = Varset
trigger1 = movehit
V = 4
value = 1

[State 1000, 10]
type = HitDef
trigger1 = !movecontact
attr = S, NA
hitflag = M
sparkno = -1
p2stateno = 3009
numhits = 0
fall = 1

[State 1001, 10]
type = Changeanim
trigger1 = AnimTime = 0
trigger1 = Anim = 2245
value = 0

[State 1001, 10]
type = Changestate
trigger1 = Time = 190
value = 0
ctrl = 1

[Statedef 3009]
type    = S
movetype= H
physics = S
ctrl = 0

[State 1200, ound]
type = PlaySnd
trigger1 = time = 0
value = F5, 29
volume = 50

[State 9130, SetFatal]
type = posadd
trigger1 = time = 0
x = - 35

[State 1001, 10]
type = selfstate
trigger1 = Time = 1
value = 6004
