;==========================
;Brutality
;==========================
[Statedef 2100]
type    = S                      
movetype= A                   
physics = S 
velset = 0,0   
ctrl = 0  

[State 3400, 70]
type = varset
trigger1 = time = 0
V = 49              ;contador
value = 0           ;inicializacion

[State 3400, 70]
type = varset
trigger1 = time = 0
V = 48              ;uppercut final
value = 2046;5

[State 3400, 1]
type = ChangeState
trigger1 = time = 1
value = 2101          ;principal
;-------------------------------
[Statedef 2101]       ;principal
type    = S                      
movetype= A                   
physics = S 
velset = 0,0   
;ctrl = 0  

[State 3401, 1]
type = ChangeState
trigger1 = time =6
trigger1 = p2life != 1
value = 2102;antes finishim

[State 3401, 3]
type = ChangeState
trigger1 = time = 6
trigger1 = p2life = 1
trigger1 = var(49) < 7
value = 2103;despues finishim

[State 3401, 4]
type = ChangeState
trigger1 = time = 1;0
trigger1 = p2life = 1
trigger1 = var(49) >= 7
value = 2103;despues finishim

[State 3400, 5]
type = ChangeState
trigger1 = var(49) > 20;(var(49)+(random%5)) > 35
value = 2104; fatal
;-----------------------------
[Statedef 2102];antes finishim
type    = S                      
movetype= A                   
physics = S 
velset = 0,0   
;ctrl = 0        

[State 3401,1]
type = changeanim
trigger1  = time = 0
value = 2040 + random%10

[State 2, blood111]
type = Helper
trigger1 = movehit
ID = 26
stateno = 27
pos = 0, 0
postype = p1
persistent = 0
ignorehitpause = 1

[State 3401, hd]
type = HitDef
trigger1 = !movecontact
attr = S, NA
damage    = 50,50
animtype = Light            
air.animtype = Back
guardflag = A;HL
hitflag = MAF    
priority = 2, Hit  
p2facing = 1
pausetime = 5,5;0,2  5  
sparkno = -1
sparkxy = -10,-105
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
air.velocity = -2, 1
airguard.velocity = -1.9            ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.fall = 1
fall.recover = 0
ground.cornerpush.veloff = 0    
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)
envshake.time = 10
envshake.freq = 30
envshake.ampl = 5
numhits = -100

[State 3401, ch]
type = ChangeState
trigger1 = movecontact;animtime = 0;movecontact;animtime = 0;
value = 2101

[Statedef 2103];despues finishim
type    = S                      
movetype= A                   
physics = S  
velset = 0,0   
 
[State 3401, 2]       ;una ves que el oponente ya murio,
type = varset         ;empieza la cuenta
trigger1 = time = 0
V = 49
value = var(49)+1

[State 3402,1]
type = changeanim
trigger1  = time = 0
value = 2040 +random%10

[State 2, blood111]
type = Helper
trigger1 = movehit
ID = 26
stateno = 27
pos = 0, 0
postype = p1
persistent = 0
ignorehitpause = 1

[State 660, sounfat]
type = Playsnd
trigger1 = var(49) = 7
value = F5,11       ;sonido fatality
volume = 60
channel = 1

[State 660, oscurfond]   ;oscurece fondo
type = BGPalFX
;trigger1 = var(49)= 7;time = 1
triggerall = time = 2
trigger1 = var(49) = 7
trigger2 = var(49) = 8
trigger3 = var(49) = 9
trigger4 = var(49) = 10
time = 9999
add = -30, -30, -30

[State 3402, 1]
type = HitDef
trigger1 = !movecontact
attr = S, NA
animtype = Light 
air.animtype = Back
guardflag = A;HL
hitflag = MAF   
priority = 2, Hit     
p2facing = 1
pausetime = 0,2     
sparkno = -1
sparkxy = -10,-105
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
air.velocity = -2, 1
airguard.velocity = -1.9    
air.fall = 1
fall.recover = 0
ground.cornerpush.veloff = 0    
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)
envshake.time = 10
envshake.freq = 30
envshake.ampl = 5
numhits = -100

;[State 201, 7]
;type = ChangeState
;trigger1 = var(51) < 7
;trigger1 = movecontact;animtime = 0
;value = 3401

[State 201, 7]
type = ChangeState
;trigger1 = var(51) >= 7
trigger1 = movecontact
value = 2101

;--------------------------
[Statedef 2104]
type    = S                      
movetype= A                   
physics = S  
velset = 0,0  

;[State 660, sounfat]
;type = targetstate
;trigger1 = time = 0
;value = 3405

[State 9251, SetFatal]         ;setea brutality
type = Varset                  ;(palabra escrita y hablada)
trigger1 = time = 0
V = 4
value = 5

[State 3401,1]
type = changeanim
trigger1  = time = 0
value = 2046;var(48);uppercuts

[State 2, blood111]
type = Helper
trigger1 = movehit
ID = 26
stateno = 27
pos = 0, 0
postype = p1
persistent = 0
ignorehitpause = 1

[State 3401, hd]
type = HitDef
trigger1 = !movecontact
attr = S, NA
;damage    = 50,50
pausetime = 30,0
p2stateno = 2110
ground.cornerpush.veloff = 0    
animtype = Back
hitflag = M;MAF
sparkno = -1
hitsound = 5,21
ground.type = Low
p2facing = 1
ground.slidetime = 10;20
ground.hittime  = 10;20
ground.velocity = 0,0;-10,0
numhits = -100
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
[Statedef 2110]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= H                      ;Move-type: A-attack, I-idle, H-gethit
physics = S     

[State 45, fff]
type = LifeSet
trigger1 = time = 30
value = 0

[state 3404,play1]
type = playsnd
trigger1 = time = 0
value = F5,(4+random%2);F5,13
channel = 1

[state 3404,play1]
type = playsnd
trigger1 = time = 2
value = 4,1
channel = 2

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

[State 235, sssa]
type = envshake
trigger1 = animelem = 22
time = 15
freq = 150
ampl = 7

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
