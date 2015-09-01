; harakiri   ----------Ўј√ 1-----------------------------------------
[Statedef 3300]
type    = S
movetype= A
physics = S
anim =  7040
ctrl = 0

[State 9873, 1]
type = AssertSpecial
trigger1 = 1
flag = timerfreeze

[State 430, поймать_врага]
type = helper
trigger1 = time = 0
stateno = 3305
postype = p1

[State 430, 31sdaa]
type = NotHitBy
trigger1 = 1
value = SCA

[State 430, 31sdaa]
type = changestate
trigger1 = animTime = 0;60
value = 3301

[Statedef 3301]     ;harakiri Ўј√ 2 -----
type    = S
movetype= A
physics = S
ctrl = 0

[State 0, кров1_кусок]
type = null;Helper
trigger1 = time = 0
stateno = 4006
pos = 0,-100
postype = p1

[State 0, кров2_кусок]
type = Helper
trigger1 = time = 0
stateno = 4007
pos = 0,-55
postype = p1

[State 200, Blood1]
type = Explod
trigger1 = time = 0
anim = F1
postype = p1
pos = 0,-110
ownpal = 1

[State 200, Blood1]
type = Explod
trigger1 = time = 0
anim = F1
postype = p1
pos = 0,-110
ownpal = 1
facing=-1

[State 200, Blood_boom]
type = Explod
trigger1 = time = 0
anim = F17
postype = p1
pos = -40,-120
ownpal = 1

[State 200, Blood1]
type = Explod
trigger1 = time = 0
anim = F1
postype = p1
pos = 0,-110
ownpal = 1
facing=-1

[State 0, boom]
type = Explod
trigger1 = time = 0
anim = 7026
ID = 7026
pos = -30,-110
postype = p1
sprpriority = 3
ontop = 1
ownpal = 1

[State 0, boom]
type = Explod
trigger1 = time = 0
anim = 7026
ID = 7026
pos = -70,-140
postype = p1
sprpriority = 3
ontop = 1
ownpal = 1

[State 0, boom]
type = Explod
trigger1 = time = 0
anim = 7026
ID = 7026
pos = -100,-150
postype = p1
sprpriority = 3
ontop = 1
ownpal = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S4,21
volume = 0
channel = -1

freqmul = 1.0
loop = 0
pan = 0


[State 3100, helper_ryka_cammy]
type = Helper
trigger1 = Time = 0
stateno = 3303
postype = p1
pos = 10,-70

[State 3100, helper_polovina_cammy]
type = Helper
trigger1 = Time = 0
stateno = 3304
postype = p1
pos = 0,0

[State 3100, invisible_pl]
type = varset
trigger1 = Time = 0
v = 26
value = 1

[State 3105, kill]
type = lifeadd
trigger1 = Time = 0
value = -9999

[State 0, ChangeState]
type = null;ChangeState
trigger1 = Time = 0
value = 0
ctrl = 0
;anim =
;ignorehitpause =
;persistent =



[Statedef 3303]  ;harakiri pyka -----
type = S
movetype = I
physics = N
velset = 4,-8
ctrl = 0
anim = 7042


[State 0, VelAdd]
type = VelAdd
trigger1 = time > 4
trigger1 = pos Y < -15
x = 0
y = .5

[State 0, VelSet]
type = VelSet
trigger1 = pos Y >= -15
x = 0
y = 0

[State 5, shlep_sound]
type = PlaySnd
trigger1 = time = 42
value = F5, 17
volume = 50


[Statedef 3304]  ;harakiri обрубленый хелпер  -----
type    = S
movetype= A
physics = S
ctrl = 0

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 =  time = 0
value = 7041




[Statedef 3305]  ;harakiri poimat vraga  ---
type    = S
movetype= A
physics = S
anim=9000
ctrl = 0

[State 1200, BoltFat]
type = HitDef
trigger1 = p2statetype = S
attr = S, NT
hitflag = MAFD
guardflag = A
sparkno = -1
p2stateno = 3306

[State 200, 7]
type = destroyself
trigger1 = movehit


[Statedef 3306]     ;harakiri поведение врага   ----
movetype= H
ctrl = 0

[State 9130, SetFatal]
type = Varset
trigger1 = time = 0
V = 4
value = 6

[State 3105, end]
type = changeanim
trigger1 = time = 0
value = 0

[State 430, 31sdaa]
type = selfstate
trigger1 = p2life <=0
value = 0
ctrl = 1



;------------------------------------

; fatality 1: пулемет!
[Statedef 3400]   ;ѕ”Ћ≈ћ≈“
type    = S
movetype= A
physics = S
anim = 3500
ctrl=0

[State 0, развернуть_правильно_жертву]
type = TargetFacing
trigger1 = animelem =2, =0
value = -1

[State 0, fire_sound]   ;звук выстрела!
type = PlaySnd
trigger1 = animelem =2, >0
trigger1 = time%7=1
trigger1 = animelem =6,<0
value = S7,1
volume = 60
channel = -1
loop = 0

[State 0, fire]    ;огонь с дула
type = Explod
trigger1 = animelem =2, >0
trigger1 = time%7=1
trigger1 = animelem =6,<0
anim = 3502
pos = 0,0
postype = p1  ;p2,front,back,left,right
sprpriority = 2
ontop = 1
ownpal = 1

[State 9251, gilz]   ;гильзы
type = Helper
trigger1 = animelem =2, >0
trigger1 = time%7=1
trigger1 = animelem =6,<0
postype = p1
pos = 17, -87
stateno = 3401
ontop=1
ownpal = 1

[State 0, enemy_blood]
type = Explod
trigger1 = animelem =2, >0
trigger1 = animelem =5, <0
trigger1 = time%6=1
anim = 3504
pos = -20,-88
postype = p2  ;p2,front,back,left,right
facing = -1
random = 0,40
sprpriority = 0
ontop = 0
ownpal = 1

[State 0, Helper_____cammy_game_1]
type = Helper
trigger1 = time = 20
trigger1 = RoundNo = 3
helpertype = normal
ID = 3406
stateno = 3406
pos = -35,2
postype = p1
ownpal  = 1

[State 0, Helper_____cammy_game_2]
type = Helper
trigger1 = time = 20
trigger1 = RoundNo = 3
helpertype = normal
ID = 3407
stateno = 3407
pos = 25,2
postype = p1
ownpal  = 1



[State 0, first_strike]
type = HitDef
trigger1 = animelem =2
attr = S, NT
hitflag = MAFD
guardflag = A
sparkno = -1
p2stateno = 3404
p2getp1state = 1



[State 0, vtoroi_strike]
type = HitDef
trigger1 = animelem =4
attr = S, NT
hitflag = MAFD
guardflag = A
sparkno = -1
p2stateno = 3405
p2getp1state = 1

[State 0, MRCHOI_YPOJAI]
type = Helper
trigger1 = animelem =4
stateno = 4000
pos = 0,0
postype = p2
ownpal = 1

[State 9130, SetFatal]
type = Varset
trigger1 = animelem = 6
V = 4
value = 1

[State 200, 7]
type = changestate
trigger1 = animelem = 6 , =50
value = 0
ctrl = 1

;-------------------------------------------------
[Statedef 3401]   ;√»Ћ№«џ
type    = S
movetype= A
physics = N
anim = 3501
ctrl=0
sprpriority=2

[State 1000, 0.12]
type =VelSet
trigger1 = time = 0
X = -5; -random/100
Y = 4

[State 10000, rakieta]
type = destroyself
trigger1 = animtime =0
;trigger2 = pos Y >-15

;-------------------------------------------------
[Statedef 3404]   ;ѕ”Ћ≈ћ≈“ -  ѕќ¬≈ƒ≈Ќ»≈ ∆≈–“¬џ ƒќ √»Ѕ≈Ћ»
type    = S
movetype= H
physics = N
;anim = 3503
ctrl=0
velset=-0.4,0


[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = time =1
value = 21238

[State 9000, blood]
type = Explod
trigger1 = time%8 = 1
trigger1 = NumExplod(1) < 4
id=1
anim = F57
postype = p1
pos = 0,-85
ontop = 1
ownpal = 1
random =20,60
removetime=20

;-----------------------------------------
[Statedef 3405]   ;ѕ”Ћ≈ћ≈“ - death
type    = S
movetype= H
physics = N
;anim = 3503
ctrl=0
velset =0,0

[State 9399, 3]
type = Lifeadd
trigger1 = Time = 1
Value = -9999

[State 9399, 2]
type = Selfstate
trigger1 = time = 2
value = 6007


;-------------- ѕ”Ћ≈ћ≈“ - ’≈Ћѕ≈– кэми стоит
[Statedef 3406]
type    = S
movetype= I
physics = N
anim = 3505
sprpriority = 2

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 =  p2stateno = 3405
value = 3507




;-------------- ѕ”Ћ≈ћ≈“ - ’≈Ћѕ≈– кэми сidit
[Statedef 3407]
type    = S
movetype= I
physics = N
anim = 3506

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 =  p2stateno = 3405
value = 3508




;--------------------------------------------

;--------------------------------------------
; frienship
[Statedef 3500]
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0

[State 3500, helper]
type = Helper
trigger1 = time = 0
stateno = 3501
name = "friendship"
postype = p1
pos = 0,0
sprpriority = 1
keyctrl = 0
ownpal = 1
under = 1

[State 3500, Pset]
type = varset
trigger1 = time = 0
v = 26
value = 1

[State 200, 7]
type = changestate
trigger1 = Time = 50
value = 0
ctrl = 1

[State 9130, SetFatal]
type = VarSet
trigger1 = time= 0
V = 4
value = 3
;------------------------------------------------
[Statedef 3501]
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
anim = 3600
ctrl = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 6
value = S4,15
volume = 0
channel = -1
;lowpriority = -1
freqmul = 1.0
loop = 0
pan = 0



[State 0, BGPalFX]
type = BGPalFX
trigger1 =  animelem = 6
time = 10
add = 111,111,111
mul = 256,256,256


[State 3102, golpearalpl2]
type = HitDef
trigger1 = !movecontact
attr = S, NA
sparkno = -1
guard.sparkno = -1
;p2stateno = 6002;3702
damage=10000,10000

;---------------------------------------------------
;  fatality 2   -  нога!
[Statedef 3600]
type    = S
movetype= A
physics = S
;anim = 195
ctrl=0

[State 3600, nevidimka_cammy]
type = varset
trigger1 = time=0
v = 26
value = 1

[State 0, clone]
type = Explod
trigger1 = time = 1
anim = 195
ID =  195

[State 0, clone_litle]
type = ModifyExplod
trigger1 = time > 1
ID =  195
scale = fvar(12),fvar(12)

[State 0, VarSet_scale_clone]
type = VarSet
trigger1 = time = 0
fv = 12
value = 1

[State 0, VarAdd_scale_clone]
type =VarAdd
trigger1 =  fvar(12)>.1
fv =     12
value = -.01

[State 0, PlaySnd]
type = PlaySnd
trigger1 = fvar(12)>.20 && fvar(12)<.21
value = F5,38





[State 0, NOGA]
type = Helper
trigger1 = fvar(12)<=.1 && NumHelper(3601)=0
helpertype = normal ;player
id = 3601
stateno = 3601
pos = 0,0
postype = p2    ;p2,front,back,left,right
ownpal = 1
ontop=2

[State 200, 7]
type = changestate
;trigger1 = fvar(12)<=0
trigger1 = p2stateno = 6007
value = 0
ctrl = 1



[State 9130, Set_Fatality_logo]
type = VarSet
trigger1 = time= 0
V = 4
value = 1

;------------------ helper NOGA!
[Statedef 3601]
type    = S
movetype= A
physics = N
ctrl=0
anim = 3601


[State 0, blood_boom]
type = Explod
trigger1 = animelem = 2
anim = F17
postype = p2
pos = 0,0
vel = 0 ,0
sprpriority = 0
ontop = 0
ownpal = 1

[State 0, HitDef]
type = HitDef
trigger1 = animelem = 2
attr = S,NA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
p2stateno=6007
sparkno=-1
damage= 400000,400009
hitsound   = 5,17


[State 0, EnvShake]
type = EnvShake
trigger1 = animelem = 3
time = 10
freq = 160
ampl = 10

;brutality   ---------------------------------------------------
[Statedef 2700]
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 2700

[State 2, с_локт€]
type = ChangeAnim
trigger1 = Command = "x"
trigger1 = anim = 2700
trigger1 = animelem = 1, >2
value = 2702

[State 3, R]
type = ChangeAnim
triggerall = Command = "x"
trigger1 = anim = 2702 && animelem = 3, >5
trigger2 = anim = 2703 && animelem = 3, >5
trigger3 = anim = 2704 && animelem = 3, >5
trigger4 = anim = 2705 && animelem = 3, >5
trigger5 = anim = 2706 && animelem = 3, >5
trigger6 = anim = 2707 && animelem = 3, >5
trigger7 = anim = 2708 && animelem = 4, >5
trigger8 = anim = 2709 && animelem = 4, >5
trigger9 = anim = 2710 && animelem = 4, >5
trigger10 = anim = 2711 && animelem = 5, >5
trigger11 = anim = 2712 && animelem = 5, >5
trigger12 = anim = 2713 && animelem = 5, >5
trigger13 = anim = 2714 && animelem = 5, >5
trigger14 = anim = 2715 && animelem = 5, >5
value = anim + 1

[State 17, на_раздачу]
type = ChangeState
trigger1 = Command = "x"
trigger1 = anim = 2716
trigger1 = animelem = 4, >5
value = 3700

[State 2, blood]
type = Helper
triggerall = numhelper(27) < 6
trigger1 = anim = 2702 && animelem = 3
trigger2 = anim = 2703 && animelem = 3
trigger3 = anim = 2704 && animelem = 3
trigger4 = anim = 2705 && animelem = 3
trigger5 = anim = 2706 && animelem = 3
trigger6 = anim = 2707 && animelem = 3
trigger7 = anim = 2708 && animelem = 4
trigger8 = anim = 2709 && animelem = 4
trigger9 = anim = 2710 && animelem = 4
trigger10 = anim = 2711 && animelem = 5
trigger11 = anim = 2712 && animelem = 5
trigger12 = anim = 2713 && animelem = 5
trigger13 = anim = 2714 && animelem = 5
trigger14 = anim = 2715 && animelem = 5
trigger15 = anim = 2716 && animelem = 5
ID = 27
stateno = 27
pos = 0, 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = anim = 2702 && animelem = 3
trigger2 = anim = 2703 && animelem = 3
trigger3 = anim = 2704 && animelem = 3
trigger4 = anim = 2705 && animelem = 3
trigger5 = anim = 2706 && animelem = 3
trigger6 = anim = 2707 && animelem = 3
trigger7 = anim = 2708 && animelem = 4
trigger8 = anim = 2709 && animelem = 4
trigger9 = anim = 2710 && animelem = 4
trigger10 = anim = 2711 && animelem = 5
trigger11 = anim = 2712 && animelem = 5
trigger12 = anim = 2713 && animelem = 5
trigger13 = anim = 2714 && animelem = 5
trigger14 = anim = 2715 && animelem = 5
trigger15 = anim = 2716 && animelem = 5
value = F5,1
volume = 100

[State 9000, 5]
type = HitDef
trigger1 = !movecontact
attr = A, HT
guardflag = A
hitflag = LAMF
sparkno = -1
p1stateno = 5000
p2stateno = 2702
damage = 99999,9999
kill = 0
air.recovery = 0
recovery = 0

;brutality jertva-------------------------------------------------------------------
[Statedef 2701]
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
anim = 5010
ctrl = 0

[State 0, CtrlSet]
type = CtrlSet
trigger1 =  time = 0
value = 0



;--------brutality jertva error-------------------------------------------------------------------
[Statedef 2702]
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0

[State 0, LifeAdd]
type = LifeAdd
trigger1 =  time = 0
value = -66666
kill = 1
absolute = 0

;-----------------------------------------------
; brutality - автоматически бьет
[Statedef 3700]
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 3700

[State 0, PlaySnd]
type =null;PlaySnd
trigger1 = time%13 = 1
value = F5,1
volume = 100

[State 0, HitDef]
type = HitDef
trigger1 =  1
attr = S,NA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
sparkno = -1
hitsound = F5,1
p2stateno = 2701


[State 0, ChangeState]
type = ChangeState
trigger1 = time = 300
value = 3701
ctrl = 0

[State 2, blood]
type = Helper
trigger1 = time%20 = 1
ID = 27
stateno = 27
pos = 0, 0

;------------------------------------------------------
; brutality - завершение
[Statedef 3701]
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 3701

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem =7
value = F5,1
volume = 200

[State 0, HIT!]
type = HitDef
trigger1 = animelem =7
attr = S, NT
hitflag = MAFD
guardflag = A
sparkno = -1
p2stateno = 3405
p2getp1state = 1

[State 0, MRCHOI_YPOJAI]
type = Helper
trigger1 = animelem =7
stateno = 4000
pos = 0,0
postype = p2
ownpal = 1

[State 9130, nadpis_BRUT]
type = Varset
trigger1 = animelem = 7
V = 4
value = 5

[State 200, 7]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

; BABALITY!    -----------------------------------
[Statedef 3800]
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0

[State 0, del__player2]
type = Helper
trigger1 = time = 1
helpertype = normal ;player
ID =  3801
stateno = 3801
pos = 0,0
postype = p1    ;p2,front,back,left,right


[State 0, Explod]
type = Explod
trigger1 = time = 2
anim =7010+(p2name = "Sonya"  &  target,Authorname  ="tem(A)")
pos = 0,0
postype = p2  ;p2,front,back,left,right



[State 200, 7]
type = changestate
trigger1 = time = 10
value = 0
ctrl = 1


[State 9130, Set_Fatality_logo]
type = VarSet
trigger1 = time= 0
V = 4
value = 2


;babality povedenie jertvy----------------------------
[Statedef 3801]
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim=9000

[State 0, HitDef]
type = HitDef
trigger1 =  1
attr = S,NA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
p2stateno=6007
sparkno=-1
damage= 400000,400009
hitsound   = 5,47

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = F11
ID = 11
pos = 0,0
postype = p2  ;p2,front,back,left,right



[State 0, DestroySelf]
type = DestroySelf
trigger1 =  time = 1
;ignorehitpause =
;persistent =


;-ANIMALITY!!!  ----------------------------------------------------------------------
[Statedef 3900]      ;   rise of the monster ---------------
type = S
movetype = I
physics = N
velset = 0,0
ctrl = 0
anim = 7020

[State 0, vzlet]
type = PosAdd
;trigger1 = anim = 7020
trigger1 = pos Y > -60
y = -2


[State 0, ChangeState]
type =ChangeState
trigger1 = pos Y <= -60
value = 3901
ctrl = 1

[State 0, trigger_dlia_oprede_sost_bombi]
type = VarSet
trigger1 = time = 0
fv = 12
value = 0


[Statedef 3901]      ; ANIMALITY!!!  kitty flying ---------------
type = S
movetype = I
physics = N
velset = 0,0
ctrl = 0
anim = 7021

[State 0, PosAdd]
type = PosAdd
trigger1 =  command="holdfwd"
x = 1

[State 0, PosAdd]
type = PosAdd
trigger1 =  command="holdback"
x = -1

[State 0, PosAdd]
type = PosAdd
trigger1 =  command="holdup"
trigger1 =  pos Y >-200
y = -1

[State 0, PosAdd]
type = PosAdd
trigger1 =  command="holddown"
trigger1 =  pos Y <-60
y = 1

[State 0, grrrr_sound]
type = PlaySnd
trigger1 = command="x" || command="y" || command="start"
trigger1 = anim != 7022;ne orem
value = 7,5
volume = 200

[State 0, grrrr!_anim]
type = ChangeAnim
trigger1 = anim != 7022;ne orem
trigger1 = command="x" || command="y" || command="start"
value = 7022

[State 0, grrr_to_normal]
type = ChangeAnim
trigger1 = anim = 7022
trigger1 = AnimTime = 0
value = 7021

[State 0, ChangeState1]  ;сумонить бомбу
type = ChangeState
trigger1 = command="a" ||  command="b"
trigger1 =  NumHelper(3910)=0
value = 3902

[State 0, Helper2]   ;кинуть бомбу
type = Helper
trigger1 = command="a" || command="b"
trigger3 = command="x" || command="y" || command="start"
triggerall =  NumHelper(3910)=1
trigger2 =  time = 200
helpertype = normal ;player
ID =  3911
stateno = 3911
pos = 0,0
postype = p1    ;p2,front,back,left,right
ownpal = 1

[State 0, hitground3] ;кинуть бомбу звук
type = PlaySnd
trigger1 = command="a" || command="b"
trigger3 = command="x" || command="y" || command="start"
triggerall =  NumHelper(3910)=1
trigger2 =  time = 200
value = F5,15
channel = -1
loop = 0


[State 0, VarSet4]   ;этот тригер уничтожит вес€чую бомбу - и делает падающую Ѕ
type = VarSet
trigger1 = command="a" || command="b"
trigger3 = command="x" || command="y" || command="start"
triggerall =  NumHelper(3910)=1
trigger2 =  time = 200
fv = 12
value = 1

[State 0, VarSet]  ;вес€ча€ бомба убрана
type = VarSet
trigger1 = fvar(12)=1
trigger1 =  NumHelper(3910)=0
fv = 12
value = 0

[State 0, ChangeState]
type = ChangeState
trigger1 =  p2stateno = 6007
trigger2 =  time = 200
value =  3903
ctrl = 0





[Statedef 3902]    ; ANIMALITY!!!  kitty  summon bomb---------------
type = S
movetype = I
physics = N
velset = 0,0
ctrl = 0
anim = 7020

[State 0, sharik_boomknul]
type = PlaySnd
trigger1 = time = 0
value = F5,51
volume = 60
channel = -1
loop = 0

[State 0, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal ;player
ID =  3910
stateno = 3910
pos = 0,0
postype = p1    ;p2,front,back,left,right
ownpal = 1

[State 0, ChangeState]
type = ChangeState
trigger1 = time = 10
value = 3901
ctrl = 0

[Statedef 3903]      ; ANIMALITY!!! kitty blackhawk fallen ---------------
type = S
movetype = I
physics = N
velset = 0,0
ctrl = 0
anim = 7021

[State 0, vzlet]
type = PosAdd
trigger1 = time > 100
trigger1 = pos Y < 0
y = 6

[State 9327, sharik_boomknul]
type = Explod
trigger1 = time = 70
anim = 1070
pos = 0,-80
postype = p1
ownpal = 1
ontop =1
scale=3,3

[State 0, sharik_boomknul]
type = PlaySnd
trigger1 = time = 70
value = F5,21
volume = 60
channel = -1
loop = 0

[State 0, aaaaaaaa]
type = PlaySnd
trigger1 = time = 73
value = 3,30
channel = -1
loop = 0
freqmul=0.4
volume=440

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 =  time = 70
value = 7027


[State 0, ChangeState]
type =ChangeState
trigger1 = pos Y >= 0
value = 3904
ctrl = 1

[Statedef 3904]      ; ANIMALITY!!! kitty blackhawk landing ---------------
type = S
movetype = A
physics = N
velset = 0,0
ctrl = 0
anim = 7027

[State 0, gg];при падении  убить врага
type = HitDef
trigger1 = time = 1
attr = S,NA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
sparkno=-1
damage= 400000,400009
hitsound   = -1

[State 0, hitground2]
type = PlaySnd
trigger1 = time = 40
value = F5,31
channel = -1
loop = 0

[State 0, hitground1]
type = PlaySnd
trigger1 = time = 1
value = F5,17
channel = -1
loop = 0

[State 0, EnvShake]
type = EnvShake
trigger1 = time=1
trigger2 = time = 40
time = 10
freq = 260
ampl = -4



[State 1000, 0.12]
type = VelSet
trigger1 = time = 0
X = 0.1
Y = -4

[State 1000, 0.12]
type = Veladd
trigger1 = time < 4
trigger1 = time > 0
Y = -0.3

[State 1000, 0.12]
type = Veladd
trigger1 = time >= 4
Y = 0.3

[State 1000, 0.12]
type = VelSet
trigger1 = time >= 4
trigger1= pos Y >=0
X = 0
Y = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = time>100
value = 12
ctrl = 1




[Statedef 3910]   ; ANIMALITY!!!  bomb summon &  fly   ---------------
type = S
movetype = I
physics = N
velset = 0,0
ctrl = 0
anim = 7025

[State 0, BindToRoot]
type =BindToRoot
trigger1 = time = 0
time = -1

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = time = 10
value = 7024

[State 0, DestroySelf]
type = DestroySelf
trigger1 = parent,FVar(12)  = 1

[Statedef 3911]   ; ANIMALITY!!!  bomb padaet!   ---------------
type = S
movetype = A
physics = N
velset = 0,0
ctrl = 0
anim = 7023

[State 0, падает]
type = PosAdd
trigger1 = time > 0
x = 0
y = 6



[State 0, MRCHOI_YPOJAI]
type = Helper
trigger1 =numhelper(4000)<1
trigger1=movehit
;trigger1=p2stateno=6007
stateno = 4000
pos = 0,0
postype = p2
ownpal = 1

[State 0, nadpis_fat];1-fat 2-bab 3-frend 4-anim 5-brut 6-harakiri
type = ParentVarSet
trigger1=movehit
V = 4
value = 4


[State 0, попали]
type = HitDef
trigger1 = 1
attr = S,NA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
p2stateno=6007
sparkno=S7026
damage= 400000,400009
hitsound   = 5,17

[State 0, мимо]
type = Explod
trigger1 = pos Y > 0
anim = 7026
ID = 7026
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = -1
sprpriority = 3
ontop = 1
ownpal = 1

[State 0, hitground]
type = PlaySnd
trigger1 = pos Y > 0
value = 4,21
channel = -1
loop = 0

[State 0, EnvShake]
type = EnvShake
trigger1 = pos Y > 0
time = 10
freq = 260
ampl = -4

[State 0, DestroySelf]
type = DestroySelf
trigger1 =   movehit
trigger2 = pos Y > 0

;-----------------------------------------------------


;--------------------------------------------------
;                     MRCHO… ”–ќ∆ј…
[Statedef 4000]      ; м€со на земле  - main sheet
type = S
movetype = I
physics = N
velset = 0,0
ctrl = 0
anim = 3516

[State 0, EnvShake]
type = EnvShake
trigger1 = time = 1
time = 10
freq = 160
ampl = 10
;phase = 90
;ignorehitpause =
;persistent =



[State 0, blood_boom]
type = Explod
trigger1 = time = 1
anim = F17
postype = p2
pos = 0,-80
vel = 0 ,0
sprpriority = 3
ontop = 1
ownpal = 1

[State 5, blood_boom]
type = PlaySnd
trigger1 = time = 1
value = F5, 18
volume = 50



[State 0, череп]
type = Helper
trigger1 = time = 1
stateno = 4001
pos = 0,-90
postype = p2

[State 0, ребра]
type = Helper
trigger1 = time = 1
stateno = 4002
pos = 6,-70
postype = p2

[State 0, окорок]
type = Helper
trigger1 = time = 1
stateno = 4003
pos = -10,-30
postype = p2

[State 0, кусок]
type = Helper
trigger1 = time = 1
stateno = 4004
pos = 0,-60
postype = p2

[State 0, рука]
type = Helper
trigger1 = time = 1
stateno = 4005
pos = 10,-60
postype = p2

[State 0, кров1_кусок]
type = Helper
trigger1 = time = 1
stateno = 4006
pos = 0,-50
postype = p2

[State 0, кров2_кусок]
type = Helper
trigger1 = time = 1
stateno = 4007
pos = 0,-55
postype = p2

[State 0, кров3_кусок]
type = Helper
trigger1 = time = 1
stateno = 4007
pos = 0,-90
postype = p2

[State 0, кров_кус]
type = Explod
trigger1 = time = 1
anim =  3515
pos = 0,-80
postype = p2
vel = 10,1
ownpal = 1
removetime=20

[State 0, окорок]
type = Explod
trigger1 = time = 1
anim =  3512
pos = 0,-80
postype = p2
vel = 10,7
ownpal = 1
removetime=20

[State 0, кров_кус]
type = Explod
trigger1 = time = 1
anim =  3515
pos = 0,-80
postype = p2
vel = 5,-6
ownpal = 1
removetime=20

[State 0, кров_кус]
type = Explod
trigger1 = time = 1
anim =  3515
pos = 0,-80
postype = p2
vel = -10,1
ownpal = 1
removetime=20

[State 200, Blood1]
type = Explod
trigger1 = time = 1
anim = F1
postype = p2
pos = 0,-110
ownpal = 1

[State 5, blood_boom]
type = PlaySnd
trigger1 = time = 50
trigger2 = time = 60
trigger3 = time = 70
value = F5, 17
volume = 50


[Statedef 4001]        ; mr. череп       ---------------------------
type = S
movetype = I
physics = N
velset = .2,-4
ctrl = 0
anim = 3510

[State 0, VelAdd]
type = VelAdd
trigger1 = time > 1
trigger1 = pos Y < -15
x = 0
y =IfElse(time < 10,-.5,.5)

[State 0, VelSet]
type = VelSet
trigger1 = pos Y >= -15
x = 0
y = 0

[Statedef 4002]        ; rebra    --------------------------
type = S
movetype = I
physics = N
velset = 3,-2
ctrl = 0
anim = 3511

[State 0, VelAdd]
type = VelAdd
trigger1 = time > 1
trigger1 = pos Y < -15
x = 0
y =IfElse(time < 10,-.5,.8)

[State 0, VelSet]
type = VelSet
trigger1 = pos Y >= -15
x = 0
y = 0

[State 0, PlaySnd]
type = null;PlaySnd
trigger1 = pos Y = 0
value =7,2
volume = 0
channel = -1



[Statedef 4003]        ; okorok  1  --------------------------
type = S
movetype = I
physics = N
velset = 3,-7
ctrl = 0
anim = 3512

[State 0, VelAdd]
type = VelAdd
trigger1 = time > 1
trigger1 = pos Y < -15
x = 0
y =IfElse(time < 10,-.5,.5)

[State 0, VelSet]
type = VelSet
trigger1 = pos Y >= -15
x = 0
y = 0

[Statedef 4004]        ; kysok  --------------------------
type = S
movetype = I
physics = N
velset = -1,-5
ctrl = 0
anim = 3513


[State 0, VelAdd]
type = VelAdd
trigger1 = time > 1
trigger1 = pos Y < -15
x = 0
y =IfElse(time < 10,-.5,.5)

[State 0, VelSet]
type = VelSet
trigger1 = pos Y >= -15
x = 0
y = 0

[Statedef 4005]        ; рука  --------------------------
type = S
movetype = I
physics = N
velset = -.5,-8
ctrl = 0
anim = 3514


[State 0, VelAdd]
type = VelAdd
trigger1 = time > 1
trigger1 = pos Y < -15
x = 0
y =IfElse(time < 12,-.5,.5)

[State 0, VelSet]
type = VelSet
trigger1 = pos Y >= -15
x = 0
y = 0

[Statedef 4006]        ; кус0к с кровушкой  1--------------------------
type = S
movetype = I
physics = N
velset = ifelse(random<500,-2,-1),ifelse(random<500,-6,-3)
ctrl = 0
anim = 3515


[State 0, VelAdd]
type = VelAdd
trigger1 = time > 1
trigger1 = pos Y < -15
x = 0
y =IfElse(time < 15,-.5,.5)

[State 0, VelSet]
type = VelSet
trigger1 = pos Y >= -15
x = 0
y = 0

[Statedef 4007]        ; кус0к с кровушкой 2 --------------------------
type = S
movetype = I
physics = N
velset = ifelse(random<500,2,1),ifelse(random<500,-4,-7)
ctrl = 0
anim = 3515


[State 0, VelAdd]
type = VelAdd
trigger1 = time > 1
trigger1 = pos Y < -15
x = 0
y =IfElse(time < 10,-.5,.5)

[State 0, VelSet]
type = VelSet
trigger1 = pos Y >= -15
x = 0
y = 0




;-----------------------
[Statedef 9000]
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
anim = 9000
ctrl = 0




[State 9000, 5]
type = HitDef
trigger1 = p2life < 2
trigger1 = p2movetype != H
attr = A, HT
numhits = -1
guardflag = A
hitflag = LAMF
;priority  = 7,Hit
sparkno = -1
p2stateno = 9001;9010
damage = 99999,9999
kill = 0
ground.velocity = 0,50
air.velocity = 0,50
air.recovery = 0
recovery = 0

[State 9000, 5.5]
type = ParentVarset
trigger1 = time = 0
V = 13
value = 400

[State 9000, 6d]
type = TargetState
trigger1 = 1
value = 9001;9010

[State 9000, 6]
type = Destroyself
trigger1 = time >= 1
trigger2 = p2stateno = 9001;9010
trigger3 = roundstate = 3
trigger4 = roundstate = 4



;---------------------------------------------------------------





;Fatality time---------------------------------------
[Statedef 9001]
type    = S
movetype= H
physics = S
velset = 0,0
ctrl = 0

;
[State 987123, 1]
type = SelfState
trigger1 = time = 1
value = 9010

;-----------------------

;Fatality time
[Statedef 9010]
type    = S
movetype= H
physics = S
velset = 0,0
ctrl = 0

;FINISH SOUND music
[State 2, 5.999]
type = Playsnd
trigger1 = time = 0
value = F5, 22
Channel = 1
persistent = 3
volume = 50

; hara kiri humano/cpu
[State 987123, 1]
type = changestate
triggerall= p2stateno != [3000, 3999]
trigger1 = command = "harakiri"
trigger2 = var(50) = 1
trigger2 = time = 1
trigger2 = random%5 = 1
;triggerall = animexist(3750)
value = 3300

[State 9873, 1]
type = LifeSet
trigger1 = Animelem = 1
value = 1

[State 9873, 1]
type = PosSet
trigger1 = 1
Y = 0

[State 9873, 1324]
type = LifeSet
trigger1 = time = 1
value = 1


[State 9873, 13234]
type = NotHitBy
value = , AP
trigger1 = 1

[State 987123, 1]
type = LifeAdd
triggerall = Time = 350
trigger1 = p2stateno != [3000,3999]
value = -500

; After 600 ticks and with no fatality, p2 falls down
[State 987123, 1]
type = changestate;SelfState
triggerall = Time = 350
trigger1 = p2stateno != [3000,3999]
value = 5050
ctrl = 0

[State 9010, 0.1]
type = Changeanim
trigger1 = statetype != A
trigger1 = animexist(5300)
trigger1 = anim != 5300
value = 5300

[State 9010, 1]
type = Changeanim2
trigger1 = !animexist(5300)
trigger1 = anim != 9010
trigger1 = statetype != A
value = 9010

[State 9010, 034.1]
type = PosSet
trigger1 = p2stateno =[0,9999]
Y = 0

;-------------------------------------------------------------------------------


[Statedef 9011]
type    = S
movetype= H
physics = S
juggle  = -10
ctrl = 0
velset = 0,0,0

[State 987123, 1]
type = LifesET
trigger1 = 1
value = 4

; Dizzying animation
[State 987124, 2]
type = ChangeAnim 
trigger1 = AnimExist(5300)
trigger1 = Anim != 5300
value = 5300




;-------------------------------------------------------------------------------
;Shows Mercy bastardo!
[Statedef 3997]
type    = S
movetype= I
physics = S
anim = 0
ctrl = 0

;sonido de shows mercy
[State 210, 1]
type = Playsnd
trigger1 = time = 70
value = F1, 0
volume = 160


;cartel de mercy
[State 181, cartel]
type = Explod
trigger1 = time = 60
ID = 200
anim = F200
pos = 156,0
postype = left
bindtime = -1
facing = 1
sprpriority = 2
ontop = 1
ownpal = 1
removetime = -2

;explod invisible, para que no se pueda hacer 2 veces la mercy
[State 181, cartel]
type = Explod
trigger1 = time = 0
ID = 3800
anim = 888
removetime = -1

;manda a custom sin control
[State 430, 31sdaa]
type = helper
trigger1 = time = 0
stateno = 3998
postype = p1

;previene fallo si tenemos poca energia
[State 9130, SetFatal]
type = lifeset
trigger1 = life < 2
value = 2

;variables de finish
[State 9130, SetFatal]
type = Varset
trigger1 = time = 0
V = 3
value = 0

[State 9130, SetFatal]
type = Varset
trigger1 = time = 0
V = 13
value = 0

[State 9130, SetFatal]
type = Varset
trigger1 = time = 0
V = 9
value = 0

[State 9130, SetFatal]
type = Varset
trigger1 = time = 0
V = 19
value = 0

[State 9130, SetFatal]
type = Varset
trigger1 = time = 0
V = 4
value = 0
;fin de cosas lokas de finish

[State 8000, sadsd]
type = BGPalFX
trigger1 = numexplod(200)=1
time = 9999
add = 0, 0, 0

;cuando termina la anim de mercy vuelve a tener control
[State 430, 31sdaa]
type = changestate
trigger1 = time > 60
trigger1 = numexplod(200)=0
value = 0
ctrl = 1

;helper que golpea a pl2
[Statedef 3998]
type    = S
movetype= A
physics = S
anim = 9000
ctrl = 0

;manda a custom (si no fallaba)
[State 1200, BoltFat]
type = HitDef
trigger1 = time = 0
attr = S, NT
hitflag = MAFD
guardflag = A
damage = -60
sparkno = -1
p2stateno = 3999

[State 430, 31sdaa]
type = destroyself
trigger1 = movehit

;custom state
[Statedef 3999]
type    = S
movetype= H
physics = S
ctrl = 0

;vuelve a tener control
[State 430, 31sdaa]
type = selfstate
trigger1 = time = 138
value = 0
ctrl = 1

; -----------------

[Statedef 13500]
type    = S
movetype= A
physics = S
;anim = 0
ctrl = 0

;arregla el bug del tiempo
[State 9873, 1]
type = AssertSpecial
trigger1 = 1
flag = timerfreeze

[State 430, 31sdaa]
type = helper
trigger1 = time = 0
stateno = 3501
postype = p1

[State 430, 31sdaa]
type = changestate
trigger1 = Time = 0;60
value = 3503

[State 430, 31sdaa]
type = NotHitBy
trigger1 = 1
value = SCA

; Golpeamos al oponente y lo mandamos al custom state sin control...
[Statedef 13501]
type    = S
movetype= A
physics = S
anim = 9000
ctrl = 0

[State 1200, BoltFat]
type = HitDef
trigger1 = p2statetype = S
attr = S, NT
hitflag = MAFD
guardflag = A
sparkno = -1
p2stateno = 3502

[State 200, 7]
type = destroyself
trigger1 = movehit

; El oponente queda sin control, la variable se pone en valor "hara kiri" y espera a que muera el otro para festejar.
[Statedef 13502]
movetype= H
ctrl = 0

[State 9130, SetFatal]
type = Varset
trigger1 = time = 0
V = 4
value = 6

[State 3105, end]
type = changeanim
trigger1 = time = 0
value = 0

[State 430, 31sdaa]
type = selfstate
trigger1 = p2life <=0
value = 0
ctrl = 1

;--- Cosas de Fatales ---
; ‘ј“јЋ»“» JADE - натыкает на палочку, какойто сабзиро еще...

[Statedef 6001]
type    = S
movetype= I
physics = N
velset = 0, 0
ctrl = 0

[State 3105, queda clavado]
type = Explod
trigger1 = time = 0
anim = 6001
pos = 0,0
postype = p1
sprpriority = 1

[State 2, sangre y mas sangre]
type = explod
trigger1 = time = 0
trigger2 = time = 10
trigger3 = time = 20
trigger4 = time = 30
trigger5 = time = 40
pos = -4, -51
postype = p1
anim = F80; arreglar anim de sangre
ontop = 1

[State 200, grito]
type = playsnd
trigger1 = Time = 0
value = 4,1

[State 200, 7]
type = lifeadd
trigger1 = Time = 41
value = -9999

[State 200, 7]
type = selfstate
trigger1 = Time = 41
value = 5150

;--- Para Friendship --- (queda mareandose)

[Statedef 6002]
type    = S
movetype= I
physics = N
velset = 0, 0
ctrl = 0

[State 3100, asigna anim]
type = varset
trigger1 = time = 1
v = 45
value = 5300

[State 9399, 3]
type = Lifeadd
trigger1 = Time > 150
trigger1 = animtime = 0
Value = -9999

[State 9399, 2]
type = selfstate
trigger1 = time > 150
trigger1 = animtime = 0
value = 5150

;--- Para fatales de decapitaciуn tipo la de cage ---

[Statedef 6003]; ------------------обезбашивание --------!
type    = S
movetype= H
physics = S
ctrl = 0
velset = 0,0,0
anim = 661

[State 9399, 2]
type = varset
trigger1 = time = 0
v = 45
value = 6611

[State 1200, 2at] ;бошка
type = Explod
trigger1 = time = 1
trigger1 = FrontEdgeDist > 130
anim = 662
pos = 0,-10
postype = p1
facing = -1
ID = 662
sprpriority  >= 2

[State 1200, 2at]
type = Explod
trigger1 = time = 1
trigger1 = FrontEdgeDist < 131
anim = 662
pos = 0,-10
postype = p1
facing = 1
ID = 662
sprpriority  >= 2

[State 1200, 2at]
type = Explod
trigger1 = time = 0
anim = F16
pos = -8,-108
postype = p1
sprpriority  >= 4

[State 1200, at]
type = Explod
trigger1 = time = 5
trigger2 = time = 12
trigger3 = time = 22
trigger4 = time = 28
trigger5 = time = 34
trigger6 = time = 40
trigger7 = time = 45
trigger8 = time = 50
trigger9 = time = 55
anim = F1
pos = -8,-100
postype = p1
;facing = 1
sprpriority  >= 3

[State 1200, at]
type = Explod
trigger1 = time = 8
trigger2 = time = 14
trigger3 = time = 22
trigger4 = time = 28
trigger5 = time = 34
trigger6 = time = 40
trigger7 = time = 45
trigger8 = time = 50
trigger9 = time = 55
anim = F1
pos = -8,-100
postype = p1
facing = -1
sprpriority  >= 3

[State 22, round hit]
type = EnvShake
trigger1 = time = 45
trigger2 = time = 55
freq = 48
time = 10
ampl = 4

[State 1200, ound]
type = PlaySnd
trigger1 = time = 44
trigger2 = time = 55
value = F5, 17
channel = 4

[State 1200, 45ound]
type = PlaySnd
trigger1 = time = 8
trigger2 = time = 14
trigger3 = time = 22
trigger4 = time = 28
trigger5 = time = 34
trigger6 = time = 40
trigger7 = time = 45
trigger8 = time = 50
trigger9 = time = 55
value = F5, 19

[State 9010, 0.1]
type = Sprpriority
trigger1 = time = 50
value  >= 4

[State 9399, 2]
type = Selfstate
trigger1 = Animtime = 0
value = 5150

[State 9399, 3]
type = Lifeadd
trigger1 = Time = 30
Value = -9999

[State 5150, 8]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1
ctrl = 1

; --- Para fatales de decapitaciуn tipo martillazo de Shao Kahn ---

[Statedef 6004];6612
type    = S
movetype= H
physics = S
ctrl = 0
velset = 0,0,0
anim = 661

[State 9399, 2]
type = varset
trigger1 = time = 0
v = 45
value = 6611

[State 1200, 2at]
type = Explod
trigger1 = time = 0
anim = F16
pos = 10,-117
postype = p1
sprpriority  >= 4

[State 1200, at]
type = Explod
trigger1 = time = 5
trigger2 = time = 12
trigger3 = time = 22
trigger4 = time = 28
trigger5 = time = 34
trigger6 = time = 40
trigger7 = time = 45
trigger8 = time = 50
trigger9 = time = 55
anim = F1
pos = 0,-105
postype = p1
sprpriority  >= 3

[State 1200, at]
type = Explod
trigger1 = time = 8
trigger2 = time = 14
trigger3 = time = 22
trigger4 = time = 28
trigger5 = time = 34
trigger6 = time = 40
trigger7 = time = 45
trigger8 = time = 50
trigger9 = time = 55
anim = F1
pos = 0,-105
postype = p1
facing = -1
sprpriority  >= 3

[State 1200, 45ound]
type = PlaySnd
trigger1 = time = 8
trigger2 = time = 14
trigger3 = time = 22
trigger4 = time = 28
trigger5 = time = 34
trigger6 = time = 40
trigger7 = time = 45
trigger8 = time = 50
trigger9 = time = 55
value = F5, 19

[State 9010, 0.1]
type = Sprpriority
trigger1 = time = 50
value  >= 4

[State 9399, 2]
type = Selfstate
trigger1 = Animtime = 0
value = 5150

[State 9399, 3]
type = Lifeadd
trigger1 = Time = 30
Value = -9999

[State 5150, 8]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1
ctrl = 1

;--- Cabeza ?
[Statedef 6005];6613
type    = S
movetype= H
physics = S
ctrl = 0
velset = 0,0,0
anim = 661

[State 9399, 2]
type = varset
trigger1 = time = 0
v = 45
value = 6611

[State 1200, 2at]
type = Explod
trigger1 = time = 0
anim = F16
pos = 10,-118
postype = p1
sprpriority  >= 4

[State 1200, at]
type = Explod
trigger1 = time = 5
trigger2 = time = 12
trigger3 = time = 22
trigger4 = time = 28
trigger5 = time = 34
trigger6 = time = 40
trigger7 = time = 45
trigger8 = time = 50
trigger9 = time = 55
anim = F1
pos = 0,-105
postype = p1
;facing = 1
sprpriority  >= 3

[State 1200, at]
type = Explod
trigger1 = time = 8
trigger2 = time = 14
trigger3 = time = 22
trigger4 = time = 28
trigger5 = time = 34
trigger6 = time = 40
trigger7 = time = 45
trigger8 = time = 50
trigger9 = time = 55
anim = F1
pos = 0,-105
postype = p1
facing = -1
sprpriority  >= 3

[State 22, round hit]
type = EnvShake
trigger1 = time = 45
trigger2 = time = 55
freq = 48
time = 10
ampl = 4

[State 1200, ound]
type = PlaySnd
trigger1 = time = 44
trigger2 = time = 55
value = F5, 17
channel = 4

[State 1200, 45ound]
type = PlaySnd
trigger1 = time = 8
trigger2 = time = 14
trigger3 = time = 22
trigger4 = time = 28
trigger5 = time = 34
trigger6 = time = 40
trigger7 = time = 45
trigger8 = time = 50
trigger9 = time = 55
value = F5, 19

[State 9010, 0.1]
type = Sprpriority
trigger1 = time = 50
value  >= 4

[State 9399, 2]
type = Selfstate
trigger1 = Animtime = 0
value = 5150

[State 9399, 3]
type = Lifeadd
trigger1 = Time = 30
Value = -9999

[State 5150, 8]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1
ctrl = 1

[State 1200, er2at]
type = Explod
trigger1 = time = 1
anim = 6612
ID = 6612
pos = 0,-115
postype = p1
sprpriority  = 4
removetime = 5

[State 1200, er2at]
type = Explod
trigger1 = time = 3
anim = 6612
ID = 6612
pos = 0,-117
postype = p1
sprpriority  = 5
scale = 1.5,1.5
removetime = 2

[State 1200, er2at]
type = Explod
trigger1 = time = 5
anim = 6612
ID = 6612
pos = 2,-119
postype = p1
sprpriority  = 5
scale = 2,2
removetime = 2

[State 1200, er2at]
type = Explod
trigger1 = time = 7
anim = 6612
ID = 6612
pos = 4,-121
postype = p1
sprpriority = 5
scale = 2.5,2.5
removetime = 2

[State 1200, er2at]
type = Explod
trigger1 = time = 9
anim = 6612
ID = 6612
pos = 6,-123
postype = p1
sprpriority  = 5
scale = 3,3
removetime = 3

[State 1200, er2at]
type = Explod
trigger1 = time = 12
anim = 6612
ID = 6612
pos = 8,-125
postype = p1
sprpriority  = 5
scale = 3.5,3.5
removetime = 6

[State 1200, er2at]
type = Explod
trigger1 = time = 15
anim = 6612
ID = 6612
pos = 10,-128
postype = p1
sprpriority  = 5
scale = 4,4
removetime = 3

[State 1200, er2at]
type = Explod
trigger1 = time = 18
anim = 6612
ID = 6612
pos = 12,-130
postype = p1
sprpriority  = 5
scale = 4.8,4.8
removetime = 50

[State 1200, er2at]
type = Explod
trigger1 = time = 68
anim = 6612
ID = 6612
Vel = 0,7
pos = 12,-130
postype = p1
sprpriority  = 5
scale = 4.8,4.8
removetime = 60

[State 1200, er2at]
type = Explod
trigger1 = time = 16
anim = F17
pos = 12,-150
postype = p1
sprpriority  = 5
;removetime = -1

[State 1200, er2at]
type = Explod
trigger1 = time = 16
anim = F17
pos = 12,-110
postype = p1
sprpriority  = 5
;removetime = -1

[State 1200, er2at]
type = Explod
trigger1 = time = 18
anim = F10
pos = 12,-150
postype = p1
ontop = 1
removetime = -1


[State 22, roundt]
type = EnvShake
trigger1 = time = 18
freq = 88
time = 10
ampl = 7

[State 22, rndt]
type = Playsnd
trigger1 = time = 18
value = F5,21
;volume = 100

[State 22, 245t]
type = Playsnd
trigger1 = time = 18
value = F5,31
volume = 100

;--- Para quedar decapitado en el suelo ---

[Statedef 6006];6614
type    = S
movetype= H
physics = S
ctrl = 0

[State 9399, 2]
type = varset
trigger1 = time = 0
v = 45
value = 6611

[State 9399, 2]
type = Selfstate
trigger1 = time = 0
value = 5150

; Invisible al final :P
[Statedef 6007]
type    = S
movetype= H
physics = S
ctrl = 0
velset = 0,0,0

[State 9399, 2]
type = varset
trigger1 = time = 0
v = 45
value = 888

[State 9399, 2]
type = Selfstate
trigger1 = time = 0
value = 5150

;--- Para quedar decapitado en el suelo en fatal de goro ---

[Statedef 6008];6614
type    = S
movetype= H
physics = S
ctrl = 0

[State 9399, 2]
type = varset
trigger1 = time = 0
v = 45
value = 6008

[State 9399, 2]
type = Selfstate
trigger1 = time = 0
value = 5150
;-------------- Generated by Fighter Factory -------------

;--------------------- Variable List ----------------------

; Var(1) - StateDef 200, 201, 220, 221, 400, 410, 420, -2
; Var(2) - StateDef 4307, -3
; Var(3) - StateDef 3997, -3
; Var(4) - StateDef 2444, 730, 4300, 4302, 4304, 4306, 4308, 767, 790, 3400, 3500, 3997, 3502, 512
; Var(5) - StateDef 99430, 431, 712
; Var(6) - StateDef -2
; Var(8) - StateDef 770, 771, 772
; Var(9) - StateDef 3997, -3
; Var(10) - StateDef 1022
; Var(11) - StateDef 600, 610, 612, 620, 621, 431, 43111, 712
; Var(13) - StateDef 3997, -3
; Var(15) - StateDef 431, -3
; Var(16) - StateDef 200, 201, 220, 221
; Var(17) - StateDef -3
; Var(18) - StateDef 4300
; Var(19) - StateDef 3997, -3
; Var(22) - StateDef -2
; Var(23) - StateDef 43011
; Var(24) - StateDef 712, 713
; Var(26) - StateDef 4300, 3500
; Var(30) - StateDef , -2
; Var(44) - StateDef -3
; Var(45) - StateDef 431, 6002, 6007, 181
; Var(47) - StateDef -2
; Var(54) - StateDef -3
; Var(58) - StateDef -2
; Var(59) - StateDef -3

;--------------------- Float Variable List ----------------------

