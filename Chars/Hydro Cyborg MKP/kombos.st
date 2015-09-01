;=====================================================================================================================
;COMBO
;=====================================================================================================================
[Statedef 2000];state que procesa todos los golpes
type    = S
movetype= A
physics = S
juggle  = 1
velset = 10,0
ctrl = 0  

[State 200, Play]
type = changeanim
trigger1 = time = 0
value = 2000+ var(55)

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

[State 200, Play]
type = PlaySnd
trigger1 = time = 1
trigger1 = 1
value = F5, 15

[State 200, Playf]
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

[State 201, 1];combo comun
type = HitDef
trigger1 = !movecontact
trigger1 = animexist(2000+var(55))
attr = S, NA
damage = (100-(var(55)%10)*10), (40 -(var(55)%10)*4)
animtype = light
guardflag = HL
hitflag = MAF 
p2facing = 1
pausetime = 0,5 
sparkno = 57
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
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 240, 2];golpes finales
type = HitDef
trigger1 = !movecontact
trigger1 = !animexist(2000+var(55))
attr = S, NA
animtype  = Back
damage    = (100-(var(55)%10)*10), (40 -(var(55)%10)*4)
guardflag = HL
hitflag = MAF
pausetime = 15,2
sparkno = -1
guard.sparkno = -1
hitsound = 5,0
guardsound = 5,14
ground.type = High
ground.slidetime = 30
p2facing = 1
guard.ctrltime = 30
guard.slidetime = 20
ground.hittime  = 30
ground.velocity = var(56),var(57)
ground.cornerpush.veloff = -35
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 201, varset]
type = varset
trigger1 = time = 1
V = 55
value = var(55) + 1

[State 201, 7]
type = targetstate
trigger1 = movehit
trigger1 = (p2statetype = C)
trigger1 = (p2stateno!=[120,151])
;trigger1 = var(55)= 1
value = 2020

[State 201, 7]
type = ChangeState
trigger1 = AnimTime = 0 
value = 0
ctrl = 1
;=====================================================================================================================
[Statedef 2001]; combo 2
type    = S
movetype= A
physics = S
juggle  = 1
velset = 10,0
ctrl = 0 

[State 200, set]
type = varset
trigger1 = var(55) < 10
V = 55
value = 10

[State 201, 7]
type = ChangeState
trigger1 = time = 1
value = 2000
;=====================================================================================================================
[Statedef 2002]; combo 3
type    = S
movetype= A
physics = S
juggle  = 1
velset = 10,0
ctrl = 0 

[State 200, set]
type = varset
trigger1 = var(55) < 20
V = 55
value = 20

[State 201, 7]
type = ChangeState
trigger1 = time = 1
value = 2000
;=====================================================================================================================
[Statedef 2003]; combo 4
type    = S
movetype= A
physics = S
juggle  = 1
velset = 10,0
ctrl = 0 

[State 200, set]
type = varset
trigger1 = var(55) < 30
V = 55
value = 30

[State 201, 7]
type = ChangeState
trigger1 = time = 1
value = 2000
;=====================================================================================================================
[Statedef 2020];recibe golpe p2
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
;--------------------------
[Statedef 2021];muere p2
type    = S
movetype= H
physics = S
juggle  = 1
velset = 0,0

[State 201, 7]
type = Changeanim2
trigger1 = time = 0
value = 170
;elemno = 9

[State 201, 7]
type = selfstate
trigger1 = anim = 170
trigger1 = AnimTime = 0 
value = 5110
ctrl = 1
