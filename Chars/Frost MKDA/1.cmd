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
command = D,B,a
time = 30

[Command]
name = "sp2"
command = D,B,x
time = 30

[Command]
name = "sp3"
command = D,F,b
time = 30

[Command]
name = "sp4"
command = D,B,b
time = 30

[Command]
name = "sp5"
command = 
time = 1

[Command]
name = "sp6"
command = 
time = 1

[Command]
name = "sp7"
command = 
time = 1

;-[Finishers]----------------------------------------------------

[Command]
name = "fatal"
command = 
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


; Stand Block
[State -1, Block]
type = ChangeState
value = 120
triggerall = command = "blok"
triggerall = ctrl
trigger1 = statetype = S
trigger2 = statetype = C
triggerall = stateno != [120,160]
triggerall = Var(50) != 1

;---------------------------------------------------------------------------
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

;---------------------------------------------------------
;--[Special Moves]----------------------------------------
;---------------------------------------------------------
[State -1,mercy]
type = ChangeState
value = 3997
trigger1 = ctrl = 1
triggerall = RoundNo >= 3
triggerall = numexplod(3800) = 0
triggerall = p2stateno = 9010
triggerall = command = "mercy"
triggerall = p2bodydist X >= 100
;---------------------------------------------------------
; Ground Freeze
;---------------------------------------------------------

[State -1, Ground Freeze]
type = ChangeState
value = 1000
triggerall = command = "sp1"
triggerall = p2stateno != 5120
;triggerall = p2life >= 2
triggerall = numexplod(7088) < 2
triggerall = numhelper(1301) = 0
triggerall = p2stateno != [1020,1040]
trigger1 = ctrl = 1
triggerall = statetype = S
triggerall = Vel Y = 0
triggerall = command != "run"

;---------------------------------------------------------
; Frosty Slide
;---------------------------------------------------------

[State -1, Frosty Slide]
type = ChangeState
value = 45100
triggerall = command = "sp3"
trigger1 = statetype = S
trigger2 = statetype = C
triggerall = ctrl = 1
triggerall = command != "run"

;---------------------------------------------------------
; Ice Puddle
;---------------------------------------------------------

[State -1, Ice Puddle]
type = Changestate
value = 1300
trigger1 = command = "sp2"
trigger1 = statetype = S
trigger1 = ctrl
triggerall = numhelper(1301) = 0
triggerall = p2stateno != 12001
triggerall = p2stateno != 1303 || p2stateno != 1705 || p2stateno != 1805
triggerall = p2stateno != [1020,1040]
triggerall = command != "run"

;---------------------------------------------------------
; Teleporting Uppercut
;---------------------------------------------------------

[State -1, Teleporting Uppercut]
type = ChangeState
value = 4669
triggerall = command = "sp4"
triggerall = NumExplod(89) < 2
triggerall = NumExplod(79) < 2
triggerall = p2stateno != [1020,1040]
trigger1 = ctrl = 1
triggerall = statetype = S
trigger2 = stateno = [200,201]
trigger3 = stateno = [220,221]
triggerall = Var(16) < 5
triggerall = command != "run"

;---------------------------------------------------------
; AIIIIIIIIII
;---------------------------------------------------------

[State -1, thhep]
type = ChangeState
value = 24
triggerall = Var(50) = 1
triggerall = ctrl = 1
trigger1 = 1
triggerall = statetype = S
triggerall = p2bodydist X <= 30
triggerall = roundstate = 2
;triggerall = random >= 10 && random < 299 || random >= 200 && random <= 999
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
trigger10 = p2name = "raiden"
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


[State -1, uuppercuuuut]
type = ChangeState
value = 430
triggerall = ctrl = 1
triggerall = Var(50) = 1
triggerall = 1
triggerall = random >= 10 && random < 299 || random >= 200 && random <= 999
trigger1 = p2bodydist X <= 30
trigger1 = p2stateno = 21
trigger2 = p2bodydist X <= 20
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
triggerall = random >= 10 && random < 299 || random >= 200 && random <= 999
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
triggerall = p2name != "motaro"
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
triggerall = command = "holdback"
triggerall = p2stateno = 9010
triggerall = var(30) = 10003
triggerall = p2name != "motaro"
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
triggerall = p2name != "motaro"
triggerall = p2stateno = 9010
triggerall = var(30) = 10013
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
triggerall = p2name != "motaro"
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
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = p2stateno = 9010
triggerall = p2name != "motaro"
triggerall = var(30) = 10015
triggerall = p2bodydist X <= 10
trigger1 = statetype = C
trigger1 = ctrl = 1
triggerall = Vel Y = 0

;--[MK Holdback, closeup moves]-----------------------------------------------
;Roundhouse - Scorpion
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
;trigger2 = stateno = 205
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


[State -1, 3]
type = ChangeState
value = 207
triggerall = p2bodydist X <= 3
triggerall = command = "x"
trigger1 = statetype = S
trigger1 = ctrl = 1
triggerall = Vel Y = 0 
trigger2 = stateno = 203 
trigger2 = movecontact 
triggerall = p2statetype = S 


[State -1, 3]
type = ChangeState
value = 204
triggerall = p2bodydist X <= 3
triggerall = command = "x"
;triggerall = command != "holddown"
trigger1 = movecontact 
trigger1 = statetype = S
trigger1 = stateno = 207 
;trigger1 = ctrl = 1
triggerall = Vel Y = 0 
triggerall = p2statetype = S 


[State -1, 4]
type = ChangeState
value = 205
triggerall = p2bodydist X <= 3
triggerall = command = "x"
;triggerall = command != "holddown"
trigger1 = movecontact 
;trigger1 = statetype = S 
trigger1 = stateno = 204
;trigger1 = ctrl = 1
triggerall = Vel Y = 0 
triggerall = p2statetype = S 

;------


[State -1, 434]
type = ChangeState
value = 209
triggerall = p2bodydist X <= 3
triggerall = command = "x"
;triggerall = command != "holddown"
triggerall = movecontact
trigger1 = statetype = S 
trigger1 = stateno = 205
;trigger1 = ctrl = 1
triggerall = Vel Y = 0 
triggerall = p2statetype = S 


;---------------------


AI COMBO


[State -1, 3]
type = ChangeState
value = 207
triggerall = p2bodydist X <= 3
triggerall = Var(50) = 1
trigger1 = statetype = S
trigger1 = ctrl = 1
triggerall = Vel Y = 0 
trigger2 = stateno = 203 
trigger2 = movecontact 
triggerall = roundstate != 3
triggerall = roundstate != 4
triggerall = p2statetype = S 


[State -1, 3]
type = ChangeState
value = 204
triggerall = p2bodydist X <= 3
triggerall = Var(50) = 1
trigger1 = movecontact 
trigger1 = statetype = S
trigger1 = stateno = 207 
;trigger1 = ctrl = 1
triggerall = Vel Y = 0 
triggerall = roundstate != 3
triggerall = roundstate != 4
triggerall = p2statetype = S 


[State -1, 4]
type = ChangeState
value = 205
triggerall = p2bodydist X <= 3
triggerall = Var(50) = 1
trigger1 = movecontact 
;trigger1 = statetype = S 
trigger1 = stateno = 204
;trigger1 = ctrl = 1
triggerall = Vel Y = 0 
triggerall = roundstate != 3
triggerall = roundstate != 4
triggerall = p2statetype = S 

;------

[State -1, 434]
type = ChangeState
value = 209
triggerall = p2bodydist X <= 3
triggerall = Var(50) = 1
triggerall = movecontact
trigger1 = statetype = S 
trigger1 = stateno = 205
;trigger1 = ctrl = 1
triggerall = Vel Y = 0 
triggerall = roundstate != 3
triggerall = roundstate != 4
triggerall = p2statetype = S 

;-----------------------------
;----------------------------
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

[State -1, MKU]
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


;--------------------------------------------------------------------------
; Stage Interaction helper. _SyN_RotD stage only!
;--------------------------------------------------------------------------

[State -1, Helper]
type = helper
trigger1 = Floor(Pos Z = 6) && !numhelper(666000)
helpertype = Normal 
id = 666000
name = "soundFX helper"
pos = 0,99990   
stateno = 666000
supermovetime = 999999999
pausemovetime = 999999999


;-----------------------------------------------------------------------
;_SyN_Meteor Storm stage
;-----------------------------------------------------------------------
[State -1, Meteor Storm id]
type = VarSet
trigger1 = Floor(Pos Z = 3)
var(55) = 1

[State -1, Top Floor Helper]
type = helper
triggerall = Floor(Pos Z = 3);var(55) = 1
trigger1 = 1 && !numhelper(887702)
helpertype = Normal
id = 887702
name = "Ground Level"
pos = 0,200;9999999999
stateno = 887702
supermovetime = 999999999
pausemovetime = 999999999
ownpal = 0

[State -1, Meteor Shower Helper]
type = helper
triggerall = Floor(Pos Z = 3);var(55) = 1
trigger1 = 1 && !numhelper(887701)
helpertype = Normal
id = 887701
name = "Meteor Shower"
pos = 0,9999999999
stateno = 887701
supermovetime = 999999999
pausemovetime = 999999999
ownpal = 0

[State -1, VarAdd]
type = VarAdd
triggerall = var(55) = 1 && !p2life = 0
trigger1 = (time = 1 && (stateno = 5110)) || (enemy,time = 1 && (enemy,stateno = 5110 )) || (enemy,stateno = 5504060 && (time = 1 || enemy,time = 1)) || (enemy,stateno = 5504060 && (time = 50 || enemy,time = 50))
trigger2 = (stateno = 5504061 && (time = 1 || enemy,time = 1)) || (stateno = 5504061 && (time = 50 || enemy,time = 50))
v = 56
value = 1

[State -1, VarAdd]
type = VarAdd
trigger1 = stateno = 6660020 || enemy,stateno = 6660021
v = 57
value = 1

[State -1, ChangeState]
type = ChangeState
triggerall = stateno != 5504061
trigger1 = var(56) = 3
value = 6660020
ctrl = 0

[State -1, ChangeState]
type = ChangeState
triggerall = var(56) = 2 && !life = 0
trigger1 = Movetype = H && Pos Y >= 0 && pos y > 12
value = 5504061

;====================_SyN_RotD Helper states below===================
;-----------------------------------------------------------------------
;Sound and other effects helper states.
;-----------------------------------------------------------------------
[Statedef 666000]
type = s
movetype = i
physics = n

[State 0, ]
type = AssertSpecial
trigger1 = 1
flag = noshadow  
flag2 = invisible 

[State 0]
type = NotHitBy
trigger1 = 1
value = SCA

[State 0]
type = PlayerPush
trigger1 = 1
value = 1

[State 0];water in the BG
type = PlaySnd
trigger1 = time = 0
value = f6000,0
volume = 100
channel = -1
loop = 1
ignorehitpause = 1

;----------------------------------------------------------
;these state controllers below are for the lighting effects
;----------------------------------------------------------
[State 0, ];timing variables
type = VarAdd
triggerall = root,Floor(Pos Z = 6)
trigger1 = 1
v =  1
value = 1
ignorehitpause = 1

[State 0];lightning strikes
type = PlaySnd
trigger1 = var(1) = 100 || var(1) = 321
value = f6000,2
volume = 100
channel = -1
ignorehitpause = 1

[State 0] 
type = allpalfx
triggerall = root,roundstate >= 2
trigger1 = var(1) = 91 || var(1) = 312
time = 5
add = 0,0,0
mul = 256,256,256
sinadd = 0,0,0,1
invertall = 1
color = 256
ignorehitpause = 1

[State 0, ];resets everything above and the process starts over.
type = Varset
trigger1 = var(1) = 509
v =  1
value = 0
ignorehitpause = 1

;----------------------------------------------------------
;splash sound effects state controllers
;----------------------------------------------------------
[State 0, ];timing variables
type = VarAdd
triggerall = root,Floor(Pos Z = 6)
trigger1 = 1
v =  2
value = 1
ignorehitpause = 1

[State 0];splash soundFX
type = PlaySnd
trigger1 = var(2) = 200
value = f6000,0
volume = 100
channel = -1
loop = 1
ignorehitpause = 1

[State 0, ];resets everything above and the process starts over.
type = Varset
trigger1 = var(2) = 800
v =  2
value = 0
ignorehitpause = 1

;------------------------------------------------------------------
;Vortex effects and sndFX
;------------------------------------------------------------------
[State 0, ];timing variables
type = VarAdd
triggerall = root,Floor(Pos Z = 6)
trigger1 = 1
v =  3
value = 1
ignorehitpause = 1

[State 0];vortex open sndFX
type = PlaySnd
trigger1 = var(3) = 600 
value = f6000,4
volume = 100
channel = -1
ignorehitpause = 1

[State 0];vortex close sndFX
type = PlaySnd
trigger1 = var(3) = 850
value = f6000,3
volume = 100
channel = -1
ignorehitpause = 1

[State 0, ];resets everything above and the process starts over.
type = Varset
trigger1 = var(3) = 1340
v =  3
value = 0
ignorehitpause = 1

;------------------------------------------------------------------
;Warlocks static sndFX
;------------------------------------------------------------------
[State 0, ];timing variables
type = VarAdd
triggerall = root,Floor(Pos Z = 6)
trigger1 = 1
v =  4
value = 1
ignorehitpause = 1

[State 0];emits static sndfx
type = PlaySnd
trigger1 = var(4) = 550
value = f6000,6
volume = 100
channel = -1
ignorehitpause = 1

[State 0, ];resets everything above and the process starts over.
type = Varset
trigger1 = var(4) = 1350
v =  4
value = 0
ignorehitpause = 1


;====================<_SyN_Meteor Storm Helper states below>===================
;-----------------------------------------------
;Top Level
;-----------------------------------------------
[Statedef 887702]
type = s
movetype = a
physics = s
anim = 666000

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
flag2 = invisible
;flag3 = nofg

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 0, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 1

[State 0, Bottom floor Helper]
type = helper
;triggerall = Floor(Pos Z = 3)
trigger1 = 1 && !numhelper(887700)
helpertype = normal
id = 887700
name = "Ground Level"
pos = 0,9999999999
stateno = 887700
supermovetime = 999999999
pausemovetime = 999999999
ownpal = 0

;------------------------------------<hit def to mimic desending>-----------------------
[State 0, HitDef]
type = HitDef
triggerall = root,var(56) = 2 && !p2life = 0
trigger1 = enemy,Movetype = H && enemy,Pos Y >= 0 && enemy,pos y > 12
attr = S,NA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = light          ;light,medium,hard,back,up,diagup
air.animtype = light
damage = 0,0
pausetime = 0,20
sparkno = 0
guard.sparkno = 0
sparkxy = 0,-99999999999999
hitsound = s0,0112233445566778899
guardsound = 0,0112233445566778899
p2stateno = 5504060
persistent = 0

[State 0, HitDef]
type = HitDef
trigger1 = root,stateno = 5504061
attr = S,NA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = light          ;light,medium,hard,back,up,diagup
air.animtype = light
damage = 0,0
pausetime = 0,20
sparkno = 0
guard.sparkno = 0
sparkxy = 0,-99999999999999
hitsound = s0,0112233445566778899
guardsound = 0,0112233445566778899
p2stateno = 6660021
persistent = 0

;-------------------------------<p1 falling states>--------------------------------------------
[Statedef 5504061]
type = s
movetype = h
physics = n

[state 0, ChangeAnim2]
type = changeanim2
trigger1 = 1
value = 666001
persistent = 0

[State 5040, Velset]
type = Velset
trigger1 = 1
x = 0
y = -.7
persistent = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = 1
value = s11,0
volume = 100
channel = -1
persistent = 0
ignorehitpause = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = 1
value = s11,1
volume = 100
channel = -1
persistent = 0
ignorehitpause = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = 1
value = s110,0
volume = 100
channel = -1
persistent = 0
ignorehitpause = 0

[State 5040, Velset]
type = Velset
trigger1 = var(57) >= 700
x = 0
y = 16.7
persistent = 0

[State 0, ChangeState]
type = ChangeState
triggerall = var(57) >= 700
trigger1 = Pos Y > 0
value = 5110
ctrl = 0
;-----------------------<p1 jumpdown states>--------------------------------
[Statedef 6660020]
type = a
movetype = i
physics = n

[state 0, ChangeAnim]
type = changeanim
trigger1 = time = 0
value = ifelse(!AnimExist(44), 41, 44)
persistent = 0

[State 5040, Velset]
type = Velset
trigger1 = 1
x = 0
y = -.7
persistent = 0

[State 0, AllPalFX]
type = AllPalFX
trigger1 = time = 400
time = 250
add = 0,0,0
mul = 256,256,256
sinadd = 255,255,255,-500
invertall = 0
color = 256
persistent = 0

[State 5040, Velset]
type = Velset
trigger1 = var(57) >= 700
x = 0
y = 16.7
persistent = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = Pos Y > 0
value = 52
ctrl = 0

;-------------------------------<p2 jump down states>------------------------------------------
[Statedef 6660021]
type = a
movetype = i
physics = n

[state 0, ChangeAnim]
type = changeanim
trigger1 = time = 0
value = 44
persistent = 0

[State 5040, Velset]
type = Velset
trigger1 = 1
x = 0
y = -.7
persistent = 0

[State 0, AllPalFX]
type = AllPalFX
trigger1 = time = 400
time = 250
add = 0,0,0
mul = 256,256,256
sinadd = 255,255,255,-500
invertall = 0
color = 256
persistent = 0

[State 5040, Velset]
type = Velset
trigger1 = enemy,var(57) >= 700
x = 0
y = 16.7
persistent = 0

[State 0, SelfState]
type = SelfState
trigger1 = Pos Y > 0
value = 52
ctrl = 0
;-------------------------------<p2 falling states>--------------------------------------------
[Statedef 5504060]
type = s
movetype = h
physics = n

[state 0, ChangeAnim2]
type = changeanim2
trigger1 = 1
value = 666001
persistent = 0

[State 5040, Velset]
type = Velset
trigger1 = 1
x = 0
y = -.7
persistent = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = 1
value = s11,0
volume = 100
channel = -1
persistent = 0
ignorehitpause = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = 1
value = s11,1
volume = 100
channel = -1
persistent = 0
ignorehitpause = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = 1
value = s110,0
volume = 100
channel = -1
persistent = 0
ignorehitpause = 0

[State 5040, Velset]
type = Velset
trigger1 = enemy,var(57) >= 700
x = 0
y = 16.7
persistent = 0

[State 0, SelfState]
type = SelfState
triggerall = enemy,var(57) >= 700
trigger1 = Pos Y > 0
value = 5110
ctrl = 0

;-----------------------------------------------
;Ground Level
;-----------------------------------------------
[Statedef 887700]
type = s
movetype = i

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
flag2 = invisible

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 0, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 1
;-----------------<Top Level>---------------------------
[State 0, Playsnd];explosion
type = PlaySnd
trigger1 = root,var(56) = 3
value = f8000
volume = 100
persistent = 0

[State 0, RemoveExplod];bridge
type = RemoveExplod
trigger1 = root,var(56) = 3
ID = 8018

[State 0, Explod];bridge
type = Explod
trigger1 = time = 1 && !numexplod(8018)
anim = f8004
ID = 8018
pos = 259,288
postype = left  ;p2,front,back,left,right
facing = 1
removetime = -1
sprpriority = -3
shadow = 0,0,0
ownpal = 0
scale = .8,.8
bindtime = parent,time = -1

;------------------------------------<exploding bridge>---------------------------------
[State 0, Explod];explosion
type = Explod
trigger1 = root,var(56) = 3
anim = f8005
pos = 17,195
postype = left  ;p2,front,back,left,right
facing = 1
removetime = 102
sprpriority = 4
shadow = 0,0,0
ownpal = 0
scale = .7,.7
persistent = 0

[State 0, Explod];explosion
type = Explod
trigger1 = root,var(56) = 3
anim = f8005
pos = -200,195
postype = left  ;p2,front,back,left,right
facing = 1
removetime = 102
sprpriority = 4
shadow = 0,0,0
ownpal = 0
scale = .7,.7
persistent = 0

[State 0, Explod];explosion
type = Explod
trigger1 = root,var(56) = 3
anim = f8005
pos = 300,195
postype = left  ;p2,front,back,left,right
facing = 1
removetime = 102
sprpriority = 5
shadow = 0,0,0
ownpal = 0
scale = .7,.7
persistent = 0
;-----------------------------<bridge breaking>----------------------------
[State 0, Explod];explosion
type = Explod
trigger1 = root,var(56) = 3
anim = f8007
pos = -100,216
postype = left  ;p2,front,back,left,right
facing = 1
removetime = 51
sprpriority = 4
shadow = 0,0,0
ownpal = 0
scale = .7,.7
persistent = 0

[State 0, Explod];explosion
type = Explod
trigger1 = root,var(56) = 3
anim = f8007
pos = 0,216
postype = left  ;p2,front,back,left,right
facing = 1
removetime = 51
sprpriority = 4
shadow = 0,0,0
ownpal = 0
scale = .7,.7
persistent = 0

[State 0, Explod];explosion
type = Explod
trigger1 = root,var(56) = 3
anim = f8007
pos = 100,216
postype = left  ;p2,front,back,left,right
facing = 1
removetime = 51
sprpriority = 4
shadow = 0,0,0
ownpal = 0
scale = .7,.7
persistent = 0

[State 0, Explod];explosion
type = Explod
trigger1 = root,var(56) = 3
anim = f8007
pos = 200,216
postype = left  ;p2,front,back,left,right
facing = 1
removetime = 51
sprpriority = 4
shadow = 0,0,0
ownpal = 0
scale = .7,.7
persistent = 0

[State 0, Explod];explosion
type = Explod
trigger1 = root,var(56) = 3
anim = f8007
pos = 300,216
postype = left  ;p2,front,back,left,right
facing = 1
removetime = 51
sprpriority = 4
shadow = 0,0,0
ownpal = 0
scale = .7,.7
persistent = 0

[State 0, Explod];explosion
type = Explod
trigger1 = root,var(56) = 3
anim = f8007
pos = 400,216
postype = left  ;p2,front,back,left,right
facing = 1
removetime = 51
sprpriority = 4
shadow = 0,0,0
ownpal = 0
scale = .7,.7
persistent = 0

[State 0, Explod];explosion
type = Explod
trigger1 = root,var(56) = 3
anim = f8007
pos = 500,216
postype = left  ;p2,front,back,left,right
facing = 1
removetime = 51
sprpriority = 4
shadow = 0,0,0
ownpal = 0
scale = .7,.7
persistent = 0

[State 0, Explod];explosion
type = Explod
trigger1 = root,var(56) = 3
anim = f8007
pos = 600,216
postype = left  ;p2,front,back,left,right
facing = 1
removetime = 51
sprpriority = 4
shadow = 0,0,0
ownpal = 0
scale = .7,.7
persistent = 0
;------------------------------<end of top level>--------------------------

[State 0, Explod];polls
type = Explod
trigger1 = time = 1 && !numexplod(8004)
anim = f8008
ID = 8004
pos = 259,288
postype = left  ;p2,front,back,left,right
facing = 1
removetime = -1
sprpriority = -3
shadow = 0,0,0
ownpal = 0
scale = .8,.8
bindtime = parent,time = -1

[State 0, ModifyExplod];polls
type = ModifyExplod
trigger1 = root,var(56) = 3
ID = 8004
pos = 259,288
postype = left  ;p2,front,back,left,right
facing = 1
removetime = -1
sprpriority = -2
shadow = 0,0,0
ownpal = 0
scale = .8,.8
vel = 0,-4
bindtime = parent,time = -1

[State 0, RemoveExplod];bridge
type = RemoveExplod
trigger1 = root,var(57) >= 550
ID = 8004

[State 0, Explod];ground
type = Explod
trigger1 = root,var(57) >= 600 && !numexplod(18000)
anim = f8000
ID = 18000
pos = 0,195;347;195
postype = left  ;p2,front,back,left,right
facing = 1
removetime = -1
sprpriority = -3
shadow = 0,0,0
ownpal = 0
scale = .5,.5
bindtime = parent,time = -1

;-------------------------------<flame urn 1>----------------------------
[State 0, Explod];urn
type = Explod
trigger1 = root,var(57) >= 600
anim = f8001
pos = 100,194
postype = left  ;p2,front,back,left,right
facing = 1
removetime = -1
sprpriority = -4
shadow = 0,0,0
ownpal = 0
scale = .5,.5
persistent = 0
ID = 8000
bindtime = parent,time = -1

[State 0, Explod];flame
type = Explod
triggerall = root,var(57) >= 700 && root,pos y >= 0
trigger1 = root,stateno != 6660020 || enemy,stateno != 6660021
trigger2 = root,roundno >= 2 && root,roundstate = 2
anim = f8002
pos = 100,154
postype = left  ;p2,front,back,left,right
facing = 1
removetime = -1
sprpriority = -4
shadow = 0,0,0
ownpal = 0
scale = .5,.5
persistent = 0
ID = 8000
bindtime = parent,time = -1
;-------------------------------<flame urn 2>----------------------------
[State 0, Explod];urn
type = Explod
trigger1 = root,var(57) >= 600
anim = f8001
pos = 300,190
postype = left  ;p2,front,back,left,right
facing = 1
removetime = -1
sprpriority = -4
shadow = 0,0,0
ownpal = 0
scale = .5,.5
persistent = 0
ID = 8000
bindtime = parent,time = -1

[State 0, Explod];flame
type = Explod
triggerall = root,var(57) >= 700 && root,pos y >= 0
trigger1 = root,stateno != 6660020 || enemy,stateno != 6660021
trigger2 = root,roundno >= 2 && root,roundstate = 2
anim = f8002
pos = 300,150
postype = left  ;p2,front,back,left,right
facing = 1
removetime = -1
sprpriority = -4
shadow = 0,0,0
ownpal = 0
scale = .5,.5
persistent = 0
ID = 8000
bindtime = parent,time = -1
;-------------------------------<flame urn 3>----------------------------
[State 0, Explod];urn
type = Explod
trigger1 = root,var(57) >= 600
anim = f8001
pos = 500,196
postype = left  ;p2,front,back,left,right
facing = 1
removetime = -1
sprpriority = -4
shadow = 0,0,0
ownpal = 0
scale = .5,.5
persistent = 0
ID = 8000
bindtime = parent,time = -1

[State 0, Explod];flame
type = Explod
triggerall = root,var(57) >= 700 && root,pos y >= 0
trigger1 = root,stateno != 6660020 || enemy,stateno != 6660021
trigger2 = root,roundno >= 2 && root,roundstate = 2
anim = f8002
pos = 500,156
postype = left  ;p2,front,back,left,right
facing = 1
removetime = -1
sprpriority = -4
shadow = 0,0,0
ownpal = 0
scale = .5,.5
persistent = 0
ID = 8000
bindtime = parent,time = -1
;-------------------------------<flame urn 1 front>----------------------------
[State 0, Explod];urn
type = Explod
trigger1 = root,var(57) >= 600
anim = f8001
pos = 20,294
postype = left  ;p2,front,back,left,right
facing = 1
removetime = -1
sprpriority = 2
shadow = 0,0,0
ownpal = 0
scale = .7,.7
persistent = 0
ID = 8000
bindtime = parent,time = -1

[State 0, Explod];flame
type = Explod
triggerall = root,var(57) >= 700 && root,pos y >= 0
trigger1 = root,stateno != 6660020 || enemy,stateno != 6660021
trigger2 = root,roundno >= 2 && root,roundstate = 2
anim = f8002
pos = 20,254
postype = left  ;p2,front,back,left,right
facing = 1
removetime = -1
sprpriority = 1
shadow = 0,0,0
ownpal = 0
scale = .6,.6
persistent = 0
ID = 8000
bindtime = parent,time = -1
;-------------------------------<flame urn 2 front>----------------------------
[State 0, Explod];urn
type = Explod
trigger1 = root,var(57) >= 600
anim = f8001
pos = 300,300
postype = left  ;p2,front,back,left,right
facing = 1
removetime = -1
sprpriority = 2
shadow = 0,0,0
ownpal = 0
scale = .7,.7
persistent = 0
ID = 8000
bindtime = parent,time = -1

[State 0, Explod];flame
type = Explod
triggerall = root,var(57) >= 700 && root,pos y >= 0
trigger1 = root,stateno != 6660020 || enemy,stateno != 6660021
trigger2 = root,roundno >= 2 && root,roundstate = 2
anim = f8002
pos = 300,260
postype = left  ;p2,front,back,left,right
facing = 1
removetime = -1
sprpriority = 1
shadow = 0,0,0
ownpal = 0
scale = .6,.6
persistent = 0
ID = 8000
bindtime = parent,time = -1
;-------------------------------<flame urn 3 front>----------------------------
[State 0, Explod];urn
type = Explod
trigger1 = root,var(57) >= 600
anim = f8001
pos = 570,294
postype = left  ;p2,front,back,left,right
facing = 1
removetime = -1
sprpriority = 2
shadow = 0,0,0
ownpal = 0
scale = .7,.7
persistent = 0
ID = 8000
bindtime = parent,time = -1

[State 0, Explod];flame
type = Explod
triggerall = root,var(57) >= 700 && root,pos y >= 0
trigger1 = root,stateno != 6660020 || enemy,stateno != 6660021
trigger2 = root,roundno >= 2 && root,roundstate = 2
anim = f8002
pos = 570,254
postype = left  ;p2,front,back,left,right
facing = 1
removetime = -1
sprpriority = 1
shadow = 0,0,0
ownpal = 0
scale = .6,.6
persistent = 0
ID = 8000
bindtime = parent,time = -1

[State 0, VarAdd]
type = VarAdd
triggerall = root,var(57) >= 700
trigger1 = 1
v = 1
value = 1

[State 0, PlaySnd]
type = PlaySnd
triggerall = root,var(57) >= 700 && root,pos y >= 0
trigger1 = root,stateno != 6660020 || enemy,stateno != 6660021
trigger2 = root,roundno >= 2 && root,roundstate = 2
value = f8000,1
volume = 0
loop = 1
channel = 4
persistent = 0

;-----------------------------------------------
;Meteor Shower
;-----------------------------------------------
[Statedef 887701]
type = s
movetype = i

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
flag2 = invisible

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 0, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 1

;====================================<meteor shower mid>=====================================
[State 0, Explod];metor
type = Explod
trigger1 = (gametime%200) = 0 && !numexplod(8010)
anim = f8003
pos = 100,100
postype = left  ;p2,front,back,left,right
facing = 1
removetime = 200
sprpriority = -4
shadow = 0,0,0
ownpal = 0
vel = 10,7
scale = .5,.5
random = 120,150
id = 8010

[State 0, Explod];metor
type = Explod
trigger1 = (gametime%300) = 0 && !numexplod(8011)
anim = f8003
pos = 100,100
postype = left  ;p2,front,back,left,right
facing = 1
removetime = 300
sprpriority = -4
shadow = 0,0,0
ownpal = 0
vel = 10,7
scale = .5,.5
random = 120,150
id = 8011

[State 0, Explod];metor
type = Explod
trigger1 = (gametime%100) = 0 && !numexplod(8013)
anim = f8003
pos = 150,100
postype = left  ;p2,front,back,left,right
facing = 1
removetime = 100
sprpriority = -4
shadow = 0,0,0
ownpal = 0
vel = 10,7
scale = .5,.5
random = 170,150
id = 8012

[State 0, Explod];metor
type = Explod
trigger1 = (gametime%400) = 0 && !numexplod(8013)
anim = f8003
pos = 180,100
postype = left  ;p2,front,back,left,right
facing = 1
removetime = 300
sprpriority = -4
shadow = 0,0,0
ownpal = 0
vel = 10,7
scale = .5,.5
random = 200,150
id = 8013
;====================================<meteor shower far>=====================================
[State 0, Explod];metor
type = Explod
trigger1 = (gametime%100) = 0 && !numexplod(8110)
anim = f8003
pos = -100,-100
postype = left  ;p2,front,back,left,right
facing = 1
removetime = -1
sprpriority = -4
shadow = 0,0,0
ownpal = 0
vel = 1,.4
scale = .1,.1
random = -120,-150
id = 8110

[State 0, Explod];metor
type = Explod
trigger1 = (gametime%200) = 0 && !numexplod(8111)
anim = f8003
pos = -100,-100
postype = left  ;p2,front,back,left,right
facing = 1
removetime = -1
sprpriority = -4
shadow = 0,0,0
ownpal = 0
vel = 1,.4
scale = .1,.1
random = -120,-150
id = 8111

[State 0, Explod];metor
type = Explod
trigger1 = (gametime%300) = 0 && !numexplod(8112)
anim = f8003
pos = -150,-100
postype = left  ;p2,front,back,left,right
facing = 1
removetime = -1
sprpriority = -4
shadow = 0,0,0
ownpal = 0
vel = 1,.4
scale = .1,.1
random = -170,-150
id = 8112

[State 0, Explod];metor
type = Explod
trigger1 = (gametime%400) = 0 && !numexplod(8113)
anim = f8003
pos = -180,-100
postype = left  ;p2,front,back,left,right
facing = 1
removetime = 400
sprpriority = -1
shadow = 0,0,0
ownpal = 0
vel = 1,.4
scale = .1,.1
random = -200,-150
id = 8113

;====================================<meteor shower front>=====================================
[State 0, Explod];metor
type = Explod
trigger1 = (gametime%200) = 0 && !numexplod(8210)
anim = f8003
pos = 100,100
postype = left  ;p2,front,back,left,right
facing = 1
removetime = 200
sprpriority = 1
shadow = 0,0,0
ownpal = 0
vel = 11,8
scale = .7,.7
;random = 120,150
id = 8210

[State 0, Explod];metor
type = Explod
trigger1 = (gametime%300) = 0 && !numexplod(8211)
anim = f8003
pos = 100,100
postype = left  ;p2,front,back,left,right
facing = 1
removetime = 300
sprpriority = 1
shadow = 0,0,0
ownpal = 0
vel = 11,8
scale = .7,.7
;random = 120,150
id = 8211

[State 0, Explod];metor
type = Explod
trigger1 = (gametime%100) = 0 && !numexplod(8213)
anim = f8003
pos = 150,100
postype = left  ;p2,front,back,left,right
facing = 1
removetime = 100
sprpriority = 1
shadow = 0,0,0
ownpal = 0
vel = 11,8
scale = .7,.7
;random = 170,150
id = 8212

[State 0, Explod];metor
type = Explod
trigger1 = (gametime%400) = 0 && !numexplod(8213)
anim = f8003
pos = 180,100
postype = left  ;p2,front,back,left,right
facing = 1
removetime = 300
sprpriority = 1
shadow = 0,0,0
ownpal = 0
vel = 11,8
scale = .7,.7
;random = 200,150
id = 8213

[State 0, PlaySnd]
type = PlaySnd
trigger1 =  ((gametime%100) = 0 || (gametime%200) = 0 || (gametime%300) = 0 || (gametime%400) = 0)
value = f8000,2
volume = 100
channel = -1

;--------------------------------------------
;Time stopped while falling
;--------------------------------------------
[Statedef 8877020]
type = s
movetype = i
physics = n

[State 0, ]
type = AssertSpecial
trigger1 = 1
flag = noshadow
flag2 = invisible

[State 0]
type = NotHitBy
trigger1 = 1
value = SCA

[State 0]
type = PlayerPush
trigger1 = 1
value = 1

[State 0, ]
type = AssertSpecial
triggerall = root,stateno = 6660020 || enemy,stateno = 6660021
trigger1 = 1
flag = timerfreeze
