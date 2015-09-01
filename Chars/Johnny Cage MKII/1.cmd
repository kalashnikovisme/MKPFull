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
command = D,B,x
time = 20

[Command]
name = "sp3"
command = B,D,B,x
time = 35

[Command]
name = "sp4"
command = B,F,b
time = 20

[Command]
name = "sp5"
command = /a,b
time = 25

[Command]
name = "sp5"
command = /b,a
time = 25

[Command]
name = "sp6"
command = B,F,a
time = 25

[Command]
name = "sp7"
command =
time = 1

;-[Finishers]----------------------------------------------------

[Command]
name = "Brutality"
command = F,F,x
time = 35

[Command]
name = "fatal"
command = F,F,F,F
time = 35

[Command]
name = "nutcrack"
command = D,D,D,D
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

;[State -1,iafatal]
;type = ChangeState
;value = 3000
;triggerall = p2bodydist X < 15
;trigger1 = var(50) = 1
;;trigger1 = random%1 = 1
;trigger1 = stateno != [3000,3999]
;trigger1 = p2stateno = 9010
;triggerall = statetype = S
;trigger1 = ctrl = 1

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


[State -1, 90932]
type = ChangeState
value = 24
triggerall = p2bodydist X <= 8
triggerall = command = "a"
trigger1 = ctrl = 1
triggerall = command != "sp5"
triggerall = enemynear ,command != "holdback"
triggerall = p2statetype != A
triggerall = statetype = S 
triggerall = p2name != "shao kahn,"
triggerall = p2name != "kintaro"
triggerall = p2name != "goro"
triggerall = p2name != "motaro"

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
value = 1230
triggerall = command = "sp6"
;triggerall = p2stateno != 9010
triggerall = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = [200,201]
trigger3 = stateno = [220,221]
triggerall = p2stateno != [1020,1040]
triggerall = command != "run"

[State -1]
type = ChangeState
value = 2100
triggerall = p2bodydist X <= 10
trigger1 = command = "Brutality"
triggerall = statetype = S
trigger1 = ctrl = 1
triggerall = p2stateno = 9010
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
triggerall = p2name != "motaro"
triggerall = var(30) = 10000
triggerall = p2bodydist X <= 5
trigger1 = statetype = C
trigger1 = ctrl = 1
triggerall = Vel Y = 0

[State -1, MKBELLPIT]
type = ChangeState
value = 4302
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = p2stateno = 9010
triggerall = var(30) = 10001
triggerall = p2name != "motaro"
triggerall = p2bodydist X <= 5
trigger1 = statetype = C
trigger1 = ctrl = 1
triggerall = Vel Y = 0

[State -1, MKPIT3]
type = ChangeState
value = 4304
triggerall = command = "x"
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
triggerall = p2name != "motaro"
triggerall = p2stateno = 9010
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
triggerall = p2name != "motaro"
triggerall = command = "x"
triggerall = command = "holddown"
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
triggerall = var(30) = 10008
triggerall = p2name != "motaro"
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
triggerall = p2name != "motaro"
triggerall = command = "holddown"
triggerall = p2stateno = 9010
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
triggerall = p2name != "motaro"
triggerall = p2bodydist X <= 5
trigger1 = statetype = C
trigger1 = ctrl = 1
triggerall = Vel Y = 0

[State -1, pit2]
type = ChangeState
value = 4318
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = p2stateno = 9010
triggerall = p2name != "motaro"
triggerall = var(30) = 10014
triggerall = p2bodydist X <= 10
trigger1 = statetype = C
trigger1 = ctrl = 1
triggerall = Vel Y = 0

[State -1, MKsubway]
type = ChangeState
value = 4320
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = p2stateno = 9010
triggerall = p2name != "motaro"
triggerall = var(30) = 10007
triggerall = p2bodydist X <= 5
triggerall = Numexplod(7878) = 1
trigger1 = statetype = C
trigger1 = ctrl = 1
triggerall = Vel Y = 0

[State -1, tomb]
type = ChangeState
value = 4322
triggerall = command = "x"
triggerall = p2name != "motaro"
triggerall = command = "holddown"
triggerall = p2stateno = 9010
triggerall = var(30) = 10015
triggerall = p2bodydist X <= 10
trigger1 = statetype = C
trigger1 = ctrl = 1
triggerall = Vel Y = 0

;Sweep
[State -1]
type = Changestate
value = 245
trigger1 = command = "b"
trigger1 = command = "holdback"
trigger1 = statetype = S
trigger1 = ctrl = 1

[State -1]
type = Changestate
value = 240
triggerall = command = "y"
triggerall = command = "holdback"
trigger1 = statetype = S
trigger1 = ctrl = 1

[State -1]
type = ChangeState
value = 215
trigger1 = command = "sp5"
trigger1 = p2stateno != 9010
trigger1 = p2stateno != 216
trigger1 = ctrl = 1
trigger1 = statetype = S
trigger1 = Vel Y = 0
triggerall = p2name != "shao kahn,"
triggerall = p2name != "motaro"
triggerall = p2name != "kitana"
triggerall = p2name != "sindel"
triggerall = p2name != "mileena"
triggerall = p2name != "sonya"
triggerall = p2name != "sheeva"
triggerall = p2name != "jade"
triggerall = command != "run"

[State -1]
type = ChangeState
value = 217
trigger1 = command = "sp5"
trigger1 = p2stateno != 9010
trigger1 = ctrl = 1
trigger1 = statetype = S
trigger1 = Vel Y = 0
trigger2 = p2name = "shao kahn,"
trigger2 = p2name = "kitana"
trigger2 = p2name = "sindel"
trigger2 = p2name = "mileena"
trigger2 = p2name = "sonya"
trigger2 = p2name = "sheeva"
trigger2 = p2name = "jade"
trigger2 = p2stateno = 216
triggerall = command != "run"

[State -1]
type = ChangeState
value = 1010
triggerall = command = "sp2"
triggerall = command != "sp3"
;triggerall = p2stateno != 9010
triggerall = NumExplod(70899) != 1
triggerall = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = [200,201]
trigger3 = stateno = [220,221]
triggerall = p2stateno != [1020,1040]
triggerall = command != "run"

[State -1]
type = ChangeState
value = 2000
triggerall = command = "sp4"
;triggerall = p2stateno != 9010
;triggerall = p2life >= 2
;triggerall = p2stateno != [1020,1040]
trigger1 = ctrl = 1
triggerall = statetype = S
triggerall = Vel Y = 0


; bomba lejos
[State -1]
type = ChangeState
value = 2002
triggerall = command = "sp3"
triggerall = statetype = S
trigger1 = ctrl = 1
triggerall = command != "run"

[State -1,fatal]
type = ChangeState
value = 3000
triggerall = p2bodydist X < 15
triggerall = command = "fatal"
triggerall = p2stateno = 9010
trigger1 = statetype = S
trigger1 = ctrl = 1
triggerall = command != "run"

[State -1,fatal]
type = ChangeState
value = 3100
triggerall = p2bodydist X < 15
triggerall = command = "nutcrack"
triggerall = p2stateno = 9010
trigger2 = p2name != "goro"
trigger2 = p2name != "shao kahn,"
trigger2 = p2name != "kitana"
trigger2 = p2name != "sindel"
trigger2 = p2name != "mileena"
trigger2 = p2name != "sonya"
trigger2 = p2name != "sheeva"
trigger2 = p2name != "jade"
trigger1 = statetype = S
trigger1 = ctrl = 1
triggerall = command != "run"


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

[State -1, MKU]
type = ChangeState
value = 430
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
triggerall = Vel Y = 0


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

;--Air-Combo---;

[State -1, 3]
type = ChangeState
value = 640
triggerall = p2bodydist X <= 23
triggerall = command = "y"
trigger2 = movecontact
triggerall = statetype = A
trigger2 = stateno = 600
trigger3 = movecontact
trigger3 = stateno = 610
trigger1 = ctrl = 1
trigger1 = Vel X = 0

[State -1, 3]
type = ChangeState
value = 630
triggerall = p2bodydist X <= 23
triggerall = command = "x"
triggerall = movecontact
trigger1 = statetype = A
trigger2 = stateno = 640
trigger3 = stateno = 650
trigger1 = ctrl = 1
triggerall = Vel X = 0

[State -1, 3]
type = ChangeState
value = 650
triggerall = p2bodydist X <= 23
triggerall = command = "y"
trigger2 = movecontact
trigger1 = statetype = A
trigger2 = stateno = 640
trigger1 = ctrl = 1
triggerall = Vel X = 0

[State -1, 3]
type = ChangeState
value = 651
triggerall = p2bodydist X <= 23
triggerall = command = "y"
trigger2 = movecontact
trigger1 = statetype = A
trigger2 = stateno = 650
trigger1 = ctrl = 1
triggerall = Vel X = 0


;----COMBO---------
[State -1, 2]
type = ChangeState
value = 207
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
value = 203
triggerall = p2bodydist X <= 3
triggerall = command = "y"
trigger1 = statetype = S
trigger1 = ctrl = 1
triggerall = Vel Y = 0
trigger2 = stateno = 207
trigger2 = movecontact
triggerall = p2statetype = S

[State -1, 434]
type = ChangeState
value = 202
triggerall = p2bodydist X <= 3
triggerall = command = "y"
triggerall = command = "holddown"
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
trigger2 = movecontact
trigger1 = statetype = S
trigger2 = stateno = 203
trigger1 = ctrl = 1
triggerall = Vel Y = 0
triggerall = p2statetype = S

[State -1, 4]
type = ChangeState
value = 205
triggerall = p2bodydist X <= 3
triggerall = command = "x"
trigger2 = movecontact
trigger1 = statetype = S
trigger2 = stateno = 204
trigger1 = ctrl = 1
triggerall = Vel Y = 0
triggerall = p2statetype = S

[State -1, 434]
type = ChangeState
value = 202
triggerall = p2bodydist X <= 3
triggerall = command = "x"
trigger2 = movecontact
trigger1 = statetype = S
trigger2 = stateno = 205
trigger1 = ctrl = 1
triggerall = Vel Y = 0
triggerall = p2statetype = S

[State -1, 434]
type = ChangeState
value = 2000
triggerall = p2bodydist X <= 3
triggerall = command = "b"
triggerall = command = "holdfwd"
trigger2 = movecontact
trigger1 = statetype = S
trigger2 = stateno = 203
trigger1 = ctrl = 1
triggerall = Vel Y = 0
triggerall = p2statetype = S

[State -1, 4]
type = ChangeState
value = 219
triggerall = p2bodydist X <= 3
triggerall = command = "a"
trigger2 = movecontact
trigger1 = statetype = S
trigger2 = stateno = 205
trigger1 = ctrl = 1
triggerall = Vel Y = 0
triggerall = p2statetype = S

[State -1, 4]
type = ChangeState
value = 218
triggerall = p2bodydist X <= 3
triggerall = command = "b"
trigger2 = movecontact
trigger1 = statetype = S
trigger2 = stateno = 219
trigger1 = ctrl = 1
triggerall = Vel Y = 0
triggerall = p2statetype = S

[State -1, 4]
type = ChangeState
value = 209
triggerall = p2bodydist X <= 3
triggerall = command = "y"
trigger2 = movecontact
trigger1 = statetype = S
trigger2 = stateno = 218
trigger1 = ctrl = 1
triggerall = Vel Y = 0
triggerall = p2statetype = S

[State -1, 3]
type = ChangeState
value = 231
triggerall = p2bodydist X <= 3
triggerall = command = "b"
trigger2 = movecontact
trigger1 = statetype = S
trigger2 = stateno = 207
trigger1 = ctrl = 1
triggerall = Vel Y = 0
triggerall = p2statetype = S

[State -1, 3]
type = ChangeState
value = 232
triggerall = p2bodydist X <= 3
triggerall = command = "y"
trigger2 = movecontact
trigger1 = statetype = S
trigger2 = stateno = 231
trigger1 = ctrl = 1
triggerall = Vel Y = 0
triggerall = p2statetype = S

[State -1, 3]
type = ChangeState
value = 233
triggerall = p2bodydist X <= 3
triggerall = command = "b"
trigger2 = movecontact
trigger1 = statetype = S
trigger2 = stateno = 232
trigger1 = ctrl = 1
triggerall = Vel Y = 0
triggerall = p2statetype = S

[State -1, 3]
type = ChangeState
value = 234
triggerall = p2bodydist X <= 3
triggerall = command = "b"
trigger2 = movecontact
trigger1 = statetype = S
trigger2 = stateno = 233
trigger1 = ctrl = 1
triggerall = Vel Y = 0
triggerall = p2statetype = S
;---------------------

AI COMBO

[State -1, 2]
type = ChangeState
value = 207
triggerall = (p2bodydist X <= 3) && (statetype = S) && (Vel Y = 0) &&  (var(50) = 1)
triggerall = (p2statetype = S) || ((p2statetype = C)&&(var(55)=0))
trigger1 = ctrl = 1
triggerall = roundstate != 3
triggerall = roundstate != 4

[State -1, 3]
type = ChangeState
value = 203
triggerall = (p2bodydist X <= 3) && (statetype = S) && (Vel Y = 0) &&  (var(50) = 1)
triggerall = (p2statetype = S) || ((p2statetype = C)&&(var(55)=0))
trigger1 = ctrl = 1
trigger2 = stateno = 207
trigger2 = movecontact
triggerall = roundstate != 3
triggerall = roundstate != 4

[State -1, 3]
type = ChangeState
value = 204
triggerall = (p2bodydist X <= 6) && (statetype = S) && (Vel Y = 0) &&  (var(50) = 1)
triggerall = (p2statetype = S) || ((p2statetype = C)&&(var(55)=0))
trigger1 = ctrl = 1
trigger2 = stateno = 203
trigger2 = movecontact
triggerall = roundstate != 3
triggerall = roundstate != 4

[State -1, 3]
type = ChangeState
value = 205
triggerall = (p2bodydist X <= 3) && (statetype = S) && (Vel Y = 0) &&  (var(50) = 1)
triggerall = (p2statetype = S) || ((p2statetype = C)&&(var(55)=0))
trigger1 = ctrl = 1
trigger2 = stateno = 204
trigger2 = movecontact
triggerall = roundstate != 3
triggerall = roundstate != 4

[State -1, 4]
type = ChangeState
value = 202
triggerall = (p2bodydist X <= 3) && (statetype = S) && (Vel Y = 0) &&  (var(50) = 1)
triggerall = (p2statetype = S) || ((p2statetype = C)&&(var(55)=0))
trigger1 = ctrl = 1
trigger2 = stateno = 205
trigger2 = movecontact
triggerall = roundstate != 3
triggerall = roundstate != 4

[State -1, 4]
type = ChangeState
value = 202
triggerall = (p2bodydist X <= 3) && (statetype = S) && (Vel Y = 0) &&  (var(50) = 1)
triggerall = (p2statetype = S) || ((p2statetype = C)&&(var(55)=0))
trigger1 = ctrl = 1
trigger2 = stateno = 203
trigger2 = movecontact
triggerall = roundstate != 3
triggerall = roundstate != 4

[State -1, 4]
type = ChangeState
value = 219
triggerall = (p2bodydist X <= 3) && (statetype = S) && (Vel Y = 0) &&  (var(50) = 1)
triggerall = (p2statetype = S) || ((p2statetype = C)&&(var(55)=0))
trigger1 = ctrl = 1
trigger2 = stateno = 205
trigger2 = movecontact
triggerall = roundstate != 3
triggerall = roundstate != 4

[State -1, 4]
type = ChangeState
value = 218
triggerall = (p2bodydist X <= 3) && (statetype = S) && (Vel Y = 0) &&  (var(50) = 1)
triggerall = (p2statetype = S) || ((p2statetype = C)&&(var(55)=0))
trigger1 = ctrl = 1
trigger2 = stateno = 219
trigger2 = movecontact
triggerall = roundstate != 3
triggerall = roundstate != 4

[State -1, 4]
type = ChangeState
value = 209
triggerall = (p2bodydist X <= 3) && (statetype = S) && (Vel Y = 0) &&  (var(50) = 1)
triggerall = (p2statetype = S) || ((p2statetype = C)&&(var(55)=0))
trigger1 = ctrl = 1
trigger2 = stateno = 218
trigger2 = movecontact
triggerall = roundstate != 3
triggerall = roundstate != 4

[State -1, 2]
type = ChangeState
value = 2000
triggerall = (p2bodydist X <= 3) && (statetype = S) && (Vel Y = 0) &&  (var(50) = 1)
triggerall = (p2statetype = S) || ((p2statetype = C)&&(var(55)=0))
trigger1 = ctrl = 1
trigger2 = stateno = 203
trigger2 = movecontact
triggerall = roundstate != 3
triggerall = roundstate != 4

[State -1, 3]
type = ChangeState
value = 231
triggerall = (p2bodydist X <= 3) && (statetype = S) && (Vel Y = 0) &&  (var(50) = 1)
triggerall = (p2statetype = S) || ((p2statetype = C)&&(var(55)=0))
trigger1 = ctrl = 1
trigger2 = stateno = 207
trigger2 = movecontact
triggerall = roundstate != 3
triggerall = roundstate != 4

[State -1, 3]
type = ChangeState
value = 232
triggerall = (p2bodydist X <= 3) && (statetype = S) && (Vel Y = 0) &&  (var(50) = 1)
triggerall = (p2statetype = S) || ((p2statetype = C)&&(var(55)=0))
trigger1 = ctrl = 1
trigger2 = stateno = 231
trigger2 = movecontact
triggerall = roundstate != 3
triggerall = roundstate != 4

[State -1, 3]
type = ChangeState
value = 233
triggerall = (p2bodydist X <= 3) && (statetype = S) && (Vel Y = 0) &&  (var(50) = 1)
triggerall = (p2statetype = S) || ((p2statetype = C)&&(var(55)=0))
trigger1 = ctrl = 1
trigger2 = stateno = 232
trigger2 = movecontact
triggerall = roundstate != 3
triggerall = roundstate != 4

[State -1, 3]
type = ChangeState
value = 234
triggerall = (p2bodydist X <= 3) && (statetype = S) && (Vel Y = 0) &&  (var(50) = 1)
triggerall = (p2statetype = S) || ((p2statetype = C)&&(var(55)=0))
trigger1 = ctrl = 1
trigger2 = stateno = 233
trigger2 = movecontact
triggerall = roundstate != 3
triggerall = roundstate != 4

;----------------------------
[State -1, THROW]
type = ChangeState
value = 24
triggerall = Var(50)=0
triggerall = (p2bodydist X <= 8)&&(ctrl)&&(p2statetype != A)&&(statetype = S)
triggerall = p2name != "shao kahn"
triggerall = p2name != "kintaro"
triggerall = p2name != "goro"
triggerall = p2name != "motaro"
trigger1 = enemynear ,command != "holdback"
trigger1 = command = "a"

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

;Ai--

[State -1, air moves]  ;600:pat en el lugar  610:piña    620: patada
type = ChangeState
triggerall = (statetype = A) && ctrl && (var(50) = 1) && (roundstate = 2)
trigger1 = (p2bodydist X>20)&&(p2bodydist X < 100);160)
value = 600+10*(vel X != 0)+10*(random%2=0)

[State -1, regular moves];LP=220 HP=200 LK=225 HK= 210
type = ChangeState
triggerall = (Vel Y=0)&&(statetype=S)&&ctrl&&(stateno!=[2000,2999])&&(var(50)=1)&&(p2stateno!=9010)&&(roundstate = 2)
trigger1 = (p2bodydist X < 50)&&((p2statetype = S)||(p2statetype = A)) && (p2stateno=!12001)
trigger2 = p2stateno=24
value = 220*(random%4=0)+200*(random%4=1)+210*(random%4=2)+225*(random%4=3)

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

[State -1, uppercuts]
type = ChangeState
triggerall = ctrl&&(Vel Y = 0)
triggerall = (Var(50) = 1)&&((statetype = C)||(statetype = S))&&(roundstate = 2)
trigger1 = ((p2bodydist X<=30)&&((p2stateno=0)||(p2stateno=20)))&&(p2life>1)
trigger2 = p2bodydist X<=60 && (random%3=1) && (p2statetype = A) && (p2stateno=!12001) && (p2stateno != 9010)
trigger3 = (p2bodydist X < 5)&&(p2stateno=12001)&&(p2statetype = A)&&(random%3=0)
value = 430

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

[State -1];Blok
type = ChangeState
value = 131
triggerall = Var(50) = 1 && p2stateno != 9010 && p2statetype != C && ctrl && ((statetype = S)||(statetype = C))&& (p2stateno != 12001 )&&(roundstate = 2)
trigger1 = (p2Movetype = A) && (p2BodyDist X < 70) && (p2stateno!=[1900,1979])
trigger2 = (p2bodydist X < 70)&&(p2stateno=[600, 629])
trigger3 = (p2bodydist X < 80) && (p2stateno = [1000,1079])
trigger4 = (p2stateno = [1500,1579])&&(!movecontact)
trigger5 = p2stateno = [1000,1999]
