;--[AI Commands]---------------------------------------------
[Command]
name = "AI001"
command = U, U, D, D, B, B, B, F, F, F, a, a
time = 0

[Command]
name = "AI002"
command = U, U, D, D, B, B, B, F, F, F, b, b
time = 0

[Command]
name = "AI003"
command = U, U, D, D, B, B, B, F, F, F, c, c
time = 0

[Command]
name = "AI004"
command = U, U, D, D, B, B, B, F, F, F, x, x
time = 0

[Command]
name = "AI005"
command = U, U, D, D, B, B, B, F, F, F, y, y
time = 0

[Command]
name = "AI006"
command = U, U, D, D, B, B, B, F, F, F, z, z
time = 0

[Command]
name = "AI007"
command = U, U, D, D, F, F, F, B, B, B, a, a
time = 0

[Command]
name = "AI008"
command = U, U, D, D, F, F, F, B, B, B, b, b
time = 0

[Command]
name = "AI009"
command = U, U, D, D, F, F, F, B, B, B, c, c
time = 0

[Command]
name = "AI010"
command = U, U, D, D, F, F, F, B, B, B, x, x
time = 0

[Command]
name = "AI011"
command = U, U, D, D, F, F, F, B, B, B, a, x
time = 0

[Command]
name = "AI012"
command = U, U, D, D, F, F, F, B, B, B, a, y
time = 0

[Command]
name = "AI013"
command = U, U, D, D, F, F, F, B, B, B, a, z
time = 0

[Command]
name = "AI014"
command = U, U, D, D, F, F, F, B, B, B, a, b
time = 0

[Command]
name = "AI015"
command = U, U, D, D, F, F, F, B, B, B, a, c
time = 0

[Command]
name = "AI016"
command = U, U, D, D, F, F, F, B, B, B, b, x
time = 0

[Command]
name = "AI017"
command = U, U, D, D, F, F, F, B, B, B, b, y
time = 0

[Command]
name = "AI018"
command = U, U, D, D, F, F, F, B, B, B, b, z
time = 0

[Command]
name = "AI019"
command = U, U, D, D, F, F, F, B, B, B, b, a
time = 0

[Command]
name = "AI020"
command = U, U, D, D, F, F, F, B, B, B, b, c
time = 0

[Command]
name = "AI021"
command = U, U, D, D, F, F, F, D, D, D, a, x
time = 0

[Command]
name = "AI022"
command = U, U, D, D, F, F, F, D, D, D, a, y
time = 0

[Command]
name = "AI023"
command = U, U, D, D, F, F, F, D, D, D, a, z
time = 0

[Command]
name = "AI024"
command = U, U, D, D, F, F, F, D, D, D, a, b
time = 0

[Command]
name = "AI025"
command = U, U, D, D, F, F, F, D, D, D, a, c
time = 0

[Command]
name = "AI026"
command = U, U, D, D, F, F, F, D, D, D, b, x
time = 0

[Command]
name = "AI027"
command = U, U, D, D, F, F, F, D, D, D, b, y
time = 0

[Command]
name = "AI028"
command = U, U, D, D, F, F, F, D, D, D, b, z
time = 0

[Command]
name = "AI029"
command = U, U, D, D, F, F, F, D, D, D, b, a
time = 0

[Command]
name = "AI030"
command = z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z
time = 0



;-| Special Motions |------------------------------------------------------

[Command]
name = "sp1";del slide
command = /x
time = 1

[Command]
name = "sp2" ;frezze ground
command = D,B,b
time = 20

[Command]
name = "sp3" ;slide punch
command = D,F,x
time = 20

[Command]
name = "sp4" ;frezze ball
command = D,F,a
time = 20

[Command]
name = "sp5" ;ice clone
command = D,B,a
time = 20

[Command]
name = "sp6"
command =
time = 1

[Command]
name = "sp7"
command = 
time = 20

;-[Finishers]----------------------------------------------------

[Command]
name = "fatal"
command = B,B,b
time = 40

[Command]
name = "fatal1"
command = 
time = 40

[Command]
name = "mercy"
command = D,D,D,~10c
time = 30

[Command]
name = "harakiri"
command = B,B,B
time = 35

[Command]
name = "ultra"
command = x
time = 35

;--[AI Commands]---------------------------------------------

[Command]
name = "AI"
command = U, U
time = 0

;-| Single Button |------------------------------------------

[Command]
name = "a"
command = a
time = 1

[Command]
name = "b"
command = b
time = 1

[Command]
name = "x"
command = x
time = 1

[Command]
name = "y"
command = y
time = 1

[Command]
name = "start"
command = s
time = 1

;-| Hold Dir |--------------------------------------------------

[Command]
name = "holdfwd"
command = /$F
time = 1

[Command]
name = "holdback"
command = /$B
time = 1

[Command]
name = "holdup"
command = /$U
time = 1

[Command]
name = "holddown"
command = /$D
time = 1

[Command]
name = "run"
command = /c
time = 1

[Command]
name = "blok"
command = /z
time = 1

;--------------------------------
; 2. State entry
;--------------------------------
[Statedef -1]
;================================
;Var Activators [AI]
[State -1]
type = VarSet
triggerall = Var(50)=0 
triggerall = roundstate = 2
trigger1 = command = "AI"
trigger2 = ishometeam
trigger2 = teamside = 2
v = 50
value = 1

[State -2, state1900]
type = varset
V = 51
value = 100+100*(p2stateno=1900)
trigger1 = var(51) = 0
trigger1 = var(50) = 1
trigger1 = p2stateno = [1900, 1979]

[State -2, state1900]
type = varset
V = 51
value = var(51)-1
trigger1 = var(51) != 0
trigger1 = var(50) = 1

;--------------------------------

[State -1, Block]
type = ChangeState
value = 120
triggerall = ctrl
triggerall = (statetype = S || statetype = C)
triggerall = stateno != [120,140]
triggerall = Var(50)=0 
trigger1 = (command = "blok")

;correr
[State -1, RunMk]
type = ChangeState
value = 107
triggerall = (power > 0)&&(stateno != 107)&&(statetype = S)&&ctrl
trigger1 = (command = "run")&&(command = "holdfwd")&&(command != "holdup")&&(command != "holddown")&&Var(50)=0

;--[Special Moves]-----------------------------------------------------------
[State -2, poder a zero];para freeze ball
type = varset
V = 46
value = 0
trigger1 = var(46) != 0
trigger1 = p2statetype != A
trigger1 = stateno != [1000, 1999]

[State -1, frezze ball]
type = ChangeState
value = 1000
triggerall = (p2stateno != 9010) && (var(46)%2 = 0) && (statetype = S) && (roundstate = 2)
triggerall = (numprojid(997) < 2) && ctrl && (numhelper(1301) = 0) && (numhelper(7003) = 0)
trigger1 = command != "run" && command = "sp4" && Var(50) = 0
trigger2 = (Var(50)=1)&&(p2bodydist X >= 50)&&(p2stateno!=12001)&&(p2statetype!=C)&&(p2stateno!=[120,151]);;&&(random%10=0)
trigger2 = (p2stateno=[200,224])||(var(51)!=0)||(p2stateno=20)||(p2stateno=100)||(p2statetype=A)||((p2stateno=[1600,1679])&&(p2bodydist X > 110))

[State -1]
type = ChangeState
value = 1130
triggerall = command = "sp4"
triggerall = p2stateno != [1020,1040]
trigger1 = ctrl = 1
trigger2 = stateno = [600,621]
triggerall = statetype = A
triggerall = command != "run"

[State -1, ice clone]
type = ChangeState
value = 1900
triggerall = (numprojid(997)<2)&&(p2stateno!=12001)&&(var(46)<2)&&(numhelper(1301)=0)&&(stateno!=[5000,5999])
triggerall = (roundstate = 2)&&(numhelper(7003)=0)&&(numhelper(7004)=0)
trigger1 = (statetype = S)&&(command != "run")&&(command = "sp5")&&ctrl&& Var(50) = 0
trigger2 = (statetype=A)&&(command = "sp5")&& Var(50) = 0
trigger3 = (var(50)=1)&&ctrl&&(p2stateno!=[5000,5999])
trigger3 = ((p2statetype=A)&&(p2bodydist X<100))||((p2bodydist X<70)&&(p2movetype=A))

[State -1, slide punch]
type = ChangeState
value = 1500
triggerall = (p2stateno != 9010)&&(NumExplod(12000)=0)&&(numhelper(2001)<1)&&(statetype = S)&&ctrl && (roundstate = 2)
trigger1 = (command = "sp3")&&(command != "run")&&(var(50)=0)
trigger2 = (var(50)=1)&&(p2bodydist X > 170)&&(p2stateno = 12001);&&(p2statetype = A)

[State -1,ground freeze]
type = Changestate
value = 1910
triggerall = (p2stateno!=12001)&&(numhelper(7003)=0)&&(numhelper(1301)=0)&&(statetype=S)&&ctrl && (roundstate = 2)
trigger1 = (command = "sp2")&&(command != "run")&&(var(50)=0)
trigger2 = (var(50)=1)&&(p2stateno!=[1000,1999])&&(p2stateno!=9010)&&(p2stateno!=131);;;;[120,151])
trigger2 = ((p2statetype=C)&&(p2bodydist X<90)&&(p2bodydist X>50))||((p2bodydist X<70)&&(random%10=1))

;=================================
;Movimientos finales
;=================================

[State -1,fatal1]
type = ChangeState
value = 3100
triggerall = p2bodydist X < 190
triggerall = p2bodydist X > 165
triggerall = p2name != "motaro"
triggerall = command = "fatal"
triggerall = command != "run"
triggerall = p2stateno = 9010
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = var(50)=1

[State -1, ultra]
type = ChangeState
value = 2100
triggerall = (statetype = S)&&(roundstate = 2)&&(p2bodydist X <= 3)
triggerall = teammode = single 
triggerall = numenemy = 1
triggerall = animexist(2000+var(55));para que no lo haga cuando es el ultimo golpe del kombo.
trigger1 = p2life < 500                ;Ultra
trigger1 = stateno = [2000,2999]       ;Ultra
trigger1 = movecontact
trigger1 = roundno > 2
trigger1 = ((command = "ultra")&&(var(50) = 0)) || (var(50) = 1 && p2life> 100) 
trigger2 = p2stateno = 9010         ;brutality
trigger2 = ctrl  && var(50) = 0     ;brutality
trigger2 = command = "ultra"

[State -1,mercy]
type = ChangeState
value = 3997
trigger1 = ctrl = 1
triggerall = RoundNo >= 3
triggerall = numexplod(3800) = 0
triggerall = p2stateno = 9010
triggerall = command = "mercy"
triggerall = p2bodydist X >= 100

;--------------------------;
; --- Stage Fatalities --- ;
;--------------------------;
[State -1, uppercuts]
type = ChangeState
triggerall = (statetype = C && command = "x" && command = "holddown") || (var(50) = 1 && random%3 =0)
triggerall = p2stateno = 9010
triggerall = p2bodydist X <= 15
triggerall = Vel Y = 0
triggerall = ctrl = 1
triggerall = p2name != "motaro"
trigger1 = var(30) = 10000 ;pit1    4300
trigger2 = var(30) = 10001 ;bell    4302
trigger3 = var(30) = 10002 ;pit3    4304
trigger4 = var(30) = 10004 ;blood   4308
trigger5 = var(30) = 10012 ;golden  4314
trigger6 = var(30) = 10013 ;shouse  4316
trigger7 = var(30) = 10014 ;pit2    4318
trigger8 = var(30) = 10007 ;subway  4320
trigger8 = Numexplod(7878) = 1
trigger9 = var(30) = 10015 ;tomb    4322
value = 4300+2*(var(30)=10001)+4*(var(30)=10002)+8*(var(30)=10004)+14*(var(30)=10012)+16*(var(30)=10013)+18*(var(30)=10014)+20*(var(30)=10007)+22*(var(30)=10015)

[State -1, roundhouse]
type = ChangeState
triggerall = p2name != "motaro"
triggerall = (command = "y" && command = "holdback" && statetype = S)|| (var(50) = 1 && random%3 =0)
triggerall = p2stateno = 9010
triggerall = p2bodydist X <= 15
triggerall = facing = 1
triggerall = facing != -1
triggerall   = ctrl = 1
triggerall = Vel Y = 0
trigger1 = ((var(30)=10003)||(var(30)=10008))
value = 4306 +6*((FrontEdgeDist < 200)&&(var(30) = 10008))
;===================================
;Variable para COMBO
;===================================
[State -2, combo a zero]
type = varset
V = 55
value = 0
trigger1 = var(55) != 0
trigger1 = anim != [2000, 2999]

[State -2, combo 1 x]
type = varset
V = 56
value = (-4)*(anim = [2000,2009]) + (-5)*(anim = [2010,2019]) + (-2)*(anim = [2020,2029]) + (-5)*(anim = [2030,2039])
trigger1 = anim = [2000, 2999]

[State -2, combo 1 y]
type = varset
V = 57
trigger1 = anim = [2000, 2999]
value = (-7)*(anim = [2000,2009]) + (-5)*(anim = [2010,2019]) + (-10)*(anim = [2020,2029]) + (-5)*(anim = [2030,2039])
;===================================
;COMBO
;===================================
[State -1, k1]
type = ChangeState
value = 2000
triggerall = p2bodydist X <= 3 && statetype = S && Vel Y = 0 && (p2statetype = S || p2statetype = C) && var(50) = 0
trigger1 = command = "y" || command = "b"
trigger1 = (command != "holddown" && command != "holdback" && command != "holdup")
trigger1 = var(55) = 0 && ctrl 
trigger2 = command = "b"
trigger2 = var(55) = 1
trigger2 = movecontact
trigger3 = command = "x"
trigger3 = var(55) > 1 && var(55) < 7
trigger3 = movecontact

[State -1, k2]
type = ChangeState
value = 2001
triggerall = p2bodydist X <= 3 && statetype = S && Vel Y = 0 && (p2statetype = S || p2statetype = C) && var(50) = 0
trigger1 = command = "y"
trigger1 = var(55) = 1
trigger1 = movecontact
trigger2 = movecontact
trigger2 = command = "y"
trigger2 = var(55) > 9 && var(55) < 12
trigger3 = movecontact
trigger3 = var(55) = 12
trigger3 = (command = "holdback" && command = "y")

[State -1, k3]
type = ChangeState
value = 2002
triggerall = p2bodydist X <= 3 && statetype = S && Vel Y = 0 && (p2statetype = S || p2statetype = C) && var(50) = 0
trigger1 = command = "x"
trigger1 = var(55) = 0
trigger1 = (command != "holddown" && command != "holdback" && command != "holdup")
trigger1 = ctrl = 1
trigger2 = command = "x"
trigger2 = var(55) > 20 && var(55) < 23
trigger2 = movecontact
trigger3 = command = "x" && command = "holddown"
trigger3 = var(55) = 23
trigger3 = movecontact

[State -1, k4]
type = ChangeState
value = 2003
triggerall = p2bodydist X <= 3 && statetype = S && Vel Y = 0 && (p2statetype = S || p2statetype = C) && var(50) = 0
trigger1 = command = "y"
trigger1 = var(55) = 22
trigger1 = movecontact
trigger2 = movecontact
trigger2 = command = "y"
trigger2 = var(55) > 29 && var(55) < 32
trigger3 = movecontact
trigger3 = var(55) = 32
trigger3 = command = "y"
;===================================
;FIN COMBO
;===================================

;--[Movimientos basicos para humano]-----------------------------------------------

[State -1, THROW]
type = ChangeState
value = 24
triggerall = Var(50)=0
triggerall = (p2bodydist X <= 8)&&(ctrl)&&(p2statetype != A)&&(statetype = S) 
triggerall = (p2name != "motaro")
trigger1 = enemynear ,command != "holdback"
trigger1 = command = "a"

[State -1, golpes agachados];400:pat baja  410:pat alta  420:piña   430:upeercut
type = ChangeState
triggerall = Var(50)=0
triggerall = Vel Y = 0
triggerall = ctrl = 1
trigger1 = (statetype=C)&&(command="holddown")&&((command="b")||(command="y")||(command="a")||(command = "x"))
value = 400+10*(command="y")+20*(command="a")+30*(command = "x")

[State -1];barrida:245      roundhouse:240
type = Changestate
triggerall = Var(50)=0
triggerall = statetype = S
triggerall = ((Vel Y = 0)&&(Pos Y = 0))
triggerall = ctrl = 1
trigger1 = ((command = "b")&&(command = "holdback"))
trigger2 = (command = "y")&&(command = "holdback")
value = 245-5*(command = "y")

[State -1, regular moves];LP=220 HP=200 LK=225 HK= 210
type = ChangeState
triggerall = Var(50)=0
triggerall = command != "holddown"
triggerall = Vel Y = 0
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != [2000,2999]
trigger1 = (command = "a")||(command = "x")||(command = "b")||(command = "y")
value = 220*(command = "a")+200*(command = "x")+210*(command = "y")+225*(command = "b")

[State -1, air moves]  ;600:pat en el lugar  610:piña    620: patada
type = ChangeState
triggerall = Var(50)=0
triggerall = statetype = A
triggerall = ctrl = 1
trigger1 = (command = "y")||(command = "x")||(command = "a")||(command = "b")
value = 600+10*((command="a")||(command="x"))+20*(((command="y")||(command="b"))&&(Vel X != 0))

;**************************************************************
; AI
;**************************************************************

;===================================
;COMBO AI
;===================================

[State -1, kia1]
type = ChangeState
value = 2000
triggerall = (stateno != [2100,2199]) && (p2life>2) && animexist(2000 + var(55))
triggerall = (p2bodydist X <= 3) && (statetype = S) && (Vel Y = 0) &&  (var(50) = 1)
triggerall = (p2statetype = S) || ((p2statetype = C)&&(var(55)=0))
trigger1 = (var(55) = 0)&& ctrl && (p2stateno != [120,151]) && (random%3 = 1)
trigger2 = var(55) >0 && var(55) < 10&& movecontact && (random%2 = 1)

[State -1, 2]
type = ChangeState
value = 2001
triggerall = (stateno != [2100,2199]) && (p2life>2)&& animexist(2000 + var(55))
triggerall = p2bodydist X <= 3 && statetype = S && Vel Y = 0  && var(50) = 1
triggerall = p2statetype = S || ((p2statetype = C)&&(var(55)=10))
trigger1 = var(55) = 1 && movecontact
trigger2 = var(55) >9 && var(55) < 20 && movecontact

[State -1, 2]
type = ChangeState
value = 2002
triggerall = (stateno != [2100,2199]) && (p2life>2)&& animexist(2000 + var(55))
triggerall = (p2bodydist X <= 3) && (statetype = S) && (Vel Y = 0) && (p2statetype = S) && (var(50) = 1)
trigger1 = (var(55) = 0)&& ctrl && (p2stateno != [120,151]) && (random%3 = 2)
trigger2 = var(55) >19 && var(55) < 30 && movecontact && (random%2 = 1)

[State -1, 2]
type = ChangeState
value = 2003
triggerall = (stateno != [2100,2199]) && (p2life>2)&& animexist(2000 + var(55))
triggerall = p2bodydist X <= 3 && statetype = S && Vel Y = 0 && (p2statetype = S) && var(50) = 1
trigger1 = var(55) = 22 && movecontact
trigger2 = var(55) >29 && var(55) < 40 && movecontact

;===================================
;FIN COMBO
;===================================

;--[Movimientos basicos para IA]-----------------------------------------------
[State -1, THROW]
type = ChangeState
value = 24
triggerall = (p2bodydist X <= 15)&&(ctrl)&&(p2statetype != A)&&(statetype = S)&&(roundstate = 2)
triggerall = (p2name != "motaro")
trigger1 = Var(50) = 1
trigger1 = p2stateno = [120,151]

[State -1, golpes agachados];400:pat baja  410:pat alta  420:piña
type = ChangeState
triggerall = (Vel Y = 0)&& ctrl && (roundstate = 2)
trigger1 = (Var(50)=1)&&((statetype=S)||(statetype=C))&&(p2stateno !=9010)&&(p2bodydist X<=60)&&(p2statetype!=A)
trigger1 = (p2stateno=[200,245])||(p2stateno=[430,431])||(p2stateno=600)||(p2stateno=107);||(p2stateno=24)
value = 400+10*(random%3)

[State -1, uppercuts]
type = ChangeState
triggerall = ctrl&&(Vel Y = 0)
triggerall = (Var(50) = 1)&&((statetype = C)||(statetype = S))&&(roundstate = 2)
trigger1 = ((p2bodydist X<=30)&&((p2stateno=0)||(p2stateno=20)))&&(p2life>1)
trigger2 = p2bodydist X<=60 && (random%3=1) && (p2statetype = A) && (p2stateno=!12001) && (p2stateno != 9010)
trigger3 = (p2bodydist X < 5)&&(p2stateno=12001)&&(p2statetype = A)&&(random%3=0)
value = 430

[State -1];barrida:245          roundhouse:240
type = Changestate
triggerall = statetype = S && ((Vel Y = 0)&&(Pos Y = 0)) && ctrl && (var(50)=1) && (roundstate = 2)
trigger1 = (p2bodydist X < 70)&&(p2bodydist X > 50)&&(p2statetype = S)&&(p2stateno = [120,151])
trigger2 = (p2bodydist X < 70)&&(p2stateno=[400,430])
trigger3 = (p2bodydist X < 70)&&(p2bodydist X > 50)&&((p2stateno=[200,230])||(p2stateno=11)||(p2stateno=20))
trigger4 = (p2bodydist X < 5)&&(p2stateno=12001)&&(p2statetype = A)&&(random%3=1)
trigger5 = (p2bodydist X < 70)&&(p2stateno=[200,240])
;trigger6 = p2stateno=24
value = 245 -5*(((p2stateno=20)*(random%2=1))||(p2statetype=A))

[State -1, regular moves];LP=220 HP=200 LK=225 HK= 210
type = ChangeState
triggerall = (Vel Y=0)&&(statetype=S)&&ctrl&&(stateno!=[2000,2999])&&(var(50)=1)&&(p2stateno!=9010)&&(roundstate = 2) 
trigger1 = (p2bodydist X < 50)&&((p2statetype = S)||(p2statetype = A)) && (p2stateno=!12001)
trigger2 = p2stateno=24
value = 220*(random%4=0)+200*(random%4=1)+210*(random%4=2)+225*(random%4=3)

[State -1, air moves]  ;600:pat en el lugar  610:piña    620: patada
type = ChangeState
triggerall = (statetype = A) && ctrl && (var(50) = 1) && (roundstate = 2)
trigger1 = (p2bodydist X>20)&&(p2bodydist X < 100);160)
value = 600+10*(vel X != 0)+10*(random%2=0)

;**************************************************************
;Reacciones
;**************************************************************
[State -1];saltos para esquivar
type = ChangeState
value = 40
triggerall = Var(50) = 1 && p2stateno != 9010 && ctrl && ((statetype = S)||(statetype = C))&&(roundstate = 2)&&(var(51)=0)
trigger1 = ((p2stateno=245)||(p2stateno=[400,420]))&&(p2BodyDist X < 80)
trigger2 = (p2stateno=[1900,1979])&&(p2bodydist X < 120)
trigger3 = (p2bodydist X > 80) && (p2stateno = [1000,1079])

[State -1, RunMk];correr
type = ChangeState
value = 107
triggerall = var(51) = 0;para que la IA no avance en los casos de states especiales 1900
triggerall = (power > 0)&&(statetype = S)&&ctrl && (Var(50) = 1)&&(roundstate = 2)
trigger1 = (p2bodydist X>3)&&((p2stateno=12001)||(p2stateno=1980))
trigger2 = (p2statetype=A)&&(p2bodydist X > 170)&&(p2movetype !=A)
trigger3 = (p2bodydist X >= 90)&&((p2stateno=[120,159])||(p2stateno=[0,20])||(p2stateno=107))
trigger4 = ((p2stateno=[5000,5999])||((p2stateno%100)=[80,89]))&&(p2bodydist X > 3)

[State -1];Blok
type = ChangeState
value = 131
triggerall = Var(50) = 1 && p2stateno != 9010 && p2statetype != C && ctrl && ((statetype = S)||(statetype = C))&& (p2stateno != 12001 )&&(roundstate = 2)
trigger1 = (p2Movetype = A) && (p2BodyDist X < 70) && (p2stateno!=[1900,1979])
trigger2 = (p2bodydist X < 70)&&(p2stateno=[600, 629])
trigger3 = (p2bodydist X < 80) && (p2stateno = [1000,1079])
trigger4 = (p2stateno = [1500,1579])&&(!movecontact)
trigger5 = (p2stateno = [1000,1999])&&(p2name!="hydro")&&(p2name!="human hydro")
