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
command = B,B,F,a
time = 30

[Command]
name = "sp2"
command = F,F,a
time = 20

[Command]
name = "sp3"
command = B,F,x
time = 20

[Command]
name = "sp4"
command = F,F,x
time = 20

[Command]
name = "sp5"
command = D,U
time = 20

[Command]
name = "sp6"
command = D,D,b
time = 20

[Command]
name = "sp7"
command = F,F,b
time = 15

[Command]
name = "sp8"
command = B,B,b
time = 25


;-[Finishers]----------------------------------------------------

[Command]
name = "fatal"
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
command = U,U,U,U
time = 45

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


;--[Special Moves]-----------------------------------------------------------

[State -1]
type = ChangeState
value = 1000
triggerall = command = "sp1"
triggerall = p2stateno != 9010
trigger1 = ctrl = 1
triggerall = statetype = S
triggerall = Vel Y = 0
triggerall = p2stateno != [1020,1040]
triggerall = command != "run"

[State -1]
type = ChangeState
value = 1001
triggerall = command = "sp8"
triggerall = p2stateno != 9010
trigger1 = ctrl = 1
triggerall = statetype = S
triggerall = Vel Y = 0
triggerall = p2stateno != [1020,1040]
triggerall = command != "run"

[State -1]
type = ChangeState
value = 2002
triggerall = command = "sp2"
;triggerall = p2stateno != 9010
;triggerall = p2life >= 2
;triggerall = p2stateno != [1020,1040]
trigger1 = ctrl = 1
triggerall = statetype = S
triggerall = Vel Y = 0
triggerall = command != "run"

[State -1]
type = ChangeState
value = 240
triggerall = command = "sp3"
;triggerall = p2life >= 2
triggerall = p2stateno != 10210
trigger1 = ctrl = 1
triggerall = statetype = S
triggerall = Vel Y = 0
triggerall = command != "run"

[State -1]
type = ChangeState
value = 244
triggerall = command = "sp3"
triggerall = p2stateno = 10210
trigger1 = ctrl = 1
triggerall = statetype = S
triggerall = Vel Y = 0
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
triggerall = command != "run"

[State -1, fatal] ; The Hammer
type = ChangeState
value = 3000
trigger1 = command = "fatal"
triggerall = p2stateno = 9010
triggerall = ctrl = 1
triggerall = command != "run"
triggerall = p2bodydist X > 50
triggerall = p2bodydist X < 110

;correr
;[State -1, RunMk]
;type = ChangeState
;value = 107
;trigger1 = command = "run"
;trigger1 = command = "holdfwd"
;trigger1 = command != "holddown"
;trigger1 = command != "holdup"
;trigger2 = stateno = [200,201] 
;trigger3 = stateno = [220,221] 
;triggerall = power > 0
;triggerall = stateno != 107
;triggerall = statetype = S
;triggerall = ctrl

[State -1,7534588]
type = ChangeState
value = 2002
triggerall = Var(50) = 1
triggerall = p2bodydist X <= 30
trigger1 = p2stateno = 430
trigger2 = p2stateno = 900
trigger3 = p2stateno = 107
trigger4 = p2stateno = 50
trigger5 = p2stateno = 130
trigger6 = p2stateno = 2000
trigger7 = p2stateno = 2001
trigger8 = p2stateno = 225
trigger9 = p2stateno = 221
trigger10 = p2stateno = 9009
trigger11 = p2stateno = 0
triggerall = p2stateno != [5000,5200]
triggerall = ctrl = 1
triggerall = 1
triggerall = statetype = S
triggerall = p2movetype != H
triggerall = p2statetype != C


[State -1,7588]
type = ChangeState
value = 2000
triggerall = Var(50) = 1
triggerall = p2bodydist X >= 40
trigger1 = p2stateno = 430
trigger2 = p2stateno = 9009
trigger3 = p2stateno = 107
trigger4 = p2stateno = 131
trigger5 = p2stateno = 130
trigger6 = p2stateno = 245
trigger7 = p2stateno = 50
trigger8 = p2stateno = 21
trigger9 = p2stateno = 225
trigger10 = p2stateno = 2001
trigger11 = p2stateno = 2000
trigger12 = p2stateno = 900
trigger13 = p2stateno = 0
triggerall = p2stateno != [5000,5200]
triggerall = ctrl = 1
triggerall = statetype = S
triggerall = p2statetype != C
triggerall = p2movetype != H
triggerall = 1

[State -1,75345883]
type = ChangeState
value = 412
triggerall = Var(50) = 1
triggerall = p2bodydist X >= 30
trigger1 = p2stateno = 1000
trigger2 = p2stateno = 1600
trigger3 = p2movetype = A
trigger4 = p2stateno = 11
trigger5 = p2stateno = 430
trigger6 = p2stateno = 240
triggerall = p2stateno != 9010
triggerall = ctrl = 1
triggerall = 1
triggerall = statetype = S


[State -1, 2]
type = ChangeState
value = 24
triggerall = p2bodydist X <= 25
triggerall = Var(50) = 1
trigger1 = p2statetype = C
trigger2 = p2statetype = S
trigger4 = p2stateno = 11
trigger5 = p2stateno = 20
trigger6 = p2stateno = 107
trigger7 = p2stateno = 131
trigger8 = p2stateno = 130
trigger9 = p2stateno = 430
trigger3 = p2name = "johnny cage"
trigger3 = p2stateno = 2001
triggerall = ctrl = 1
triggerall = 1
triggerall = Vel Y = 0 
triggerall = statetype = S


[State -1 , AI]
type = ChangeState
value = 1000
;triggerall = p2stateno != 9010
triggerall = p2bodydist X >= 25
trigger12 = p2stateno = 2000
trigger12 = p2name != "noob saibot"
trigger2 = p2stateno = 1001
trigger3 = p2stateno = 1002
trigger4 = p2stateno = 1003
trigger6 = p2stateno = 0
trigger7 = p2stateno = 200
trigger8 = p2stateno = 20
trigger9 = p2stateno = 50
trigger10 = p2stateno = 107
trigger11 = p2stateno = 430
triggerall = Var(50) = 1
triggerall = statetype = S
triggerall = ctrl = 1
triggerall = 1
trigger1 = p2stateno = 1000
triggerall = p2stateno != [1020,1040]

[State -1, sdupper]
type = ChangeState
value = 430
triggerall = ctrl = 1
triggerall = Var(50) = 1
trigger2 = p2stateno = 41
trigger3 = p2stateno = 42
trigger4 = p2stateno = 20
trigger5 = p2stateno = 107
triggerall = Vel Y = 0
trigger1 = p2statetype = A
triggerall = p2bodydist X < 55
triggerall = statetype = S
triggerall = roundstate = 2

[State -1, upper]
type = ChangeState
value = 212
triggerall = ctrl = 1
triggerall = Var(50) = 1
trigger2 = p2stateno = 41
trigger3 = p2stateno = 42
trigger4 = p2stateno = 20
trigger5 = p2stateno = 107
triggerall = Vel Y = 0
trigger1 = p2statetype = A
triggerall = p2bodydist X < 55
triggerall = statetype = S

[State -1,22]
type = ChangeState
value = 660
triggerall = Var(50) = 1
triggerall = p2bodydist X >= 70
triggerall = Vel Y = 0
trigger1 = p2stateno = 9010
triggerall = ctrl = 1
triggerall = statetype = S

[State -1,454]
type = ChangeState
value = 210
triggerall = Var(50) = 1
triggerall = p2bodydist X <= 65
triggerall = Vel Y = 0
trigger1 = p2statetype = C
trigger2 = p2stateno = 410
trigger3 = p2stateno = 20
trigger4 = p2stateno = 420
trigger5 = p2stateno = 400
trigger6 = p2stateno = 107
trigger7 = p2stateno = 11
trigger8 = p2statetype = C
triggerall = ctrl = 1
triggerall = statetype = S

[State -1,taunt]
type = ChangeState
value = 195
triggerall = p2name != "shao kahn,"
trigger1 = command = "sp6"
triggerall = stateno != 195
trigger1 = statetype != A
trigger1 = ctrl = 1
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
triggerall = command = "holddown"
triggerall = p2stateno = 9010
triggerall = p2name != "motaro"
triggerall = var(30) = 10002
triggerall = p2bodydist X <= 5
trigger1 = statetype = C
trigger1 = ctrl = 1
triggerall = Vel Y = 0

[State -1, MKPrison]
type = ChangeState
value = 4306
triggerall = command = "y"
triggerall = p2stateno = 9010
triggerall = var(30) = 10003
triggerall = p2bodydist X <= 10
triggerall = facing = 1
triggerall = p2name != "motaro"
triggerall = facing != -1
trigger1 = statetype = S
trigger1 = ctrl = 1
triggerall = Vel Y = 0

[State -1, MKBlood]
type = ChangeState
value = 4308
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = p2stateno = 9010
triggerall = p2name != "motaro"
triggerall = var(30) = 10004
triggerall = p2bodydist X <= 5
trigger1 = statetype = C
trigger1 = ctrl = 1
triggerall = Vel Y = 0

[State -1, MKpress]
type = ChangeState
value = 4312
triggerall = command = "y"
triggerall = p2stateno = 9010
triggerall = FrontEdgeDist < 200
triggerall = var(30) = 10008
triggerall = p2bodydist X <= 10
triggerall = p2name != "motaro"
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
triggerall = var(30) = 10012
triggerall = p2bodydist X <= 5
triggerall = p2name != "motaro"
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
triggerall = var(30) = 10014
triggerall = p2bodydist X <= 10
trigger1 = statetype = C
triggerall = p2name != "motaro"
trigger1 = ctrl = 1
triggerall = Vel Y = 0

[State -1, MKsubway]
type = ChangeState
value = 4320
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = p2name != "motaro"
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
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = p2stateno = 9010
triggerall = p2name != "motaro"
triggerall = var(30) = 10015
triggerall = p2bodydist X <= 10
trigger1 = statetype = C
trigger1 = ctrl = 1
triggerall = Vel Y = 0

;---------------------------------------------------------------------------
;--[Regular moves]----------------------------------------------------------------------
;-----------------------------
;LP
[State -1, Stand SPunch1]
type = ChangeState
value = 200
triggerall = command = "a"
;triggerall = stateno != [222,9999]
;triggerall = stateno != [22,210]
triggerall = Vel Y = 0
;trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 221 && time >= 10

;High Kick
[State -1]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = p2bodydist X >= 3
triggerall = Vel Y = 0
;trigger1 = statetype = S
trigger1 = ctrl = 1

;Low Kick
[State -1]
type = ChangeState
value = 210
triggerall = command = "b"
 triggerall = Vel Y = 0
;trigger1 = statetype = S
trigger1 = ctrl = 1

[State -1]
type = ChangeState
value = 412
triggerall = command = "sp5"
triggerall = Vel Y = 0
;trigger1 = statetype = S
trigger1 = ctrl = 1
triggerall = command != "run"

;-----------------------------------

;COMBO
[State -1, 2]
type = ChangeState
value = 202
triggerall = p2bodydist X <= 3
trigger1 = command = "y"
trigger2 = command = "b"
triggerall = statetype = S 
triggerall = ctrl = 1
;trigger2 = stateno = 205
triggerall = Vel Y = 0 

[State -1, 3]
type = ChangeState
value = 203
triggerall = p2bodydist X <= 5
triggerall = command = "y"
;triggerall = command != "holddown"
trigger2 = movecontact 
;trigger1 = statetype = S 
trigger2 = stateno = 202
trigger1 = ctrl = 1
triggerall = Vel Y = 0 

[State -1, 3]
type = ChangeState
value = 207
triggerall = p2bodydist X <= 3
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = ctrl = 1
triggerall = Vel Y = 0 
trigger2 = stateno = 203 
trigger2 = movecontact 

[State -1, 3]
type = ChangeState
value = 204
triggerall = p2bodydist X <= 3
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = movecontact 
;trigger1 = statetype = S
trigger1 = stateno = 207 
;trigger1 = ctrl = 1
triggerall = Vel Y = 0 

[State -1, 4]
type = ChangeState
value = 430
triggerall = p2bodydist X <= 3
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = movecontact 
;trigger1 = statetype = S 
trigger1 = stateno = 204
;trigger1 = ctrl = 1
triggerall = Vel Y = 0 

;------



[State -1, 434]
type = ChangeState
value = 430
;triggerall = p2bodydist X >= 3
triggerall = command = "x"
;triggerall = command = "holddown"
;trigger1 = statetype = S 
trigger1 = ctrl = 1
triggerall = Vel Y = 0 

[State -1, 24]
type = ChangeState
value = 24
triggerall = command = "sp7"
;trigger1 = statetype = S 
trigger1 = ctrl = 1
triggerall = Vel Y = 0 
triggerall = command != "run"

;---------------------


AI COMBO

[State -1, 3]
type = ChangeState
value = 207
triggerall = p2bodydist X <= 3
triggerall = Var(35) = 1
trigger1 = statetype = S
trigger1 = ctrl = 1
triggerall = Vel Y = 0 
trigger2 = stateno = 203 
trigger2 = movecontact 
triggerall = roundstate != 3
triggerall = roundstate != 4


[State -1, 3]
type = ChangeState
value = 204
triggerall = p2bodydist X <= 3
triggerall = Var(35) = 1
trigger1 = movecontact 
trigger1 = statetype = S
trigger1 = stateno = 207 
;trigger1 = ctrl = 1
triggerall = Vel Y = 0 
triggerall = roundstate != 3
triggerall = roundstate != 4


[State -1, 4]
type = ChangeState
value = 430
triggerall = p2bodydist X <= 3
triggerall = Var(35) = 1
trigger1 = movecontact 
;trigger1 = statetype = S 
trigger1 = stateno = 204
;trigger1 = ctrl = 1
triggerall = Vel Y = 0 
triggerall = roundstate != 3
triggerall = roundstate != 4

;------


[State -1, AI No Jump]
type = null
triggerall = Var(35) = 1
trigger1 = p2bodydist X >= 100
triggerall = 1
value = 130

[State -1, AI No bl]
type = null
triggerall = Var(35) = 1
triggerall = 1
trigger1 =  life <= 10
trigger2 = roundstate = 2
value = 40

[State -1, AI ctrl]
type = Ctrlset
triggerall = Var(35) = 1
trigger1 = stateno = 9010
value = 0

[State -1, AI asasaNo bl]
type = null
trigger1 =  roundstate = 2
value = 11
