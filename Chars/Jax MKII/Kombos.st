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
anim = 231                     ;Change animation (Def: no change)

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
trigger1 = AnimElem = 3
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
anim = 2102                       ;Change animation (Def: no change)

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
damage    = 50, 10            
ground.cornerpush.veloff = 0;-10    
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

[Statedef 2103]
type    = S
movetype= A
physics = S
juggle  = 10
ctrl = 0
velset = 0,0,0
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

[State 240, 2]
type = HitDef
trigger1 = !movecontact
attr = S, NA
animtype  = Back
damage    = 216, 10
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
ground.velocity = -5,-5            
air.velocity = -5,-6
air.hittime = 17  
ground.cornerpush.veloff = -35
fall.recover = 0
envshake.time = 15
envshake.freq = 70
envshake.ampl = 7
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)
priority = 1, Miss

[State 240, 3]
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
damage    = 133, 10                   ;Damage that move inflicts
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
trigger1 = AnimElem = 4
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage    = 83, 10                   ;Damage that move inflicts
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
hitsound = 3,0;5,21
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
; - Tercer HIT de Kombo con Piñas  - ;
;-----------------------------------;

[Statedef 2003]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 1                      ;Number of air juggle points move takes
velset = 20,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0        
anim = 2003                       ;Change animation (Def: no change)

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
trigger1 = AnimElem = 4
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage    = 83, 10                   ;Damage that move inflicts
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

;---------------------------------------;
; - Cuarto HIT de Kombo con Piñas - ;
;---------------------------------------;

[Statedef 2004]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 1                      ;Number of air juggle points move takes
velset = 20,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0        
anim = 2004                       ;Change animation (Def: no change)

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
trigger1 = AnimElem = 4
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage    = 67, 10                   ;Damage that move inflicts
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
ground.velocity = -1.2,-6;5             ;Time to regain control after guard (def: guard.slidetime)
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
; - Quinto HIT de Kombo con Piñas - ;
;------------------------------------;

[Statedef 2005]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 5                      ;Number of air juggle points move takes
velset = 20,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0        
anim = 2005          ;Change animation (Def: no change)

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
trigger1 = AnimElem = 3
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage    = 33, 10                   ;Damage that move inflicts
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
hitsound = 3,0
guardsound = 5,14             
ground.type = High                 ;Type: High, Low, Trip (def: Normal)
p2facing = 1
ground.slidetime = 5
ground.hittime  = 20
guard.velocity = -15
guard.slidetime = 20
guard.ctrltime = 20 
ground.velocity = -4.5,-5             ;Time to regain control after guard (def: guard.slidetime)
guard.velocity = -2
air.velocity = -6,-6;5
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

;-------------------------------;
;	- Fin de KOMBOS -	;
;-------------------------------;