             ;-------------------COMBO----------------------
[Statedef 202]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 5                      ;Number of air juggle points move takes
velset = 20,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0
anim = 2242                       ;Change animation (Def: no change)

[State 200, Play]
type = PlaySnd
trigger1 = time = 1
trigger1 = 1
value = F5, 15

[State 200, Playsd]
type = Posset
trigger1 = 1
Y = 0

[State 201, 347]
type = EnvShake
trigger1 = p2stateno = [130,155]
trigger1 = time = 5
time = 10
freq = 30
ampl = 5

[State 201, 1]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage    = 30, 10                   ;Damage that move inflicts
animtype = light
guardflag = HL
hitflag = MAF
p2facing = 1
pausetime = 2,2
sparkno = -1
sparkxy = -10,-110
guard.sparkno = -1
hitsound = 5,1
guardsound = 5,14
ground.type = High
ground.slidetime = 5
ground.hittime  = 20
guard.velocity = -15
guard.slidetime = 20
guard.ctrltime = 20
ground.velocity = 0,0
guard.velocity = -2
ground.cornerpush.veloff = 0
envshake.time = 10
envshake.freq = 30
envshake.ampl = 5
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 201, 7]
type = targetstate
trigger1 = movehit
trigger1 = (p2statetype = C)
trigger1 = (p2stateno!=[120,151])
;trigger1 = var(55)= 1
value = 2720

[State 201, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;-------------

[Statedef 2720];recibe golpe p2
type    = S
movetype= H
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 5000

[State 201, 7]
type = Changeanim
trigger1 = anim = 5000
trigger1 = AnimTime = 0
value = 5001

[State 201, 7]
type = selfstate
trigger1 = anim = 5001
trigger1 = AnimTime = 0
trigger1 = alive = 1
value = 0
ctrl = 1

[State 201, 7]
type = selfstate
trigger1 = anim = 5001
trigger1 = AnimTime = 0
trigger1 = alive = 0
value = 5050
ctrl = 0
;------------

[Statedef 203]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 4                     ;Number of air juggle points move takes
velset = 20,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0
anim = 210                       ;Change animation (Def: no change)

[State 201, 347]
type = EnvShake
trigger1 = p2stateno = [130,155]
trigger1 = time = 5
time = 10
freq = 30
ampl = 5

[State 200, Play]
type = PlaySnd
trigger1 = time = 1
trigger1 = 1
value = F5, 15

[State 2, blood111]
type = Helper
trigger1 = movehit
trigger1 = numhelper(24) < 1
ID = 24
stateno = 27
pos = 0, 0
postype = p1
persistent = 0
ignorehitpause = 1

[State 201, 1]
type = HitDef
trigger1 = AnimElem = 6
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage    = 30, 10                   ;Damage that move inflicts
animtype = light
guardflag = HL
hitflag = MAF
p2facing = 1
pausetime = 2,2
sparkno = -1
sparkxy = -10,-110
guard.sparkno = -1
hitsound = 5,1
guardsound = 5,14
ground.type = High
ground.slidetime = 5
ground.hittime  = 20
guard.velocity = -15
guard.slidetime = 20
guard.ctrltime = 20
ground.velocity = 0,0
guard.velocity = -2
ground.cornerpush.veloff = 0
envshake.time = 10
envshake.freq = 30
envshake.ampl = 5
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 201, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;-----------------

[Statedef 204]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 1                      ;Number of air juggle points move takes
velset = 20,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0
anim = 222                       ;Change animation (Def: no change)

[State 201, 347]
type = EnvShake
trigger1 = p2stateno = [130,155]
trigger1 = time = 5
time = 10
freq = 30
ampl = 5

[State 200, Playsd]
type = Posset
trigger1 = 1
Y = 0

[State 200, Play]
type = PlaySnd
trigger1 = time = 1
trigger1 = 1
value = F5, 15

[State 2, blood111]
type = Helper
trigger1 = movehit
trigger1 = numhelper(24) < 1
ID = 24
stateno = 27
pos = 0, 0
postype = p1
persistent = 0
ignorehitpause = 1

[State 201, 1]
type = HitDef
trigger1 = AnimElem = 4
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage    = 30, 10                   ;Damage that move inflicts
animtype = light
guardflag = HL
hitflag = MAF
p2facing = 1
pausetime = 2,2
sparkno = -1
sparkxy = -10,-110
guard.sparkno = -1
hitsound = 5,1
guardsound = 5,14
ground.type = High
ground.slidetime = 5
ground.hittime  = 20
guard.velocity = -15
guard.slidetime = 20
guard.ctrltime = 20
ground.velocity = 0,0
guard.velocity = -2
ground.cornerpush.veloff = 0
envshake.time = 10
envshake.freq = 30
envshake.ampl = 5
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 201, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;-----------------

[Statedef 205]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 5                      ;Number of air juggle points move takes
velset = 20,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0
anim = 223          ;Change animation (Def: no change)

[State 201, 347]
type = EnvShake
trigger1 = p2stateno = [130,155]
trigger1 = time = 5
time = 10
freq = 30
ampl = 5

[State 1200, 2atfw]
type = Explod
trigger1 = time = 1
anim = 888
pos = 0,0
postype = p1
ID = 7080
sprpriority  = 1
removetime = 100
ignorehitpause = 1

[State 200, Play]
type = PlaySnd
trigger1 = time = 1
trigger1 = 1
value = F5, 15

[State 2, blood111]
type = Helper
trigger1 = movehit
trigger1 = numhelper(24) < 1
ID = 24
stateno = 27
pos = 0, 0
postype = p1
persistent = 0
ignorehitpause = 1

[State 201, 1]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage    = 30, 10                   ;Damage that move inflicts
animtype = light
guardflag = HL
hitflag = MAF
p2facing = 1
pausetime = 2,2
sparkno = -1
sparkxy = -10,-110
guard.sparkno = -1
hitsound = 5,1
guardsound = 5,14
ground.type = High
ground.slidetime = 5
ground.hittime  = 20
guard.velocity = -15
guard.slidetime = 20
guard.ctrltime = 20
ground.velocity = 0,0
guard.velocity = -2
ground.cornerpush.veloff = 0
envshake.time = 10
envshake.freq = 30
envshake.ampl = 5
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 201, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;----------------------

[Statedef 308]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 3                      ;Number of air juggle points move takes
velset = 30,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0
anim = 2232                       ;Change animation (Def: no change)

[State 200, Play]
type = PlaySnd
trigger1 = time = 1
trigger1 = 1
value = F5, 15

[State 201, 347]
type = EnvShake
trigger1 = p2stateno = [130,155]
trigger1 = time = 5
time = 10
freq = 30
ampl = 5

[State 2, blood111]
type = Helper
trigger1 = movehit
trigger1 = numhelper(24) < 1
ID = 24
stateno = 27
pos = 0, 0
postype = p1
persistent = 0
ignorehitpause = 1

[State 201, 1]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage    = 200, 30                   ;Damage that move inflicts
animtype = Back                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
air.animtype = Back
guardflag = HL
hitflag = MAF
ground.cornerpush.veloff = 0
priority = 2, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default
pausetime = 0,2                  ;Time attacker pauses, time victim shakes
sparkno = -1
sparkxy = -10,-105
guard.sparkno = -1
hitsound = 5,0
guardsound = 5,14
p2facing = 1
ground.type = HIGH                 ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 5
ground.hittime  = 20
guard.velocity = -15
guard.slidetime = 20
guard.ctrltime = 20
ground.velocity = -7,-2              ;Time to regain control after guard (def: guard.slidetime)
guard.velocity = -2
air.velocity = -10,-3
airguard.velocity = -3            ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.fall = 1
fall.recover = 0
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)
envshake.time = 10
envshake.freq = 30
envshake.ampl = 7

[State 201, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;----------------------

[Statedef 206]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 1                     ;Number of air juggle points move takes
velset = 20,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0
anim = 2242                       ;Change animation (Def: no change)

[State 200, Play]
type = PlaySnd
trigger1 = time = 1
trigger1 = 1
value = F5, 15

[State 200, Playsd]
type = Posset
trigger1 = 1
Y = 0

[State 201, 347]
type = EnvShake
trigger1 = p2stateno = [130,155]
trigger1 = time = 5
time = 10
freq = 30
ampl = 5

[State 201, 1]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage    = 50, 10                   ;Damage that move inflicts
animtype = light
guardflag = HL
hitflag = MAF
p2facing = 1
pausetime = 2,2
sparkno = -1
sparkxy = -10,-110
guard.sparkno = -1
hitsound = 5,1
guardsound = 5,14
ground.type = High
ground.slidetime = 5
ground.hittime  = 20
guard.velocity = -15
guard.slidetime = 20
guard.ctrltime = 20
ground.velocity = 0,0
guard.velocity = -2
ground.cornerpush.veloff = 0
envshake.time = 10
envshake.freq = 30
envshake.ampl = 5
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 201, 7]
type = targetstate
trigger1 = movehit
trigger1 = (p2statetype = C)
trigger1 = (p2stateno!=[120,151])
;trigger1 = var(55)= 1
value = 2720

[State 201, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 207]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 2                     ;Number of air juggle points move takes
velset = 20,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0
anim = 224                       ;Change animation (Def: no change)

[State 201, 347]
type = EnvShake
trigger1 = p2stateno = [130,155]
trigger1 = time = 5
time = 10
freq = 30
ampl = 5

[State 200, Play]
type = PlaySnd
trigger1 = time = 1
trigger1 = 1
value = F5, 15

[State 2, blood111]
type = Helper
trigger1 = movehit
trigger1 = numhelper(24) < 1
ID = 24
stateno = 27
pos = 0, 0
postype = p1
persistent = 0
ignorehitpause = 1

[State 201, 1]
type = HitDef
trigger1 = AnimElem = 4
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage    = 70, 15                   ;Damage that move inflicts
animtype = light
guardflag = HL
hitflag = MAF
p2facing = 1
pausetime = 2,2
sparkno = -1
sparkxy = -10,-110
guard.sparkno = -1
hitsound = 5,1
guardsound = 5,14
ground.type = High
ground.slidetime = 5
ground.hittime  = 20
guard.velocity = -15
guard.slidetime = 20
guard.ctrltime = 20
ground.velocity = 0,0
guard.velocity = -2
ground.cornerpush.veloff = 0
envshake.time = 10
envshake.freq = 30
envshake.ampl = 5
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 201, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 208]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 4                      ;Number of air juggle points move takes
velset = 20,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0
anim = 234                       ;Change animation (Def: no change)

[State 201, 347]
type = EnvShake
trigger1 = p2stateno = [130,155]
trigger1 = time = 5
time = 10
freq = 30
ampl = 5

[State 200, Play]
type = PlaySnd
trigger1 = time = 1
trigger1 = 1
value = F5, 15

[State 2, blood111]
type = Helper
trigger1 = movehit
trigger1 = numhelper(24) < 1
ID = 24
stateno = 27
pos = 0, 0
postype = p1
persistent = 0
ignorehitpause = 1

[State 201, 1]
type = HitDef
trigger1 = AnimElem = 5
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage    = 70, 15                   ;Damage that move inflicts
animtype = light
guardflag = HL
hitflag = MAF
p2facing = 1
pausetime = 2,2
sparkno = -1
sparkxy = -10,-110
guard.sparkno = -1
hitsound = 5,1
guardsound = 5,14
ground.type = High
ground.slidetime = 5
ground.hittime  = 20
guard.velocity = -15
guard.slidetime = 20
guard.ctrltime = 20
ground.velocity = 0,0
guard.velocity = -2
ground.cornerpush.veloff = 0
envshake.time = 10
envshake.freq = 30
envshake.ampl = 5
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 201, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 209]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 3                      ;Number of air juggle points move takes
velset = 20,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0
anim = 224                       ;Change animation (Def: no change)

[State 201, 347]
type = EnvShake
trigger1 = p2stateno = [130,155]
trigger1 = time = 5
time = 10
freq = 30
ampl = 5

[State 200, Play]
type = PlaySnd
trigger1 = time = 1
trigger1 = 1
value = F5, 15

[State 2, blood111]
type = Helper
trigger1 = movehit
trigger1 = numhelper(24) < 1
ID = 24
stateno = 27
pos = 0, 0
postype = p1
persistent = 0
ignorehitpause = 1

[State 201, 1]
type = HitDef
trigger1 = AnimElem = 4
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage    = 100, 30                   ;Damage that move inflicts
animtype = Medium                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
air.animtype = Back
guardflag = HL
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 2, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default
pausetime = 15,2                  ;Time attacker pauses, time victim shakes
sparkno = -1
sparkxy = -10,-105
guard.sparkno = -1
hitsound = 5,0
ground.cornerpush.veloff = -30
guardsound = 5,14
ground.type = High                 ;Type: High, Low, Trip (def: Normal)
p2facing = 1
guard.velocity = 0
guard.slidetime = 20
guard.ctrltime = 20
ground.hittime  = 30
ground.velocity = -5,-5
air.velocity = -2, 1
air.hittime = 17
ground.cornerpush.veloff = -25
fall = 1
fall.recover = 0
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)
envshake.time = 10
envshake.freq = 30
envshake.ampl = 5

[State 201, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-----------
[Statedef 433]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 5                      ;Number of air juggle points move takes
velset = 10,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0
anim = 430                       ;Change animation (Def: no change)

[State 181, DI]
type = Explod
trigger1 = animelem = 4
anim = 888
id = 79
pos = 168,100
postype = left
facing = 1
sprpriority = 1
ownpal = 1
removetime = 1820

[State 201, 347]
type = EnvShake
trigger1 = p2stateno = [130,155]
trigger1 = time = 5
time = 10
freq = 30
ampl = 5

[State 200, Play]
type = PlaySnd
trigger1 = time = 1
trigger1 = 1
value = F5, 15

[State 2, blood111]
type = Helper
trigger1 = movehit
trigger1 = numhelper(24) < 1
ID = 24
stateno = 27
pos = 0, 0
postype = p1
persistent = 0
ignorehitpause = 1

[State 201, 1]
type = HitDef
trigger1 = !movecontact
attr = C, NA
damage    = 100, 25
animtype  = Back
hitflag = MAF ;HAF
guardflag = HL
pausetime = 20,2
sparkno = -1
sparkxy = -35,-95
guard.sparkno = -1
hitsound   = 5,0
p2facing = 1
guardsound = 5,14
ground.cornerpush.veloff = -30
ground.type = High
guard.ctrltime = 20
guard.velocity = -25
guard.slidetime = 20
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -1.8,-12
air.velocity = -2, 1
yaccel = 0.38
air.juggle = 10
envshake.time = 20
envshake.freq = 30
envshake.ampl = 15
fall.recover = 0
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 201, f37]
type = Ctrlset
trigger1 = animelem = 6
trigger1 = p2stateno != [120,155]
value = 1

[State 201, f3734]
type = Changestate
trigger1 = numexplod(79) >= 2
trigger1 = movehit
value = 431

[State 201, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;--------------)

[Statedef 218]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 5                  ;Number of air juggle points move takes
velset = 20,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0
anim = 218          ;Change animation (Def: no change)

[State 201, 347]
type = EnvShake
trigger1 = p2stateno = [130,155]
trigger1 = time = 10
time = 10
freq = 30
ampl = 5

[State 1200, 2atfw]
type = Explod
trigger1 = time = 1
anim = 888
pos = 0,0
postype = p1
ID = 7080
sprpriority  = 1
removetime = 100
ignorehitpause = 1

[State 200, Play]
type = PlaySnd
trigger1 = time = 1
trigger1 = 1
value = F5, 15

[State 2, blood111]
type = Helper
trigger1 = movehit
trigger1 = numhelper(24) < 1
ID = 24
stateno = 27
pos = 0, 0
postype = p1
persistent = 0
ignorehitpause = 1

[State 201, 1]
type = HitDef
trigger1 = AnimElem = 4
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage    = 40, 10                   ;Damage that move inflicts
animtype = light
guardflag = HL
hitflag = MAF
p2facing = 1
pausetime = 2,2
sparkno = -1
sparkxy = -10,-110
guard.sparkno = -1
hitsound = 5,1
guardsound = 5,14
ground.type = High
ground.slidetime = 5
ground.hittime  = 20
guard.velocity = -15
guard.slidetime = 20
guard.ctrltime = 20
ground.velocity = 0,0
guard.velocity = -2
ground.cornerpush.veloff = 0
envshake.time = 10
envshake.freq = 30
envshake.ampl = 5
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 201, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;----
[Statedef 434]
type    = S
movetype= A
physics = S
juggle  = 4
velset = 20, 0
ctrl = 0
anim = 219
sprpriority = 2

[State 430, 1]
type = PlaySnd
trigger1 = Time = 1
value = F5, 15

[State 1200, 2atfw]
type = Explod
trigger1 = time = 1
anim = 888
pos = 0,0
postype = p1
ID = 7080
sprpriority  = 1
removetime = 100

[State 2, blood111]
type = Helper
trigger1 = movehit
trigger1 = numhelper(24) < 1
ID = 24
stateno = 27
pos = 0, 0
postype = p1
persistent = 0
ignorehitpause = 1

[State 201, 347]
type = EnvShake
trigger1 = p2stateno = [130,155]
trigger1 = time = 5
time = 10
freq = 30
ampl = 5

[State 88500, Explod]
type = Explod
trigger1 = animelem = 1
anim = 888
id = 89
pos = 0*const(size.xscale), -5*const(size.xscale)
postype = p1
sprpriority = -1
ownpal = 1
removetime = 850

[State 430, 2]
type = HitDef
trigger1 = !MoveContact
attr = C, NA
damage    = 200, 40
animtype  = Back
hitflag = MAF ;HAF
guardflag = HL
pausetime = 7,2
sparkno = -1
sparkxy = -18,-100
guard.sparkno = -1
hitsound   = 5,0
p2facing = 1
guardsound = 5,14
ground.cornerpush.veloff = -30
ground.type = High
guard.ctrltime = 20
guard.velocity = -25
guard.slidetime = 20
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -3,-8
air.velocity = -4,-9
yaccel = 0.38
envshake.time = 15
envshake.freq = 70
envshake.ampl = 7
fall.recover = 0
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 430, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[State 430, 4]
type = CtrlSet
trigger1 = AnimElem = 8
value = 1

;----Air-Combo---------;
[Statedef 630]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 1                      ;Number of air juggle points move takes
velset = 20,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0
anim = 630                     ;Change animation (Def: no change)

[State 2, blood111]
type = Helper
trigger1 = movehit
trigger1 = numhelper(24) < 1
ID = 24
stateno = 27
pos = 0, 0
postype = p1
persistent = 0
ignorehitpause = 1

[State 201, 347]
type = EnvShake
trigger1 = p2stateno = [130,155]
trigger1 = time = 5
time = 10
freq = 30
ampl = 5

[State 200, Play]
type = PlaySnd
trigger1 = time = 1
trigger1 = 1
value = F5, 15

[State 430, 2]
type = HitDef
trigger1 = !MoveContact
attr = C, NA
damage    = 240, 90
animtype  = Back
hitflag = MAF ;HAF
guardflag = HL
pausetime = 5,2
sparkno = 2
sparkxy = -18,-100
guard.sparkno = -1
hitsound   = 5,0
p2facing = 1
guardsound = 5,14
ground.cornerpush.veloff = -30
ground.type = High
guard.ctrltime = 20
guard.slidetime = 20
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -1.8,-11
air.velocity = -1.8,-12
yaccel = 0.38
envshake.time = 15
envshake.freq = 70
envshake.ampl = 7
fall.recover = 0
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)
priority = 1, Miss

[State 88500, Fall]
type = ChangeState
trigger1 = AnimTime = 0
value = 677

;-----------------------

[Statedef 640]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 1                      ;Number of air juggle points move takes
velset = 20,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0
anim = 640                      ;Change animation (Def: no change)

[State 200, Play]
type = PlaySnd
trigger1 = time = 1
trigger1 = 1
value = F5, 15

[State 201, 1]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage    = 50, 10                   ;Damage that move inflicts
animtype = Light                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
air.animtype = Back
guardflag = HL
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 2, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default
pausetime = 0,7                  ;Time attacker pauses, time victim shakes
sparkno = 2
ground.cornerpush.veloff = 0
sparkxy = -20,-105
p2facing = 1
guard.sparkno = -1
hitsound = 5,21
guardsound = 5,14
ground.type = High                 ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 5
ground.hittime  = 20
guard.velocity = -15
guard.slidetime = 20
guard.ctrltime = 20
ground.velocity = 0,0              ;Time to regain control after guard (def: guard.slidetime)
guard.velocity = -2
air.fall = 1
fall.recover = 0
envshake.time = 10
envshake.freq = 30
envshake.ampl = 5
air.velocity = -2, 1
airguard.velocity = -1.9            ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 201, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 677
ctrl = 1
;---------------------

[Statedef 650]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 1                      ;Number of air juggle points move takes
velset = 20,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0
anim = 650                  ;Change animation (Def: no change)

[State 200, Play]
type = PlaySnd
trigger1 = time = 1
trigger1 = 1
value = F5, 15

[State 240, 2]
type = HitDef
trigger1 = !movecontact
attr = S, NA
animtype  = Back
damage    = 220, 80
guardflag = HL
hitflag = MAF
pausetime = 5,2
sparkno = 2
sparkxy = -55,-95
guard.sparkno = -1
hitsound = 5,0
guardsound = 5,14
ground.type = High
ground.slidetime = 30
p2facing = 1
guard.ctrltime = 20
guard.slidetime = 20
ground.hittime  = 30
ground.velocity = -5,-6
air.velocity = -5,-6
air.hittime = 17
ground.cornerpush.veloff = -35
fall.recover = 0
envshake.time = 15
envshake.freq = 70
envshake.ampl = 7
yaccel = 0.45
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)
priority = 1, Miss

[State 201, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 677
ctrl = 1
;--------------------
[Statedef 677]; Drop
type    = A
movetype= I
physics = A
juggle  = 4
velset = 0,0
anim = 677
ctrl = 0

[State 1101]
type = Veladd
trigger1 = time > 0
y = .3
