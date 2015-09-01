[Statedef 3000]
type    = S
movetype= A
physics = S
juggle  = 1
anim = 0
Velset = 0, 0
ctrl = 0

[State 235, sssf]
type = envshake
trigger1 = time = 60
trigger2 = time = 80
trigger3 = time = 100
trigger4 = time = 110
trigger5 = time = 120
trigger6 = time = 130
trigger7 = time = 140
trigger8 = time = 150
trigger9 = Time = 160
trigger10 = time = 170
trigger11 = time = 180
time = 30
freq = 25
ampl = 3

[State 430, 31sdaa]
type = changeanim
trigger1 = Time = 40
value = 660

[State 9130, SetFatal]
type = Varset
trigger1 = movehit
V = 4
value = 1

[State 235]
type = playsnd
trigger1 = time = 40
value = 25,6

[State 1200, BoltFat]
type = Hitdef
trigger1 = time = 75
trigger1 = Anim = 660
velocity = 8, 0 
remvelocity = 0, 0
; HitDef part of projectile info
attr = S, NT
animtype = Hard
air.animtype = Back
air.fall = 1
numhits = 0
fall.recover = 0
guardflag = HL
pausetime = 0,0
sparkno = -1
sparkxy = -20,-125
p2stateno = 3003;661
guard.sparkno = -1
hitsound   = -1,-1
;guardsound = 5,0
ground.type = High
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

;Explosion P2
[State 1200]
type = explod
trigger1 = time = 93
postype = p2
anim = 920
ontop = 1
ownpal = 1

;Boom SND
[State 1200]
type = playsnd
trigger1 = time = 93
value = 25,2
volume = 210

[State 200, 7]
type = changestate
trigger1 = Anim = 660
trigger1 = AnimTime = 0
value = 0
ctrl = 1
:------------------------
;------------------
[StateDef 3003]
type    = S
movetype= H
physics = S
VelSet = 0,0,0
ctrl = 0

[State 3110, chae]
type = changeanim2
trigger1 = time = 0
value = 3003

[State 900]
type = playsnd
trigger1 = time = 30
trigger2 = time = 60
trigger3 = time = 90
trigger4 = time = 100
trigger5 = time = 110
trigger6 = time = 120
trigger7 = time = 130
trigger8 = time = 140
trigger9 = Time = 150
trigger10 = time = 160
trigger11 = time = 170
trigger12 = time = 180
trigger13 = time = 190
value = F5,17
volume = 50


[State 9000, 123]
type = Explod
trigger1 = time = 179
anim = F17
postype = p1
pos = 0,-80
postype = p1
bindtime = 1
facing = 1
sprpriority = 3
ownpal = 1


[State 9000, 123]
type = Explod
trigger1 = time = 179
anim = F80
postype = p1
pos = 0,-80
postype = p1
bindtime = 1
facing = 1
sprpriority = 3
ownpal = 1

[State 9000, 123]
type = Explod
trigger1 = time = 180
anim = 43051
postype = p1
pos = 0,-80
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
trigger1 = time = 180
anim = 43052
postype = p1
pos = 0,-120
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
trigger1 = time = 180
anim = 43052
postype = p1
facing = -1
pos = 40,-120
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
trigger1 = time = 180
anim = 43053
postype = p1
pos = 0,-60
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
trigger1 = time = 180
anim = 43053
postype = p1
pos = 50,-60
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
trigger1 = time = 180
anim = 43054
postype = p1
pos = 0,-100
vel = 1,3
;postype = front
bindtime = 1
facing = 1
sprpriority = 2
ontop = 1
ownpal = 1
removetime = -1

[State 900]
type = varset
trigger1 = time = 179
value = 1
v = 26

[State 3110, stop vel]
type = Veladd
trigger1 = time = 0
y = 0

[State 3110, stop vel]
type = Veladd
trigger1 = time = 25
y = 0

[State 3310]
type = lifeadd
trigger1 = time = 179
value = -999999

[State 9399, 2]
type = Selfstate
trigger1 = time = 180
value = 5150
