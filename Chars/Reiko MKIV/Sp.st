;[Statedef 0]
;[State 0, DEBUG]
;type = changestate
;trigger1 = roundstate=2
;value = 2000

;--------------------------------------------
; throw shurikens
[Statedef 2000]
type    = S
movetype= A
physics = S
juggle  = 2
ctrl = 0
anim = 900

[State 2000, shurikens]
type = Helper
trigger1 = AnimElem = 3 
name = "shurikens"
ID = 911
pos = 12,-74
stateno = 2001
ownpal = 1  

[State 2000]
type = PlaySnd
trigger1 = AnimElem=4
value = 4, 14
channel = 5

[State 2000]
type = StopSnd
trigger1 = numhelper(911)
trigger1 = helper(911),movehit
channel = 5

[State 2000, DEBUG]
type = null;ChangeState
trigger1 = AnimTime = 0
trigger1 = roundstate=2
ctrl = 1
value = 2000

[State 2000]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0

;--------------------------------------------
; shurikens thrown
[Statedef 2001]
type = S
movetype = A
physics = N
juggle = 2
anim = 911
velset = 6,0

[State 442, 3.343]
type = TargetState
triggerall = numtarget
triggerall = parent,Var(16) = 4
trigger1 = time >= 15
trigger1 = p2statetype = S
value = 5003

[State 2001]
type = HitBy
trigger1 = time=0
value = SCA,AP
time = -1

[State 2001]
type = HitOverride
trigger1 = time=0
slot = 0
attr = SCA,AP
stateno = 2007
time = -1

[State 2001]
type = ChangeState
trigger1 = var(1)=17
trigger1 = time>27
value = 2008

[State 2001]
type = ChangeState
trigger1 = var(0)
trigger1 = time>var(0)+87
trigger2 = screenpos x!=[-40,360]
trigger2 = !movecontact
value = 2009

[State 2001, blood]
type = Explod
trigger1 = movehit
anim = F2
pos = 60,0
facing = -1
persistent = 0

[State 2001];time of shurikens hitting
type = VarSet
trigger1 = movecontact
v = 0
value = time
persistent = 0

[State 2001]
type = VarRandom
triggerall = time
trigger1 = time=var(0)
v = 11
range = 0,4

[State 2001];sizes of each shuriken after bouncing
type = VarRandom
trigger1 = time=[1,7]
v = 10+time
range = 1,4

[State 2001];random spark
type = VarRandom
trigger1 = time=[20,27]
v = time
range = 971,980

[State 2001];shurikens bouncing
type = Projectile
triggerall = time && movecontact
trigger1 = time=var(0)
trigger1 = var(1):=11
trigger2 = time=var(0)+2
trigger2 = var(1):=12
trigger3 = time=var(0)+4
trigger3 = var(1):=13
trigger4 = time=var(0)+6
trigger4 = var(1):=14
trigger5 = time=var(0)+8
trigger5 = var(1):=15
trigger6 = time=var(0)+10
trigger6 = var(1):=16
trigger7 = time=var(0)+12
trigger7 = var(1):=17
ProjID = var(1)
projanim = 920+var(var(1))
projremovetime = 120
velocity = ifelse(random<499,random/140,-random/140),-random/100
accel = 0,.4
projheightbound = -240,-10

[State 2001];freeze after shurikens done
type = velset
trigger1 = var(1)=17
x = 0
y = 0

[State 2001]
type = HitDef
trigger1 = time = 4
attr = S,SP
damage = 192, 96
animtype = Hard
air.animtype = Back
guardflag = HL
pausetime = 0, 7
sparkno = -1
guard.sparkno = -1
hitsound = -1;5,17
guardsound = -1
ground.type = High
p2facing = 1
guard.ctrltime = 20 
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -4,0
air.velocity = -3.5,-2.6
air.hittime = 30   
air.fall = 1
fall.recover = 0
kill       = (parent,Var(9) = 0)
fall.kill  = (parent,Var(9) = 0)
guard.kill = (parent,Var(9) = 0)
;priority = 1;, Miss

[State 2001]
type = PlaySnd
trigger1 = movecontact
value = 4,17
persistent = 0

[State 2001]
type = PlaySnd
trigger1 = movehit
value = F5,17
persistent = 0

[State 2001, distance increase]
type = null
triggerall = time<=20
trigger1 = fvar(1):=fvar(1)+.6
trigger1 = fvar(2):=fvar(2)+1.2
trigger1 = fvar(3):=fvar(3)+1.8
trigger1 = fvar(4):=fvar(4)+.4
trigger1 = fvar(5):=fvar(5)+.8

[State 2001, distance init]
type = null
trigger1 = time=0
trigger1 = fvar(1):=.3 ;innerX dist
trigger1 = fvar(2):=.6 ;  midX dist
trigger1 = fvar(3):=.9 ;outerX dist
trigger1 = fvar(4):=.3 ;innerY dist
trigger1 = fvar(5):=.6 ;outerY dist

[State 2001, shuriken 1]
type = Explod
trigger1 = var(0)=0
trigger2 = time<var(0)+8
anim = 910
ID = 1
pos = floor(-fvar(1)),floor(-fvar(5))
bindtime = -1
removetime = 1
sprpriority = 2

[State 2001, shuriken 2]
type = Explod
trigger1 = var(0)=0
trigger2 = time<var(0)+4
anim = ifelse(random<499,910,912)
ID = 2
pos = floor(fvar(1)),floor(-fvar(5))
bindtime = -1
removetime = 1
sprpriority = 2

[State 2001, shuriken 3]
type = Explod
trigger1 = var(0)=0
trigger2 = time<var(0)
anim = ifelse(random<499,910,912)
ID = 3
pos = floor(fvar(3)),floor(-fvar(4))
bindtime = -1
removetime = 1
sprpriority = 2

[State 2001, shuriken 4]
type = Explod
trigger1 = var(0)=0
trigger2 = time<var(0)+2
anim = ifelse(random<499,910,912)
ID = 4
pos = floor(fvar(2)),floor(fvar(4))
bindtime = -1
removetime = 1
sprpriority = 2

[State 2001, shuriken 5]
type = Explod
trigger1 = var(0)=0
trigger2 = time<var(0)+6
anim = ifelse(random<499,910,912)
ID = 5
pos = 0,floor(fvar(5))
bindtime = -1
removetime = 1
sprpriority = 2

[State 2001, shuriken 6]
type = Explod
trigger1 = var(0)=0
trigger2 = time<var(0)+10
anim = ifelse(random<499,910,912)
ID = 6
pos = floor(-fvar(2)),floor(fvar(4))
bindtime = -1
removetime = 1
sprpriority = 2

[State 2001, shuriken 7]
type = Explod
trigger1 = var(0)=0
trigger2 = time<var(0)+12
anim = ifelse(random<499,910,912)
ID = 5
pos = floor(-fvar(3)),floor(-fvar(4))
bindtime = -1
removetime = 1
sprpriority = 2

;--------------------------------------------
; shuriken cancelled (hit by projectile)
[Statedef 2007]
movetype = I
velset = 0,0

[State 2007]
type = PlaySnd
trigger1 = time=0
value = 4,17
persistent = 0

[State 2007]
type = NotHitBy
trigger1 = time=0
value = SCA
time = -1

[State 2007];shurikens bouncing
type = Projectile
trigger1 = time=0
trigger1 = var(1):=11
trigger2 = time=2
trigger2 = var(1):=12
trigger3 = time=4
trigger3 = var(1):=13
trigger4 = time=6
trigger4 = var(1):=14
trigger5 = time=8
trigger5 = var(1):=15
trigger6 = time=10
trigger6 = var(1):=16
trigger7 = time=12
trigger7 = var(1):=17
ProjID = var(1)
projanim = 920+var(var(1))
projremovetime = 120
velocity = ifelse(random<499,random/140,-random/140),-random/100
accel = 0,.4
projheightbound = -240,-10

[State 2007]
type = ChangeState
trigger1 = var(1)=17
value = 2008

[State 2007];random spark
type = VarRandom
trigger1 = time=[0,6]
v = time+20
range = 971,980

;--------------------------------------------
; shuriken sparks
[Statedef 2008]
movetype = I

[State 2008]
type = NotHitBy
trigger1 = time=0
value = SCA
time = -1

[State 2008]
type = PlaySnd
trigger1 = time=10
trigger2 = time=13
trigger3 = time=16
value = 2424,2

[State 2008];spark x pos
type = VarRandom
trigger1 = time=[0,4]
v = 5
range = -200,200

[State 2008];spark y pos
type = VarRandom
trigger1 = time=[0,4]
v = 6
range = 70,120

[State 2008];spark from shurikens
type = Projectile
trigger1 = time=[0,4]
projanim = var(time+20)
projremovetime = 20
velocity = ifelse(random<499,2,-2),-2
projsprpriority = -1
offset = var(5),var(6)

[State 2008]
type = DestroySelf
trigger1 = time=20

;--------------------------------------------
; shurikens remove
[Statedef 2009]

[State 2009]
type = DestroySelf
trigger1 = 1

;--------------------------------------------
; flipkick
[Statedef 2100]
type    = S
movetype= A
physics = N
juggle  = 2
ctrl = 0
anim = 1000
velset = 4,0

[State 2100]
type = PlaySnd
trigger1 = time=0
value = 2424,4

[State 2, Upperblood]
type = Helper
trigger1 = movehit
ID = 28
stateno = 28
pos = 0, 0
postype = p1
persistent = 0
ignorehitpause = 1

[State 430, 2]
type = HitDef
trigger1 = !MoveContact 
triggerall = NumHelper(711) = 0
trigger2 = p2stateno = 12001
attr = C, NA
damage    = 355, 90
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

[State 430, 2]
type = HitDef
trigger1 = !MoveContact 
;triggerall = Numexplod(712) = 1
triggerall = Numhelper(711) = 1
triggerall = Var(24) = 0
triggerall = p2statetype != A
triggerall = p2stateno != 40
triggerall = p2stateno != 50
triggerall = p2stateno != 12001
attr = C, NA
damage    = 355, 90
animtype  = Back
hitflag = MAF ;HAF
guardflag = HL
pausetime = 0,2
p2stateno = 713
sparkno = -1
sparkxy = -18,-100
guard.sparkno = -1
hitsound   = 5,0
p2facing = 1
guardsound = 5,14
ground.cornerpush.veloff = -30
ground.type = High
guard.ctrltime = 0
guard.slidetime = 20
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = 0,0
air.velocity = 0,0
yaccel = 0.38
envshake.time = 15
envshake.freq = 70
envshake.ampl = 7
fall.recover = 0
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)
priority = 1, Miss

[State 430, 2]
type = HitDef
trigger1 = !MoveContact 
;triggerall = Numexplod(712) = 1
triggerall = Numhelper(711) = 1
triggerall = Var(24) = 0
trigger1 = p2statetype = A
trigger2 = p2stateno = 12001
attr = C, NA
damage    = 355, 90
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

[State 2100]
type = StateTypeSet
trigger1 = movecontact
physics = S
persistent = 0

[State 430, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;--------------------------------------------
; teleport throw - start
[Statedef 2200]
type    = A
physics = N
ctrl = 0
anim = 1100
velset = 0,-12

[State 2200]
type = PlaySnd
trigger1 = time=0
value = 2424,0

[State 2200]
type = screenbound
trigger1 = 1
value = 1
movecamera = 1,0

[State 2200]
type = ChangeState
trigger1 = screenpos y<0
value = 2201

;--------------------------------------------
; teleport throw - decide positioning
[Statedef 2201]
type    = A
physics = N
ctrl = 0

[State 2201]
type = ChangeState
trigger1 = 1
trigger1 = enemynear,facing=1
value = 2202

[State 2201]
type = ChangeState
trigger1 = 1
trigger1 = enemynear,facing=-1
value = 2203

;--------------------------------------------
; teleport throw - opponent was facing right
[Statedef 2202]
type    = A
movetype = A
physics = N
ctrl = 0

[State 2202]
type = Turn
trigger1 = time=0
trigger1 = facing=-1

[State 2202]
type = PosSet
trigger1 = time = 0
x = enemynear,pos x-44
y = pos y+400

[State 2202]
type = ChangeState
trigger1 = pos y<50
value = 2204

;--------------------------------------------
; teleport throw - opponent was facing left
[Statedef 2203]
type    = A
movetype = A
physics = N
ctrl = 0

[State 2203, DEBUG]
type = DisplayToClipboard
trigger1 = 1
text = "%f"
params = pos y

[State 2203]
type = Turn
trigger1 = time=0
trigger1 = facing=1

[State 2203]
type = PosSet
trigger1 = time = 0
x = enemynear,pos x+44
y = pos y+400

[State 2203]
type = ChangeState
trigger1 = pos y<50
value = 2204

;--------------------------------------------
; teleport throw - waiting for block
[Statedef 2204]
type    = A
movetype = A
physics = N
ctrl = 0

[State 2204]
type = PlayerPush
trigger1 = 1
value = 0

[State 2204]
type = ChangeAnim
trigger1 = moveguarded
value = 1110
elem = 2

[State 2204]
type = HitDef
trigger1 = command="blok"
attr = A,ST
hitflag = MAF
guardflag = MA
priority = 1,Miss
sparkno = -1
guard.sparkno = -1
p2facing = -1
p1stateno = 2205
p2stateno = 2210
down.bounce = 1
damage = 215,107
air.fall = 1
fall.recover = 0
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)
persistent = 0

[State 2204]
type = VelSet
trigger1 = pos y<-30
y = -1

[State 2204]
type = ChangeState
trigger1 = pos y<-30
value = 50

;--------------------------------------------
; teleport throw - throw connected
[Statedef 2205]
type    = A
movetype = A
physics = N
ctrl = 0
anim = 1110
velset = -4,-14

[State 2205]
type = PlaySnd
trigger1 = time=0
value = 2424,1

[State 2205]
type = VelAdd
trigger1 = vel x<0
x = .1

[State 2205]
type = VelAdd
trigger1 = 1
y = .8

[State 2205]
type = TargetState
trigger1 = pos y>0
trigger1 = vel y>0
value = 2211

[State 2205]
type = ChangeState
trigger1 = pos y>0
trigger1 = vel y>0
value = 2206

[State 2205]
type = TargetBind
trigger1 = 1
pos = 0,0

;--------------------------------------------
; teleport throw - done throwing
[Statedef 2206]
type    = A
movetype = A
physics = N
ctrl = 0
anim = 1111
velset = 3,-8

[State 2206]
type = EnvShake
trigger1 = time=0
time = 120
freq = 40
ampl = -10

[State 2206]
type = ChangeAnim
trigger1 = vel y>-0
value = 42
elem = 2
persistent = 0

[State 2206]
type = StateTypeSet
trigger1 = pos y<0
physics = A

[State 2206]
type = Turn
trigger1 = time=0

;--------------------------------------------
; teleport throw - target being thrown
[Statedef 2210]
type    = A
movetype = H
physics = N
ctrl = 0

[State 2210]
type = ChangeAnim2
trigger1 = time=0
value = 1120

[State 2210]
type = DisplayToClipboard
trigger1 = 1
text = "%d,%d"
params = floor(pos x),floor(pos y)

;--------------------------------------------
; teleport throw - target done
[Statedef 2211]
type    = A
movetype = H
physics = N
ctrl = 0

[State 2211]
type = Turn
trigger1 = 1

[State 2211]
type = SelfState
trigger1 = 1
value = 5101
