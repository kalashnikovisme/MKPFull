;COMBO
[Statedef 202]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 1                      ;Number of air juggle points move takes
velset = 20,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0
anim = 2242                       ;Change animation (Def: no change)

[State 200, Play]
type = PlaySnd
trigger1 = time = 1
trigger1 = 1
value = F5, 15

[State 200, y]
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
trigger1 = !movecontact
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

;----------------

[Statedef 203]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 3                      ;Number of air juggle points move takes
velset = 20,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0
anim = 1225                       ;Change animation (Def: no change)

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

[State 201, 1]
type = HitDef
trigger1 = !movecontact
attr = S, NA
damage = 40,10
animtype = light
guardflag = HL
hitflag = MAF
p2facing = 1
pausetime = 0,2
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

[Statedef 304]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 5                      ;Number of air juggle points move takes
velset = 20,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0
anim = 224                       ;Change animation (Def: no change)

[State 200, Pl]
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
trigger1 = numhelper(26) < 1
ID = 26
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

[State 201, 1]
type = HitDef
trigger1 = !movecontact
attr = S, NA
damage = 60,10
animtype = light
guardflag = HL
hitflag = MAF
p2facing = 1
pausetime = 0,2
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
;---------------------

[Statedef 305]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 3                      ;Number of air juggle points move takes
velset = 20,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0
anim = 2242                       ;Change animation (Def: no change)

[State 200, Pl]
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
trigger1 = numhelper(26) < 1
ID = 26
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

[State 201, 1]
type = HitDef
trigger1 = !movecontact
attr = S, NA
damage = 60,10
animtype = light
guardflag = HL
hitflag = MAF
p2facing = 1
pausetime = 0,2
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
;-------------------

[Statedef 306]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 3                      ;Number of air juggle points move takes
velset = 20,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0
anim = 224                       ;Change animation (Def: no change)

[State 200, Pl]
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
trigger1 = numhelper(26) < 1
ID = 26
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

[State 201, 1]
type = HitDef
trigger1 = !movecontact
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage    = 60, 10                   ;Damage that move inflicts
animtype = light
guardflag = HL
hitflag = MAF
p2facing = 1
pausetime = 0,2
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
;----------------------------

[Statedef 307]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 3                      ;Number of air juggle points move takes
velset = 20,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0
anim = 2242                     ;Change animation (Def: no change)

[State 200, Pl]
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
trigger1 = numhelper(26) < 1
ID = 26
stateno = 27
pos = 0, 0
postype = p1
persistent = 0
ignorehitpause = 1

[State 201, 347]
type = EnvShake
trigger1 = p2stateno = [130,155]
trigger1 = time = 3
time = 10
freq = 30
ampl = 5

[State 201, 1]
type = HitDef
trigger1 = !movecontact
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage    = 60, 10                   ;Damage that move inflicts
animtype = light
guardflag = HL
hitflag = MAF
p2facing = 1
pausetime = 0,2
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
;----------------------

[Statedef 308]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 3                      ;Number of air juggle points move takes
velset = 30,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0
anim = 1225                      ;Change animation (Def: no change)

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

[State 201, 1]
type = HitDef
trigger1 = !movecontact
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage    = 200, 10                   ;Damage that move inflicts
animtype = Back                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
air.animtype = Back
guardflag = HL
hitflag = MAF
ground.cornerpush.veloff = 0
priority = 2, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default
pausetime = 5,2                  ;Time attacker pauses, time victim shakes
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
ground.velocity = -10,-2              ;Time to regain control after guard (def: guard.slidetime)
guard.velocity = -2
air.velocity = -10, 1
airguard.velocity = -1.9            ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.fall = 1
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
;----------------------

[Statedef 204]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 4                      ;Number of air juggle points move takes
velset = 20,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0
anim = 224                       ;Change animation (Def: no change)

[State 200, Pl]
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
trigger1 = numhelper(26) < 1
ID = 26
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

[State 201, 1]
type = HitDef
trigger1 = !movecontact
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage    = 60, 10                   ;Damage that move inflicts
animtype = light
guardflag = HL
hitflag = MAF
p2facing = 1
pausetime = 0,2
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
juggle  = 3                      ;Number of air juggle points move takes
velset = 20,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0
anim = 234          ;Change animation (Def: no change)

[State 200, Play]
type = PlaySnd
trigger1 = time = 1
trigger1 = 1
value = F5, 15

[State 2, blood111]
type = Helper
trigger1 = movehit
trigger1 = numhelper(25) < 1
ID = 25
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

[State 201, 1]
type = HitDef
trigger1 = !movecontact
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage    = 40, 10                   ;Damage that move inflicts
animtype = light
guardflag = HL
hitflag = MAF
p2facing = 1
pausetime = 0,2
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

[Statedef 206]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 6                      ;Number of air juggle points move takes
velset = 30,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0
anim = 1225                       ;Change animation (Def: no change)

[State 200, Play]
type = PlaySnd
trigger1 = time = 5
trigger1 = 1
value = F5, 15

[State 201, 347]
type = EnvShake
trigger1 = p2stateno = [130,155]
trigger1 = time = 5
time = 10
freq = 30
ampl = 5

[State 201, 1]
type = HitDef
trigger1 = !movecontact
attr = S, NA
damage = 60,10
animtype = light
guardflag = HL
hitflag = MAF
p2facing = 1
pausetime = 0,2
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

[Statedef 207]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 4                      ;Number of air juggle points move takes
velset = 20,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0
anim = 224                       ;Change animation (Def: no change)

[State 0, 1]
type = Changestate
triggerall = Var(10) = 2
trigger1 = time = 0
value = 10207

[State 0, 1]
type = Changestate
triggerall = Var(10) = 3
trigger1 = time = 0
value = 20207

[State 0, 1]
type = Changestate
triggerall = Var(10) = 4
trigger1 = time = 0
value = 30207

[State 0, 1]
type = Changestate
triggerall = Var(10) = 5
trigger1 = time = 0
value = 40204

[State 0, 1]
type = Changestate
triggerall = Var(10) = 6
trigger1 = time = 0
value = 50207

[State 0, 1]
type = Changestate
triggerall = Var(10) = 7
trigger1 = time = 0
value = 62001

[State 200, Play]
type = PlaySnd
trigger1 = time = 1
trigger1 = 1
value = F5, 15

[State 200, y]
type = Posset
trigger1 = 1
Y = 0

[State 2, blood111]
type = Helper
trigger1 = movehit
trigger1 = numhelper(23) < 1
ID = 23
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

[State 201, 1]
type = HitDef
trigger1 = !movecontact
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage    = 50, 10
animtype = light
guardflag = HL
hitflag = MAF
p2facing = 1
pausetime = 5,2
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
juggle  = 6                      ;Number of air juggle points move takes
velset = 30,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0
anim = 1225                       ;Change animation (Def: no change)

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

[State 201, 1]
type = HitDef
trigger1 = !movecontact
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage    = 240, 10                   ;Damage that move inflicts
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
ground.velocity = -10,-2              ;Time to regain control after guard (def: guard.slidetime)
guard.velocity = -2
air.velocity = -10, 1
airguard.velocity = -1.9            ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.fall = 1
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

[Statedef 209]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 10                      ;Number of air juggle points move takes
velset = 20,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0
anim = 430                      ;Change animation (Def: no change)

[State 200, Play]
type = PlaySnd
trigger1 = time = 1
trigger1 = 1
value = F5, 15

[State 201, 1]
type = HitDef
trigger1 = !movecontact
attr = C, NA
damage    = 290, 50
animtype  = Heavy
hitflag = MAF ;HAF
guardflag = HL
pausetime = 15,2
sparkno = 15
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
envshake.time = 20
envshake.freq = 30
envshake.ampl = 15
fall = 1
fall.recover = 0
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 201, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;-------------------------------------------------------

;        Ermac's Combos

;---------------------------------------------------------
[Statedef 10212]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 3                      ;Number of air juggle points move takes
velset = 20,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0
anim = 2242                       ;Change animation (Def: no change)

[State 200, Play]
type = PlaySnd
trigger1 = time = 1
trigger1 = 1
value = F5, 15

[State 200, Pl]
type = Posset
trigger1 = 1
Y = 0

[State 201, 1]
type = HitDef
trigger1 = !movecontact
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage    = 30, 10                   ;Damage that move inflicts
animtype = light
guardflag = HL
hitflag = MAF
p2facing = 1
pausetime = 0,2
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
;-----------------------

[Statedef 10203]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 3                      ;Number of air juggle points move takes
velset = 20,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0
anim = 210                       ;Change animation (Def: no change)

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
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage    = 30, 10                   ;Damage that move inflicts
animtype = light
guardflag = HL
hitflag = MAF
p2facing = 1
pausetime = 0,2
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
[Statedef 10303]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 5                      ;Number of air juggle points move takes
velset = 20,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0
anim = 210                       ;Change animation (Def: no change)

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
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage    = 30, 10                   ;Damage that move inflicts
animtype = light
guardflag = HL
hitflag = MAF
p2facing = 1
pausetime = 0,2
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
;------------------

[Statedef 10204]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 3                      ;Number of air juggle points move takes
velset = 20,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0
anim = 233                       ;Change animation (Def: no change)

[State 200, Play]
type = PlaySnd
trigger1 = time = 1
trigger1 = 1
value = F5, 15

[State 200, P23l]
type = PosSet
trigger1 = 1
Y = 0

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
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage    = 100, 10                   ;Damage that move inflicts
animtype = light
guardflag = HL
hitflag = MAF
p2facing = 1
pausetime = 0,2
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
;------------------
[Statedef 10305]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 4                      ;Number of air juggle points move takes
velset = 20,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0
anim = 234                        ;Change animation (Def: no change)

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
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage    = 60, 20                   ;Damage that move inflicts
animtype = light
guardflag = HL
hitflag = MAF
p2facing = 1
pausetime = 0,2
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
[Statedef 10440]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 6                     ;Number of air juggle points move takes
velset = 20,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0
anim = 210                       ;Change animation (Def: no change)

[State 2, blood111]
type = Helper
trigger1 = movehit
trigger1 = numhelper(26) < 1
ID = 26
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

[State 201, 1]
type = HitDef
trigger1 = !movecontact
attr = S, NA
animtype  = Back
damage    = 240, 40
guardflag = HL
hitflag = MAF
pausetime = 7,2
sparkno = -1
sparkxy = -55,-95
guard.sparkno = -1
hitsound = 5,0
guardsound = 5,14
ground.type = High
ground.slidetime = 30
ground.cornerpush.veloff = -20
p2facing = 1
guard.ctrltime = 20
guard.velocity = -25
guard.slidetime = 20
ground.hittime  = 30
ground.velocity = -6,-4.7
air.velocity = -2, 1
air.hittime = 17
fall = 1
fall.recover = 0
envshake.time = 13
envshake.freq = 40
envshake.ampl = 6
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 201, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;---------------------

[Statedef 10205]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 4                      ;Number of air juggle points move takes
velset = 20,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0
anim = 219                       ;Change animation (Def: no change)

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
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage    = 30, 10                   ;Damage that move inflicts
animtype = light
guardflag = HL
hitflag = MAF
p2facing = 1
pausetime = 0,2
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

[Statedef 10206]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 6                      ;Number of air juggle points move takes
velset = 20,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0
anim = 224                       ;Change animation (Def: no change)

[State 200, Play]
type = PlaySnd
trigger1 = time = 5
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
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage    = 60, 10                   ;Damage that move inflicts
animtype = light
guardflag = HL
hitflag = MAF
p2facing = 1
pausetime = 0,2
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


[Statedef 10207]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 3                      ;Number of air juggle points move takes
velset = 20,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0
anim = 224                       ;Change animation (Def: no change)

[State 200, Play]
type = PlaySnd
trigger1 = time = 1
trigger1 = 1
value = F5, 15

[State 200, Pl]
type = Posset
trigger1 = 1
Y = 0

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
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage    = 50, 10
animtype = light
guardflag = HL
hitflag = MAF
p2facing = 1
pausetime = 0,2
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


[Statedef 10208]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 1                      ;Number of air juggle points move takes
velset = 20,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0
anim = 233                       ;Change animation (Def: no change)

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
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage    = 30, 10                   ;Damage that move inflicts
animtype = light
guardflag = HL
hitflag = MAF
p2facing = 1
pausetime = 0,2
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

[Statedef 10219]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 5                      ;Number of air juggle points move takes
velset = 20,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0
anim = 430                       ;Change animation (Def: no change)

[State 200, Play]
type = PlaySnd
trigger1 = time = 1
trigger1 = 1
value = F5, 15

[State 201, 1]
type = HitDef
trigger1 = !movecontact
attr = C, NA
damage    = 200, 50
animtype  = Heavy
hitflag = MAF ;HAF
guardflag = HL
pausetime = 5,2
sparkno = 15
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
envshake.time = 20
envshake.freq = 40
envshake.ampl = 15
fall = 1
fall.recover = 0
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 201, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 10209]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 5                      ;Number of air juggle points move takes
velset = 20,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0
anim = 430                       ;Change animation (Def: no change)

[State 200, Play]
type = PlaySnd
trigger1 = time = 1
trigger1 = 1
value = F5, 15

[State 201, 1]
type = HitDef
trigger1 = !movecontact
attr = C, NA
damage    = 200, 50
animtype  = Heavy
hitflag = MAF ;HAF
guardflag = HL
pausetime = 20,2
sparkno = 15
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
envshake.time = 20
envshake.freq = 30
envshake.ampl = 15
fall = 1
fall.recover = 0
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 201, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------;

;------------Rain's-Combos--------------------------;

;---------------------------------------------------;

[Statedef 20203]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 3                      ;Number of air juggle points move takes
velset = 30,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0
anim = 210                       ;Change animation (Def: no change)

[State 200, Play]
type = PlaySnd
trigger1 = time = 1
trigger1 = 1
value = F5, 15

[State 2, blood111]
type = Helper
trigger1 = movehit
trigger1 = numhelper(26) < 1
ID = 26
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

[State 201, 1]
type = HitDef
trigger1 = !movecontact
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage    = 30, 10                   ;Damage that move inflicts
animtype = light
guardflag = HL
hitflag = MAF
p2facing = 1
pausetime = 0,2
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
;------------------------

[Statedef 20325]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 6                      ;Number of air juggle points move takes
velset = 30,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0
anim = 225                       ;Change animation (Def: no change)

[State 200, Play]
type = PlaySnd
trigger1 = time = 1
trigger1 = 1
value = F5, 15

[State 2, blood111]
type = Helper
trigger1 = movehit
trigger1 = numhelper(26) < 1
ID = 26
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

[State 201, 1]
type = HitDef
trigger1 = !movecontact
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage    = 50, 15                   ;Damage that move inflicts
animtype = light
guardflag = HL
hitflag = MAF
p2facing = 1
pausetime = 0,2
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
;---------------------------

[Statedef 20303]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 6                      ;Number of air juggle points move takes
velset = 30,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0
anim = 210                       ;Change animation (Def: no change)

[State 200, Play]
type = PlaySnd
trigger1 = time = 1
trigger1 = 1
value = F5, 15

[State 2, blood111]
type = Helper
trigger1 = movehit
trigger1 = numhelper(26) < 1
ID = 26
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

[State 201, 1]
type = HitDef
trigger1 = !movecontact
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage    = 30, 10                   ;Damage that move inflicts
animtype = light
guardflag = HL
hitflag = MAF
p2facing = 1
pausetime = 0,2
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

[Statedef 20308]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 5                      ;Number of air juggle points move takes
velset = 30,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0
anim = 224                       ;Change animation (Def: no change)

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

[State 201, 1]
type = HitDef
trigger1 = !movecontact
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
ground.velocity = -10,-2              ;Time to regain control after guard (def: guard.slidetime)
guard.velocity = -2
air.velocity = -10, 1
airguard.velocity = -1.9            ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.fall = 1
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
;-----------------------

[Statedef 20204]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 5                      ;Number of air juggle points move takes
velset = 20,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0
anim = 234                       ;Change animation (Def: no change)

[State 200, Pl]
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
trigger1 = numhelper(25) < 1
ID = 25
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

[State 201, 1]
type = HitDef
trigger1 = !movecontact
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage    = 100, 10                   ;Damage that move inflicts
animtype = light
guardflag = HL
hitflag = MAF
p2facing = 1
pausetime = 0,2
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

[Statedef 20305]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 5                      ;Number of air juggle points move takes
velset = 30,0                    ;Set velocity (x,y) (Def: no change)
ctrl = 0
anim = 234                      ;Change animation (Def: no change)

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

[State 201, 347]
type = EnvShake
trigger1 = p2stateno = [130,155]
trigger1 = time = 5
time = 10
freq = 30
ampl = 5

[State 201, 1]
type = HitDef
trigger1 = !movecontact
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage    = 100, 10                   ;Damage that move inflicts
animtype = light
guardflag = HL
hitflag = MAF
p2facing = 1
pausetime = 0,2
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
;-----------------------

[Statedef 20206]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 5                     ;Number of air juggle points move takes
velset = 20,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0
anim = 224                       ;Change animation (Def: no change)

[State 2, blood111]
type = Helper
trigger1 = movehit
trigger1 = numhelper(23) < 1
ID = 23
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
trigger1 = time = 5
trigger1 = 1
value = F5, 15

[State 201, 1]
type = HitDef
trigger1 = !movecontact
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage    = 60, 10                   ;Damage that move inflicts
animtype = light
guardflag = HL
hitflag = MAF
p2facing = 1
pausetime = 0,2
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


[Statedef 20207]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 6                      ;Number of air juggle points move takes
velset = 20,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0
anim = 224                       ;Change animation (Def: no change)

[State 200, Pl]
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
trigger1 = numhelper(22) < 1
ID = 22
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

[State 201, 1]
type = HitDef
trigger1 = !movecontact
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage    = 50, 10
animtype = light
guardflag = HL
hitflag = MAF
p2facing = 1
pausetime = 0,2
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


[Statedef 20208]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 3                     ;Number of air juggle points move takes
velset = 20,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0
anim = 222                       ;Change animation (Def: no change)

[State 200, Play]
type = PlaySnd
trigger1 = time = 1
trigger1 = 1
value = F5, 15

[State 2, blood111]
type = Helper
trigger1 = movehit
trigger1 = numhelper(21) < 1
ID = 21
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

[State 201, 1]
type = HitDef
trigger1 = !movecontact
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage    = 30, 10                   ;Damage that move inflicts
animtype = light
guardflag = HL
hitflag = MAF
p2facing = 1
pausetime = 0,2
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
;-----------

[Statedef 20240]
type    = S
movetype= A
physics = S
juggle  = 4
ctrl = 0
velset = 0,0
anim = 240

[State 2, Roundhouseblood]
type = Helper
trigger1 = movehit
trigger1 = numhelper(29) < 1
ID = 29
stateno = 29
pos = 0, 0
postype = p1
persistent = 0
ignorehitpause = 1

[State 240, 1.5]
type = Playsnd
trigger1 = animelem = 3
value = F5,15

[State 9000, 1]
type = TargetFacing
trigger1 = time >= 1
trigger1 = p2bodydist X <= 80
value = -1

[State 181, ED]
type = Explod
trigger1 = animelem = 6
trigger1 = movehit
anim = 888
id = 891
pos = 168,100
postype = left
facing = 1
sprpriority = 1
ownpal = 1
removetime = 550

[State 240, 2]
type = HitDef
trigger1 = !movecontact
trigger1 = numexplod(891) = 0
trigger1 = p2stateno != 9010
animtype  = Back
attr = S, NA
damage    = 240, 60
guardflag = HL
hitflag = MAF
pausetime = 0,2
sparkno = -1
sparkxy = -55,-95
guard.sparkno = -1
hitsound = 5,0
guardsound = 5,14
ground.type = High
ground.slidetime = 30
p2facing = 1
p2stateno = 5060
guard.ctrltime = 20
guard.velocity = -25
guard.slidetime = 20
ground.hittime  = 30
ground.velocity = -5,-5
air.velocity = -5,-6
air.hittime = 17
ground.cornerpush.veloff = -35
fall = 1
fall.recover = 0
envshake.time = 15
envshake.freq = 70
envshake.ampl = 7
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 240, 2]
type = HitDef
trigger1 = AnimElem = 5
trigger1 = numexplod(891) >= 1
trigger2 = AnimElem = 5
trigger2 = p2stateno = 9010
animtype  = Back
attr = S, NA
damage    = 240, 60
guardflag = HL
hitflag = MAF
pausetime = 20,2
sparkno = -1
sparkxy = -55,-95
guard.sparkno = -1
hitsound = 5,0
guardsound = 5,14
ground.type = High
ground.slidetime = 30
p2facing = 1
guard.ctrltime = 20
guard.velocity = -25
guard.slidetime = 20
ground.hittime  = 30
ground.velocity = -5,-5
air.velocity = -5,-6
air.hittime = 17
ground.cornerpush.veloff = -35
fall = 1
fall.recover = 0
envshake.time = 15
envshake.freq = 70
envshake.ampl = 7
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 240, 43]
type = ChangeState
trigger1 = numexplod(891) > 3
trigger1 = animelem = 8
value = 10211

[State 240, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;------------------------
[Statedef 5060]
type    = A
movetype= H
physics = A
juggle  = 1
anim = 5035
Velset = 0, 0
ctrl = 0

[State 181, DIED]
type = Changeanim
trigger1 = animtime = 0
trigger1 = anim = 5035
value  = 5050

[State 2000, 0.5]
type = Playsnd
trigger1 = time = 1
value = 3,2
;volume = 70


[State 2000, 0.6]
type = ScreenBound
trigger1 = time = [1, 1000]
value = 0
movecamera = 0,0


[State 2000, 0.7]
type = Veladd
trigger1 = Pos Y < 0
Y = .65

[State 2000, 2]
type = Velset
trigger1 = animelem = 1
X = -12.5

[State 1050, 5]
type = VelAdd
trigger1 = Time < 4
trigger1 = Vel Y > -3
Y = -13.5

;[State 1050, 534]
;type = VelAdd
;trigger1 = Time < 2
;trigger1 = movetype = A
;Y = -2

[State 2000, 4]
type = Changestate
triggerall = time > 8
trigger1 = Pos X > 140
value = 5061

[State 2000, 5]
type = Changestate
triggerall = time > 8
trigger1 = Pos X < -140
value = 5061


;[State 2000, 6.1]
;type = Changestate
;trigger1 = Pos Y > 0
;value = 0
;ctrl = 1

[State 2000, 7]
type= Changestate
trigger1 = time > 22
trigger1 = Pos Y = 0
value = 5100
;ctrl = 1

;------------------------------------------------------------------------------------------
; Appear behind
[Statedef 5061]
type    = A
movetype= H
physics = N
;juggle  = 1
Velset = 0, 0
ctrl = 0
anim = 5050

[State 1040, 0.6]
type = ScreenBound
trigger1 = time = [1, 1000]
value = 0
movecamera = 0,0

[State 1050, 2]
type = Posset
triggerall = Time = 1
trigger1 = Pos X > 140
trigger1 = Pos X != 150
X = -150

[State 1050, 2]
type = Posset
triggerall = Time = 1
trigger1 = Pos X < -140
trigger1 = Pos X != -150
X = 150

[State 1050, 3]
type = Velset
trigger1 = time = 4
X = -6.5

[State 1040, 0.7]
type = Veladd
trigger1 = Pos Y < 0
Y = .3;.4

[State 1050, 6.9]
type = Velset
trigger1 = Pos Y > 0
Y = 0

[State 1050, 6.6]
type = Posset
trigger1 = Pos Y > 0
trigger1 = time = 20
Y = 0

[State 1050, 7]
type= Selfstate
trigger1 = time > 10
trigger1 = Pos Y >= -3
value = 5100

[Statedef 2444]
type    = S
movetype= A
physics = S
juggle  = 4
ctrl = 0
velset = 0,0,0
anim = 210

[State 9130, SetFatal]
type = Varset
trigger1 = Time = 4
V = 4
value = 1

[State 8000, sad]
type = BGPalFX
trigger1 = animelem = 1
time = 9999
add = -100, -100, -100

[State 240, 1.5]
type = Playsnd
trigger1 = animelem = 1
value = 13,0

[State 240, 1.5]
type = Playsnd
trigger1 = animelem = 3
value = F5,15

[State 240, 2]
type = HitDef
trigger1 = AnimElem = 4
attr = S, NA
animtype  = Back
damage    = 166, 22
guardflag = HL
hitflag = MAF
pausetime = 0, 2
p2stateno = 441
sparkno = 1
sparkxy = 30,-95
guard.sparkno = -1
hitsound = 5,0
guardsound = 5,14
ground.cornerpush.veloff = -30
ground.type = High
ground.slidetime = 30
p2facing = 1
guard.ctrltime = 20
ground.hittime  = 30
ground.velocity = -5,-5
air.velocity = -4.4,-5.2
air.hittime = 17
fall = 1
fall.recover = 0
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 240, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


[State 240, 4]
type = ChangeState
trigger1 = Movehit = 1
value = 2401
ctrl = 1

[Statedef 2401]
type    = S
movetype= I
physics = S
ctrl = 0

[State 2401, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 241]
type    = S
movetype= A
physics = S
juggle  = 4
ctrl = 0
velset = 0,0,0
anim = 241


[State 241, Select]
type = VarRandom
trigger1 = Time = 2
v = 11
range = 11, 12

;[State 241, Play]
;type = PlaySnd
;trigger1 = Time = 2
;value = 4, Var(11)

[State 241, 1.5]
type = Playsnd
trigger1 = Time = 2
value = F5,15

[State 241, 2]
type = HitDef
trigger1 = AnimElem = 4
attr = S, NA
animtype  = Back
damage    = 43, 9
guardflag = HL
hitflag = MAF
pausetime = 0,2
sparkno = -1
guard.sparkno = -1
hitsound   = 5,3
guardsound = 5,14
ground.type = High
ground.slidetime = 30
ground.hittime  = 30
ground.velocity = -4
guard.ctrltime = 20
p2facing = 1
air.velocity = -3.4,-4.2
air.hittime = 17
fall = 1
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

fall.recover = 0

[State 241, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;------------------------------------------;

;------------Sub-Zero's-Combos-------------;

;------------------------------------------;
[Statedef 30212]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 3                      ;Number of air juggle points move takes
velset = 20,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0
anim = 225                       ;Change animation (Def: no change)

[State 200, Play]
type = PlaySnd
trigger1 = time = 1
trigger1 = 1
value = F5, 15

[State 201, 1]
type = HitDef
trigger1 = !movecontact
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage    = 50, 10                   ;Damage that move inflicts
animtype = light
guardflag = HL
hitflag = MAF
p2facing = 1
pausetime = 0,2
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
;--------------------

[Statedef 30213]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 6                      ;Number of air juggle points move takes
velset = 20,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0
anim = 210                       ;Change animation (Def: no change)

[State 200, Play]
type = PlaySnd
trigger1 = time = 1
trigger1 = 1
value = F5, 15

[State 2, blood111]
type = Helper
trigger1 = movehit
trigger1 = numhelper(27) < 1
ID = 27
stateno = 27
pos = 0, 0
postype = p1
persistent = 0
ignorehitpause = 1

[State 201, 1]
type = HitDef
trigger1 = !movecontact
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage    = 50, 10                   ;Damage that move inflicts
animtype = light
guardflag = HL
hitflag = MAF
p2facing = 1
pausetime = 0,2
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

[Statedef 30302]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 3                      ;Number of air juggle points move takes
velset = 20,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0
anim = 2243                       ;Change animation (Def: no change)

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
trigger1 = numhelper(27) < 1
ID = 27
stateno = 27
pos = 0, 0
postype = p1
persistent = 0
ignorehitpause = 1

[State 201, 1]
type = HitDef
trigger1 = !movecontact
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage    = 40, 10                   ;Damage that move inflicts
animtype = light
guardflag = HL
hitflag = MAF
p2facing = 1
pausetime = 0,2
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

[Statedef 30340]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 5                      ;Number of air juggle points move takes
velset = 20,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0
anim = 2243                       ;Change animation (Def: no change)

[State 2, blood111]
type = Helper
trigger1 = movehit
trigger1 = numhelper(27) < 1
ID = 27
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

[State 201, 1]
type = HitDef
trigger1 = !movecontact
attr = S, NA
animtype  = Back
damage    = 250, 40
guardflag = HL
hitflag = MAF
pausetime = 7,2
sparkno = -1
sparkxy = -55,-95
guard.sparkno = -1
hitsound = 5,0
guardsound = 5,14
ground.type = High
ground.slidetime = 30
ground.cornerpush.veloff = -20
p2facing = 1
guard.ctrltime = 20
guard.velocity = -25
guard.slidetime = 20
ground.hittime  = 30
ground.velocity = -7,-5
air.velocity = -3, 3
air.hittime = 17
fall = 1
fall.recover = 0
envshake.time = 15
envshake.freq = 70
envshake.ampl = 7
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 201, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-----------------
[Statedef 30402]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 3                      ;Number of air juggle points move takes
velset = 20,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0
anim = 2243                       ;Change animation (Def: no change)

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
trigger1 = numhelper(27) < 1
ID = 27
stateno = 27
pos = 0, 0
postype = p1
persistent = 0
ignorehitpause = 1

[State 201, 1]
type = HitDef
trigger1 = !movecontact
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage    = 40, 10                   ;Damage that move inflicts
animtype = light
guardflag = HL
hitflag = MAF
p2facing = 1
pausetime = 0,2
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

[Statedef 30440]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 1                      ;Number of air juggle points move takes
velset = 20,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0
anim = 2243                       ;Change animation (Def: no change)

[State 2, blood111]
type = Helper
trigger1 = movehit
trigger1 = numhelper(27) < 1
ID = 27
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

[State 201, 1]
type = HitDef
trigger1 = !movecontact
attr = S, NA
animtype  = Back
damage    = 250, 40
guardflag = HL
hitflag = MAF
pausetime = 7,2
sparkno = -1
sparkxy = -55,-95
guard.sparkno = -1
hitsound = 5,0
guardsound = 5,14
ground.type = High
ground.slidetime = 30
ground.cornerpush.veloff = -20
p2facing = 1
guard.ctrltime = 20
guard.velocity = -25
guard.slidetime = 20
ground.hittime  = 30
ground.velocity = -7,-5
air.velocity = -3, 3
air.hittime = 17
fall = 1
fall.recover = 0
envshake.time = 15
envshake.freq = 70
envshake.ampl = 7
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 201, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;------------

[Statedef 30203]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 3                      ;Number of air juggle points move takes
velset = 20,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0
anim = 210                       ;Change animation (Def: no change)

[State 200, Play]
type = PlaySnd
trigger1 = time = 1
trigger1 = 1
value = F5, 15

[State 2, blood111]
type = Helper
trigger1 = movehit
trigger1 = numhelper(7113) < 1
ID = 7113
stateno = 7113
pos = 0, -100
postype = p2
persistent = 0
ignorehitpause = 1

[State 201, 347]
type = EnvShake
trigger1 = p2stateno = [130,155]
trigger1 = time = 5
time = 10
freq = 30
ampl = 5

[State 201, 1]
type = HitDef
trigger1 = !movecontact
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage    = 30, 10                   ;Damage that move inflicts
animtype = light
guardflag = HL
hitflag = MAF
p2facing = 1
pausetime = 0,2
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

[Statedef 30204]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 3                      ;Number of air juggle points move takes
velset = 20,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0
anim = 233                       ;Change animation (Def: no change)

[State 200, Pl]
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
trigger1 = numhelper(27) < 1
ID = 27
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

[State 201, 1]
type = HitDef
trigger1 = !movecontact
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage    = 100, 10                   ;Damage that move inflicts
animtype = light
guardflag = HL
hitflag = MAF
p2facing = 1
pausetime = 0,2
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

[Statedef 30205]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 4                      ;Number of air juggle points move takes
velset = 20,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0
anim = 219          ;Change animation (Def: no change)

[State 200, Play]
type = PlaySnd
trigger1 = time = 1
trigger1 = 1
value = F5, 15

[State 2, blood111]
type = Helper
trigger1 = movehit
trigger1 = numhelper(27) < 1
ID = 27
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

[State 201, 1]
type = HitDef
trigger1 = !movecontact
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage    = 30, 10                   ;Damage that move inflicts
animtype = light
guardflag = HL
hitflag = MAF
p2facing = 1
pausetime = 0,2
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

[State 1200, 2at]
type = Explod
trigger1 = time = 1
trigger1 = movehit
anim = 888
pos = 0,0
postype = p1
ID = 1122
sprpriority  = 1

[State 201, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 30207]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 5                      ;Number of air juggle points move takes
velset = 20,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0
anim = 224                       ;Change animation (Def: no change)

[State 200, Play]
type = PlaySnd
trigger1 = time = 1
trigger1 = 1
value = F5, 15

[State 200, Pl]
type = Posset
trigger1 = 1
Y = 0

[State 2, blood111]
type = Helper
trigger1 = movehit
trigger1 = numhelper(27) < 1
ID = 27
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

[State 201, 1]
type = HitDef
trigger1 = !movecontact
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage    = 50, 10
animtype = light
guardflag = HL
hitflag = MAF
p2facing = 1
pausetime = 0,2
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


[Statedef 30208]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 4                      ;Number of air juggle points move takes
velset = 20,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0
anim = 233                      ;Change animation (Def: no change)

[State 200, Play]
type = PlaySnd
trigger1 = time = 1
trigger1 = 1
value = F5, 15

[State 2, blood111]
type = Helper
trigger1 = movehit
trigger1 = numhelper(27) < 1
ID = 27
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

[State 201, 1]
type = HitDef
trigger1 = !movecontact
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage    = 30, 10                   ;Damage that move inflicts
animtype = light
guardflag = HL
hitflag = MAF
p2facing = 1
pausetime = 0,2
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

;-------------------------
[Statedef 30307]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 5                      ;Number of air juggle points move takes
velset = 25,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0
anim = 2246                      ;Change animation (Def: no change)

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

[State 201, 1]
type = HitDef
trigger1 = !movecontact
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage    = 140, 10                   ;Damage that move inflicts
animtype = Light                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
air.animtype = Back
guardflag = HL
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 2, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default
pausetime = 6,2                  ;Time attacker pauses, time victim shakes
sparkno = 15
sparkxy = -32,-100
guard.sparkno = -1
hitsound = 5,0
guardsound = 5,14
ground.type = High                 ;Type: High, Low, Trip (def: Normal)
p2facing = 1
ground.slidetime = 5
ground.hittime  = 20
guard.velocity = -15
guard.slidetime = 20
guard.ctrltime = 20
ground.velocity = -2.5,-10.5
guard.velocity = -2
air.velocity = -2, 1
airguard.velocity = -1.9            ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.fall = 1
fall.recover = 0
ground.cornerpush.veloff = 0
yaccel = 0.38
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)
envshake.time = 25
envshake.freq = 40
envshake.ampl = 7

[State 201, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;----------------------------
[Statedef 30303]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 5                      ;Number of air juggle points move takes
velset = 30,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0
anim = 2243                       ;Change animation (Def: no change)

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
trigger1 = numhelper(27) < 1
ID = 27
stateno = 27
pos = 0, 0
postype = p1
persistent = 0
ignorehitpause = 1

[State 201, 1]
type = HitDef
trigger1 = !movecontact
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage    = 40, 10                   ;Damage that move inflicts
animtype = light
guardflag = HL
hitflag = MAF
p2facing = 1
pausetime = 0,2
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
;---------------------------

[Statedef 30308]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 5                     ;Number of air juggle points move takes
velset = 30,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0
anim = 2243                       ;Change animation (Def: no change)

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
trigger1 = numhelper(27) < 1
ID = 27
stateno = 27
pos = 0, 0
postype = p1
persistent = 0
ignorehitpause = 1

[State 201, 1]
type = HitDef
trigger1 = !movecontact
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage    = 240, 60                   ;Damage that move inflicts
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
ground.velocity = -10,-2              ;Time to regain control after guard (def: guard.slidetime)
guard.velocity = -2
air.velocity = -10, 1
airguard.velocity = -1.9            ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.fall = 1
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
;---------------------------

[Statedef 30209]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 5                      ;Number of air juggle points move takes
velset = 20,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0
anim = 219                       ;Change animation (Def: no change)

[State 2, blood111]
type = Helper
trigger1 = movehit
trigger1 = numhelper(27) < 1
ID = 27
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

[State 201, 1]
type = HitDef
trigger1 = !movecontact
attr = C, NA
damage    = 200, 50
animtype  = Back
hitflag = MAF ;HAF
guardflag = HL
pausetime = 5,2
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
envshake.time = 20
envshake.freq = 30
envshake.ampl = 15
fall = 1
fall.recover = 0
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 201, f37]
type = Ctrlset
trigger1 = Animelem >= 8
value = 1

[State 201, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------;
;----------Scorpion's-Combos------------;
;---------------------------------------;

[Statedef 40202]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 4                      ;Number of air juggle points move takes
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
trigger1 = !movecontact
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage    = 30, 10                   ;Damage that move inflicts
animtype = light
guardflag = HL
hitflag = MAF
p2facing = 1
pausetime = 0,2
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


[Statedef 40203]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 3                      ;Number of air juggle points move takes
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

[State 6500, sangre]
type = helper
trigger1 = movehit
trigger1 = numhelper(27) < 1
ID = 27
stateno = 27
pos = 0, 0
postype = p1
persistent = 0
ignorehitpause = 1

[State 201, 1]
type = HitDef
trigger1 = !movecontact
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage    = 30, 10                   ;Damage that move inflicts
animtype = light
guardflag = HL
hitflag = MAF
p2facing = 1
pausetime = 0,2
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

[Statedef 40204]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 4                      ;Number of air juggle points move takes
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

[State 6500, sangre]
type = helper
trigger1 = movehit
trigger1 = numhelper(27) < 1
ID = 27
stateno = 27
pos = 0, 0
postype = p1
persistent = 0
ignorehitpause = 1

[State 201, 1]
type = HitDef
trigger1 = !movecontact
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage    = 30, 10                   ;Damage that move inflicts
animtype = light
guardflag = HL
hitflag = MAF
p2facing = 1
pausetime = 0,2
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

[Statedef 40205]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 4                      ;Number of air juggle points move takes
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

[State 6500, sangre]
type = helper
trigger1 = movehit
trigger1 = numhelper(27) < 1
ID = 27
stateno = 27
pos = 0, 0
postype = p1
persistent = 0
ignorehitpause = 1

[State 201, 1]
type = HitDef
trigger1 = !movecontact
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage    = 30, 10                   ;Damage that move inflicts
animtype = light
guardflag = HL
hitflag = MAF
p2facing = 1
pausetime = 0,2
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

[Statedef 40308]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 3                      ;Number of air juggle points move takes
velset = 30,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0
anim = 224                     ;Change animation (Def: no change)

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

[State 6500, sangre]
type = helper
trigger1 = movehit
trigger1 = numhelper(27) < 1
ID = 27
stateno = 27
pos = 0, 0
postype = p1
persistent = 0
ignorehitpause = 1

[State 201, 1]
type = HitDef
trigger1 = !movecontact
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

[Statedef 40207]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 3                    ;Number of air juggle points move takes
velset = 20,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0
anim = 2248                      ;Change animation (Def: no change)

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
trigger1 = numhelper(27) < 1
ID = 27
stateno = 27
pos = 0, 0
postype = p1
persistent = 0
ignorehitpause = 1

[State 201, 1]
type = HitDef
trigger1 = !movecontact
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage    = 70, 15                   ;Damage that move inflicts
animtype = light
guardflag = HL
hitflag = MAF
p2facing = 1
pausetime = 0,2
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

[Statedef 40208]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 4                      ;Number of air juggle points move takes
velset = 20,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0
anim = 2247                      ;Change animation (Def: no change)

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
trigger1 = numhelper(27) < 1
ID = 27
stateno = 27
pos = 0, 0
postype = p1
persistent = 0
ignorehitpause = 1

[State 201, 1]
type = HitDef
trigger1 = !movecontact
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage    = 70, 15                   ;Damage that move inflicts
animtype = light
guardflag = HL
hitflag = MAF
p2facing = 1
pausetime = 0,2
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

[Statedef 40209]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 3                      ;Number of air juggle points move takes
velset = 20,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0
anim = 2248                       ;Change animation (Def: no change)

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
trigger1 = numhelper(27) < 1
ID = 27
stateno = 27
pos = 0, 0
postype = p1
persistent = 0
ignorehitpause = 1

[State 201, 1]
type = HitDef
trigger1 = !movecontact
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
envshake.time = 15
envshake.freq = 70
envshake.ampl = 7
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 201, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;--------------)

[Statedef 40218]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 5                  ;Number of air juggle points move takes
                    ;Set velocity (x,y) (Def: no change)
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
trigger1 = numhelper(27) < 1
ID = 27
stateno = 27
pos = 0, 0
postype = p1
persistent = 0
ignorehitpause = 1

[State 201, 1]
type = HitDef
trigger1 = !movecontact
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage    = 40, 10                   ;Damage that move inflicts
animtype = light
guardflag = HL
hitflag = MAF
p2facing = 1
pausetime = 0,2
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

[Statedef 40434]
type    = S
movetype= A
physics = S
juggle  = 4
ctrl = 0
velset = 20,0
anim = 222

[State 430, 1]
type = PlaySnd
trigger1 = Time = 1
value = F5, 15

[State 2, blood111]
type = Helper
trigger1 = movehit
trigger1 = numhelper(27) < 1
ID = 27
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

;-----------------------------;
;-----Reptile's-Combos--------;
;-----------------------------;

[Statedef 50203]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 3                      ;Number of air juggle points move takes
velset = 20,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0
anim = 210                       ;Change animation (Def: no change)

[State 200, Play]
type = PlaySnd
trigger1 = time = 1
trigger1 = 1
value = F5, 15

[State 2, blood111]
type = Helper
trigger1 = movehit
trigger1 = numhelper(27) < 1
ID = 27
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

[State 201, 1]
type = HitDef
trigger1 = !movecontact
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage    = 30, 10                   ;Damage that move inflicts
animtype = light
guardflag = HL
hitflag = MAF
p2facing = 1
pausetime = 0,2
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
;------------

[Statedef 50340]
type    = S
movetype= A
physics = S
juggle  = 6
ctrl = 0
velset = 20,0
anim = 240

[State 2, blood111]
type = Helper
trigger1 = movehit
trigger1 = numhelper(27) < 1
ID = 27
stateno = 27
pos = 0, 0
postype = p1
persistent = 0
ignorehitpause = 1

[State 240, 1.5]
type = Playsnd
trigger1 = animelem = 3
value = F5,15

[State 240, 2]
type = HitDef
trigger1 = !movecontact
attr = S, NA
animtype  = Back
damage    = 240, 40
guardflag = HL
hitflag = MAF
pausetime = 15,2
sparkno = -1
;sparkxy = -55,-95
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

[State 240, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;-------------------

[Statedef 50303]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 3                      ;Number of air juggle points move takes
velset = 20,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0
anim = 210                       ;Change animation (Def: no change)

[State 200, Play]
type = PlaySnd
trigger1 = time = 1
trigger1 = 1
value = F5, 15

[State 2, blood111]
type = Helper
trigger1 = movehit
trigger1 = numhelper(27) < 1
ID = 27
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

[State 201, 1]
type = HitDef
trigger1 = !movecontact
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage    = 30, 10                   ;Damage that move inflicts
animtype = light
guardflag = HL
hitflag = MAF
p2facing = 1
pausetime = 0,2
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

[Statedef 50204]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 4                      ;Number of air juggle points move takes
velset = 20,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0
anim = 224                       ;Change animation (Def: no change)

[State 200, Pl]
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
trigger1 = numhelper(27) < 1
ID = 27
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

[State 201, 1]
type = HitDef
trigger1 = !movecontact
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage    = 100, 10                   ;Damage that move inflicts
animtype = light
guardflag = HL
hitflag = MAF
p2facing = 1
pausetime = 0,2
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

[Statedef 50205]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 5                      ;Number of air juggle points move takes
velset = 20,0                    ;Set velocity (x,y) (Def: no change)
ctrl = 0
anim = 219                       ;Change animation (Def: no change)

[State 200, Play]
type = PlaySnd
trigger1 = time = 1
trigger1 = 1
value = F5, 15

[State 2, blood111]
type = Helper
trigger1 = movehit
trigger1 = numhelper(27) < 1
ID = 27
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

[State 201, 1]
type = HitDef
trigger1 = !movecontact
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage    = 30, 10                   ;Damage that move inflicts
animtype = light
guardflag = HL
hitflag = MAF
p2facing = 1
pausetime = 0,2
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

[Statedef 50207]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 6                      ;Number of air juggle points move takes
velset = 20,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0
anim = 233                       ;Change animation (Def: no change)

[State 200, Play]
type = PlaySnd
trigger1 = time = 1
trigger1 = 1
value = F5, 15

[State 200, Playsd]
type = Posset
trigger1 = 1
Y = 0

[State 2, blood111]
type = Helper
trigger1 = movehit
trigger1 = numhelper(27) < 1
ID = 27
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

[State 201, 1]
type = HitDef
trigger1 = !movecontact
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage    = 50, 10
animtype = light
guardflag = HL
hitflag = MAF
p2facing = 1
pausetime = 0,2
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

[Statedef 50208]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 1                      ;Number of air juggle points move takes
velset = 20,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0
anim = 233                       ;Change animation (Def: no change)

[State 200, Play]
type = PlaySnd
trigger1 = time = 1
trigger1 = 1
value = F5, 15

[State 2, blood111]
type = Helper
trigger1 = movehit
trigger1 = numhelper(27) < 1
ID = 27
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

[State 201, 1]
type = HitDef
trigger1 = !movecontact
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage    = 30, 10                   ;Damage that move inflicts
animtype = light
guardflag = HL
hitflag = MAF
p2facing = 1
pausetime = 0,2
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

[Statedef 50209]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 4                     ;Number of air juggle points move takes
velset = 20,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0
anim = 219                       ;Change animation (Def: no change)

[State 2, blood111]
type = Helper
trigger1 = movehit
trigger1 = numhelper(27) < 1
ID = 27
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

[State 201, 1]
type = HitDef
trigger1 = !movecontact
attr = C, NA
damage    = 290, 100
animtype  = Heavy
hitflag = MAF ;HAF
guardflag = HL
pausetime = 4,2
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
envshake.time = 20
envshake.freq = 30
envshake.ampl = 15
fall = 1
fall.recover = 0
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 201, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;---------------------------------------;
;	  -Smoke's Combos -		;
;---------------------------------------;

[Statedef 62222]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 3                      ;Number of air juggle points move takes
velset = 20,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0
anim = 2248                       ;Change animation (Def: no change)

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
trigger1 = numhelper(23) < 1
ID = 23
stateno = 27
pos = 0, 0
postype = p1
persistent = 0
ignorehitpause = 1

[State 201, 1]
type = HitDef
trigger1 = !movecontact
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage    = 70, 15                   ;Damage that move inflicts
animtype = light
guardflag = HL
hitflag = MAF
p2facing = 1
pausetime = 0,2
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
;---------------------

[Statedef 62223]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 5                      ;Number of air juggle points move takes
velset = 20,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0
anim = 2247                       ;Change animation (Def: no change)

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
trigger1 = numhelper(22) < 1
ID = 22
stateno = 27
pos = 0, 0
postype = p1
persistent = 0
ignorehitpause = 1

[State 201, 1]
type = HitDef
trigger1 = !movecontact
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage    = 70, 15                   ;Damage that move inflicts
animtype = light
guardflag = HL
hitflag = MAF
p2facing = 1
pausetime = 0,2
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

[Statedef 62224]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 5                      ;Number of air juggle points move takes
velset = 20,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0
anim = 2248                      ;Change animation (Def: no change)

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
trigger1 = numhelper(21) < 1
ID = 21
stateno = 27
pos = 0, 0
postype = p1
persistent = 0
ignorehitpause = 1

[State 201, 1]
type = HitDef
trigger1 = !movecontact
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage    = 100, 30                   ;Damage that move inflicts
animtype = Medium                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
air.animtype = Back
guardflag = HL
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 2, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default
pausetime = 20,2                  ;Time attacker pauses, time victim shakes
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
envshake.time = 15
envshake.freq = 70
envshake.ampl = 7
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)


[State 201, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;----------------------

[Statedef 62221]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 3                      ;Number of air juggle points move takes
velset = 20,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0
anim = 2242                      ;Change animation (Def: no change)

[State 200, Play]
type = PlaySnd
trigger1 = time = 1
trigger1 = 1
value = F5, 15

[State 200, Pl]
type = Posset
trigger1 = 1
Y = 0

[State 201, 1]
type = HitDef
trigger1 = !movecontact
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage    = 30, 10                   ;Damage that move inflicts
animtype = light
guardflag = HL
hitflag = MAF
p2facing = 1
pausetime = 0,2
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
;----------------

[Statedef 62201]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 3                      ;Number of air juggle points move takes
velset = 20,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0
anim = 2101                       ;Change animation (Def: no change)

[State 200, Play]
type = PlaySnd
trigger1 = time = 1
trigger1 = 1
value = F5, 15

[State 200, Pl]
type = Posset
trigger1 = 1
Y = 0

[State 201, 1]
type = HitDef
trigger1 = !movecontact
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage    = 30, 10                   ;Damage that move inflicts
animtype = light
guardflag = HL
hitflag = MAF
p2facing = 1
pausetime = 0,2
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


[Statedef 62102]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 3                     ;Number of air juggle points move takes
velset = 20,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0
anim = 2242

[State 200, Play]
type = PlaySnd
trigger1 = time = 1
trigger1 = 1
value = F5, 15

[State 200, Pl]
type = Posset
trigger1 = 1
Y = 0

[State 201, 1]
type = HitDef
trigger1 = !movecontact
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage    = 30, 10                   ;Damage that move inflicts
animtype = light
guardflag = HL
hitflag = MAF
p2facing = 1
pausetime = 0,2
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
;-------------------------------------;

[Statedef 62103]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 3                     ;Number of air juggle points move takes
velset = 20,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0
anim = 210                     ;Change animation (Def: no change)

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
trigger1 = numhelper(27) < 1
ID = 27
stateno = 27
pos = 0, 0
postype = p1
persistent = 0
ignorehitpause = 1

[State 201, 1]
type = HitDef
trigger1 = !movecontact
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage    = 35, 12                   ;Damage that move inflicts
animtype = light
guardflag = HL
hitflag = MAF
p2facing = 1
pausetime = 0,2
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
;------------------------

[Statedef 62203]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 4                      ;Number of air juggle points move takes
velset = 20,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0
anim = 210                      ;Change animation (Def: no change)

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
trigger1 = numhelper(27) < 1
ID = 27
stateno = 27
pos = 0, 0
postype = p1
persistent = 0
ignorehitpause = 1

[State 201, 1]
type = HitDef
trigger1 = AnimElem = 6
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage    = 35, 12                   ;Damage that move inflicts
animtype = light
guardflag = HL
hitflag = MAF
p2facing = 1
pausetime = 0,2
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
;-----------------------------------;

[Statedef 62001]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 1                     ;Number of air juggle points move takes
velset = 20,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0
anim = 222                      ;Change animation (Def: no change)

[State 200, Play]
type = PlaySnd
trigger1 = time = 1
trigger1 = 1
value = F5, 15

[State 200, Pl]
type = Posset
trigger1 = 1
Y = 0

[State 2, blood111]
type = Helper
trigger1 = movehit
trigger1 = numhelper(26) < 1
ID = 26
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

[State 201, 1]
type = HitDef
trigger1 = !movecontact
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage    = 60, 10                   ;Damage that move inflicts
animtype = light
guardflag = HL
hitflag = MAF
p2facing = 1
pausetime = 0,2
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
;------------------------------------;

[Statedef 62002]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 3                      ;Number of air juggle points move takes
velset = 20,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0
anim = 223                      ;Change animation (Def: no change)

[State 200, Play]
type = PlaySnd
trigger1 = time = 1
trigger1 = 1
value = F5, 15

[State 2, blood111]
type = Helper
trigger1 = movehit
trigger1 = numhelper(26) < 1
ID = 26
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

[State 201, 1]
type = HitDef
trigger1 = !movecontact
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage    = 30, 10                   ;Damage that move inflicts
animtype = light
guardflag = HL
hitflag = MAF
p2facing = 1
pausetime = 0,2
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
;-----------------------------------;

[Statedef 62003]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 4                      ;Number of air juggle points move takes
velset = 20,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0
anim = 224                       ;Change animation (Def: no change)

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

[State 201, 1]
type = HitDef
trigger1 = !movecontact
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
;---------------------------------------;

[Statedef 62004]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 4                     ;Number of air juggle points move takes
velset = 20,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0
anim = 430                       ;Change animation (Def: no change)

[State 430, 1]
type = PlaySnd
trigger1 = Time = 1
value = F5, 15

[State 2, Upperblood]
type = Helper
trigger1 = movehit
trigger1 = numhelper(28) < 1
ID = 28
stateno = 28
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

[State 201, 1]
type = HitDef
trigger1 = !movecontact
attr = S, NA
damage    = 100, 30
animtype  = Back
hitflag = MAF ;HAF
guardflag = HL
pausetime = 0,2
sparkno = 15
sparkxy = -35,-95
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
ground.velocity = -1.8,-12
air.velocity = -1.8,-13
yaccel = 0.38
envshake.time = 15
envshake.freq = 70
envshake.ampl = 7
fall.recover = 0
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)
priority = 1, Miss

[State 201, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;------------------------------------;

[Statedef 62005]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 3                      ;Number of air juggle points move takes
velset = 20,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0
anim = 223          ;Change animation (Def: no change)

[State 430, 1]
type = PlaySnd
trigger1 = Time = 1
value = F5, 15

[State 2, blood111]
type = Helper
trigger1 = movehit
trigger1 = numhelper(26) < 1
ID = 26
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

[State 201, 1]
type = HitDef
trigger1 = !movecontact
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage    = 30, 10                   ;Damage that move inflicts
animtype = light
guardflag = HL
hitflag = MAF
p2facing = 1
pausetime = 0,2
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
;------------------------------------;

[Statedef 62006]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 3                      ;Number of air juggle points move takes
velset = 20,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0
anim = 430                       ;Change animation (Def: no change)

[State 201, 347]
type = EnvShake
trigger1 = p2stateno = [130,155]
trigger1 = time = 5
time = 10
freq = 30
ampl = 5

[State 201, 1]
type = HitDef
trigger1 = !movecontact
attr = S, NA
damage    = 100, 30
animtype  = Back
hitflag = MAF ;HAF
guardflag = HL
pausetime = 0,2
sparkno = 15
sparkxy = -35,-95
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
ground.velocity = -1.8,-12
air.velocity = -1.8,-13
yaccel = 0.38
envshake.time = 15
envshake.freq = 70
envshake.ampl = 7
air.fall = 1
fall.recover = 0
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)
priority = 1, Miss

[State 201, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-------------------------------;
;	- Fin de KOMBOS -	;
;-------------------------------;
