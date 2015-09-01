[Statedef 20000]
type    = S
movetype= I
physics = N
juggle  = 1
anim = 0
Velset = 0, 0
ctrl = 0

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

[State 431, 3.2]
type = Varset
trigger1 = Time = 0
v = 20
value = 0

[State 430, 31sdaa]
type = changestate
trigger1 = Time = 60
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
trigger1 = time = 10
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
postype = p1
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
anim = 2241;210                  ;Change animation (Def: no change)

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
postype = p1
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
anim = 210;210                   ;Change animation (Def: no change)

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
postype = p1
persistent = 0
ignorehitpause = 1

[State 200, Play]
type = PlaySnd
trigger1 = time = 1
trigger1 = 1
value = F5, 15

[State 201, 1]
type = HitDef
trigger1 = AnimElem = 7
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
anim = 2241                       ;Change animation (Def: no change)

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
postype = p1
persistent = 0
ignorehitpause = 1

[State 200, Play]
type = PlaySnd
trigger1 = time = 1
trigger1 = 1
value = F5, 15

[State 201, 1]
type = HitDef
trigger1 = AnimElem = 4
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
postype = p1
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
postype = p1
persistent = 0
ignorehitpause = 1

[State 200, Play]
type = PlaySnd
trigger1 = time = 1
trigger1 = 1
value = F5, 15

[State 201, 1]
type = HitDef
trigger1 = AnimElem = 3
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
postype = p1
persistent = 0
ignorehitpause = 1

[State 200, Play]
type = PlaySnd
trigger1 = time = 1
trigger1 = 1
value = F5, 15

[State 201, 1]
type = HitDef
trigger1 = AnimElem = 5
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
anim = 222           ;Change animation (Def: no change)

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
postype = p1
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
postype = p1
persistent = 0
ignorehitpause = 1

[State 200, Play]
type = PlaySnd
trigger1 = time = 1
trigger1 = 1
value = F5, 15

[State 201, 1]
type = HitDef
trigger1 = AnimElem = 5
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
anim = 6000                      ;Change animation (Def: no change)

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