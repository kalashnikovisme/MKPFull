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
command = U, U, D, D, F, F, F, D, D, D, b, c
time = 0

;-| Special Motions |------------------------------------------------------


[Command]
name = "sp1"
command = D,F,a
time = 20

[Command]
name = "sp2"
command = B,B,D,y
time = 30

[Command]
name = "sp3"
command = F,B,x
time = 20

[Command]
name = "sp4"
command = /a
time = 1

[Command]
name = "sp5"
command = B,D,F,b
time = 35

[Command]
name = "sp6"
command = B,F,y
time = 20

[Command]
name = "sp7"
command = D,B,a
time = 25


;-[Finishers]----------------------------------------------------

[Command]
name = "fatal"
command = D,D,D
time = 35

[Command]
name = "fatal1"
command = 
time = 35

[Command]
name = "mercy"
command = D,D,D,~10c
time = 30

[Command]
name = "harakiri"
command =
time = 30

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = 
time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

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

;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdfwd";Required (do not remove)
command = /$F
time = 1

[Command]
name = "holdback";Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdup" ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holddown";Required (do not remove)
command = /$D
time = 1

[Command]
name = "run"  ;Required (do not remove)
command = /c
time = 1

[Command]
name = "blok"  ;Required (do not remove)
command = /z
time = 1

;---------------------------------------------------------------------------
; 2. State entry
; --------------
; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]
;===========================================================================
;-[AI]----------------------------------------
; Var Activators
[State -1]
type = VarSet
triggerall = roundstate = 2
trigger1 = command = "AI001"
trigger2 = command = "AI002"
trigger3 = command = "AI003"
trigger4 = command = "AI004"
trigger5 = command = "AI005"
trigger6 = command = "AI006"
trigger7 = command = "AI007"
trigger8 = command = "AI008"
v = 50
value = 1

[State -1]
type = VarSet
triggerall = roundstate = 2
trigger1 = command = "AI009"
trigger2 = command = "AI010"
trigger3 = command = "AI011"
trigger4 = command = "AI012"
trigger5 = command = "AI013"
trigger6 = command = "AI014"
trigger7 = command = "AI015"
trigger8 = command = "AI016"
v = 50
value = 1

[State -1]
type = VarSet
triggerall = roundstate = 2
trigger1 = command = "AI017"
trigger2 = command = "AI018"
trigger3 = command = "AI019"
trigger4 = command = "AI020"
trigger5 = command = "AI021"
trigger6 = command = "AI022"
trigger7 = command = "AI023"
trigger8 = command = "AI024"
v = 50
value = 1

[State -1]
type = VarSet
triggerall = roundstate = 2
trigger1 = command = "AI025"
trigger2 = command = "AI026"
trigger3 = command = "AI027"
trigger4 = command = "AI028"
trigger5 = command = "AI029"
trigger6 = command = "AI030"
v = 50
value = 1

;=======Brutality
[State -1, Brutal part]
type = ChangeState
value = 2200
triggerall = p2bodydist X <= 3
triggerall = p2stateno = 9010
triggerall = command = "x"
trigger1 = statetype = S
trigger1 = ctrl = 1
triggerall = Vel Y = 0
triggerall = p2statetype = S

[State -1, Brutal part]
type = ChangeState
value = 2210
triggerall = p2bodydist X <= 3
triggerall = command = "b"
triggerall = movecontact
trigger1 = statetype = S
trigger2 = stateno = 2200
trigger1 = ctrl = 1
triggerall = Vel Y = 0
triggerall = p2statetype = S

[State -1, Brutal part]
type = ChangeState
value = 2220
triggerall = p2bodydist X <= 3
triggerall = command = "blok"
triggerall = movecontact
trigger1 = statetype = S
trigger2 = stateno = 2210
trigger1 = ctrl = 1
triggerall = Vel Y = 0
triggerall = p2statetype = S

[State -1, Brutal part]
type = ChangeState
value = 2230
triggerall = p2bodydist X <= 3
triggerall = command = "x"
triggerall = movecontact
trigger1 = statetype = S
trigger2 = stateno = 2220
trigger1 = ctrl = 1
triggerall = Vel Y = 0
triggerall = p2statetype = S

[State -1, Brutal part]
type = ChangeState
value = 2240
triggerall = p2bodydist X <= 3
triggerall = command = "b"
triggerall = movecontact
trigger1 = statetype = S
trigger2 = stateno = 2230
trigger1 = ctrl = 1
triggerall = Vel Y = 0
triggerall = p2statetype = S

[State -1, Brutal part]
type = ChangeState
value = 2250
triggerall = p2bodydist X <= 3
triggerall = command = "blok"
triggerall = movecontact
trigger1 = statetype = S
trigger2 = stateno = 2240
trigger1 = ctrl = 1
triggerall = Vel Y = 0
triggerall = p2statetype = S

[State -1, Brutal part]
type = ChangeState
value = 2260
triggerall = p2bodydist X <= 3
triggerall = command = "x"
triggerall = movecontact
trigger1 = statetype = S
trigger2 = stateno = 2250
trigger1 = ctrl = 1
triggerall = Vel Y = 0
triggerall = p2statetype = S

[State -1, Brutal part]
type = ChangeState
value = 2270
triggerall = p2bodydist X <= 3
triggerall = command = "a"
triggerall = movecontact
trigger1 = statetype = S
trigger2 = stateno = 2260
trigger1 = ctrl = 1
triggerall = Vel Y = 0
triggerall = p2statetype = S

[State -1, Brutal part]
type = ChangeState
value = 2280
triggerall = p2bodydist X <= 3
triggerall = command = "blok"
triggerall = movecontact
trigger1 = statetype = S
trigger2 = stateno = 2270
trigger1 = ctrl = 1
triggerall = Vel Y = 0
triggerall = p2statetype = S

[State -1, Brutal part]
type = ChangeState
value = 2290
triggerall = p2bodydist X <= 3
triggerall = command = "y"
triggerall = movecontact
trigger1 = statetype = S
trigger2 = stateno = 2280
trigger1 = ctrl = 1
triggerall = Vel Y = 0
triggerall = p2statetype = S

[State -1, Brutal part]
type = ChangeState
value = 2291
triggerall = p2bodydist X <= 3
triggerall = command = "b"
triggerall = movecontact
trigger1 = statetype = S
trigger2 = stateno = 2290
trigger1 = ctrl = 1
triggerall = Vel Y = 0
triggerall = p2statetype = S
;___ai_brutality_________________________________________________

[State -1, Brutal part]
type = ChangeState
value = 2200
trigger1 = p2stateno = 9010
triggerall = (p2bodydist X <= 3) && (statetype = S) && (Vel Y = 0) &&  (var(50) = 1)
triggerall = (p2statetype = S) || ((p2statetype = C)&&(var(55)=0))
trigger1 = ctrl = 1

[State -1, Brutal part]
type = ChangeState
value = 2210
trigger1 = p2stateno = 9010
triggerall = (p2bodydist X <= 3) && (statetype = S) && (Vel Y = 0) &&  (var(50) = 1)
triggerall = (p2statetype = S) || ((p2statetype = C)&&(var(55)=0))
trigger1 = ctrl = 1
trigger2 = stateno = 2200
trigger2 = movecontact

[State -1, Brutal part]
type = ChangeState
value = 2220
trigger1 = p2stateno = 9010
triggerall = (p2bodydist X <= 3) && (statetype = S) && (Vel Y = 0) &&  (var(50) = 1)
triggerall = (p2statetype = S) || ((p2statetype = C)&&(var(55)=0))
trigger1 = ctrl = 1
trigger2 = stateno = 2210
trigger2 = movecontact

[State -1, Brutal part]
type = ChangeState
value = 2230
trigger1 = p2stateno = 9010
triggerall = (p2bodydist X <= 3) && (statetype = S) && (Vel Y = 0) &&  (var(50) = 1)
triggerall = (p2statetype = S) || ((p2statetype = C)&&(var(55)=0))
trigger1 = ctrl = 1
trigger2 = stateno = 2220
trigger2 = movecontact

[State -1, Brutal part]
type = ChangeState
value = 2240
trigger1 = p2stateno = 9010
triggerall = (p2bodydist X <= 3) && (statetype = S) && (Vel Y = 0) &&  (var(50) = 1)
triggerall = (p2statetype = S) || ((p2statetype = C)&&(var(55)=0))
trigger1 = ctrl = 1
trigger2 = stateno = 2230
trigger2 = movecontact

[State -1, Brutal part]
type = ChangeState
value = 2250
trigger1 = p2stateno = 9010
triggerall = (p2bodydist X <= 3) && (statetype = S) && (Vel Y = 0) &&  (var(50) = 1)
triggerall = (p2statetype = S) || ((p2statetype = C)&&(var(55)=0))
trigger1 = ctrl = 1
trigger2 = stateno = 2240
trigger2 = movecontact

[State -1, Brutal part]
type = ChangeState
value = 2260
trigger1 = p2stateno = 9010
triggerall = (p2bodydist X <= 3) && (statetype = S) && (Vel Y = 0) &&  (var(50) = 1)
triggerall = (p2statetype = S) || ((p2statetype = C)&&(var(55)=0))
trigger1 = ctrl = 1
trigger2 = stateno = 2250
trigger2 = movecontact

[State -1, Brutal part]
type = ChangeState
value = 2270
trigger1 = p2stateno = 9010
triggerall = (p2bodydist X <= 3) && (statetype = S) && (Vel Y = 0) &&  (var(50) = 1)
triggerall = (p2statetype = S) || ((p2statetype = C)&&(var(55)=0))
trigger1 = ctrl = 1
trigger2 = stateno = 2260
trigger2 = movecontact

[State -1, Brutal part]
type = ChangeState
value = 2280
trigger1 = p2stateno = 9010
triggerall = (p2bodydist X <= 3) && (statetype = S) && (Vel Y = 0) &&  (var(50) = 1)
triggerall = (p2statetype = S) || ((p2statetype = C)&&(var(55)=0))
trigger1 = ctrl = 1
trigger2 = stateno = 2270
trigger2 = movecontact

[State -1, Brutal part]
type = ChangeState
value = 2290
trigger1 = p2stateno = 9010
triggerall = (p2bodydist X <= 3) && (statetype = S) && (Vel Y = 0) &&  (var(50) = 1)
triggerall = (p2statetype = S) || ((p2statetype = C)&&(var(55)=0))
trigger1 = ctrl = 1
trigger2 = stateno = 2280
trigger2 = movecontact

[State -1, Brutal part]
type = ChangeState
value = 2291
trigger1 = p2stateno = 9010
triggerall = (p2bodydist X <= 3) && (statetype = S) && (Vel Y = 0) &&  (var(50) = 1)
triggerall = (p2statetype = S) || ((p2statetype = C)&&(var(55)=0))
trigger1 = ctrl = 1
trigger2 = stateno = 2290
trigger2 = movecontact
;-----------------------------------

[State -1, IA]
type = VarSet
v = 50
value = 1
triggerall = Var(50) != 1
trigger1 = ishometeam
trigger1 = teamside = 2

[State -1,mercy]
type = ChangeState
value = 3997
trigger1 = ctrl = 1
triggerall = RoundNo >= 3
triggerall = numexplod(3800) = 0
triggerall = p2stateno = 9010
triggerall = command = "mercy"
triggerall = p2bodydist X >= 100

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

[State -1]
type = ChangeState
value = 1000
triggerall = command = "sp1"
;triggerall = p2stateno != 9010
triggerall = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = [200,201]
trigger3 = stateno = [220,221]
triggerall = p2stateno != [1020,1040]
triggerall = command != "run"

[State -1]
type = ChangeState
value = 1100
triggerall = command = "sp2"
;triggerall = p2stateno != 9010
trigger1 = statetype = S
trigger2 = statetype = C
triggerall = ctrl = 1
triggerall = command != "run"

[State -1]
type = ChangeState
value = 1200
triggerall = command = "sp3"
;triggerall = p2stateno != 9010
triggerall = statetype = S
trigger1 = ctrl = 1
triggerall = command != "run"

[State -1,aislide]
type = ChangeState
value = 2000
triggerall = Var(35) = 1
trigger1 = p2stateno = 12001
trigger1 = p2bodydist X > 50
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger1 = p2statetype != A

[State -1]
type = ChangeState
value = 1300;1024
triggerall = command = "sp4" && command = "blok"
triggerall = command = "holddown"
trigger1 = statetype = S | statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 130 | stateno = 131
triggerall = command != "run"

[State -1]
type = ChangeState
value = 1400
triggerall = command = "sp5"
triggerall = NumExplod(679) < 1
trigger1 = statetype = S
trigger2 = statetype = C
triggerall = ctrl = 1
triggerall = command != "run"

[State -1]
type = ChangeState
value = 1666
triggerall = command = "sp6"
triggerall = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = [200,201]
trigger3 = stateno = [220,221]
triggerall = p2stateno != [1020,1040]
triggerall = command != "run"

[State -1]
type = ChangeState
value = 2500
triggerall = command = "sp7"
triggerall = p2stateno != 9010
triggerall = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = [200,201]
trigger3 = stateno = [220,221]
triggerall = p2stateno != [1020,1040]
triggerall = p2stateno != 2503
triggerall = command != "run"

[State -1, aiclone]
type = ChangeState
value = 20002
triggerall = Var(50) = 1
triggerALL = NUMEXPLOD(112) = 0
triggerall = p2stateno != 12001
triggerall = life >= 2
trigger1 = p2stateno = 107
trigger2 = p2stateno = 620
trigger2 = p2bodydist X < 150
trigger3 = p2stateno = 1001
trigger4 = p2stateno = 245
trigger4 = p2BodyDist X < 80
trigger5 = p2Movetype = A
trigger5 = p2BodyDist X < 70
triggerall = ctrl = 1
triggerall = statetype = S

[State -1,AI]
type = ChangeState
value = 1000
triggerall = Var(50) = 1
triggerall = p2stateno != 9010
triggerall = numexplod(1990) = 0
triggerall = p2bodydist X >= 150
triggerall = ctrl = 1
triggerall = statetype = S
triggerall = Vel Y = 0
trigger1 = p2stateno = 245
trigger2 = p2stateno = 50
trigger3 = p2stateno = [200,220]
trigger4 = p2stateno = 1000
triggerall = p2stateno != [1020,1040]

[State -1,fatal]
type = ChangeState
value = 3000
triggerall = command = "fatal"
trigger1 = p2stateno = 9010

;--------AIIIIIIIIII
[State -1, thhep]
type = ChangeState
value = 24
triggerall = Var(50) = 1
triggerall = ctrl = 1
trigger1 = 1
triggerall = statetype = S
triggerall = p2bodydist X <= 30
triggerall = roundstate = 2
triggerall = random >= 10 && random < 299 || random >= 200 && random <= 999
trigger1 = p2stateno = 11
trigger2 = p2stateno = 245
trigger3 = p2stateno = 420
trigger4 = p2stateno = 410
trigger5 = p2stateno = 20
trigger6 = p2stateno = 107
trigger7 = p2stateno = 131
trigger8 = p2stateno = 140
trigger9 = p2stateno = 2000
trigger10 = p2stateno = 10000
triggerall = p2name != "motaro"
triggerall = p2name != "shao kahn,"
triggerall = p2name != "kintaro"
triggerall = p2name != "goro"

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

[State -1];Blok
type = ChangeState
value = 131
triggerall = Var(50) = 1 && p2stateno != 9010 && p2statetype != C && ctrl && ((statetype = S)||(statetype = C))&& (p2stateno != 12001 )&&(roundstate = 2)
trigger1 = (p2Movetype = A) && (p2BodyDist X < 70) && (p2stateno!=[1900,1979])
trigger2 = (p2bodydist X < 70)&&(p2stateno=[600, 629])
trigger3 = (p2bodydist X < 80) && (p2stateno = [1000,1079])
trigger4 = (p2stateno = [1500,1579])&&(!movecontact)
trigger5 = p2stateno = [1000,1999]

[State -1, RunMk];correr
type = ChangeState
value = 107
triggerall = var(51) = 0;para que la IA no avance en los casos de states especiales 1900
triggerall = (power > 0)&&(statetype = S)&&ctrl && (Var(50) = 1)&&(roundstate = 2)
trigger1 = (p2bodydist X>3)&&((p2stateno=12001)||(p2stateno=1980))
trigger2 = (p2statetype=A)&&(p2bodydist X > 170)&&(p2movetype !=A)
trigger3 = (p2bodydist X >= 90)&&((p2stateno=[120,159])||(p2stateno=[0,20])||(p2stateno=107))
trigger4 = ((p2stateno=[5000,5999])||((p2stateno%100)=[80,89]))&&(p2bodydist X > 3)

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

;--[MK Holdback, closeup moves]----------------------------------------------

[State -1];barrida:245      roundhouse:240
type = Changestate
triggerall = Var(50)=0
triggerall = statetype = S
triggerall = ((Vel Y = 0)&&(Pos Y = 0))
triggerall = ctrl = 1
trigger1 = ((command = "b")&&(command = "holdback"))
trigger2 = (command = "y")&&(command = "holdback")
value = 245-5*(command = "y")

;--[Regular moves]----------------------------------------------------------------------

;;THRoW
[State -1, 90932]
type = ChangeState
value = 24
triggerall = p2bodydist X <= 8
triggerall = command = "a"
trigger1 = ctrl = 1
triggerall = enemynear ,command != "holdback"
triggerall = p2statetype != A
triggerall = statetype = S 
triggerall = p2name != "shao kahn,"
triggerall = p2name != "kintaro"
triggerall = p2name != "goro"
triggerall = p2name != "motaro"

[State -1, 2]
type = ChangeState
value = 224
triggerall = command = "blok"
trigger1 = stateno = 50
triggerall = p2statetype = A
trigger2 = stateno = [600,621]
triggerall = p2bodydist X <= 30
triggerall = p2bodydist X >= -30
triggerall = p2name != "shao kahn,"
triggerall = p2name != "kintaro"
triggerall = p2name != "goro"
triggerall = p2name != "motaro"


;COMBO
[State -1, 2]
type = ChangeState
value = 202
triggerall = p2bodydist X <= 3
trigger1 = command = "y"
trigger2 = command = "b"
triggerall = command != "holddown"
triggerall = statetype = S
triggerall = ctrl = 1
triggerall = Vel Y = 0 
triggerall = p2statetype = S 

[State -1, 3]
type = ChangeState
value = 203
triggerall = p2bodydist X <= 3
triggerall = command = "y"
;triggerall = command != "holddown"
trigger2 = movecontact 
trigger1 = statetype = S 
trigger2 = stateno = 202
trigger1 = ctrl = 1
triggerall = Vel Y = 0 
triggerall = p2statetype = S 

[State -1, 3]
type = ChangeState
value = 204
triggerall = p2bodydist X <= 3
triggerall = command = "x"
;triggerall = command != "holddown"
trigger2 = movecontact
trigger1 = statetype = S 
trigger2 = stateno = 202
trigger3 = movecontact
trigger3 = stateno = 2081
trigger1 = ctrl = 1
triggerall = Vel Y = 0 
triggerall = p2statetype = S

[State -1, 4]
type = ChangeState
value = 205
triggerall = p2bodydist X <= 3
triggerall = command = "x"
;triggerall = command != "holddown"
trigger2 = movecontact 
trigger1 = statetype = S 
trigger2 = stateno = 204
trigger1 = ctrl = 1
triggerall = Vel Y = 0 
triggerall = p2statetype = S 

[State -1, 4]
type = ChangeState
value = 206
triggerall = p2bodydist X <= 3
triggerall = command = "a"
triggerall = command != "holdup"
triggerall = movecontact
trigger1 = statetype = S 
trigger2 = stateno = 205
trigger1 = ctrl = 1
triggerall = Vel Y = 0 
triggerall = p2statetype = S 

[State -1, 4]
type = ChangeState
value = 209
triggerall = p2bodydist X <= 3
triggerall = command = "a"
triggerall = command = "holdup"
triggerall = movecontact
trigger1 = statetype = S
trigger2 = stateno = 205
trigger1 = ctrl = 1
triggerall = Vel Y = 0
triggerall = p2statetype = S

[State -1, 4]
type = ChangeState
value = 2061
triggerall = p2bodydist X <= 3
triggerall = command = "x"
triggerall = command = "holdback"
triggerall = movecontact
trigger1 = statetype = S 
trigger2 = stateno = 206
trigger1 = ctrl = 1
triggerall = Vel Y = 0 
triggerall = p2statetype = S 

[State -1, 3]
type = ChangeState
value = 2081
triggerall = p2bodydist X <= 3
triggerall = command = "y"
trigger1 = movecontact 
trigger1 = statetype = S 
trigger1 = stateno = 203
;trigger1 = ctrl = 1
triggerall = Vel Y = 0 
triggerall = p2statetype = S 

[State -1, 3]
type = ChangeState
value = 240
triggerall = p2bodydist X <= 3
triggerall = command = "y"
triggerall = command = "holdback"
trigger1 = movecontact 
trigger1 = statetype = S 
trigger1 = stateno = 2081
;trigger1 = ctrl = 1
triggerall = Vel Y = 0 

;---------------------


AI COMBO

[State -1, 2]
type = ChangeState
value = 202
triggerall = (p2bodydist X <= 3) && (statetype = S) && (Vel Y = 0) && (var(50) = 1)
triggerall = (p2statetype = S) || ((p2statetype = C)&&(var(55)=0))
trigger1 = ctrl = 1
triggerall = roundstate != 3
triggerall = roundstate != 4

[State -1, 3]
type = ChangeState
value = 203
triggerall = (p2bodydist X <= 3) && (statetype = S) && (Vel Y = 0) && (var(50) = 1)
triggerall = p2statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 202
trigger2 = movecontact
triggerall = roundstate != 3
triggerall = roundstate != 4

[State -1, 3]
type = ChangeState
value = 2081
triggerall = (p2bodydist X <= 3) && (statetype = S) && (Vel Y = 0) && (var(50) = 1)
triggerall = p2statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 203
trigger2 = movecontact
triggerall = roundstate != 3
triggerall = roundstate != 4

[State -1, 3]
type = ChangeState
value = 204
triggerall = (p2bodydist X <= 13) && (statetype = S) && (Vel Y = 0) && (var(50) = 1)
triggerall = p2statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 202
trigger3 = stateno = 2081
triggerall = movecontact
triggerall = roundstate != 3
triggerall = roundstate != 4

[State -1, 4]
type = ChangeState
value = 205
triggerall = (p2bodydist X <= 3) && (statetype = S) && (Vel Y = 0) && (var(50) = 1)
triggerall = p2statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 204
trigger2 = movecontact
triggerall = roundstate != 3
triggerall = roundstate != 4

[State -1, 4]
type = ChangeState
value = 206
triggerall = (p2bodydist X <= 3) && (statetype = S) && (Vel Y = 0) && (var(50) = 1)
triggerall = p2statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 205
trigger2 = movecontact
triggerall = roundstate != 3
triggerall = roundstate != 4

[State -1, 3]
type = ChangeState
value = 2061
triggerall = (p2bodydist X <= 3) && (statetype = S) && (Vel Y = 0) && (var(50) = 1)
triggerall = p2statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 206
trigger2 = movecontact
triggerall = roundstate != 3
triggerall = roundstate != 4

[State -1, 3]
type = ChangeState
value = 209
triggerall = (p2bodydist X <= 3) && (statetype = S) && (Vel Y = 0) && (var(50) = 1)
triggerall = p2statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 206
trigger2 = movecontact
triggerall = roundstate != 3
triggerall = roundstate != 4

[State -1, 3]
type = ChangeState
value = 240
triggerall = (p2bodydist X <= 3) && (statetype = S) && (Vel Y = 0) && (var(50) = 1)
triggerall = p2statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 2081
trigger2 = movecontact
triggerall = roundstate != 3
triggerall = roundstate != 4

;----------------------------

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

[State -1, golpes agachados];400:pat baja  410:pat alta  420:piña   430:upeercut
type = ChangeState
triggerall = Var(50)=0
triggerall = Vel Y = 0
triggerall = ctrl = 1
trigger1 = (statetype=C)&&(command="holddown")&&((command="b")||(command="y")||(command="a")||(command = "x"))
value = 400+10*(command="y")+20*(command="a")+30*(command = "x")

[State -1, air moves]  ;600:pat en el lugar  610:piña    620: patada
type = ChangeState
triggerall = Var(50)=0
triggerall = statetype = A
triggerall = ctrl = 1
trigger1 = (command = "y")||(command = "x")||(command = "a")||(command = "b")
value = 600+10*((command="a")||(command="x"))+20*(((command="y")||(command="b"))&&(Vel X != 0))

[State -1, AI No Jump]
type = null
triggerall = Var(35) = 1
trigger1 = p2stateno = 9010
value = 40

[State -1, AI No bl]
type = null
triggerall = Var(35) = 1
trigger1 =  life <= 10
trigger2 = p2stateno = 12001
trigger3 = p2movetype = H
value = 140

[State -1, AI ctrl]
type = Ctrlset
triggerall = Var(35) = 1
trigger1 = stateno = 9010
value = 0


