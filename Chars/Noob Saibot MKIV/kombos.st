;---------------------------------------;
;		- KOMBOS -		;
;---------------------------------------;

;------------------------------------;
; - Primer HIT de Kombo de Patadas - ;
;------------------------------------;

[Statedef 2101]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 1                      ;Number of air juggle points move takes
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0        
anim = 2101                     ;Change animation (Def: no change)

[State 200, Pl]
type = Posset
trigger1 = 1
Y = 0


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
trigger1 = AnimElem = 2
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage    = 50, 10            
ground.cornerpush.veloff = -10    
animtype = Light                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
air.animtype = Back
guardflag = HL
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 2, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default
pausetime = 0,2                  ;Time attacker pauses, time victim shakes
sparkno = -1
;sparkxy = -10,-105
guard.sparkno = -1
hitsound = 5,21
guardsound = 5,14             
ground.type = Low                 ;Type: High, Low, Trip (def: Normal)
p2facing = 1
ground.slidetime = 5
ground.hittime  = 20
guard.velocity = -15
guard.slidetime = 20
guard.ctrltime = 20 
ground.velocity = -10,0              ;Time to regain control after guard (def: guard.slidetime)
guard.velocity = -2
air.velocity = -2, 1
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

;-------------------------------------;
; - Segundo HIT de Kombo de Patadas - ;
;-------------------------------------;

[Statedef 2102]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 1                      ;Number of air juggle points move takes
velset = 20,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0        
anim = 2101;210                       ;Change animation (Def: no change)

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
trigger1 = AnimElem = 2
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage    = 50, 10            
ground.cornerpush.veloff = -10    
animtype = Light                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
air.animtype = Back
guardflag = HL
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 2, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default
pausetime = 0,2                  ;Time attacker pauses, time victim shakes
sparkno = -1
;sparkxy = -10,-105
guard.sparkno = -1
hitsound = 5,21
guardsound = 5,14             
ground.type = Low                 ;Type: High, Low, Trip (def: Normal)
p2facing = 1
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

;-------------------------------------;
; - Tercer HIT de Kombo de Patadas - ;
;-------------------------------------;
[Statedef 2103];203
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 9                      ;Number of air juggle points move takes
velset = 20,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0        
anim = 210;210                       ;Change animation (Def: no change)

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
trigger1 = AnimElem = 7
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage    = 30, 10                   ;Damage that move inflicts
animtype = Light                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
air.animtype = Back
guardflag = HL
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 2, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default
pausetime = 0,2                  ;Time attacker pauses, time victim shakes
sparkno = -1
sparkxy = -10,-105
ground.cornerpush.veloff = 0    

p2facing = 1
guard.sparkno = -1
hitsound = 5,21
guardsound = 5,14             
ground.type = High                 ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 5
ground.hittime  = 20
guard.velocity = 0
guard.slidetime = 20
guard.ctrltime = 20 
ground.velocity = 0,0              ;Time to regain control after guard (def: guard.slidetime)
guard.velocity = -2
air.fall = 1
fall.recover = 0
air.velocity = -2, 1
airguard.velocity = -1.9            ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
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

;-----------------------------------;
; - Primer HIT de Kombo con Piñas - ;
;-----------------------------------;

[Statedef 2001]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 5                      ;Number of air juggle points move takes
velset = 20,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0        
anim = 2001                       ;Change animation (Def: no change)

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
trigger1 = AnimElem = 4
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage    = 60, 10                   ;Damage that move inflicts
animtype = Light                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
air.animtype = Back
guardflag = HL
hitflag = MAF                 
ground.cornerpush.veloff = 0    
priority = 2, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default
pausetime = 0,2                  ;Time attacker pauses, time victim shakes
sparkno = -1
sparkxy = -20,-105
guard.sparkno = -1
hitsound = 5,1
guardsound = 5,14             
p2facing = 1
ground.type = HIGH                 ;Type: High, Low, Trip (def: Normal)
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

;------------------------------------;
; - Segundo HIT de Kombo con Piñas - ;
;------------------------------------;

[Statedef 2002]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 5                      ;Number of air juggle points move takes
velset = 20,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0        
anim = 2002          ;Change animation (Def: no change)

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
trigger1 = AnimElem = 2
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage    = 30, 10                   ;Damage that move inflicts
animtype = Light                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
air.animtype = Back
guardflag = HL
hitflag = MAF                    ;Flags of conditions that move can hit
ground.cornerpush.veloff = 0    
priority = 2, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default
pausetime = 0,2                  ;Time attacker pauses, time victim shakes
sparkno = -1
sparkxy = -10,-105
guard.sparkno = -1
hitsound = 5,21
guardsound = 5,14             
ground.type = High                 ;Type: High, Low, Trip (def: Normal)
p2facing = 1
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

;-----------------------------------;
; - Tercer HIT de Kombo con Piñas (Codazo) - ;
;-----------------------------------;

[Statedef 2003]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 1                      ;Number of air juggle points move takes
velset = 20,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0        
anim = 2003                       ;Change animation (Def: no change)

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
trigger1 = AnimElem = 3
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage    = 30, 10                   ;Damage that move inflicts
animtype  = back               ;Animation type: Light, Medium, Heavy, Back (def: Light)
;air.animtype = Back
guardflag = HL
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 2, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default
pausetime = 0,0                  ;Time attacker pauses, time victim shakes
sparkno = -1
ground.cornerpush.veloff = 0    
sparkxy = -20,-105
p2facing = 1
guard.sparkno = -1
hitsound = 5,21
guardsound = 5,14             
ground.type = High                 ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 0
ground.hittime  = 0
guard.velocity = -15
guard.slidetime = 20
guard.ctrltime = 20 
ground.velocity = -4.5,-4.5              ;Time to regain control after guard (def: guard.slidetime)
guard.velocity = -2
;air.fall = 1
;fall.recover = 0
air.velocity = -2, 1
fall=1
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

;---------------------------------------;
; - Segundo HIT de Kombo Piñas/Patadas - ;
;---------------------------------------;

[Statedef 2004]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 1                      ;Number of air juggle points move takes
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
trigger1 = AnimElem = 5
attr = S, NA
damage    = 35, 20
animtype  = Back
hitflag = MAF ;HAF
guardflag = HL
pausetime = 0,2
sparkno = -1
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
; - Segundo HIT de Kombo con Rodillazo - Codo - Gancho - ;
;------------------------------------;

[Statedef 2005]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 5                      ;Number of air juggle points move takes
velset = 20,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0        
anim = 2002          ;Change animation (Def: no change)

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
trigger1 = AnimElem = 2
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage    = 30, 10                   ;Damage that move inflicts
animtype = Light                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
air.animtype = Back
guardflag = HL
hitflag = MAF                    ;Flags of conditions that move can hit
ground.cornerpush.veloff = 0    
priority = 2, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default
pausetime = 0,2                  ;Time attacker pauses, time victim shakes
sparkno = -1
sparkxy = -10,-105
guard.sparkno = -1
hitsound = 5,21
guardsound = 5,14             
ground.type = High                 ;Type: High, Low, Trip (def: Normal)
p2facing = 1
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

;------------------------------------;
; - Tercer HIT de Kombo con Rodillazo - Codo - Gancho - ;
;------------------------------------;

[Statedef 2006]
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
damage    = 35, 20
animtype  = Back
hitflag = MAF ;HAF
guardflag = HL
pausetime = 0,2
sparkno = -1
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