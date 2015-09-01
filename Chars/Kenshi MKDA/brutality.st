[Statedef 2201]
type = S
ctrl = 0
anim = 0
velset = 0,0,0

[State 0, ChangeAnim2]
type = ChangeAnim2
trigger1 = time = 0
value = 21238;818

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = S3,0

[State 0, LifeAdd]
type = LifeAdd
trigger1 = animelem = 6
value = -9999

[State 0, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;-----------------

[Statedef 2200]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 5                      ;Number of air juggle points move takes
velset = 10,0                     ;Set velocity (x,y) (Def: no change)
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
trigger1 = numhelper(26) < 1
ID = 26
stateno = 27
pos = 0, 0
postype = p1
persistent = 0
ignorehitpause = 1


[State 201, 1]
type = HitDef
trigger1 = movecontact!
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage    = 0                   ;Damage that move inflicts
animtype = Light                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
air.animtype = Back
guardflag = HL
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 2, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default
pausetime = 0,2                  ;Time attacker pauses, time victim shakes
sparkno = 3
sparkxy = -10,-105
ground.cornerpush.veloff = 0

guard.sparkno = -1
hitsound = 5,1
guardsound = 5,14
ground.type = High                 ;Type: High, Low, Trip (def: Normal)
p2facing = 1
ground.slidetime = 5
ground.hittime  = 20
guard.velocity = 0
guard.slidetime = 20
guard.ctrltime = 20
ground.velocity = 0,0              ;Time to regain control after guard (def: guard.slidetime)
guard.velocity = -2
air.velocity = -2, 1
airguard.velocity = -1.9            ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.fall = 1
kill = 0
fall.recover = 0
p2stateno = 2201
envshake.time = 10
envshake.freq = 30
envshake.ampl = 5



[State 201, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;-----------------

[Statedef 2210]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 5                      ;Number of air juggle points move takes
velset = 10,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0
anim = 223          ;Change animation (Def: no change)
poweradd = -2000

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
trigger1 = numhelper(25) < 1
ID = 25
stateno = 27
pos = 0, 0
postype = p1
persistent = 0
ignorehitpause = 1


[State 201, 1]
type = HitDef
trigger1 = movecontact!
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage    = 0                   ;Damage that move inflicts
animtype = Light                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
air.animtype = Back
guardflag = HL
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 2, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default
pausetime = 0,2                  ;Time attacker pauses, time victim shakes
sparkno = 3
sparkxy = -10,-105
ground.cornerpush.veloff = 0

guard.sparkno = -1
hitsound = 5,1
guardsound = 5,14
ground.type = High                 ;Type: High, Low, Trip (def: Normal)
p2facing = 1
ground.slidetime = 5
ground.hittime  = 20
guard.velocity = 0
guard.slidetime = 20
guard.ctrltime = 20
ground.velocity = 0,0              ;Time to regain control after guard (def: guard.slidetime)
guard.velocity = -2
air.velocity = -2, 1
airguard.velocity = -1.9            ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.fall = 1
kill = 0
fall.recover = 0
p2stateno = 2201
envshake.time = 10
envshake.freq = 30
envshake.ampl = 5


[State 201, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;-----------------

[Statedef 2220]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 5                      ;Number of air juggle points move takes
velset = 10,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0
anim = 222         ;Change animation (Def: no change)
poweradd = 0

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
trigger1 = numhelper(25) < 1
ID = 25
stateno = 27
pos = 0, 0
postype = p1
persistent = 0
ignorehitpause = 1


[State 201, 1]
type = HitDef
trigger1 = movecontact!
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage    = 0                   ;Damage that move inflicts
animtype = Light                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
air.animtype = Back
guardflag = HL
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 2, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default
pausetime = 0,2                  ;Time attacker pauses, time victim shakes
sparkno = 3
sparkxy = -10,-105
ground.cornerpush.veloff = 0

guard.sparkno = -1
hitsound = 5,1
guardsound = 5,14
ground.type = High                 ;Type: High, Low, Trip (def: Normal)
p2facing = 1
ground.slidetime = 5
ground.hittime  = 20
guard.velocity = 0
guard.slidetime = 20
guard.ctrltime = 20
ground.velocity = 0,0              ;Time to regain control after guard (def: guard.slidetime)
guard.velocity = -2
air.velocity = -2, 1
airguard.velocity = -1.9            ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.fall = 1
kill = 0
fall.recover = 0
p2stateno = 2201
envshake.time = 10
envshake.freq = 30
envshake.ampl = 5

[State 201, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-----------------------------------------

[Statedef 2230]
type    = S
movetype= A
physics = S
juggle  = 5
ctrl = 0
anim = 222
sprpriority = 2


[State 430, 1]
type = PlaySnd
trigger1 = Time = 1
value = F5, 15


[State 181, ED]
type = Explod
trigger1 = animelem = 1
anim = 888
id = 7088
pos = 168,100
postype = left
facing = 1
sprpriority = 1
ownpal = 1
removetime = 220

[State 181, ED]
type = Explod
trigger1 = time = 1
anim = 888
id = 89
pos = 168,100
postype = left
facing = 1
sprpriority = 1
ownpal = 1
removetime = 550


[State 430, 2]
type = HitDef
trigger1 = movecontact!
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage    = 0                   ;Damage that move inflicts
animtype = Light                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
air.animtype = Back
guardflag = HL
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 2, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default
pausetime = 0,2                  ;Time attacker pauses, time victim shakes
sparkno = 3
sparkxy = -10,-105
ground.cornerpush.veloff = 0

guard.sparkno = -1
hitsound = 5,1
guardsound = 5,14
ground.type = High                 ;Type: High, Low, Trip (def: Normal)
p2facing = 1
ground.slidetime = 5
ground.hittime  = 20
guard.velocity = 0
guard.slidetime = 20
guard.ctrltime = 20
ground.velocity = 0,0              ;Time to regain control after guard (def: guard.slidetime)
guard.velocity = -2
air.velocity = -2, 1
airguard.velocity = -1.9            ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.fall = 1
kill = 0
fall.recover = 0
p2stateno = 2201
envshake.time = 10
envshake.freq = 30
envshake.ampl = 5

[State 430, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------
 [Statedef 2240]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 1                      ;Number of air juggle points move takes
velset = 10,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0
anim = 223                     ;Change animation (Def: no change)

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
trigger1 = movecontact!
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage    = 0                   ;Damage that move inflicts
animtype = Light                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
air.animtype = Back
guardflag = HL
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 2, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default
pausetime = 0,2                  ;Time attacker pauses, time victim shakes
sparkno = 3
sparkxy = -10,-105
ground.cornerpush.veloff = 0

guard.sparkno = -1
hitsound = 5,1
guardsound = 5,14
ground.type = High                 ;Type: High, Low, Trip (def: Normal)
p2facing = 1
ground.slidetime = 5
ground.hittime  = 20
guard.velocity = 0
guard.slidetime = 20
guard.ctrltime = 20
ground.velocity = 0,0              ;Time to regain control after guard (def: guard.slidetime)
guard.velocity = -2
air.velocity = -2, 1
airguard.velocity = -1.9            ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.fall = 1
kill = 0
fall.recover = 0
p2stateno = 2201
envshake.time = 10
envshake.freq = 30
envshake.ampl = 5
[State 201, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;------------------------------------------------------------------------
[Statedef 2250]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 5                      ;Number of air juggle points move takes
velset = 10,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0
anim = 2242                      ;Change animation (Def: no change)

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
trigger1 = movecontact!
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage    = 0                   ;Damage that move inflicts
animtype = Light                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
air.animtype = Back
guardflag = HL
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 2, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default
pausetime = 0,2                  ;Time attacker pauses, time victim shakes
sparkno = 3
sparkxy = -10,-105
ground.cornerpush.veloff = 0

guard.sparkno = -1
hitsound = 5,1
guardsound = 5,14
ground.type = High                 ;Type: High, Low, Trip (def: Normal)
p2facing = 1
ground.slidetime = 5
ground.hittime  = 20
guard.velocity = 0
guard.slidetime = 20
guard.ctrltime = 20
ground.velocity = 0,0              ;Time to regain control after guard (def: guard.slidetime)
guard.velocity = -2
air.velocity = -2, 1
airguard.velocity = -1.9            ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.fall = 1
kill = 0
fall.recover = 0
p2stateno = 2201
envshake.time = 10
envshake.freq = 30
envshake.ampl = 5

[State 201, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-----------------------------------------------------------------
[Statedef 2260]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 5                      ;Number of air juggle points move takes
velset = 10,0                     ;Set velocity (x,y) (Def: no change)
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
trigger1 = numhelper(22) < 1
ID = 22
stateno = 27
pos = 0, 0
postype = p1
persistent = 0
ignorehitpause = 1


[State 201, 1]
type = HitDef
trigger1 = movecontact!
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage    = 0                   ;Damage that move inflicts
animtype = Light                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
air.animtype = Back
guardflag = HL
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 2, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default
pausetime = 0,2                  ;Time attacker pauses, time victim shakes
sparkno = 3
sparkxy = -10,-105
ground.cornerpush.veloff = 0

guard.sparkno = -1
hitsound = 5,1
guardsound = 5,14
ground.type = High                 ;Type: High, Low, Trip (def: Normal)
p2facing = 1
ground.slidetime = 5
ground.hittime  = 20
guard.velocity = 0
guard.slidetime = 20
guard.ctrltime = 20
ground.velocity = 0,0              ;Time to regain control after guard (def: guard.slidetime)
guard.velocity = -2
air.velocity = -2, 1
airguard.velocity = -1.9            ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.fall = 1
kill = 0
fall.recover = 0
p2stateno = 2201
envshake.time = 10
envshake.freq = 30
envshake.ampl = 5

[State 201, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;------------------------------------------------------------------------
[Statedef 2270]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 5                      ;Number of air juggle points move takes
velset = 10,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0
anim = 240                      ;Change animation (Def: no change)

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
trigger1 = movecontact!
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage    = 0                   ;Damage that move inflicts
animtype = Light                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
air.animtype = Back
guardflag = HL
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 2, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default
pausetime = 0,2                  ;Time attacker pauses, time victim shakes
sparkno = 3
sparkxy = -10,-105
ground.cornerpush.veloff = 0

guard.sparkno = -1
hitsound = 5,1
guardsound = 5,14
ground.type = High                 ;Type: High, Low, Trip (def: Normal)
p2facing = 1
ground.slidetime = 5
ground.hittime  = 20
guard.velocity = 0
guard.slidetime = 20
guard.ctrltime = 20
ground.velocity = 0,0              ;Time to regain control after guard (def: guard.slidetime)
guard.velocity = -2
air.velocity = -2, 1
airguard.velocity = -1.9            ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.fall = 1
kill = 0
fall.recover = 0
p2stateno = 2201
envshake.time = 10
envshake.freq = 30
envshake.ampl = 5


[State 201, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;-----------

;COMBO
[Statedef 2280]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 5                      ;Number of air juggle points move takes
velset = 20,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0
anim = 222                      ;Change animation (Def: no change)

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
trigger1 = movecontact!
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage    = 0                   ;Damage that move inflicts
animtype = Light                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
air.animtype = Back
guardflag = HL
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 2, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default
pausetime = 0,2                  ;Time attacker pauses, time victim shakes
sparkno = 3
sparkxy = -10,-105
ground.cornerpush.veloff = 0

guard.sparkno = -1
hitsound = 5,1
guardsound = 5,14
ground.type = High                 ;Type: High, Low, Trip (def: Normal)
p2facing = 1
ground.slidetime = 5
ground.hittime  = 20
guard.velocity = 0
guard.slidetime = 20
guard.ctrltime = 20
ground.velocity = 0,0              ;Time to regain control after guard (def: guard.slidetime)
guard.velocity = -2
air.velocity = -2, 1
airguard.velocity = -1.9            ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.fall = 1
kill = 0
fall.recover = 0
p2stateno = 2201
envshake.time = 10
envshake.freq = 30
envshake.ampl = 5

[State 201, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;------------

[Statedef 2290]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 9                      ;Number of air juggle points move takes
velset = 20,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0
anim = 223                       ;Change animation (Def: no change)

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
trigger1 = movecontact!
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage    = 0                   ;Damage that move inflicts
animtype = Light                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
air.animtype = Back
guardflag = HL
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 2, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default
pausetime = 0,2                  ;Time attacker pauses, time victim shakes
sparkno = 3
sparkxy = -10,-105
ground.cornerpush.veloff = 0

guard.sparkno = -1
hitsound = 5,1
guardsound = 5,14
ground.type = High                 ;Type: High, Low, Trip (def: Normal)
p2facing = 1
ground.slidetime = 5
ground.hittime  = 20
guard.velocity = 0
guard.slidetime = 20
guard.ctrltime = 20
ground.velocity = 0,0              ;Time to regain control after guard (def: guard.slidetime)
guard.velocity = -2
air.velocity = -2, 1
airguard.velocity = -1.9            ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.fall = 1
kill = 0
fall.recover = 0
p2stateno = 2201
envshake.time = 10
envshake.freq = 30
envshake.ampl = 5

[State 201, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;------------

[Statedef 2291]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 9                      ;Number of air juggle points move takes
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
trigger1 = numhelper(27) < 1
ID = 27
stateno = 27
pos = 0, 0
postype = p1
persistent = 0
ignorehitpause = 1


[State 201, 1]
type = HitDef
trigger1 = movecontact!
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage    = 0                   ;Damage that move inflicts
animtype = Light                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
air.animtype = Back
guardflag = HL
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 2, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default
pausetime = 0,2                  ;Time attacker pauses, time victim shakes
sparkno = 3
sparkxy = -10,-105
ground.cornerpush.veloff = 0

guard.sparkno = -1
hitsound = 5,1
guardsound = 5,14
ground.type = High                 ;Type: High, Low, Trip (def: Normal)
p2facing = 1
ground.slidetime = 5
ground.hittime  = 20
guard.velocity = 0
guard.slidetime = 20
guard.ctrltime = 20
ground.velocity = 0,0              ;Time to regain control after guard (def: guard.slidetime)
guard.velocity = -2
air.velocity = -2, 1
airguard.velocity = -1.9            ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.fall = 1
kill = 0
fall.recover = 0
p2stateno = 2201
envshake.time = 10
envshake.freq = 30
envshake.ampl = 5


[State 201, 7]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1
;------------

[Statedef 2292]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 9                      ;Number of air juggle points move takes
velset = 20,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0
anim = 2242                       ;Change animation (Def: no change)

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
trigger1 = movecontact!
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage    = 0                   ;Damage that move inflicts
animtype = Light                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
air.animtype = Back
guardflag = HL
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 2, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default
pausetime = 0,2                  ;Time attacker pauses, time victim shakes
sparkno = 3
sparkxy = -10,-105
ground.cornerpush.veloff = 0

guard.sparkno = -1
hitsound = 5,1
guardsound = 5,14
ground.type = High                 ;Type: High, Low, Trip (def: Normal)
p2facing = 1
ground.slidetime = 5
ground.hittime  = 20
guard.velocity = 0
guard.slidetime = 20
guard.ctrltime = 20
ground.velocity = 0,0              ;Time to regain control after guard (def: guard.slidetime)
guard.velocity = -2
air.velocity = -2, 1
airguard.velocity = -1.9            ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.fall = 1
kill = 0
fall.recover = 0
p2stateno = 2201
envshake.time = 10
envshake.freq = 30
envshake.ampl = 5


[State 201, 7]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;------------

[Statedef 2293]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 9                      ;Number of air juggle points move takes
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
trigger1 = numhelper(27) < 1
ID = 27
stateno = 27
pos = 0, 0
postype = p1
persistent = 0
ignorehitpause = 1


[State 201, 1]
type = HitDef
trigger1 = movecontact!
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage    = 0                   ;Damage that move inflicts
animtype = Light                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
air.animtype = Back
guardflag = HL
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 2, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default
pausetime = 0,2                  ;Time attacker pauses, time victim shakes
sparkno = 3
sparkxy = -10,-105
ground.cornerpush.veloff = 0

guard.sparkno = -1
hitsound = 5,1
guardsound = 5,14
ground.type = High                 ;Type: High, Low, Trip (def: Normal)
p2facing = 1
ground.slidetime = 5
ground.hittime  = 20
guard.velocity = 0
guard.slidetime = 20
guard.ctrltime = 20
ground.velocity = 0,0              ;Time to regain control after guard (def: guard.slidetime)
guard.velocity = -2
air.velocity = -2, 1
airguard.velocity = -1.9            ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.fall = 1
kill = 0
fall.recover = 0
p2stateno = 2201
envshake.time = 10
envshake.freq = 30
envshake.ampl = 5


[State 201, 7]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;------------

[Statedef 2294]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 9                      ;Number of air juggle points move takes
velset = 20,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0
anim = 240                       ;Change animation (Def: no change)

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
trigger1 = movecontact!
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage    = 0                   ;Damage that move inflicts
animtype = Light                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
air.animtype = Back
guardflag = HL
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 2, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default
pausetime = 0,2                  ;Time attacker pauses, time victim shakes
sparkno = 3
sparkxy = -10,-105
ground.cornerpush.veloff = 0

guard.sparkno = -1
hitsound = 5,1
guardsound = 5,14
ground.type = High                 ;Type: High, Low, Trip (def: Normal)
p2facing = 1
ground.slidetime = 5
ground.hittime  = 20
guard.velocity = 0
guard.slidetime = 20
guard.ctrltime = 20
ground.velocity = 0,0              ;Time to regain control after guard (def: guard.slidetime)
guard.velocity = -2
air.velocity = -2, 1
airguard.velocity = -1.9            ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.fall = 1
kill = 0
fall.recover = 0
p2stateno = 2201
envshake.time = 10
envshake.freq = 30
envshake.ampl = 5


[State 201, 7]
type = ChangeState
trigger1 = animelem = 6
value = 20000
ctrl = 1
;------------------------------------------------------------
[Statedef 20000]
type    = S
movetype= I
physics = N
juggle  = 1
anim = 0
Velset = 0, 0
ctrl = 0



[State 210, 1]
type = PlaySnd
trigger1 = time = 1
value = F5,10
volume = 60
channel = 1


[State 8000, sad]
type = BGPalFX
trigger1 = time = 0
time = 9999
add = -50, -50, -50

[State 8000, sadsd]
type = BGPalFX
trigger1 = time = 2
time = 9999
add = -70, -70, -70



[State 430, 31sdaa]
type = changestate
trigger1 = Time = 0
value = 20001



;---------------------

[Statedef 20001]
type    = S
movetype= A
physics = S

[State 431, 3.2]
type = VarRandom
trigger1 = Time = 0
v = 21
range = 1, 9

[State 431, 3.2]
type = Varset
trigger1 = Time = 0
v = 20
value = (Var(20) +1)

[State 201111, 7]
type = ChangeState
trigger1 = time = 1
trigger1 = Var(20) < 7
value = (3900 +Var(21))

[State 201111, 7]
type = ChangeState
trigger1 = time = 5
trigger1 = Var(20) >= 7 & Var(20) <= 12
value = (3900 +Var(21))

[State 201111, 7]
type = ChangeState
trigger1 = time = 3
trigger1 = Var(20) > 12 & Var(20) < 18
value = (3900 +Var(21))

[State 201111, 7]
type = ChangeState
trigger1 = time = 1
trigger1 = Var(20) >= 18 & Var(20) < 30
value = (3900 +Var(21))

[State 201, 7]
type = ChangeState
trigger1 = Var(20) = 30
value = 2007

;------------------------------------;

[Statedef 3901]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 1                      ;Number of air juggle points move takes
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0
anim = 222                     ;Change animation (Def: no change)

[State 2, blood111]
type = Helper
trigger1 = movehit
trigger1 = numhelper(26) < 1
trigger1 = Var(20) != 2
trigger1 = Var(20) != 4
trigger1 = Var(20) != 6
trigger1 = Var(20) != 8
trigger1 = Var(20) != 10
trigger1 = Var(20) != 12
trigger1 = Var(20) != 14
trigger1 = Var(20) != 16
trigger1 = Var(20) != 18
trigger1 = Var(20) != 20
trigger1 = Var(20) != 22
trigger1 = Var(20) != 24
ID = 26
stateno = 27
pos = 0, 0
postype = p2
persistent = 0
ignorehitpause = 1

[State 200, Play]
type = PlaySnd
trigger1 = time = 1
trigger1 = 1
value = F5, 15

[State 201, 1]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NA
ground.cornerpush.veloff = 0
animtype = Back
hitflag = M
sparkno = -1
hitsound = 5,21
ground.type = Low
p2facing = 1
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = 0,0
numhits = 0
envshake.time = 10
envshake.freq = 30
envshake.ampl = 5

[State 201, 7]
type = ChangeState
trigger1 = movecontact
value = 20001

[Statedef 3902]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 1                      ;Number of air juggle points move takes
velset = 20,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0
anim = 222;210                       ;Change animation (Def: no change)

[State 2, blood111]
type = Helper
trigger1 = movehit
trigger1 = numhelper(26) < 1
trigger1 = Var(20) != 2
trigger1 = Var(20) != 4
trigger1 = Var(20) != 6
trigger1 = Var(20) != 8
trigger1 = Var(20) != 10
trigger1 = Var(20) != 12
trigger1 = Var(20) != 14
trigger1 = Var(20) != 16
trigger1 = Var(20) != 18
trigger1 = Var(20) != 20
trigger1 = Var(20) != 22
trigger1 = Var(20) != 24
ID = 26
stateno = 27
pos = 0, 0
postype = p2
persistent = 0
ignorehitpause = 1

[State 200, Play]
type = PlaySnd
trigger1 = time = 1
trigger1 = 1
value = F5, 15

[State 201, 1]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NA
ground.cornerpush.veloff = 0
animtype = Back
hitflag = M
sparkno = -1
hitsound = 5,21
ground.type = Low
p2facing = 1
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = 0,0
numhits = 0
envshake.time = 10
envshake.freq = 30
envshake.ampl = 5

[State 201, 7]
type = ChangeState
trigger1 = movecontact
value = 20001

;-------------------------------------;

[Statedef 3903];203
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 9                      ;Number of air juggle points move takes
velset = 20,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0
anim = 222;210                       ;Change animation (Def: no change)

[State 2, blood111]
type = Helper
trigger1 = movehit
trigger1 = numhelper(26) < 1
trigger1 = Var(20) != 2
trigger1 = Var(20) != 4
trigger1 = Var(20) != 6
trigger1 = Var(20) != 8
trigger1 = Var(20) != 10
trigger1 = Var(20) != 12
trigger1 = Var(20) != 14
trigger1 = Var(20) != 16
trigger1 = Var(20) != 18
trigger1 = Var(20) != 20
trigger1 = Var(20) != 22
trigger1 = Var(20) != 24
ID = 26
stateno = 27
pos = 0, 0
postype = p2
persistent = 0
ignorehitpause = 1

[State 200, Play]
type = PlaySnd
trigger1 = time = 1
trigger1 = 1
value = F5, 15

[State 201, 1]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NA
ground.cornerpush.veloff = 0
animtype = Back
hitflag = M
sparkno = -1
hitsound = 5,21
ground.type = Low
p2facing = 1
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = 0,0
numhits = 0
envshake.time = 10
envshake.freq = 30
envshake.ampl = 5

[State 201, 7]
type = ChangeState
trigger1 = movecontact
value = 20001

;-----------------------------------;

[Statedef 3904]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 5                      ;Number of air juggle points move takes
velset = 20,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0
anim = 223                       ;Change animation (Def: no change)

[State 2, blood111]
type = Helper
trigger1 = movehit
trigger1 = numhelper(26) < 1
trigger1 = Var(20) != 2
trigger1 = Var(20) != 4
trigger1 = Var(20) != 6
trigger1 = Var(20) != 8
trigger1 = Var(20) != 10
trigger1 = Var(20) != 12
trigger1 = Var(20) != 14
trigger1 = Var(20) != 16
trigger1 = Var(20) != 18
trigger1 = Var(20) != 20
trigger1 = Var(20) != 22
trigger1 = Var(20) != 24
ID = 26
stateno = 27
pos = 0, 0
postype = p2
persistent = 0
ignorehitpause = 1

[State 200, Play]
type = PlaySnd
trigger1 = time = 1
trigger1 = 1
value = F5, 15

[State 201, 1]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NA
ground.cornerpush.veloff = 0
animtype = Back
hitflag = M
sparkno = -1
hitsound = 5,21
ground.type = Low
p2facing = 1
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = 0,0
numhits = 0
envshake.time = 10
envshake.freq = 30
envshake.ampl = 5

[State 201, 7]
type = ChangeState
trigger1 = movecontact
value = 20001

;------------------------------------;

[Statedef 3905]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 5                      ;Number of air juggle points move takes
velset = 20,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0
anim = 2242          ;Change animation (Def: no change)

[State 2, blood111]
type = Helper
trigger1 = movehit
trigger1 = numhelper(26) < 1
trigger1 = Var(20) != 2
trigger1 = Var(20) != 4
trigger1 = Var(20) != 6
trigger1 = Var(20) != 8
trigger1 = Var(20) != 10
trigger1 = Var(20) != 12
trigger1 = Var(20) != 14
trigger1 = Var(20) != 16
trigger1 = Var(20) != 18
trigger1 = Var(20) != 20
trigger1 = Var(20) != 22
trigger1 = Var(20) != 24
ID = 26
stateno = 27
pos = 0, 0
postype = p2
persistent = 0
ignorehitpause = 1

[State 200, Play]
type = PlaySnd
trigger1 = time = 1
trigger1 = 1
value = F5, 15

[State 201, 1]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NA
ground.cornerpush.veloff = 0
animtype = Back
hitflag = M
sparkno = -1
hitsound = 5,21
ground.type = Low
p2facing = 1
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = 0,0
numhits = 0
envshake.time = 10
envshake.freq = 30
envshake.ampl = 5

[State 201, 7]
type = ChangeState
trigger1 = movecontact
value = 20001

;-----------------------------------;

[Statedef 3906]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 1                      ;Number of air juggle points move takes
velset = 20,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0
anim = 223                       ;Change animation (Def: no change)

[State 2, blood111]
type = Helper
trigger1 = movehit
trigger1 = numhelper(26) < 1
trigger1 = Var(20) != 2
trigger1 = Var(20) != 4
trigger1 = Var(20) != 6
trigger1 = Var(20) != 8
trigger1 = Var(20) != 10
trigger1 = Var(20) != 12
trigger1 = Var(20) != 14
trigger1 = Var(20) != 16
trigger1 = Var(20) != 18
trigger1 = Var(20) != 20
trigger1 = Var(20) != 22
trigger1 = Var(20) != 24
ID = 26
stateno = 27
pos = 0, 0
postype = p2
persistent = 0
ignorehitpause = 1

[State 200, Play]
type = PlaySnd
trigger1 = time = 1
trigger1 = 1
value = F5, 15

[State 201, 1]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NA
ground.cornerpush.veloff = 0
animtype = Back
hitflag = M
sparkno = -1
hitsound = 5,21
ground.type = Low
p2facing = 1
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = 0,0
numhits = 0
envshake.time = 10
envshake.freq = 30
envshake.ampl = 5

[State 201, 7]
type = ChangeState
trigger1 = movecontact
value = 20001

;---------------------------------------;

[Statedef 3907]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 1                      ;Number of air juggle points move takes
velset = 20,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0
anim = 430                       ;Change animation (Def: no change)

[State 2, blood111]
type = Helper
trigger1 = movehit
trigger1 = numhelper(26) < 1
trigger1 = Var(20) != 2
trigger1 = Var(20) != 4
trigger1 = Var(20) != 6
trigger1 = Var(20) != 8
trigger1 = Var(20) != 10
trigger1 = Var(20) != 12
trigger1 = Var(20) != 14
trigger1 = Var(20) != 16
trigger1 = Var(20) != 18
trigger1 = Var(20) != 20
trigger1 = Var(20) != 22
trigger1 = Var(20) != 24
ID = 26
stateno = 27
pos = 0, 0
postype = p2
persistent = 0
ignorehitpause = 1

[State 200, Play]
type = PlaySnd
trigger1 = time = 1
trigger1 = 1
value = F5, 15

[State 201, 1]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NA
ground.cornerpush.veloff = 0
animtype = Back
hitflag = M
sparkno = -1
hitsound = 5,21
ground.type = Low
p2facing = 1
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = 0,0
numhits = 0
envshake.time = 10
envshake.freq = 30
envshake.ampl = 5

[State 201, 7]
type = ChangeState
trigger1 = movecontact
value = 20001

;------------------------------------;

[Statedef 3908]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 5                      ;Number of air juggle points move takes
velset = 20,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0
anim = 222          ;Change animation (Def: no change)

[State 2, blood111]
type = Helper
trigger1 = movehit
trigger1 = numhelper(26) < 1
trigger1 = Var(20) != 2
trigger1 = Var(20) != 4
trigger1 = Var(20) != 6
trigger1 = Var(20) != 8
trigger1 = Var(20) != 10
trigger1 = Var(20) != 12
trigger1 = Var(20) != 14
trigger1 = Var(20) != 16
trigger1 = Var(20) != 18
trigger1 = Var(20) != 20
trigger1 = Var(20) != 22
trigger1 = Var(20) != 24
ID = 26
stateno = 27
pos = 0, 0
postype = p2
persistent = 0
ignorehitpause = 1

[State 200, Play]
type = PlaySnd
trigger1 = time = 1
trigger1 = 1
value = F5, 15

[State 201, 1]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NA
ground.cornerpush.veloff = 0
animtype = Back
hitflag = M
sparkno = -1
hitsound = 5,21
ground.type = Low
p2facing = 1
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = 0,0
numhits = 0
envshake.time = 10
envshake.freq = 30
envshake.ampl = 5

[State 201, 7]
type = ChangeState
trigger1 = movecontact
value = 20001

;------------------------------------;

[Statedef 3909]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 8                      ;Number of air juggle points move takes
velset = 20,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0
anim = 430                       ;Change animation (Def: no change)

[State 2, blood111]
type = Helper
trigger1 = movehit
trigger1 = numhelper(26) < 1
trigger1 = Var(20) != 2
trigger1 = Var(20) != 4
trigger1 = Var(20) != 6
trigger1 = Var(20) != 8
trigger1 = Var(20) != 10
trigger1 = Var(20) != 12
trigger1 = Var(20) != 14
trigger1 = Var(20) != 16
trigger1 = Var(20) != 18
trigger1 = Var(20) != 20
trigger1 = Var(20) != 22
trigger1 = Var(20) != 24
ID = 26
stateno = 27
pos = 0, 0
postype = p2
persistent = 0
ignorehitpause = 1

[State 200, Play]
type = PlaySnd
trigger1 = time = 1
trigger1 = 1
value = F5, 15

[State 201, 1]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NA
ground.cornerpush.veloff = 0
animtype = Back
hitflag = M
sparkno = -1
hitsound = 5,21
ground.type = Low
p2facing = 1
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = 0,0
numhits = 0
envshake.time = 10
envshake.freq = 30
envshake.ampl = 5

[State 201, 7]
type = ChangeState
trigger1 = movecontact
value = 20001

;-------------------------------;

;------------------------------------;

[Statedef 2007]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 8                      ;Number of air juggle points move takes
velset = 20,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0
anim = 430                       ;Change animation (Def: no change)

[State 431, 3.2]
type = VarRandom
trigger1 = Time = 1;0
v = 11
range = 1, 140

[State 9130, Setbrutal]
type = Varset
trigger1 = movehit
V = 4
value = 5

[State 431, 3.5]
type = Playsnd
trigger1 = movehit
trigger1 = Var(11) = [1, 20]
trigger1 = time = 20
value = F5, 13
volume = 50

[State 431, 3.6]
type = Playsnd
trigger1 = movehit
trigger1 = Var(11) = [21, 40]
trigger1 = time = 20
value = F5, 6
volume = 50

[State 431, 3.7]
type = Playsnd
trigger1 = movehit
trigger1 = Var(11) = [41, 60]
trigger1 = time = 20
value = F5, 5
volume = 50

[State 431, 3.8]
type = Playsnd
trigger1 = movehit
trigger1 = Var(11) = [61, 80]
trigger1 = time = 20
value = F0, 21
volume = 50

[State 430, 3.9]
type = Playsnd
trigger1 = movehit
trigger1 = Var(11) = [81, 100]
trigger1 = time = 20
value = F5, 4
volume = 50

[State 430, 33.9]
type = Playsnd
trigger1 = movehit
trigger1 = Var(11) = [101, 120]
trigger1 = time = 20
value = F5, 3
volume = 50

[State 430, 3]
type = Playsnd
trigger1 = movehit
trigger1 = Var(11) = [121, 139]
trigger1 = time = 20
value = F6, 0
volume = 50

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
trigger1 = AnimElem = 5
attr = S, NA
hitflag = MAF ;HAF
sparkno = -1
sparkxy = -18,-100
hitsound   = 5,0
envshake.time = 15
envshake.freq = 70
envshake.ampl = 7
numhits = 0
p2stateno = 20002

[State 201, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 20002]
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
anim = 43052
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
anim =43053
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
anim = 43054
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
anim = 43052
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
anim = 43051
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
