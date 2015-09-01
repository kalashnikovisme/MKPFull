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
command = B,B,x
time = 20

[Command]
name = "sp2"
command = B,B,F,x
time = 30

[Command]
name = "sp3"
command = B,B,F,F,x
time = 40

[Command]
name = "sp4"
command = F,B,a
time = 20

[Command]
name = "sp5"
command = D,B,x
time = 20

[Command]
name = "sp6"
command = F,F,y
time = 20

[Command]
name = "sp7"
command = F,F,b
time = 25


[Command]
name = "sp8"
command = B,F,b
time = 20

[Command]
name = "sp9"
command = D,F,a
time = 20


[Command]
name = "sp10"
command = a+b
time = 1

[Command]
name = "sp11"
command = B,B,a
time = 20

[Command]
name = "sp12"
command = F,F,x
time = 20



[Command]
name = "sp13"
command = D,B,a
time = 25


[Command]
name = "sp14"
command = F,B,B,b
time = 35



[Command]
name = "sp15"
command = B,F,x
time = 25


[Command]
name = "sp16"
command = D,F,x
time = 35

;-[Finishers]----------------------------------------------------

[Command]
name = "fatal1"
command = F,F,F
time = 20

[Command]
name = "fatal1"
command = B,B,B
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

;-| Single Button |---------------------------------------------------------
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


;correr
[State -1, RunMk]
type = ChangeState
value = 107
trigger1 = command = "run"
trigger1 = command = "holdfwd"
trigger1 = command != "holddown"
trigger1 = command != "holdup"
trigger2 = stateno = [200,201] 
trigger3 = stateno = [220,221] 
triggerall = power > 0
triggerall = stateno != 107
triggerall = statetype = S
triggerall = ctrl

; Stand Block
[State -1, Block]
type = ChangeState
value = 120
triggerall = command = "blok"
triggerall = ctrl
trigger1 = statetype = S
trigger2 = statetype = C
triggerall = stateno != [120,140]
triggerall = Var(50) != 1


;---------------------------------------------------------------------------


;--[Special Moves]-----------------------------------------------------------

[State -1]
type = ChangeState
value = 1010
triggerall = command = "sp1"
;triggerall = p2stateno != 9010
triggerall = statetype = S
;triggerall = numexplod(7088) < 1
trigger1 = ctrl = 1
;trigger2 = stateno  = 431
triggerall = p2stateno != [1020,1040]
triggerall = command != "run"

[State -1,AI]
type = ChangeState
value = 1003
triggerall = Var(50) = 1
triggerall = p2bodydist X >= 40
triggerall = p2bodydist X <= 190
triggerall = ctrl = 1
triggerall = statetype = S
trigger1 = p2stateno = 245
trigger2 = p2stateno = 0
trigger3 = p2stateno = [200,220]
trigger4 = p2stateno = 1000
trigger4 = p2name != "noob saibot"
;trigger5 = p2stateno = 430
triggerall = p2stateno != [1020,1040]
triggerall = command != "run"

;--------------------------;
; --- Stage Fatalities --- ;
;--------------------------;

[State -1, MKPIT1]
type = ChangeState
value = 4300
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = p2stateno = 9010
triggerall = var(30) = 10000
triggerall = p2name != "motaro"
triggerall = p2bodydist X <= 5
trigger1 = statetype = C
trigger1 = ctrl = 1
triggerall = Vel Y = 0

[State -1, MKBELLPIT]
type = ChangeState
value = 4302
triggerall = command = "x"
triggerall = p2name != "motaro"
triggerall = command = "holddown"
triggerall = p2stateno = 9010
triggerall = var(30) = 10001
triggerall = p2bodydist X <= 5
trigger1 = statetype = C
trigger1 = ctrl = 1
triggerall = Vel Y = 0

[State -1, MKPIT3]
type = ChangeState
value = 4304
triggerall = command = "x"
triggerall = p2name != "motaro"
triggerall = command = "holddown"
triggerall = p2stateno = 9010
triggerall = var(30) = 10002
triggerall = p2bodydist X <= 5
trigger1 = statetype = C
trigger1 = ctrl = 1
triggerall = Vel Y = 0

[State -1, MKPrison]
type = ChangeState
value = 4306
triggerall = command = "y"
triggerall = command = "holdback"
triggerall = p2stateno = 9010
triggerall = p2name != "motaro"
triggerall = var(30) = 10003
triggerall = p2bodydist X <= 10
triggerall = facing = 1
triggerall = facing != -1
trigger1 = statetype = S
trigger1 = ctrl = 1
triggerall = Vel Y = 0

[State -1, MKBlood]
type = ChangeState
value = 4308
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = p2name != "motaro"
triggerall = p2stateno = 9010
triggerall = var(30) = 10004
triggerall = p2bodydist X <= 5
trigger1 = statetype = C
trigger1 = ctrl = 1
triggerall = Vel Y = 0

[State -1, MKpress]
type = ChangeState
value = 4312
triggerall = command = "y"
triggerall = command = "holdback"
triggerall = p2stateno = 9010
triggerall = FrontEdgeDist < 200
triggerall = p2name != "motaro"
triggerall = var(30) = 10008
triggerall = p2bodydist X <= 10
triggerall = facing = 1
triggerall = facing != -1
trigger1 = statetype = S
trigger1 = ctrl = 1
triggerall = Vel Y = 0

[State -1, MKgolden]
type = ChangeState
value = 4314
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = p2stateno = 9010
triggerall = p2name != "motaro"
triggerall = var(30) = 10012
triggerall = p2bodydist X <= 5
trigger1 = statetype = C
trigger1 = ctrl = 1
triggerall = Vel Y = 0

[State -1, Shouse]
type = ChangeState
value = 4316
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = p2stateno = 9010
triggerall = var(30) = 10013
triggerall = p2bodydist X <= 5
triggerall = p2name != "motaro"
trigger1 = statetype = C
trigger1 = ctrl = 1
triggerall = Vel Y = 0

[State -1, pit2]
type = ChangeState
value = 4318
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = p2stateno = 9010
triggerall = var(30) = 10014
triggerall = p2name != "motaro"
triggerall = p2bodydist X <= 10
trigger1 = statetype = C
trigger1 = ctrl = 1
triggerall = Vel Y = 0

[State -1, MKsubway]
type = ChangeState
value = 4320
triggerall = p2name != "motaro"
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = p2stateno = 9010
triggerall = var(30) = 10007
triggerall = p2bodydist X <= 5
triggerall = Numexplod(7878) = 1
trigger1 = statetype = C
trigger1 = ctrl = 1
triggerall = Vel Y = 0

[State -1, tomb]
type = ChangeState
value = 4322
triggerall = p2name != "motaro"
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = p2stateno = 9010
triggerall = var(30) = 10015
triggerall = p2bodydist X <= 10
trigger1 = statetype = C
trigger1 = ctrl = 1
triggerall = Vel Y = 0

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
trigger3 = p2stateno = 245
trigger4 = p2stateno = 420
trigger5 = p2stateno = 410
trigger6 = p2stateno = 20
trigger7 = p2stateno = 107
trigger8 = p2stateno = 131
triggerall = p2name != "shao kahn,"
triggerall = p2name != "kintaro"
triggerall = p2name != "goro"
triggerall = p2name != "motaro"

[State -1, sweepdfs]
type = ChangeState
value = 245
triggerall = Var(50) = 1
triggerall = ctrl = 1
triggerall = 1
triggerall = statetype = S
triggerall = p2bodydist X <= 60
triggerall = roundstate = 2
triggerall = p2stateno != 245
;triggerall = random >= 10 && random < 299 || random >= 200 && random <= 999
trigger1 = p2stateno = 11 
trigger2 = p2stateno = 245
trigger3 = p2stateno = 420
trigger4 = p2stateno = 410
trigger5 = p2stateno = 20
trigger6 = p2stateno = 107
trigger7 = p2stateno = 210
trigger8 = p2stateno = 225
trigger9 = p2stateno = 130
trigger10 = p2stateno = 140
trigger11 = p2stateno = 150
triggerall = p2stateno = 5020
triggerall = p2stateno = 5030
triggerall = p2stateno = 5050

[State -1, uuppercuuuut]
type = ChangeState
value = 430
triggerall = ctrl = 1
triggerall = Var(50) = 1
triggerall = 1
;triggerall = random >= 10 && random < 299 || random >= 200 && random <= 999
trigger1 = p2bodydist X <= 30
trigger1 = p2stateno = 0
trigger2 = p2bodydist X <= 30
trigger2 = p2stateno = 200
trigger3 = p2stateno = 620
trigger3 = p2bodydist X <= 60
trigger5 = p2stateno = 2002
trigger5 = p2name = "johnny cage"
trigger6 = p2stateno = 20
trigger6 = p2bodydist X <= 50
trigger7 = p2stateno = 107
trigger7 = p2bodydist X <= 70
trigger8 = p2stateno = 50
trigger8 = p2bodydist X <= 30
trigger9 = p2stateno = 210
trigger9 = p2bodydist X <= 110
trigger10 = p2stateno = 225
trigger10 = p2bodydist X <= 110
trigger11 = p2stateno = 430
trigger11 = p2bodydist X <= 50
trigger11 = stateno = 131
triggerall = statetype = C
triggerall = p2movetype != H
triggerall = roundstate = 2

[State -1, uuppercut]
type = ChangeState
value = 430
triggerall = ctrl = 1
triggerall = Var(50) = 1
triggerall = 1
;triggerall = random >= 10 && random < 299 || random >= 200 && random <= 999
trigger1 = p2bodydist X <= 30
trigger1 = p2stateno = 0
trigger2 = p2bodydist X <= 30
trigger2 = p2stateno = 200
trigger3 = p2stateno = 620
trigger3 = p2bodydist X <= 60
trigger5 = p2stateno = 2002
trigger5 = p2name = "johnny cage"
trigger6 = p2stateno = 20
trigger6 = p2bodydist X <= 50
trigger7 = p2stateno = 107
trigger7 = p2bodydist X <= 70
trigger8 = p2stateno = 50
trigger8 = p2bodydist X <= 30
trigger9 = p2stateno = 210
trigger9 = p2bodydist X <= 110
trigger10 = p2stateno = 225
trigger10 = p2bodydist X <= 110
trigger11 = p2stateno = 430
trigger11 = p2bodydist X <= 50
trigger11 = stateno = 130
triggerall = statetype = S
triggerall = p2movetype != H
triggerall = roundstate = 2


[State -1, No Jump]
type = ChangeState
value = 40
triggerall = Var(50) = 1
triggerall = random >= 250 && random < 299 || random >= 950 && random <= 999
triggerall = statetype = S
triggerall = ctrl = 1
triggerall = p2life < 1
trigger1 = p2stateno = 9010
triggerall = 1
triggerall = roundstate = 2

[State -1, bllll]
type = ChangeState
value = 131
triggerall = Var(50) = 1
trigger2 = p2bodydist X > 100
trigger2 = p2stateno = 1000
trigger1 = p2Movetype = A
trigger1 = p2BodyDist X < 70
trigger3 = stateno = 5120
trigger3 = p2BodyDist X < 70
triggerall = p2statetype != C
triggerall = ctrl = 1
triggerall = statetype = S
triggerall = roundstate = 2
;triggerall = random >= 10 && random < 299 || random >= 200 && random <= 999

[State -1, blllccl]
type = ChangeState
value = 131
triggerall = Var(50) = 1
trigger2 = p2bodydist X > 100
trigger2 = p2stateno = 1000
trigger1 = p2Movetype = A
trigger1 = p2BodyDist X < 70
trigger3 = stateno = 5120
trigger3 = p2BodyDist X < 70
triggerall = p2statetype != C
triggerall = ctrl = 1
triggerall = statetype = C
triggerall = roundstate = 2
;triggerall = random >= 10 && random < 299 || random >= 200 && random <= 999

[State -1, bl]
type = null
value = 130
triggerall = Var(50) = 1
triggerall = p2stateno = 245
trigger1 = 1

[State -1, AI Jump Kick]
type = ChangeState
value = 620
triggerall = Var(50) = 1
;triggerall = random >= 250 && random < 299 || random >= 950 && random <= 999
triggerall = statetype = A
triggerall = ctrl = 1
triggerall = Vel X != 0 
triggerall = p2life > 5
triggerall = roundstate = 2
trigger1 = p2bodydist X > 10 && p2bodydist X < 230


[State -1, weep]
type = ChangeState
value = 410
triggerall = ctrl = 1
triggerall = Var(50) = 1
trigger1 = p2stateno = [200,209]
trigger2 = p2stateno = [130,135]
trigger3 = p2stateno = 245
triggerall = statetype = S
triggerall = p2bodydist X <= 70
triggerall = 1
triggerall = roundstate = 2
;triggerall = random >= 10 && random < 299 || random >= 200 && random <= 999

[State -1, weep1]
type = ChangeState
value = 400
triggerall = ctrl = 1
triggerall = 1
triggerall = Var(50) = 1
trigger1 = p2stateno = [200,209]
trigger2 = p2stateno = [130,135]
trigger3 = p2stateno = 245
triggerall = statetype = S
triggerall = p2bodydist X <= 70
triggerall = roundstate = 2
;triggerall = random >= 10 && random < 299 || random >= 200 && random <= 999



[State -1,tt]
type = ChangeState
value = 2000
triggerall = Var(50) = 1
triggerall = p2bodydist X >= 110
triggerall = p2bodydist X <= 200
triggerall = p2stateno != 9010
triggerall = p2stateno != 1007
triggerall = ctrl = 1
triggerall = statetype = S
triggerall = Vel Y = 0
trigger1 = p2stateno = 245
trigger2 = p2stateno = 0
trigger3 = p2stateno = [200,220]
trigger4 = p2stateno = 11
triggerall = p2stateno != [1020,1040]

[State -1]
type = ChangeState
value = 1002
triggerall = command = "sp2"
;triggerall = p2stateno != 9010
triggerall = statetype = S
trigger1 = ctrl = 1
;trigger2 = stateno  = 431
triggerall = p2stateno != [1020,1040]
triggerall = command != "run"

[State -1]
type = ChangeState
value = 10033
triggerall = command = "sp3"
;triggerall = p2stateno != 9010
triggerall = statetype = S
trigger1 = ctrl = 1
;trigger2 = stateno  = 431
triggerall = p2stateno != [1020,1040]
triggerall = command != "run"



[State -1,aide]
type = ChangeState
value = 2000
triggerall = command = "sp4"
trigger1 = statetype = S
trigger1 = ctrl = 1
triggerall = p2stateno != [1020,1040]
triggerall = command != "run"


[State -1,aide]
type = ChangeState
value = 10022
triggerall = command = "sp5"
trigger1 = statetype = S
trigger1 = ctrl = 1
triggerall = p2stateno != [1020,1040]
triggerall = command != "run"

[State -1, fireeesweepc]
type = ChangeState
value = 1400
triggerall = ctrl = 1
triggerall = Var(50) = 1
triggerall = 1
trigger1 = p2stateno = [200,230]
trigger2 = p2stateno = [130,135]
triggerall = p2bodydist X <= 90
trigger3 = p2stateno = 0
trigger4 = p2stateno = 20
trigger8 = p2stateno = 11
trigger9 = p2stateno = 410
trigger5 = p2stateno = 430
trigger6 = p2stateno = 420
trigger7 = p2stateno = 1000
triggerall = statetype = S
triggerall = p2stateno != 9010


[State -1,AItt]
type = ChangeState
value = 900
triggerall = Var(50) = 1
triggerall = p2stateno != 9010
triggerall = p2bodydist X >= 20
triggerall = p2bodydist X <= 240
triggerall = p2stateno != 9010
triggerall = p2stateno != 1007
triggerall = ctrl = 1
triggerall = statetype = S
triggerall = Vel Y = 0
trigger1 = p2stateno = 245
trigger2 = p2stateno = 0
trigger3 = p2stateno = [200,220]
trigger6 = p2statetype = A
trigger5 = p2stateno = 11
triggerall = p2stateno != [1020,1040]



[State -1]
type = ChangeState
value = 1400
triggerall = command = "sp6"
trigger1 = statetype = S
trigger1 = ctrl = 1
triggerall = command != "run"

;--[MK Holdback, closeup 


[State -1]
type = ChangeState
value = 10000
triggerall = command = "sp7"
;triggerall = p2stateno != 9010
triggerall = statetype = S
trigger1 = NumProjID(1234) < 1
trigger1 = ctrl = 1
trigger2 = stateno = 431
;trigger2 = time > 25
trigger2 = time > 40
triggerall = command != "run"



[State -1]
type = ChangeState
value = 1300
triggerall = command = "sp9"
triggerall = p2stateno != 5120
;triggerall = p2life >= 2
triggerall = numexplod(7088) < 2
triggerall = numhelper(1301) = 0
triggerall = p2stateno != [1020,1040]
trigger1 = ctrl = 1
triggerall = statetype = S
triggerall = Vel Y = 0
triggerall = command != "run"

[State -1]
type = ChangeState
value = 2002
triggerall = command = "sp8"
triggerall = statetype = S
trigger1 = ctrl = 1
triggerall = command != "run"


[State -1]
type = ChangeState
value = 15003;2000
triggerall = command = "sp10"
;triggerall = p2stateno != 9010
;triggerall = p2life >= 2
;triggerall = p2stateno != [1020,1040]
trigger1 = ctrl = 1
triggerall = statetype = S
triggerall = Vel Y = 0
triggerall = command != "run"


[State -1]
type = ChangeState
value = 4444
triggerall = command = "sp11"
triggerall = NumExplod(89) < 2
triggerall = NumExplod(79) < 2
triggerall = p2stateno != [1020,1040]
trigger1 = ctrl = 1
triggerall = statetype = S
trigger2 = stateno = [200,201]
trigger3 = stateno = [220,221]
triggerall = Var(16) < 5
triggerall = command != "run"

[State -1]
type = ChangeState
value = 11111
triggerall = command = "sp12"
trigger1 = statetype = S
trigger1 = ctrl = 1
triggerall = command != "run"

[State -1]
type = ChangeState
value = 1200
trigger1 = command = "sp13"
trigger1 = ctrl = 1
trigger1 = statetype = S
triggerall = command != "run"


[State -1]
type = ChangeState
value = 900
triggerall = command = "sp14"
trigger1 = statetype = S
trigger1 = ctrl = 1
triggerall = numexplod(900) = 0
triggerall = p2stateno != [1020,1040]
triggerall = command != "run"


[State -1]
type = ChangeState
value = 17777
triggerall = command = "sp15"
;triggerall = p2stateno != 9010
triggerall = statetype = S
trigger1 = ctrl = 1
triggerall = p2stateno != [1020,1040]
triggerall = command != "run"


[State -1]
type = ChangeState
value = 1333
triggerall = numhelper(2001) < 1
triggerall = command = "sp16"
triggerall = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 431
trigger3 = stateno = [200,201]
trigger4 = stateno = [220,221]
triggerall = p2stateno != [1020,1040]
triggerall = command != "run"
triggerall = !((p2stateno = 9010) && (p2bodydist X <= 10))


moves]-----------------------------------------------

[State -1]
type = Changestate
value = 240
triggerall = command = "y"
triggerall = command = "holdback"
trigger1 = statetype = S
triggerall = Vel Y = 0
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Sweep
[State -1]
type = Changestate
value = 245
trigger1 = command = "b"
trigger1 = command = "holdback"
trigger1 = statetype = S
triggerall = Vel Y = 0
trigger1 = ctrl = 1

[State -1, teleport]
type = ChangeState
value = 245
triggerall = ctrl = 1
triggerall = Var(35) = 1
triggerall = time = 1
trigger1 = p2stateno = [200,230]
trigger2 = p2stateno = [130,135]
trigger3 = p2stateno = 430
triggerall = p2bodydist X < 70
triggerall = Vel Y = 0
triggerall = Pos Y = 0
triggerall = statetype != A

;--[Regular moves]----------------------------------------------------------------------
;-----------------------------
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

;COMBO
[State -1, 342]
type = ChangeState
value = 433
triggerall = p2bodydist X <= 3
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = PalNo = 3
trigger1 = stateno = 205
trigger1 = movecontact 
triggerall = Vel Y = 0 
triggerall = p2statetype = S 


[State -1, 2]
type = ChangeState
value = 202
triggerall = p2bodydist X <= 3
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S 
trigger1 = ctrl = 1
trigger2 = stateno = 205
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
value = 240
triggerall = p2bodydist X <= 3
triggerall = command = "y"
triggerall = command = "holdback"
trigger2 = movecontact 
trigger1 = statetype = S 
trigger2 = stateno = 203
trigger1 = ctrl = 1
triggerall = Vel Y = 0 
triggerall = p2statetype = S 


[State -1, 3]
type = ChangeState
value = 204
triggerall = p2bodydist X <= 3
triggerall = command = "x"
;triggerall = command != "holddown"
;trigger2 = movecontact 
trigger1 = statetype = S 
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

;------
[State -1, 2]
type = ChangeState
value = 202
triggerall = p2bodydist X <= 3
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S 
trigger1 = ctrl = 1
trigger2 = stateno = 205
triggerall = Vel Y = 0 
triggerall = p2statetype = S 

[State -1, 4]
type = ChangeState
value = 207
triggerall = p2bodydist X <= 3
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = movecontact
trigger1 = statetype = S 
trigger2 = stateno = 206
trigger1 = ctrl = 1
triggerall = Vel Y = 0 
triggerall = p2statetype = S 


[State -1, 4]
type = ChangeState
value = 208
triggerall = p2bodydist X <= 3
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = movecontact
trigger1 = statetype = S 
trigger2 = stateno = 207
trigger1 = ctrl = 1
triggerall = Vel Y = 0 
triggerall = p2statetype = S 


[State -1, 434]
type = ChangeState
value = 209
triggerall = p2bodydist X <= 3
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = movecontact
trigger1 = statetype = S 
trigger2 = stateno = 208
trigger1 = ctrl = 1
triggerall = Vel Y = 0 
triggerall = p2statetype = S 


;---------------------


AI COMBO


[State -1, 4]
type = ChangeState
value = 206
triggerall = p2bodydist X <= 3
triggerall = Var(50) = 1
trigger1 = statetype = S 
trigger1 = p2stateno != 1021
trigger1 = ctrl = 1
triggerall = Vel Y = 0 
triggerall = roundstate != 3
triggerall = roundstate != 4
triggerall = p2statetype = S 


[State -1, 4]
type = ChangeState
value = 207
triggerall = p2bodydist X <= 3
triggerall = Var(50) = 1
triggerall = movecontact
trigger1 = statetype = S 
trigger2 = stateno = 206
trigger1 = ctrl = 1
triggerall = Vel Y = 0 
triggerall = roundstate != 3
triggerall = roundstate != 4
triggerall = p2statetype = S 


[State -1, 4]
type = ChangeState
value = 208
triggerall = p2bodydist X <= 3
triggerall = Var(50) = 1
triggerall = movecontact
trigger1 = statetype = S 
trigger2 = stateno = 207
trigger1 = ctrl = 1
triggerall = Vel Y = 0 
triggerall = roundstate != 3
triggerall = roundstate != 4
triggerall = p2statetype = S 


[State -1, 434]
type = ChangeState
value = 209
triggerall = p2bodydist X <= 3
triggerall = Var(50) = 1
triggerall = movecontact
trigger1 = statetype = S 
trigger2 = stateno = 208
trigger1 = ctrl = 1
triggerall = Vel Y = 0 
triggerall = roundstate != 3
triggerall = roundstate != 4
triggerall = p2statetype = S 


[State -1, 3]
type = ChangeState
value = 204
triggerall = p2bodydist X <= 3
triggerall = Var(50) = 1
;trigger2 = movecontact 
trigger1 = p2stateno = 1021
trigger1 = statetype = S 
trigger1 = ctrl = 1
triggerall = Vel Y = 0 
triggerall = roundstate != 3
triggerall = roundstate != 4
triggerall = p2statetype = S 


[State -1, 4]
type = ChangeState
value = 205
triggerall = Var(50) = 1
triggerall = p2bodydist X <= 3
trigger2 = movecontact 
trigger1 = statetype = S 
trigger2 = stateno = 204
trigger1 = ctrl = 1
triggerall = Vel Y = 0 
triggerall = roundstate != 3
triggerall = roundstate != 4
triggerall = p2statetype = S 

[State -1, 2]
type = ChangeState
value = 202
triggerall = p2bodydist X <= 3
triggerall = Var(50) = 1
trigger1 = statetype = S 
trigger1 = ctrl = 1
trigger2 = movecontact 
trigger2 = stateno = 205
triggerall = Vel Y = 0 
triggerall = roundstate != 3
triggerall = roundstate != 4
triggerall = p2statetype = S 


[State -1, 3]
type = ChangeState
value = 203
triggerall = p2bodydist X <= 3
triggerall = Var(50) = 1
trigger2 = movecontact 
trigger1 = statetype = S 
trigger2 = stateno = 202
trigger1 = ctrl = 1
triggerall = Vel Y = 0 
triggerall = roundstate != 3
triggerall = roundstate != 4
triggerall = p2statetype = S 


[State -1, 3]
type = ChangeState
value = 240
triggerall = p2bodydist X <= 3
triggerall = Var(50) = 1
trigger2 = movecontact 
trigger1 = statetype = S 
trigger2 = stateno = 203
trigger1 = ctrl = 1
triggerall = Vel Y = 0 
triggerall = roundstate != 3
triggerall = roundstate != 4






;---------------------

[State -1,AI]
type = ChangeState
value = 1333
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

[State -1, 2]
type = ChangeState
value = 202
triggerall = p2bodydist X <= 3
triggerall = Var(50) = 1
trigger1 = statetype = S 
trigger1 = ctrl = 1
trigger2 = movecontact 
trigger2 = stateno = 205
triggerall = Vel Y = 0 
triggerall = roundstate != 3
triggerall = roundstate != 4
triggerall = p2statetype = S 


;LP
[State -1, Stand SPunch1]
type = ChangeState
value = 220
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = Vel Y = 0
trigger1 = statetype = S
trigger1 = ctrl

;HP
[State -1, Stand LPunch1]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = Vel Y = 0
trigger1 = statetype = S
trigger1 = ctrl

;High Kick
[State -1]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = Vel Y = 0
trigger1 = statetype = S
trigger1 = ctrl = 1

;Low Kick
[State -1]
type = ChangeState
value = 225
triggerall = command = "b"
triggerall = command != "holddown"
 triggerall = Vel Y = 0
trigger1 = statetype = S
trigger1 = ctrl = 1

;-----------------------------------

[State -1, MKUppa]
type = ChangeState
value = 430
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
triggerall = Vel Y = 0


[State -1, Duck LK]
type = ChangeState
value = 400
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
triggerall = Vel Y = 0

[State -1, Duck HK]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
triggerall = Vel Y = 0

[State -1, Duck LP]
type = ChangeState
value = 420
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
triggerall = Vel Y = 0

;---[Air Moves]------------------------------------
;Jump Kick
[State -1, NKick]
type = ChangeState
value = 600
triggerall = statetype = A
triggerall = ctrl = 1
triggerall = Vel X = 0 
trigger1 = command = "y"
trigger2 = command = "b"


;Jump Punch
[State -1, Punch]
type = ChangeState
value = 610
triggerall = statetype = A
triggerall = ctrl = 1
trigger1 = command = "a"
trigger2 = command = "x"


;Jump Side kick
[State -1, SideKick]
type = ChangeState
value = 620
triggerall = statetype = A
triggerall = ctrl = 1
triggerall = Vel X != 0 
trigger1 = command = "y"
trigger2 = command = "b"








[State -1,fatal]
type = ChangeState
value = 3000
triggerall = p2bodydist X < 15
triggerall = p2name != "MOLOCH,"
triggerall = p2name != "kmotaro"
triggerall = p2name != "MOLOCH"
triggerall = p2name != "motaro"
triggerall = command = "fatal1"
triggerall = p2stateno = 9010
trigger1 = statetype != A
trigger1 = ctrl = 1
triggerall = command != "run"

[State -1,fatal]
type = ChangeState
value = 3100
triggerall = p2bodydist X < 160
triggerall = p2bodydist X > 100
triggerall = command = "fatal1"
triggerall = p2stateno = 9010
triggerall = p2name != "shao kahn,"
triggerall = p2name != "kintaro"
triggerall = p2name != "goro"
triggerall = p2name != "motaro"
trigger1 = statetype = S
trigger1 = ctrl = 1
triggerall = command != "run"
