;-------FATAL fuego
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
trigger1 = time = 1
V = 4
value = 1

[State 1200, chg]
type = changeanim
trigger1 = time = 20
value = 3000

[State 9251,gazoline]
type = explod
trigger1 = time = 45
postype = p1
pos = 46,-90
anim = 3101
bindtime = -2
removetime = -2
ontop = 1

[State 9251,sparks]
type = explod
trigger1 = time = 50
trigger2 = time = 65
trigger3 = time = 80
trigger4 = time = 95
postype = p1
pos = 46,-90
anim = 3449
bindtime = -2
removetime = -2
ontop = 1
random = 30,30

[State 9251,flame]
type = explod
trigger1 = time = 91
postype = p2
pos = 0,-0
anim = 3102
bindtime = -2
removetime = 28
ontop = 0

[State 9251,fire]
type = explod
trigger1 = time = 112
postype = p1
pos = 177,23
anim = 3103
bindtime = -2
removetime = 81
ontop = 0

[State -3]
type = Explod
trigger1 = time = 96
trigger2 = time = 118
trigger3 = time = 188
anim = 3104
name = "humoarriba"
pos = -0,-70;0, -90
postype = p2
bindtime = 1
vel = -0.3, -0.3
random = 30, 70
removetime = -2
sprpriority = 1

[State -3]
type = Explod
trigger1 = time = 96
trigger2 = time = 118
trigger3 = time = 188
anim = 3104
name = "humoarriba"
pos = -0,-70;0, -90
postype = p2
bindtime = 1
vel = -0.2, -0.4
random = 30, 70
removetime = -2
sprpriority = 1

[State -3]
type = Explod
trigger1 = time = 96
trigger2 = time = 118
trigger3 = time = 188
anim = 3104
name = "humoarriba"
pos = -0,-70;0, -90
postype = p2
bindtime = 1
vel = 0.2, -0.5
random = 30, 70
removetime = -2
sprpriority = 1


[State -3]
type = Explod
type = Explod
trigger1 = time = 96
trigger2 = time = 118
trigger3 = time = 188
anim = 3449
name = "humoarriba"
pos = -0,-130;0, -90
postype = p2
bindtime = 1
vel = -1, -1
random = 40, 50
removetime = -2
sprpriority = 1

[State -3]
type = Explod
type = Explod
trigger1 = time = 96
trigger2 = time = 118
trigger3 = time = 188
anim = 3449
name = "humoarriba"
pos = -0,-130;0, -90
postype = p2
bindtime = 1
vel = -0.7, -1.3
random = 40, 50
removetime = -2
sprpriority = 1

[State -3]
type = Explod
trigger1 = time = 96
trigger2 = time = 118
trigger3 = time = 188
anim = 3449
name = "humoarriba"
pos = -0,-130;0, -90
postype = p2
bindtime = 1
vel = 0.6, -1.6
random = 40, 50
removetime = -2
sprpriority = 1

[State 9251,fuego-blast]
type = Helper
trigger1 = time = 63
postype = p1
pos = 58,-65
stateno = 3001

[State 1200, play]
type = playsnd
trigger1 = time = 45
trigger2 = time = 63
value = 20,0
channel = 4

[State 200, 7]
type = screenbound
trigger1 = time > 70
value = 0

[State 200, 7]
type = changestate
trigger1 = time > 260;30
value = 3010
ctrl = 1
;-------------------------------
[Statedef 3010]  
type    = S
movetype= I
physics = S
;anim = 3001
ctrl = 1

[State 200, 7]
type = screenbound
trigger1 = 1
value = 0
;---------------------------
[Statedef 3001]     ;fuego
type    = S
movetype= A
physics = S
anim = 3001

[State 1200, play]
type = playsnd
trigger1 = time = 0
trigger2 = time = 28
trigger3 = time = 52
trigger4 = time = 69
value = 20,1

[State 9251,fuego-zero]
type = Helper
trigger1 = animelem = 5
postype = p1
pos = 0,-0
stateno = 9230

[State 1601, Hit]
type = HitDef
trigger1 = !movecontact
attr = S, NA
sparkno = -1
numhits = - 1
p2stateno = 3002
hitsound = s20,16

[State 1601, Hit]
type = sprpriority
trigger1 = time=0
value = 2

[State 10000, rakieta]
type = destroyself
trigger1 = animtime = 0
;-------------------------
[Statedef 3002]     ;p2
type    = S
movetype= H
physics = S


[State 9251,misil]
type = explod
trigger1 = time = 0
anim = F50
postype = p1
pos = 0,0
sprpriority = 2

[State 1601, Hit]
type = sprpriority
trigger1 = time=0
value = 1

[State 1200, chau]
type = varset
trigger1 = time = 10
V = 26
value = 1

[State 5, Vel XY]
type = veladd
trigger1 = Time > 10
trigger1 = time < 72
X = -1.5

[State 200, 7]
type = screenbound
trigger1 = time > 70
value = 0

[State 45, fff]
type = LifeSet
trigger1 = time = 50
value = 0

;[State 1200, sound]
;type = playsnd
;trigger1 = time = 5
;value = 4,1

[State 1200, chau]
type = posset
trigger1 = time = 99
X = 50

[State 45, 34fff]
type = Selfstate
trigger1 = time = 100
value = 5150
;---------------------------
[Statedef 9013]     non-fuego-fake
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 1                      ;Number of air juggle points move takes
velset = 10,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0        
anim = 701

[State 3201, 1]
type = HitDef
trigger1 = AnimElem = 1
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage    = 0, 0                   ;Damage that move inflicts
animtype = Light                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
air.animtype = Back
guardflag = HL
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 2, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default
p2facing = 1
pausetime = 0,2                  ;Time attacker pauses, time victim shakes
sparkno = s3449
ground.cornerpush.veloff = 0    
sparkxy = 0,-90
guard.sparkno = -1
hitsound = -1
guardsound = 5,14             
ground.type = High                 ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 5
ground.hittime  = 20
guard.velocity = -15
guard.slidetime = 20
guard.ctrltime = 20 
ground.velocity = 0,0              ;Time to regain control after guard (def: guard.slidetime)
guard.velocity = -2
air.velocity = -2, 1
airguard.velocity = -1.9            ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.fall = 1
fall.recover = 0
p2stateno = 3004
;envshake.time = 10
;envshake.freq = 30
;envshake.ampl = 5 

;-------------------------
[Statedef 3004]     ;p2 para shao khan
type    = S
movetype= H
physics = S
anim = 21238

[State 9251,misil]
type = palfx
trigger1 = time = 0
add = -240, -240,-240
time = 60

[State 1200, sound]
type = playsnd
trigger1 = time = 5
value = 4,1

[State 45, 34fff]
type = Selfstate
trigger1 = time = 100
value = 5150



; --- Animality ---
[Statedef 3800]
type    = S
movetype= A
physics = S
juggle  = 1
anim = 0
ctrl = 0

[State 430, 31sdaa]
type = helper
trigger1 = Time = 0
stateno = 3804

[State 2000, 0.6]
type = ScreenBound
trigger1 = time > 60
value = 0
movecamera = 0,0

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

[State 200, ruido]
type = playsnd
trigger1 = time = 115
trigger2 = time = 128
value = 3800,0

[State 9130, sube]
type = velset
trigger1 = time >= 92
x = 6
y = -3

[State 200, 7]
type = changestate
trigger1 = time = 150
value = 3801

[Statedef 3801]
type    = S
movetype= A
physics = S

[State 200, ruido]
type = playsnd
trigger1 = time = 31
trigger2 = time = 44
trigger3 = time = 57
trigger4 = time = 70
value = 3800,0

[State 2000, 0.6]
type = ScreenBound
trigger1 = time = [0, 1000]
value = 0
movecamera = 0,0

[State 9130, SetFatal]
type = posset
trigger1 = time = 0
trigger1 = Facing = 1
x = -500
y = -90

[State 9130, SetFatal]
type = posset
trigger1 = time = 0
trigger1 = Facing = -1
x = 500
y = -90

[State 9130, pasa]
type = velset
trigger1 = 1
x = 9
y = 0

[State 9130, SetFatal]
type = Varset
trigger1 = movehit
V = 4
value = 4

[State 1200, BoltFat]
type = Hitdef
trigger1 = !movecontact
attr = S, NA
hitflag = M
sparkno = -1
p2stateno = 3805

[State 200, 7]
type = changestate
trigger1 = time = 150
value = 3802

[Statedef 3802]
type    = S
movetype= I
physics = S

[State 2000, 0.6]
type = ScreenBound
trigger1 = time = [0, 1000]
value = 1
movecamera = 1,0

[State 9130, SetFatal]
type = posset
trigger1 = time = 0
trigger1 = Facing = 1
x = -80
y = -240

[State 9130, SetFatal]
type = posset
trigger1 = time = 0
trigger1 = Facing = -1
x = 80
y = -240

[State 9130, baja]
type = velset
trigger1 = 1
x = 0
y = 2

[State 200, 7]
type = changestate
trigger1 = pos Y >= 0
value = 3803

[Statedef 3803]
type    = S
movetype= I
physics = N

[State 9130, baja]
type = velset
trigger1 = time = 0
y = 0

[State 1200, chau]
type = posset
trigger1 = time = 13
y = 0

[State 3105, end]
type = changeanim
trigger1 = time = 13
value = 3801

[State 3105, end]
type = changestate
trigger1 = animtime = 0
trigger1 = anim = 3801
value = 0
ctrl = 1

[Statedef 3804]
type    = S
movetype= A
physics = N
anim = 888

[State 9130, mueve]
type = velset
trigger1 = 1
x = 3

[State 2000, 0.6]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,0

[State 3105, end]
type = destroyself
trigger1 = time = 50

;grito y pa decapitación
[Statedef 3805]
type    = S
movetype= H
physics = N

[State 200, grito]
type = playsnd
trigger1 = Time = 0
value = 4,1

[State 3105, end]
type = selfstate
trigger1 = time = 0
value = 6003


;--------------------combos fatal


[Statedef 3202]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 1                      ;Number of air juggle points move takes
velset = 10,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0        
anim = 333555                       ;Change animation (Def: no change)

[State 0, StopSnd]
type = StopSnd
trigger1 = time = 1
channel = -1

[State 9130, SetFatal]
type = Varset
trigger1 = time = 1
V = 4
value = 0

[State 8000, sadsd]
type = BGPalFX
trigger1 = time >= 1
time = 9999
add = -20, -20, -20

[State 9130, nobgm]
type = assertspecial
trigger1 = time = 1
flag = nomusic


[State 3200, Play]
type = PlaySnd
trigger1 = time = 1
trigger1 = 1
value = F5, 53
volume = 255

[State 3200, Play]
type = PlaySnd
trigger1 = animelem = 3
trigger1 = 1
value = F5, 15

[State 3200, Pl]
type = Posset
trigger1 = 1
Y = 0

[State 3201, 347]
type = EnvShake
trigger1 = time = 30
time = 10
freq = 30
ampl = 5   

[State 3201, 1]
type = HitDef
trigger1 = AnimElem = 5
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage    = 0, 0                   ;Damage that move inflicts
animtype = Light                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
air.animtype = Back
yaccel = 0.58
guardflag = HL
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 7, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default
p2facing = 1
pausetime = 7,2                  ;Time attacker pauses, time victim shakes
sparkno = 15
ground.cornerpush.veloff = 0    
sparkxy = 0,-105
guard.sparkno = -1
hitsound = 5,1
guardsound = 5,14             
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -2
guard.ctrltime = 20
fall.recover = 0
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)
air.velocity = -2, 1
airguard.velocity = -1.9            ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.fall = 1
fall.recover = 0
p2stateno = 3207
envshake.time = 10
envshake.freq = 30
envshake.ampl = 5   

[State 3201, 7]
type = ChangeState
trigger1 = AnimTime = 0 
value = 3208
ctrl = 1

[Statedef 3203]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 1                      ;Number of air juggle points move takes
velset = 10,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0        
anim = 772                       ;Change animation (Def: no change)

[State 9130, SetFatal]
type = Varset
trigger1 = time = 1
V = 4
value = 0

[State 8000, sadsd]
type = BGPalFX
trigger1 = time >= 1
time = 9999
add = -30, -30, -30

[State 9130, nobgm]
type = assertspecial
trigger1 = time = 1
flag = nomusic

[State 3200, Play]
type = PlaySnd
trigger1 = time = 1
trigger1 = 1
value = F5,53
volume = 255

[State 3200, Play]
type = PlaySnd
trigger1 = animelem = 3
trigger1 = 1
value = F5, 15

[State 3200, Pl]
type = Posset
trigger1 = 1
Y = 0


[State 3201, 347]
type = EnvShake
trigger1 = time = 30
time = 10
freq = 30
ampl = 5   

[State 3201, 1]
type = HitDef
trigger1 = AnimElem = 5
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage    = 0, 0                   ;Damage that move inflicts
animtype = Light                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
air.animtype = Back
guardflag = HL
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 2, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default
p2facing = 1
pausetime = 0,2                  ;Time attacker pauses, time victim shakes
sparkno = 15
ground.cornerpush.veloff = 0    
sparkxy = 0,-105
guard.sparkno = -1
hitsound = 5,1
guardsound = 5,14             
ground.type = High                 ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 5
ground.hittime  = 20
guard.velocity = -15
guard.slidetime = 20
guard.ctrltime = 20 
ground.velocity = 1,0              ;Time to regain control after guard (def: guard.slidetime)
guard.velocity = -2
air.velocity = -2, 1
airguard.velocity = -1.9            ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.fall = 1
fall.recover = 0
p2stateno = 3207
envshake.time = 10
envshake.freq = 30
envshake.ampl = 5   

[State 3201, 7]
type = ChangeState
trigger1 = AnimTime = 0 
value = 3208
ctrl = 1



[Statedef 3204]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 1                      ;Number of air juggle points move takes
velset = 10,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0        
anim = 30204                       ;Change animation (Def: no change)

[State 9130, SetFatal]
type = Varset
trigger1 = time = 1
V = 4
value = 0

[State 8000, sadsd]
type = BGPalFX
trigger1 = time >= 1
time = 9999
add = -50, -50, -50

[State 9130, nobgm]
type = assertspecial
trigger1 = time = 1
flag = nomusic

[State 3200, Play]
type = PlaySnd
trigger1 = animelem = 1
value = F5, 53
volume = 255

[State 3200, Play]
type = PlaySnd
trigger1 = animelem = 3
value = F20, 0

[State 3200, Pl]
type = Posset
trigger1 = 1
Y = 0


[State 3201, 347]
type = EnvShake
trigger1 = time = 27
time = 10
freq = 30
ampl = 5   

[State 3201, 1]
type = HitDef
trigger1 = AnimElem = 5
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage    = 0, 0                   ;Damage that move inflicts
animtype = Light                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
air.animtype = Back
guardflag = HL
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 2, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default
p2facing = 1
pausetime = 0,2                  ;Time attacker pauses, time victim shakes
sparkno = -1
sparkfacing = -1
ground.cornerpush.veloff = 0    
sparkxy = -15,-110
guard.sparkno = -1
hitsound = 5,16
guardsound = 5,14             
ground.type = High                 ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 5
ground.hittime  = 20
guard.velocity = -15
guard.slidetime = 20
guard.ctrltime = 20 
ground.velocity = 0,0              ;Time to regain control after guard (def: guard.slidetime)
guard.velocity = -2
air.velocity = -2, 1
airguard.velocity = -1.9            ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.fall = 1
fall.recover = 0
p2stateno = 3207
envshake.time = 10
envshake.freq = 30
envshake.ampl = 5   

[State 9251,blood]
type = explod
trigger1 = animelem = 5
anim = F57
postype = p2
pos = 20,-115
scale = 1.5,1.5
sprpriority = 2
bindtime = -1

[State 3201, 7]
type = ChangeState
trigger1 = AnimTime = 0 
value = 3208
ctrl = 1



[Statedef 3205]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 1                      ;Number of air juggle points move takes
velset = 10,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0        
anim = 30205                       ;Change animation (Def: no change)

[State 9130, SetFatal]
type = Varset
trigger1 = time = 1
V = 4
value = 1

[State 8000, sadsd]
type = BGPalFX
trigger1 = time >= 1
time = 9999
add = -70, -70, -70

[State 9130, nobgm]
type = assertspecial
trigger1 = time = 1
flag = nomusic

[State 3200, Play]
type = PlaySnd
trigger1 = animelem = 1
value = F5, 52
volume = 255

[State 3200, Play]
type = PlaySnd
trigger1 = animelem = 2
value = F5, 20

[State 3200, Play]
type = PlaySnd
trigger1 = animelem = 4
value = F5, 16

[State 3200, Pl]
type = Posset
trigger1 = 1
Y = 0


[State 3201, 347]
type = EnvShake
trigger1 = time = 40
time = 10
freq = 30
ampl = 5   

[State 3201, 1]
type = HitDef
trigger1 = AnimElem = 4
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage    = 0, 0                   ;Damage that move inflicts
animtype = Light                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
air.animtype = Back
guardflag = HL
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 2, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default
p2facing = 1
pausetime = 0,2                  ;Time attacker pauses, time victim shakes
sparkno = -1
sparkfacing = -1
ground.cornerpush.veloff = 0    
sparkxy = -15,-110
guard.sparkno = -1
hitsound = 5,17
guardsound = 5,14             
ground.type = High                 ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 5
ground.hittime  = 20
guard.velocity = -15
guard.slidetime = 20
guard.ctrltime = 20 
ground.velocity = 0,0              ;Time to regain control after guard (def: guard.slidetime)
guard.velocity = -2
air.velocity = -2, 1
airguard.velocity = -1.9            ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.fall = 1
fall.recover = 0
p2stateno = 3207
envshake.time = 10
envshake.freq = 30
envshake.ampl = 5   

[State 3200, Play]
type = PlaySnd
trigger1 = animelem = 5
value = F5, 19

[State 9251,blood]
type = explod
trigger1 = animelem = 4
trigger2 = animelem = 5
anim = F57
postype = p2
pos = 0,-90
scale = 1,1
sprpriority = 2
bindtime = -1

[State 9251,heart]
type = explod
trigger1 = animelem = 5
anim = 30215
postype = p1
pos = 0,0
scale = 1.0,1.0
ontop = 1
bindtime = -1
removetime = -2

[State 3200, Play]
type = PlaySnd
trigger1 = animtime = -12
trigger2 = animtime = -2
value = F5, 32
volume = 250
 
[State 3201, 7]
type = ChangeState
trigger1 = AnimTime = 0 
value = 3208
ctrl = 1



[Statedef 3211]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 1                      ;Number of air juggle points move takes
velset = 10,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0        
anim = 30206                       ;Change animation (Def: no change)

[State 9130, SetFatal]
type = Varset
trigger1 = time = 1
V = 4
value = 5

[State 8000, sadsd]
type = BGPalFX
trigger1 = time >= 1
time = 9999
add = -100, -100, -100

[State 9130, nobgm]
type = assertspecial
trigger1 = time = 1
flag = nomusic

[State 3200, Play]
type = PlaySnd
trigger1 = animelem = 1
value = F5, 11
volume = 100

[State 3200, Play]
type = PlaySnd
trigger1 = animelem = 4
value = 4, 6
volume = 200

[State 3200, Play]
type = PlaySnd
trigger1 = time = 35
value = 20, 1

[State 3200, Pl]
type = Posset
trigger1 = 1
Y = 0


[State 3201, 347]
type = EnvShake
trigger1 = time = 35
time = 10
freq = 30
ampl = 5   

[State 3201, 1]
type = HitDef
trigger1 = AnimElem = 5
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage    = 0, 0                   ;Damage that move inflicts
animtype = Light                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
air.animtype = Back
guardflag = HL
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 2, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default
p2facing = 1
pausetime = 0,2                  ;Time attacker pauses, time victim shakes
sparkno = s3449
ground.cornerpush.veloff = 0    
sparkxy = -15,-130
guard.sparkno = -1
hitsound = s20,0
guardsound = 5,14             
ground.type = High                 ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 5
ground.hittime  = 20
guard.velocity = -15
guard.slidetime = 20
guard.ctrltime = 20 
ground.velocity = 0,0              ;Time to regain control after guard (def: guard.slidetime)
guard.velocity = -2
air.velocity = -2, 1
airguard.velocity = -1.9            ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.fall = 1
fall.recover = 0
p2stateno = 6004
;envshake.time = 10
;envshake.freq = 30
;envshake.ampl = 5   

[State 9251,flame1on]
type = explod
trigger1 = animelem = 4
anim = 30226
postype = p1
pos = 10,-114
scale = 1,1
ontop = 1
;sprpriority = -1
bindtime = -1
removetime = -2

[State 9251,flame2on]
type = explod
trigger1 = animelem = 5
anim = 30216
postype = p2
pos = 0,-100
scale = 1,1
;sprpriority = -2
ontop = 0
bindtime = -1
removetime = -2

[State 3200, Play]
type = PlaySnd
trigger1 = animelem = 5
value = 20, 2
volume = 135


[State 3201, 7]
type = ChangeState
trigger1 = AnimTime = 0 
value = 0
ctrl = 1




[Statedef 3212]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 1                      ;Number of air juggle points move takes
velset = 10,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0        
anim = 30217                       ;Change animation (Def: no change)

[State 9130, SetFatal]
type = Varset
trigger1 = time = 1
V = 4
value = 5

[State 8000, sadsd]
type = BGPalFX
trigger1 = time >= 1
time = 9999
add = -100, -100, -100

[State 9130, nobgm]
type = assertspecial
trigger1 = time = 1
flag = nomusic

[State 3200, Play]
type = PlaySnd
trigger1 = time = 1
value = F5, 11
volume = 100

[State 3200, ani]
type = changeanim
trigger1 = anim = 30217
trigger1 = animtime = 0
value = 240

[State 9251,misil]
type = Helper
trigger1 = time = 36
postype = p1
pos = 0,0
stateno = 3213

[State 3200, Play]
type = PlaySnd
trigger1 = anim = 30217
trigger1 = animelem = 5
value = 20, 4

[State 3200, Play]
type = PlaySnd
trigger1 = time = 35
value = 20, 14

[State 3200, Pl]
type = Posset
trigger1 = 1
Y = 0

[State 3201, 347]
type = EnvShake
trigger1 = time = 35
time = 10
freq = 30
ampl = 5   

[State 3201, 1]
type = HitDef
trigger1 = anim = 240
trigger1 = AnimElem = 6
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage    = 0, 0                   ;Damage that move inflicts
animtype = Light                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
air.animtype = Back
guardflag = HL
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 2, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default
p2facing = 1
pausetime = 0,2                  ;Time attacker pauses, time victim shakes
sparkno = s30227
ground.cornerpush.veloff = 0    
sparkxy = -40,0
guard.sparkno = -1
hitsound = -1
guardsound = 5,14             
ground.type = High                 ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 5
ground.hittime  = 20
guard.velocity = -15
guard.slidetime = 20
guard.ctrltime = 20 
ground.velocity = 0,0              ;Time to regain control after guard (def: guard.slidetime)
guard.velocity = -2
air.velocity = -2, 1
airguard.velocity = -1.9            ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.fall = 1
fall.recover = 0
p2stateno = 3222
;envshake.time = 10
;envshake.freq = 30
;envshake.ampl = 5   

[State 9251,flame1on]
type = explod
trigger1 = animelem = 5
anim = 3557
postype = p1
pos = 20,-104
scale = 1,1
ontop = 1
;sprpriority = -1
bindtime = -1
removetime = -2

[State 9251,flame1on]
type = explod
trigger1 = anim = 30217
trigger1 = animtime = -45
anim = 3556
postype = p1
pos = -20,10
scale = 1,1
ontop = 1
;sprpriority = -1
bindtime = -1
removetime = -2

[State 9251,flame2on]
type = playsnd
trigger1 = anim = 240
trigger1 = animelem = 2
value = f5,15
volume = 120

[State 9251,flame2on]
type = playsnd
trigger1 = anim = 30217
trigger1 = animtime = -45
value = 20,8
volume = 180

[State 9251,flame2on]
type = playsnd
trigger1 = anim = 30217
trigger1 = animelem = 5
value = 20,9
volume = 120

[State 3201, 7]
type = ChangeState
trigger1 = AnimTime = 0 
value = 3209
ctrl = 1

[Statedef 3213]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 1                      ;Number of air juggle points move takes
velset = 10,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0        
anim = 9000

[State 3201, 1]
type = HitDef
trigger1 = AnimElem = 1
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage    = 0, 0                   ;Damage that move inflicts
animtype = Light                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
air.animtype = Back
guardflag = HL
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 2, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default
p2facing = 1
pausetime = 0,2                  ;Time attacker pauses, time victim shakes
sparkno = s3449
ground.cornerpush.veloff = 0    
sparkxy = 0,-90
guard.sparkno = -1
hitsound = -1
guardsound = 5,14             
ground.type = High                 ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 5
ground.hittime  = 20
guard.velocity = -15
guard.slidetime = 20
guard.ctrltime = 20 
ground.velocity = 0,0              ;Time to regain control after guard (def: guard.slidetime)
guard.velocity = -2
air.velocity = -2, 1
airguard.velocity = -1.9            ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.fall = 1
fall.recover = 0
p2stateno = 3221
;envshake.time = 10
;envshake.freq = 30
;envshake.ampl = 5   

[Statedef 3221]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 1                      ;Number of air juggle points move takes
velset = 10,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0        
anim = 5006                       ;Change animation (Def: no change)

[State 8000, sadsd]
type = PalFX
trigger1 = animelem = 2
time = 9999
add = 350,350,350	
mul = 40,40,40


[State 3201, 7]
type = playsnd
trigger1 = Time = 0 
value = 4,1

[State 3201, 7]
type = ChangeState
trigger1 = Time = 100 
value = 0
ctrl = 1


[Statedef 3222]
type    = S
movetype= H
physics = S
ctrl = 0
velset = 0,0,0

[State 9130, Setdisappear]
type = Varset
trigger1 = 1
V = 2
value = 1



[State 1, 123]
type = playsnd
Trigger1 = Time = 1
value = f5,14


[State 1, 123]
type = ChangeAnim2
Trigger1 = Time = 0
value = 888

[State 1, hp]
type = LifeSet
trigger1 = time >= 100
value = 0

[State 1, 335]
type = SelfState
trigger1 = Time = 101
value = 5150
;------------------------
[Statedef 3207]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= H                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
velset = 0,0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0        
anim = 5000 

;[State 3201, 7]
;type = ChangeState
;trigger1 = AnimTime = 0 
;value = 9010
;ctrl = 1

;[State 9130, Setdisappear]
;type = Varset
;trigger1 = 1
;V = 2
;value = 1

[State 1, 123]
type = ChangeAnim
Trigger1 = Time = 13
value = 5300

[State 1, 7]
type = playsnd
trigger1 = anim = 5300
trigger1 = time = 99
value = f7,0
volume = 255

[State 1, hp]
type = LifeSet
trigger1 = time >= 100
value = 0

[State 1, 335]
type = SelfState
trigger1 = Time = 101
value = 5150

[Statedef 3208]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= H                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
velset = 0,0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0        
anim = 30207 

[State 3201, 7]
type = playsnd
trigger1 = Time = 10 
value = 1,0

[State 3201, 7]
type = ChangeState
trigger1 = AnimTime = 0 
value = 0
ctrl = 1

[Statedef 3209]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
velset = 0,0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0        
anim = 30207 

;[State 3201, 7]
;type = playsnd
;trigger1 = Time = 10 
;value = 1,0

[State 3201, 7]
type = ChangeState
trigger1 = Time > 80 
value = 0
ctrl = 1