if game.Workspace.Assembly.Value == 1 then


a = script.Parent
cPart1 = a.Center1
cPart2 = a.Center2
cPart3 = a.Center3
cPart4 = a.Center4
cPart5 = a.Center5
cPart6 = a.Center6
cPart7 = a.Center7
cPart8 = a.Center8
cc = a.Center1.Position
--Common Variables : 
--XPart1 - Part 1 needs negative movement on X scale to approach center if equals -1
--YPart1 - Part 1 needs negative movement on Y scale to approach center if equals -1
--ZPart1 - Part 1 needs negative movement on Z scale to approach center if equals -1
--PriPart1 - Priority is X Scale if equals 1
--Part1 - Part Number
--XSPart1 - Saved X
--YSPart1 - Saved Y
--ZSPart1 - Saved Z
--RPart1 - Value determines which reconfiguring direction to cycle brick through until it's 5 far away from it's center
--TMPart1 - Tells whether brick has tried too hard to get 5 away from it's center
--xpoPart1 - Shows that Part 1 X value Positive is availible to move
--xnePart1 - Shows that Part 1 X value Negative is availible to move
--cPart1
--sPart1 - Checks if brick is stuck
sPart1 =  0
sPart2 =  0
sPart3 =  0
sPart4 =  0
sPart5 =  0
sPart6 =  0
sPart7 =  0
sPart8 =  0

RPart1 =  1
RPart2 =  1
RPart3 =  1
RPart4 =  1
RPart5 =  1
RPart6 =  1
RPart7 =  1
RPart8 =  1

Partt1 = script.Parent.Part1
Partt2 = script.Parent.Part2
Partt3 = script.Parent.Part3
Partt4 = script.Parent.Part4
Partt5 = script.Parent.Part5
Partt6 = script.Parent.Part6
Partt7 = script.Parent.Part7
Partt8 = script.Parent.Part8



wait(3)


function core1()
repeat

TMPart1 =  0

if cPart1.Position.X > a.Part1.Position.X then --Checking X Positions
XPart1 = 1
elseif cPart1.Position.X < a.Part1.Position.X then
XPart1 = -1
elseif cPart1.Position.X == a.Part1.Position.X then
XPart1 = 0
end

if cPart1.Position.Y > a.Part1.Position.Y then --Checking Y Positions
YPart1 = 1
elseif cPart1.Position.Y < a.Part1.Position.Y then
YPart1 = -1
elseif cPart1.Position.Y == a.Part1.Position.Y then
YPart1 = 0
end

if cPart1.Position.Z > a.Part1.Position.Z then --Checking Z Positions
ZPart1 = 1
elseif cPart1.Position.Z < a.Part1.Position.Z then
ZPart1 = -1
elseif cPart1.Position.Z == a.Part1.Position.Z then
ZPart1 = 0
end
-- ++-- 											
if  math.abs(a.Part1.Position.X - cPart1.Position.X) > math.abs(a.Part1.Position.Y - cPart1.Position.Y) --Priority Checks 1=X 2=Y 3=Z
and math.abs(a.Part1.Position.X - cPart1.Position.X) > math.abs(a.Part1.Position.Z - cPart1.Position.Z)
then PriPart1 = 1
else end 
if  math.abs(a.Part1.Position.Y - cPart1.Position.Y) > math.abs(a.Part1.Position.X - cPart1.Position.X) 
and math.abs(a.Part1.Position.Y - cPart1.Position.Y) > math.abs(a.Part1.Position.Z - cPart1.Position.Z)
then PriPart1 = 2
else end 
if  math.abs(a.Part1.Position.Z - cPart1.Position.Z) > math.abs(a.Part1.Position.Y - cPart1.Position.Y) 
and math.abs(a.Part1.Position.Z - cPart1.Position.Z) > math.abs(a.Part1.Position.X - cPart1.Position.X)
then PriPart1 = 3
else end 
if math.abs(a.Part1.Position.X - cPart1.Position.X) == math.abs(a.Part1.Position.Y - cPart1.Position.Y)  
or math.abs(a.Part1.Position.X - cPart1.Position.X) == math.abs(a.Part1.Position.Z - cPart1.Position.Z)
or math.abs(a.Part1.Position.Y - cPart1.Position.Y) == math.abs(a.Part1.Position.X - cPart1.Position.X)
then PriPart1 = 1
else end 

if a.Part1.Position.X + 2.5 < Partt2.Position.X -- P1 +X Positions Library Reference
or a.Part1.Position.X > Partt2.Position.X
or a.Part1.Position.Y +(1.9) < Partt2.Position.Y 
or a.Part1.Position.Y -(1.9) > Partt2.Position.Y 
or a.Part1.Position.Z +(1.9) < Partt2.Position.Z 
or a.Part1.Position.Z -(1.9) > Partt2.Position.Z 
then
if a.Part1.Position.X + 2.5 < Partt3.Position.X
or a.Part1.Position.X > Partt3.Position.X
or a.Part1.Position.Y +(1.9) < Partt3.Position.Y 
or a.Part1.Position.Y -(1.9) > Partt3.Position.Y 
or a.Part1.Position.Z +(1.9) < Partt3.Position.Z 
or a.Part1.Position.Z -(1.9) > Partt3.Position.Z 
then
if a.Part1.Position.X + 2.5 < Partt4.Position.X
or a.Part1.Position.X > Partt4.Position.X
or a.Part1.Position.Y +(1.9) < Partt4.Position.Y 
or a.Part1.Position.Y -(1.9) > Partt4.Position.Y 
or a.Part1.Position.Z +(1.9) < Partt4.Position.Z 
or a.Part1.Position.Z -(1.9) > Partt4.Position.Z 
then
if a.Part1.Position.X + 2.5 < Partt5.Position.X
or a.Part1.Position.X > Partt5.Position.X
or a.Part1.Position.Y +(1.9) < Partt5.Position.Y 
or a.Part1.Position.Y -(1.9) > Partt5.Position.Y 
or a.Part1.Position.Z +(1.9) < Partt5.Position.Z 
or a.Part1.Position.Z -(1.9) > Partt5.Position.Z 
then
if a.Part1.Position.X + 2.5 < Partt6.Position.X
or a.Part1.Position.X > Partt6.Position.X
or a.Part1.Position.Y +(1.9) < Partt6.Position.Y 
or a.Part1.Position.Y -(1.9) > Partt6.Position.Y 
or a.Part1.Position.Z +(1.9) < Partt6.Position.Z 
or a.Part1.Position.Z -(1.9) > Partt6.Position.Z 
then
if a.Part1.Position.X + 2.5 < Partt7.Position.X
or a.Part1.Position.X > Partt7.Position.X
or a.Part1.Position.Y +(1.9) < Partt7.Position.Y 
or a.Part1.Position.Y -(1.9) > Partt7.Position.Y 
or a.Part1.Position.Z +(1.9) < Partt7.Position.Z 
or a.Part1.Position.Z -(1.9) > Partt7.Position.Z 
then
if a.Part1.Position.X + 2.5 < Partt8.Position.X
or a.Part1.Position.X > Partt8.Position.X
or a.Part1.Position.Y +(1.9) < Partt8.Position.Y 
or a.Part1.Position.Y -(1.9) > Partt8.Position.Y 
or a.Part1.Position.Z +(1.9) < Partt8.Position.Z 
or a.Part1.Position.Z -(1.9) > Partt8.Position.Z 
then
xpoPart1 = 1
else xpoPart1 = 0 
end
else xpoPart1 = 0
end
else xpoPart1 = 0
end
else xpoPart1 = 0
end
else xpoPart1 = 0
end
else xpoPart1 = 0
end
else xpoPart1 = 0
end

if a.Part1.Position.X - 2.5 > Partt2.Position.X -- P1 -X Positions Library Reference
or a.Part1.Position.X < Partt2.Position.X
or a.Part1.Position.Y +(1.9) < Partt2.Position.Y 
or a.Part1.Position.Y -(1.9) > Partt2.Position.Y 
or a.Part1.Position.Z +(1.9) < Partt2.Position.Z 
or a.Part1.Position.Z -(1.9) > Partt2.Position.Z 
then
if a.Part1.Position.X - 2.5 > Partt3.Position.X
or a.Part1.Position.X < Partt3.Position.X
or a.Part1.Position.Y +(1.9) < Partt3.Position.Y 
or a.Part1.Position.Y -(1.9) > Partt3.Position.Y 
or a.Part1.Position.Z +(1.9) < Partt3.Position.Z 
or a.Part1.Position.Z -(1.9) > Partt3.Position.Z 
then
if a.Part1.Position.X - 2.5 > Partt4.Position.X
or a.Part1.Position.X < Partt4.Position.X
or a.Part1.Position.Y +(1.9) < Partt4.Position.Y 
or a.Part1.Position.Y -(1.9) > Partt4.Position.Y 
or a.Part1.Position.Z +(1.9) < Partt4.Position.Z 
or a.Part1.Position.Z -(1.9) > Partt4.Position.Z 
then
if a.Part1.Position.X - 2.5 > Partt5.Position.X
or a.Part1.Position.X < Partt5.Position.X
or a.Part1.Position.Y +(1.9) < Partt5.Position.Y 
or a.Part1.Position.Y -(1.9) > Partt5.Position.Y 
or a.Part1.Position.Z +(1.9) < Partt5.Position.Z 
or a.Part1.Position.Z -(1.9) > Partt5.Position.Z 
then
if a.Part1.Position.X - 2.5 > Partt6.Position.X
or a.Part1.Position.X < Partt6.Position.X
or a.Part1.Position.Y +(1.9) < Partt6.Position.Y 
or a.Part1.Position.Y -(1.9) > Partt6.Position.Y 
or a.Part1.Position.Z +(1.9) < Partt6.Position.Z 
or a.Part1.Position.Z -(1.9) > Partt6.Position.Z 
then
if a.Part1.Position.X - 2.5 > Partt7.Position.X
or a.Part1.Position.X < Partt7.Position.X
or a.Part1.Position.Y +(1.9) < Partt7.Position.Y 
or a.Part1.Position.Y -(1.9) > Partt7.Position.Y 
or a.Part1.Position.Z +(1.9) < Partt7.Position.Z 
or a.Part1.Position.Z -(1.9) > Partt7.Position.Z 
then
if a.Part1.Position.X - 2.5 > Partt8.Position.X
or a.Part1.Position.X < Partt8.Position.X
or a.Part1.Position.Y +(1.9) < Partt8.Position.Y 
or a.Part1.Position.Y -(1.9) > Partt8.Position.Y 
or a.Part1.Position.Z +(1.9) < Partt8.Position.Z 
or a.Part1.Position.Z -(1.9) > Partt8.Position.Z 
then
xnePart1 = 1
else xnePart1 = 0 
end
else xnePart1 = 0
end
else xnePart1 = 0
end
else xnePart1 = 0
end
else xnePart1 = 0
end
else xnePart1 = 0
end
else xnePart1 = 0
end

if a.Part1.Position.Y + 2.5 < Partt2.Position.Y -- P1 +Y Positions Library Reference
or a.Part1.Position.Y > Partt2.Position.Y
or a.Part1.Position.X +(1.9) < Partt2.Position.X 
or a.Part1.Position.X -(1.9) > Partt2.Position.X 
or a.Part1.Position.Z +(1.9) < Partt2.Position.Z 
or a.Part1.Position.Z -(1.9) > Partt2.Position.Z 
then
if a.Part1.Position.Y + 2.5 < Partt3.Position.Y
or a.Part1.Position.Y > Partt3.Position.Y
or a.Part1.Position.X +(1.9) < Partt3.Position.X 
or a.Part1.Position.X -(1.9) > Partt3.Position.X 
or a.Part1.Position.Z +(1.9) < Partt3.Position.Z 
or a.Part1.Position.Z -(1.9) > Partt3.Position.Z 
then
if a.Part1.Position.Y + 2.5 < Partt4.Position.Y
or a.Part1.Position.Y > Partt4.Position.Y
or a.Part1.Position.X +(1.9) < Partt4.Position.X 
or a.Part1.Position.X -(1.9) > Partt4.Position.X 
or a.Part1.Position.Z +(1.9) < Partt4.Position.Z 
or a.Part1.Position.Z -(1.9) > Partt4.Position.Z 
then
if a.Part1.Position.Y + 2.5 < Partt5.Position.Y
or a.Part1.Position.Y > Partt5.Position.Y
or a.Part1.Position.X +(1.9) < Partt5.Position.X 
or a.Part1.Position.X -(1.9) > Partt5.Position.X 
or a.Part1.Position.Z +(1.9) < Partt5.Position.Z 
or a.Part1.Position.Z -(1.9) > Partt5.Position.Z 
then
if a.Part1.Position.Y + 2.5 < Partt6.Position.Y
or a.Part1.Position.Y > Partt6.Position.Y
or a.Part1.Position.X +(1.9) < Partt6.Position.X 
or a.Part1.Position.X -(1.9) > Partt6.Position.X 
or a.Part1.Position.Z +(1.9) < Partt6.Position.Z 
or a.Part1.Position.Z -(1.9) > Partt6.Position.Z 
then
if a.Part1.Position.Y + 2.5 < Partt7.Position.Y
or a.Part1.Position.Y > Partt7.Position.Y
or a.Part1.Position.X +(1.9) < Partt7.Position.X 
or a.Part1.Position.X -(1.9) > Partt7.Position.X 
or a.Part1.Position.Z +(1.9) < Partt7.Position.Z 
or a.Part1.Position.Z -(1.9) > Partt7.Position.Z 
then
if a.Part1.Position.Y + 2.5 < Partt8.Position.Y
or a.Part1.Position.Y > Partt8.Position.Y
or a.Part1.Position.X +(1.9) < Partt8.Position.X 
or a.Part1.Position.X -(1.9) > Partt8.Position.X 
or a.Part1.Position.Z +(1.9) < Partt8.Position.Z 
or a.Part1.Position.Z -(1.9) > Partt8.Position.Z 
then
ypoPart1 = 1
else ypoPart1 = 0 
end
else ypoPart1 = 0
end
else ypoPart1 = 0
end
else ypoPart1 = 0
end
else ypoPart1 = 0
end
else ypoPart1 = 0
end
else ypoPart1 = 0
end

if a.Part1.Position.Y - 2.5 > Partt2.Position.Y -- P1 -Y Positions Library Reference
or a.Part1.Position.Y < Partt2.Position.Y
or a.Part1.Position.X +(1.9) < Partt2.Position.X 
or a.Part1.Position.X -(1.9) > Partt2.Position.X 
or a.Part1.Position.Z +(1.9) < Partt2.Position.Z 
or a.Part1.Position.Z -(1.9) > Partt2.Position.Z 
then
if a.Part1.Position.Y - 2.5 > Partt3.Position.Y
or a.Part1.Position.Y < Partt3.Position.Y
or a.Part1.Position.X +(1.9) < Partt3.Position.X 
or a.Part1.Position.X -(1.9) > Partt3.Position.X 
or a.Part1.Position.Z +(1.9) < Partt3.Position.Z 
or a.Part1.Position.Z -(1.9) > Partt3.Position.Z 
then
if a.Part1.Position.Y - 2.5 > Partt4.Position.Y
or a.Part1.Position.Y < Partt4.Position.Y
or a.Part1.Position.X +(1.9) < Partt4.Position.X 
or a.Part1.Position.X -(1.9) > Partt4.Position.X 
or a.Part1.Position.Z +(1.9) < Partt4.Position.Z 
or a.Part1.Position.Z -(1.9) > Partt4.Position.Z 
then
if a.Part1.Position.Y - 2.5 > Partt5.Position.Y
or a.Part1.Position.Y < Partt5.Position.Y
or a.Part1.Position.X +(1.9) < Partt5.Position.X 
or a.Part1.Position.X -(1.9) > Partt5.Position.X 
or a.Part1.Position.Z +(1.9) < Partt5.Position.Z 
or a.Part1.Position.Z -(1.9) > Partt5.Position.Z 
then
if a.Part1.Position.Y - 2.5 > Partt6.Position.Y
or a.Part1.Position.Y < Partt6.Position.Y
or a.Part1.Position.X +(1.9) < Partt6.Position.X 
or a.Part1.Position.X -(1.9) > Partt6.Position.X 
or a.Part1.Position.Z +(1.9) < Partt6.Position.Z 
or a.Part1.Position.Z -(1.9) > Partt6.Position.Z 
then
if a.Part1.Position.Y - 2.5 > Partt7.Position.Y
or a.Part1.Position.Y < Partt7.Position.Y
or a.Part1.Position.X +(1.9) < Partt7.Position.X 
or a.Part1.Position.X -(1.9) > Partt7.Position.X 
or a.Part1.Position.Z +(1.9) < Partt7.Position.Z 
or a.Part1.Position.Z -(1.9) > Partt7.Position.Z 
then
if a.Part1.Position.Y - 2.5 > Partt8.Position.Y
or a.Part1.Position.Y < Partt8.Position.Y
or a.Part1.Position.X +(1.9) < Partt8.Position.X 
or a.Part1.Position.X -(1.9) > Partt8.Position.X 
or a.Part1.Position.Z +(1.9) < Partt8.Position.Z 
or a.Part1.Position.Z -(1.9) > Partt8.Position.Z 
then
ynePart1 = 1
else ynePart1 = 0 
end
else ynePart1 = 0
end
else ynePart1 = 0
end
else ynePart1 = 0
end
else ynePart1 = 0
end
else ynePart1 = 0
end
else ynePart1 = 0
end

if a.Part1.Position.Z + 2.5 < Partt2.Position.Z -- P1 +Z Positions Library Reference
or a.Part1.Position.Z > Partt2.Position.Z
or a.Part1.Position.X +(1.9) < Partt2.Position.X 
or a.Part1.Position.X -(1.9) > Partt2.Position.X 
or a.Part1.Position.Y +(1.9) < Partt2.Position.Y 
or a.Part1.Position.Y -(1.9) > Partt2.Position.Y 
then
if a.Part1.Position.Z + 2.5 < Partt3.Position.Z
or a.Part1.Position.Z > Partt3.Position.Z
or a.Part1.Position.X +(1.9) < Partt3.Position.X 
or a.Part1.Position.X -(1.9) > Partt3.Position.X 
or a.Part1.Position.Y +(1.9) < Partt3.Position.Y 
or a.Part1.Position.Y -(1.9) > Partt3.Position.Y 
then
if a.Part1.Position.Z + 2.5 < Partt4.Position.Z
or a.Part1.Position.Z > Partt4.Position.Z
or a.Part1.Position.X +(1.9) < Partt4.Position.X 
or a.Part1.Position.X -(1.9) > Partt4.Position.X 
or a.Part1.Position.Y +(1.9) < Partt4.Position.Y 
or a.Part1.Position.Y -(1.9) > Partt4.Position.Y 
then
if a.Part1.Position.Z + 2.5 < Partt5.Position.Z
or a.Part1.Position.Z > Partt5.Position.Z
or a.Part1.Position.X +(1.9) < Partt5.Position.X 
or a.Part1.Position.X -(1.9) > Partt5.Position.X 
or a.Part1.Position.Y +(1.9) < Partt5.Position.Y 
or a.Part1.Position.Y -(1.9) > Partt5.Position.Y 
then
if a.Part1.Position.Z + 2.5 < Partt6.Position.Z
or a.Part1.Position.Z > Partt6.Position.Z
or a.Part1.Position.X +(1.9) < Partt6.Position.X 
or a.Part1.Position.X -(1.9) > Partt6.Position.X 
or a.Part1.Position.Y +(1.9) < Partt6.Position.Y 
or a.Part1.Position.Y -(1.9) > Partt6.Position.Y 
then
if a.Part1.Position.Z + 2.5 < Partt7.Position.Z
or a.Part1.Position.Z > Partt7.Position.Z
or a.Part1.Position.X +(1.9) < Partt7.Position.X 
or a.Part1.Position.X -(1.9) > Partt7.Position.X 
or a.Part1.Position.Y +(1.9) < Partt7.Position.Y 
or a.Part1.Position.Y -(1.9) > Partt7.Position.Y 
then
if a.Part1.Position.Z + 2.5 < Partt8.Position.Z
or a.Part1.Position.Z > Partt8.Position.Z
or a.Part1.Position.X +(1.9) < Partt8.Position.X 
or a.Part1.Position.X -(1.9) > Partt8.Position.X 
or a.Part1.Position.Y +(1.9) < Partt8.Position.Y 
or a.Part1.Position.Y -(1.9) > Partt8.Position.Y 
then
zpoPart1 = 1
else zpoPart1 = 0 
end
else zpoPart1 = 0
end
else zpoPart1 = 0
end
else zpoPart1 = 0
end
else zpoPart1 = 0
end
else zpoPart1 = 0
end
else zpoPart1 = 0
end

if a.Part1.Position.Z - 2.5 > Partt2.Position.Z -- P1 -Z Positions Library Reference
or a.Part1.Position.Z < Partt2.Position.Z
or a.Part1.Position.X +(1.9) < Partt2.Position.X 
or a.Part1.Position.X -(1.9) > Partt2.Position.X 
or a.Part1.Position.Y +(1.9) < Partt2.Position.Y 
or a.Part1.Position.Y -(1.9) > Partt2.Position.Y 
then
if a.Part1.Position.Z - 2.5 > Partt3.Position.Z
or a.Part1.Position.Z < Partt3.Position.Z
or a.Part1.Position.X +(1.9) < Partt3.Position.X 
or a.Part1.Position.X -(1.9) > Partt3.Position.X 
or a.Part1.Position.Y +(1.9) < Partt3.Position.Y 
or a.Part1.Position.Y -(1.9) > Partt3.Position.Y 
then
if a.Part1.Position.Z - 2.5 > Partt4.Position.Z
or a.Part1.Position.Z < Partt4.Position.Z
or a.Part1.Position.X +(1.9) < Partt4.Position.X 
or a.Part1.Position.X -(1.9) > Partt4.Position.X 
or a.Part1.Position.Y +(1.9) < Partt4.Position.Y 
or a.Part1.Position.Y -(1.9) > Partt4.Position.Y 
then
if a.Part1.Position.Z - 2.5 > Partt5.Position.Z
or a.Part1.Position.Z < Partt5.Position.Z
or a.Part1.Position.X +(1.9) < Partt5.Position.X 
or a.Part1.Position.X -(1.9) > Partt5.Position.X 
or a.Part1.Position.Y +(1.9) < Partt5.Position.Y 
or a.Part1.Position.Y -(1.9) > Partt5.Position.Y 
then
if a.Part1.Position.Z - 2.5 > Partt6.Position.Z
or a.Part1.Position.Z < Partt6.Position.Z
or a.Part1.Position.X +(1.9) < Partt6.Position.X 
or a.Part1.Position.X -(1.9) > Partt6.Position.X 
or a.Part1.Position.Y +(1.9) < Partt6.Position.Y 
or a.Part1.Position.Y -(1.9) > Partt6.Position.Y 
then
if a.Part1.Position.Z - 2.5 > Partt7.Position.Z
or a.Part1.Position.Z < Partt7.Position.Z
or a.Part1.Position.X +(1.9) < Partt7.Position.X 
or a.Part1.Position.X -(1.9) > Partt7.Position.X 
or a.Part1.Position.Y +(1.9) < Partt7.Position.Y 
or a.Part1.Position.Y -(1.9) > Partt7.Position.Y 
then
if a.Part1.Position.Z - 2.5 > Partt8.Position.Z
or a.Part1.Position.Z < Partt8.Position.Z
or a.Part1.Position.X +(1.9) < Partt8.Position.X 
or a.Part1.Position.X -(1.9) > Partt8.Position.X 
or a.Part1.Position.Y +(1.9) < Partt8.Position.Y 
or a.Part1.Position.Y -(1.9) > Partt8.Position.Y 
then
znePart1 = 1
else znePart1 = 0 
end
else znePart1 = 0
end
else znePart1 = 0
end
else znePart1 = 0
end
else znePart1 = 0
end
else znePart1 = 0
end
else znePart1 = 0
end

if PriPart1 == 1
and XPart1 == 1
then	
if xpoPart1 == 1
then
for i=1, 10 do
a.Part1.CFrame = a.Part1.CFrame +(Vector3.new(XPart1/10,0,0))
wait(.01)
end
else PriPart1 = (PriPart1+1)
end
else end

if PriPart1 == 1
and XPart1 == -1
then	
if xnePart1 == 1
then
for i=1, 10 do
a.Part1.CFrame = a.Part1.CFrame +(Vector3.new(XPart1/10,0,0))
wait(.01)
end
else PriPart1 = (PriPart1+1)
end
else end

if PriPart1 == 2
and YPart1 == 1
then	
if ypoPart1 == 1
then
for i=1, 10 do
a.Part1.CFrame = a.Part1.CFrame +(Vector3.new(0,YPart1/10,0))
wait(.01)
end
else PriPart1 = (PriPart1+1)
end
else end

if PriPart1 == 2
and YPart1 == -1
then	
if ynePart1 == 1
then
for i=1, 10 do
a.Part1.CFrame = a.Part1.CFrame +(Vector3.new(0,YPart1/10,0))
wait(.01)
end
else PriPart1 = (PriPart1+1)
end
else end

if PriPart1 == 3
and ZPart1 == 1
then	
if zpoPart1 == 1
then
for i=1, 10 do
a.Part1.CFrame = a.Part1.CFrame +(Vector3.new(0,0,ZPart1/10))
wait(.01)
end
else PriPart1 = (PriPart1+1)
end
else end

if PriPart1 == 3
and ZPart1 == -1
then	
if znePart1 == 1
then
for i=1, 10 do
a.Part1.CFrame = a.Part1.CFrame +(Vector3.new(0,0,ZPart1/10))
wait(.01)
end
else PriPart1 = (PriPart1+1)
end
else end




sPart1 =(sPart1+1) --Checking reconfiguring positions

if sPart1 == 1
then
XSPart1 = a.Part1.Position.X
YSPart1 = a.Part1.Position.Y
ZSPart1 = a.Part1.Position.Z
else end

if sPart1 == 3 --Checking if Part is Valid for Instant Fix 
and XSPart1 == a.Part1.Position.X
and YSPart1 == a.Part1.Position.Y
and ZSPart1 == a.Part1.Position.Z
and a.Part1.Position.X < cPart1.Position.X +4
and a.Part1.Position.X > cPart1.Position.X -4
and a.Part1.Position.Y < cPart1.Position.Y +4
and a.Part1.Position.Y > cPart1.Position.Y -4
and a.Part1.Position.Z < cPart1.Position.Z +4
and a.Part1.Position.Z > cPart1.Position.Z -4
then
for i=1, 20 do
a.Part1.CFrame = a.Part1.CFrame +(Vector3.new((cPart1.Position.X-XSPart1)/20,(cPart1.Position.Y-YSPart1)/20,(cPart1.Position.Z-ZSPart1)/20))
wait(.01)
end
else end






if sPart1 == 3
and RPart1 == 1 --Checking +X Reconfiguration
then
if  XSPart1 == a.Part1.Position.X
and YSPart1 == a.Part1.Position.Y
and ZSPart1 == a.Part1.Position.Z
then
RPart1 = (RPart1+1)
repeat
if a.Part1.Position.X + 2.5 < Partt2.Position.X -- P1 +X Positions Library Reference
or a.Part1.Position.X > Partt2.Position.X
or a.Part1.Position.Y +(1.9) < Partt2.Position.Y 
or a.Part1.Position.Y -(1.9) > Partt2.Position.Y 
or a.Part1.Position.Z +(1.9) < Partt2.Position.Z 
or a.Part1.Position.Z -(1.9) > Partt2.Position.Z 
then
if a.Part1.Position.X + 2.5 < Partt3.Position.X
or a.Part1.Position.X > Partt3.Position.X
or a.Part1.Position.Y +(1.9) < Partt3.Position.Y 
or a.Part1.Position.Y -(1.9) > Partt3.Position.Y 
or a.Part1.Position.Z +(1.9) < Partt3.Position.Z 
or a.Part1.Position.Z -(1.9) > Partt3.Position.Z 
then
if a.Part1.Position.X + 2.5 < Partt4.Position.X
or a.Part1.Position.X > Partt4.Position.X
or a.Part1.Position.Y +(1.9) < Partt4.Position.Y 
or a.Part1.Position.Y -(1.9) > Partt4.Position.Y 
or a.Part1.Position.Z +(1.9) < Partt4.Position.Z 
or a.Part1.Position.Z -(1.9) > Partt4.Position.Z 
then
if a.Part1.Position.X + 2.5 < Partt5.Position.X
or a.Part1.Position.X > Partt5.Position.X
or a.Part1.Position.Y +(1.9) < Partt5.Position.Y 
or a.Part1.Position.Y -(1.9) > Partt5.Position.Y 
or a.Part1.Position.Z +(1.9) < Partt5.Position.Z 
or a.Part1.Position.Z -(1.9) > Partt5.Position.Z 
then
if a.Part1.Position.X + 2.5 < Partt6.Position.X
or a.Part1.Position.X > Partt6.Position.X
or a.Part1.Position.Y +(1.9) < Partt6.Position.Y 
or a.Part1.Position.Y -(1.9) > Partt6.Position.Y 
or a.Part1.Position.Z +(1.9) < Partt6.Position.Z 
or a.Part1.Position.Z -(1.9) > Partt6.Position.Z 
then
if a.Part1.Position.X + 2.5 < Partt7.Position.X
or a.Part1.Position.X > Partt7.Position.X
or a.Part1.Position.Y +(1.9) < Partt7.Position.Y 
or a.Part1.Position.Y -(1.9) > Partt7.Position.Y 
or a.Part1.Position.Z +(1.9) < Partt7.Position.Z 
or a.Part1.Position.Z -(1.9) > Partt7.Position.Z 
then
if a.Part1.Position.X + 2.5 < Partt8.Position.X
or a.Part1.Position.X > Partt8.Position.X
or a.Part1.Position.Y +(1.9) < Partt8.Position.Y 
or a.Part1.Position.Y -(1.9) > Partt8.Position.Y 
or a.Part1.Position.Z +(1.9) < Partt8.Position.Z 
or a.Part1.Position.Z -(1.9) > Partt8.Position.Z 
then
xpoPart1 = 1
else xpoPart1 = 0 
end
else xpoPart1 = 0
end
else xpoPart1 = 0
end
else xpoPart1 = 0
end
else xpoPart1 = 0
end
else xpoPart1 = 0
end
else xpoPart1 = 0
end

if a.Part1.Position.X - 2.5 > Partt2.Position.X -- P1 -X Positions Library Reference
or a.Part1.Position.X < Partt2.Position.X
or a.Part1.Position.Y +(1.9) < Partt2.Position.Y 
or a.Part1.Position.Y -(1.9) > Partt2.Position.Y 
or a.Part1.Position.Z +(1.9) < Partt2.Position.Z 
or a.Part1.Position.Z -(1.9) > Partt2.Position.Z 
then
if a.Part1.Position.X - 2.5 > Partt3.Position.X
or a.Part1.Position.X < Partt3.Position.X
or a.Part1.Position.Y +(1.9) < Partt3.Position.Y 
or a.Part1.Position.Y -(1.9) > Partt3.Position.Y 
or a.Part1.Position.Z +(1.9) < Partt3.Position.Z 
or a.Part1.Position.Z -(1.9) > Partt3.Position.Z 
then
if a.Part1.Position.X - 2.5 > Partt4.Position.X
or a.Part1.Position.X < Partt4.Position.X
or a.Part1.Position.Y +(1.9) < Partt4.Position.Y 
or a.Part1.Position.Y -(1.9) > Partt4.Position.Y 
or a.Part1.Position.Z +(1.9) < Partt4.Position.Z 
or a.Part1.Position.Z -(1.9) > Partt4.Position.Z 
then
if a.Part1.Position.X - 2.5 > Partt5.Position.X
or a.Part1.Position.X < Partt5.Position.X
or a.Part1.Position.Y +(1.9) < Partt5.Position.Y 
or a.Part1.Position.Y -(1.9) > Partt5.Position.Y 
or a.Part1.Position.Z +(1.9) < Partt5.Position.Z 
or a.Part1.Position.Z -(1.9) > Partt5.Position.Z 
then
if a.Part1.Position.X - 2.5 > Partt6.Position.X
or a.Part1.Position.X < Partt6.Position.X
or a.Part1.Position.Y +(1.9) < Partt6.Position.Y 
or a.Part1.Position.Y -(1.9) > Partt6.Position.Y 
or a.Part1.Position.Z +(1.9) < Partt6.Position.Z 
or a.Part1.Position.Z -(1.9) > Partt6.Position.Z 
then
if a.Part1.Position.X - 2.5 > Partt7.Position.X
or a.Part1.Position.X < Partt7.Position.X
or a.Part1.Position.Y +(1.9) < Partt7.Position.Y 
or a.Part1.Position.Y -(1.9) > Partt7.Position.Y 
or a.Part1.Position.Z +(1.9) < Partt7.Position.Z 
or a.Part1.Position.Z -(1.9) > Partt7.Position.Z 
then
if a.Part1.Position.X - 2.5 > Partt8.Position.X
or a.Part1.Position.X < Partt8.Position.X
or a.Part1.Position.Y +(1.9) < Partt8.Position.Y 
or a.Part1.Position.Y -(1.9) > Partt8.Position.Y 
or a.Part1.Position.Z +(1.9) < Partt8.Position.Z 
or a.Part1.Position.Z -(1.9) > Partt8.Position.Z 
then
xnePart1 = 1
else xnePart1 = 0 
end
else xnePart1 = 0
end
else xnePart1 = 0
end
else xnePart1 = 0
end
else xnePart1 = 0
end
else xnePart1 = 0
end
else xnePart1 = 0
end

if a.Part1.Position.Y + 2.5 < Partt2.Position.Y -- P1 +Y Positions Library Reference
or a.Part1.Position.Y > Partt2.Position.Y
or a.Part1.Position.X +(1.9) < Partt2.Position.X 
or a.Part1.Position.X -(1.9) > Partt2.Position.X 
or a.Part1.Position.Z +(1.9) < Partt2.Position.Z 
or a.Part1.Position.Z -(1.9) > Partt2.Position.Z 
then
if a.Part1.Position.Y + 2.5 < Partt3.Position.Y
or a.Part1.Position.Y > Partt3.Position.Y
or a.Part1.Position.X +(1.9) < Partt3.Position.X 
or a.Part1.Position.X -(1.9) > Partt3.Position.X 
or a.Part1.Position.Z +(1.9) < Partt3.Position.Z 
or a.Part1.Position.Z -(1.9) > Partt3.Position.Z 
then
if a.Part1.Position.Y + 2.5 < Partt4.Position.Y
or a.Part1.Position.Y > Partt4.Position.Y
or a.Part1.Position.X +(1.9) < Partt4.Position.X 
or a.Part1.Position.X -(1.9) > Partt4.Position.X 
or a.Part1.Position.Z +(1.9) < Partt4.Position.Z 
or a.Part1.Position.Z -(1.9) > Partt4.Position.Z 
then
if a.Part1.Position.Y + 2.5 < Partt5.Position.Y
or a.Part1.Position.Y > Partt5.Position.Y
or a.Part1.Position.X +(1.9) < Partt5.Position.X 
or a.Part1.Position.X -(1.9) > Partt5.Position.X 
or a.Part1.Position.Z +(1.9) < Partt5.Position.Z 
or a.Part1.Position.Z -(1.9) > Partt5.Position.Z 
then
if a.Part1.Position.Y + 2.5 < Partt6.Position.Y
or a.Part1.Position.Y > Partt6.Position.Y
or a.Part1.Position.X +(1.9) < Partt6.Position.X 
or a.Part1.Position.X -(1.9) > Partt6.Position.X 
or a.Part1.Position.Z +(1.9) < Partt6.Position.Z 
or a.Part1.Position.Z -(1.9) > Partt6.Position.Z 
then
if a.Part1.Position.Y + 2.5 < Partt7.Position.Y
or a.Part1.Position.Y > Partt7.Position.Y
or a.Part1.Position.X +(1.9) < Partt7.Position.X 
or a.Part1.Position.X -(1.9) > Partt7.Position.X 
or a.Part1.Position.Z +(1.9) < Partt7.Position.Z 
or a.Part1.Position.Z -(1.9) > Partt7.Position.Z 
then
if a.Part1.Position.Y + 2.5 < Partt8.Position.Y
or a.Part1.Position.Y > Partt8.Position.Y
or a.Part1.Position.X +(1.9) < Partt8.Position.X 
or a.Part1.Position.X -(1.9) > Partt8.Position.X 
or a.Part1.Position.Z +(1.9) < Partt8.Position.Z 
or a.Part1.Position.Z -(1.9) > Partt8.Position.Z 
then
ypoPart1 = 1
else ypoPart1 = 0 
end
else ypoPart1 = 0
end
else ypoPart1 = 0
end
else ypoPart1 = 0
end
else ypoPart1 = 0
end
else ypoPart1 = 0
end
else ypoPart1 = 0
end

if a.Part1.Position.Y - 2.5 > Partt2.Position.Y -- P1 -Y Positions Library Reference
or a.Part1.Position.Y < Partt2.Position.Y
or a.Part1.Position.X +(1.9) < Partt2.Position.X 
or a.Part1.Position.X -(1.9) > Partt2.Position.X 
or a.Part1.Position.Z +(1.9) < Partt2.Position.Z 
or a.Part1.Position.Z -(1.9) > Partt2.Position.Z 
then
if a.Part1.Position.Y - 2.5 > Partt3.Position.Y
or a.Part1.Position.Y < Partt3.Position.Y
or a.Part1.Position.X +(1.9) < Partt3.Position.X 
or a.Part1.Position.X -(1.9) > Partt3.Position.X 
or a.Part1.Position.Z +(1.9) < Partt3.Position.Z 
or a.Part1.Position.Z -(1.9) > Partt3.Position.Z 
then
if a.Part1.Position.Y - 2.5 > Partt4.Position.Y
or a.Part1.Position.Y < Partt4.Position.Y
or a.Part1.Position.X +(1.9) < Partt4.Position.X 
or a.Part1.Position.X -(1.9) > Partt4.Position.X 
or a.Part1.Position.Z +(1.9) < Partt4.Position.Z 
or a.Part1.Position.Z -(1.9) > Partt4.Position.Z 
then
if a.Part1.Position.Y - 2.5 > Partt5.Position.Y
or a.Part1.Position.Y < Partt5.Position.Y
or a.Part1.Position.X +(1.9) < Partt5.Position.X 
or a.Part1.Position.X -(1.9) > Partt5.Position.X 
or a.Part1.Position.Z +(1.9) < Partt5.Position.Z 
or a.Part1.Position.Z -(1.9) > Partt5.Position.Z 
then
if a.Part1.Position.Y - 2.5 > Partt6.Position.Y
or a.Part1.Position.Y < Partt6.Position.Y
or a.Part1.Position.X +(1.9) < Partt6.Position.X 
or a.Part1.Position.X -(1.9) > Partt6.Position.X 
or a.Part1.Position.Z +(1.9) < Partt6.Position.Z 
or a.Part1.Position.Z -(1.9) > Partt6.Position.Z 
then
if a.Part1.Position.Y - 2.5 > Partt7.Position.Y
or a.Part1.Position.Y < Partt7.Position.Y
or a.Part1.Position.X +(1.9) < Partt7.Position.X 
or a.Part1.Position.X -(1.9) > Partt7.Position.X 
or a.Part1.Position.Z +(1.9) < Partt7.Position.Z 
or a.Part1.Position.Z -(1.9) > Partt7.Position.Z 
then
if a.Part1.Position.Y - 2.5 > Partt8.Position.Y
or a.Part1.Position.Y < Partt8.Position.Y
or a.Part1.Position.X +(1.9) < Partt8.Position.X 
or a.Part1.Position.X -(1.9) > Partt8.Position.X 
or a.Part1.Position.Z +(1.9) < Partt8.Position.Z 
or a.Part1.Position.Z -(1.9) > Partt8.Position.Z 
then
ynePart1 = 1
else ynePart1 = 0 
end
else ynePart1 = 0
end
else ynePart1 = 0
end
else ynePart1 = 0
end
else ynePart1 = 0
end
else ynePart1 = 0
end
else ynePart1 = 0
end

if a.Part1.Position.Z + 2.5 < Partt2.Position.Z -- P1 +Z Positions Library Reference
or a.Part1.Position.Z > Partt2.Position.Z
or a.Part1.Position.X +(1.9) < Partt2.Position.X 
or a.Part1.Position.X -(1.9) > Partt2.Position.X 
or a.Part1.Position.Y +(1.9) < Partt2.Position.Y 
or a.Part1.Position.Y -(1.9) > Partt2.Position.Y 
then
if a.Part1.Position.Z + 2.5 < Partt3.Position.Z
or a.Part1.Position.Z > Partt3.Position.Z
or a.Part1.Position.X +(1.9) < Partt3.Position.X 
or a.Part1.Position.X -(1.9) > Partt3.Position.X 
or a.Part1.Position.Y +(1.9) < Partt3.Position.Y 
or a.Part1.Position.Y -(1.9) > Partt3.Position.Y 
then
if a.Part1.Position.Z + 2.5 < Partt4.Position.Z
or a.Part1.Position.Z > Partt4.Position.Z
or a.Part1.Position.X +(1.9) < Partt4.Position.X 
or a.Part1.Position.X -(1.9) > Partt4.Position.X 
or a.Part1.Position.Y +(1.9) < Partt4.Position.Y 
or a.Part1.Position.Y -(1.9) > Partt4.Position.Y 
then
if a.Part1.Position.Z + 2.5 < Partt5.Position.Z
or a.Part1.Position.Z > Partt5.Position.Z
or a.Part1.Position.X +(1.9) < Partt5.Position.X 
or a.Part1.Position.X -(1.9) > Partt5.Position.X 
or a.Part1.Position.Y +(1.9) < Partt5.Position.Y 
or a.Part1.Position.Y -(1.9) > Partt5.Position.Y 
then
if a.Part1.Position.Z + 2.5 < Partt6.Position.Z
or a.Part1.Position.Z > Partt6.Position.Z
or a.Part1.Position.X +(1.9) < Partt6.Position.X 
or a.Part1.Position.X -(1.9) > Partt6.Position.X 
or a.Part1.Position.Y +(1.9) < Partt6.Position.Y 
or a.Part1.Position.Y -(1.9) > Partt6.Position.Y 
then
if a.Part1.Position.Z + 2.5 < Partt7.Position.Z
or a.Part1.Position.Z > Partt7.Position.Z
or a.Part1.Position.X +(1.9) < Partt7.Position.X 
or a.Part1.Position.X -(1.9) > Partt7.Position.X 
or a.Part1.Position.Y +(1.9) < Partt7.Position.Y 
or a.Part1.Position.Y -(1.9) > Partt7.Position.Y 
then
if a.Part1.Position.Z + 2.5 < Partt8.Position.Z
or a.Part1.Position.Z > Partt8.Position.Z
or a.Part1.Position.X +(1.9) < Partt8.Position.X 
or a.Part1.Position.X -(1.9) > Partt8.Position.X 
or a.Part1.Position.Y +(1.9) < Partt8.Position.Y 
or a.Part1.Position.Y -(1.9) > Partt8.Position.Y 
then
zpoPart1 = 1
else zpoPart1 = 0 
end
else zpoPart1 = 0
end
else zpoPart1 = 0
end
else zpoPart1 = 0
end
else zpoPart1 = 0
end
else zpoPart1 = 0
end
else zpoPart1 = 0
end

if a.Part1.Position.Z - 2.5 > Partt2.Position.Z -- P1 -Z Positions Library Reference
or a.Part1.Position.Z < Partt2.Position.Z
or a.Part1.Position.X +(1.9) < Partt2.Position.X 
or a.Part1.Position.X -(1.9) > Partt2.Position.X 
or a.Part1.Position.Y +(1.9) < Partt2.Position.Y 
or a.Part1.Position.Y -(1.9) > Partt2.Position.Y 
then
if a.Part1.Position.Z - 2.5 > Partt3.Position.Z
or a.Part1.Position.Z < Partt3.Position.Z
or a.Part1.Position.X +(1.9) < Partt3.Position.X 
or a.Part1.Position.X -(1.9) > Partt3.Position.X 
or a.Part1.Position.Y +(1.9) < Partt3.Position.Y 
or a.Part1.Position.Y -(1.9) > Partt3.Position.Y 
then
if a.Part1.Position.Z - 2.5 > Partt4.Position.Z
or a.Part1.Position.Z < Partt4.Position.Z
or a.Part1.Position.X +(1.9) < Partt4.Position.X 
or a.Part1.Position.X -(1.9) > Partt4.Position.X 
or a.Part1.Position.Y +(1.9) < Partt4.Position.Y 
or a.Part1.Position.Y -(1.9) > Partt4.Position.Y 
then
if a.Part1.Position.Z - 2.5 > Partt5.Position.Z
or a.Part1.Position.Z < Partt5.Position.Z
or a.Part1.Position.X +(1.9) < Partt5.Position.X 
or a.Part1.Position.X -(1.9) > Partt5.Position.X 
or a.Part1.Position.Y +(1.9) < Partt5.Position.Y 
or a.Part1.Position.Y -(1.9) > Partt5.Position.Y 
then
if a.Part1.Position.Z - 2.5 > Partt6.Position.Z
or a.Part1.Position.Z < Partt6.Position.Z
or a.Part1.Position.X +(1.9) < Partt6.Position.X 
or a.Part1.Position.X -(1.9) > Partt6.Position.X 
or a.Part1.Position.Y +(1.9) < Partt6.Position.Y 
or a.Part1.Position.Y -(1.9) > Partt6.Position.Y 
then
if a.Part1.Position.Z - 2.5 > Partt7.Position.Z
or a.Part1.Position.Z < Partt7.Position.Z
or a.Part1.Position.X +(1.9) < Partt7.Position.X 
or a.Part1.Position.X -(1.9) > Partt7.Position.X 
or a.Part1.Position.Y +(1.9) < Partt7.Position.Y 
or a.Part1.Position.Y -(1.9) > Partt7.Position.Y 
then
if a.Part1.Position.Z - 2.5 > Partt8.Position.Z
or a.Part1.Position.Z < Partt8.Position.Z
or a.Part1.Position.X +(1.9) < Partt8.Position.X 
or a.Part1.Position.X -(1.9) > Partt8.Position.X 
or a.Part1.Position.Y +(1.9) < Partt8.Position.Y 
or a.Part1.Position.Y -(1.9) > Partt8.Position.Y 
then
znePart1 = 1
else znePart1 = 0 
end
else znePart1 = 0
end
else znePart1 = 0
end
else znePart1 = 0
end
else znePart1 = 0
end
else znePart1 = 0
end
else znePart1 = 0
end

PriPart1 = 1 
if PriPart1 == 1
then	
if xpoPart1 == 1
then
for i=1, 10 do
a.Part1.CFrame = a.Part1.CFrame +(Vector3.new(.1,0,0))
wait(.01)
end
else PriPart1 = (PriPart1+1)
end
else end

if PriPart1 == 2
then	
if ypoPart1 == 1
then
for i=1, 10 do
a.Part1.CFrame = a.Part1.CFrame +(Vector3.new(0,.1,0))
wait(.01)
end
else PriPart1 = (PriPart1+1)
end
else end

if PriPart1 == 3
then	
if zpoPart1 == 1
then
for i=1, 10 do
a.Part1.CFrame = a.Part1.CFrame +(Vector3.new(0,0,.1))
wait(.01)
end
else PriPart1 = (PriPart1+1)
end
else end

if PriPart1 == 4
then	
if ynePart1 == 1
then
for i=1, 10 do
a.Part1.CFrame = a.Part1.CFrame +(Vector3.new(0,-.1,0))
wait(.01)
end
else PriPart1 = (PriPart1+1)
end
else end

if PriPart1 == 5
then	
if znePart1 == 1
then
for i=1, 10 do
a.Part1.CFrame = a.Part1.CFrame +(Vector3.new(0,0,-.1))
wait(.01)
end
else PriPart1 = (PriPart1+1)
end
else end
------------------------------------------------------------------------------
for i=1, 10 do
a.Part1.CFrame = a.Part1.CFrame * CFrame.fromEulerAnglesXYZ(math.pi/20,0,0)
wait(.01)
end
TMPart1 = (TMPart1+1)
until 
math.abs(a.Part1.Position.X - cPart1.Position.X) > 5
or TMPart1 == 7
else end
else end

if sPart1 == 3
and RPart1 == 2 --Checking +X Reconfiguration
then
if  XSPart1 == a.Part1.Position.X
and YSPart1 == a.Part1.Position.Y
and ZSPart1 == a.Part1.Position.Z
then
RPart1 = (RPart1+1)
repeat
if a.Part1.Position.X + 2.5 < Partt2.Position.X -- P1 +X Positions Library Reference
or a.Part1.Position.X > Partt2.Position.X
or a.Part1.Position.Y +(1.9) < Partt2.Position.Y 
or a.Part1.Position.Y -(1.9) > Partt2.Position.Y 
or a.Part1.Position.Z +(1.9) < Partt2.Position.Z 
or a.Part1.Position.Z -(1.9) > Partt2.Position.Z 
then
if a.Part1.Position.X + 2.5 < Partt3.Position.X
or a.Part1.Position.X > Partt3.Position.X
or a.Part1.Position.Y +(1.9) < Partt3.Position.Y 
or a.Part1.Position.Y -(1.9) > Partt3.Position.Y 
or a.Part1.Position.Z +(1.9) < Partt3.Position.Z 
or a.Part1.Position.Z -(1.9) > Partt3.Position.Z 
then
if a.Part1.Position.X + 2.5 < Partt4.Position.X
or a.Part1.Position.X > Partt4.Position.X
or a.Part1.Position.Y +(1.9) < Partt4.Position.Y 
or a.Part1.Position.Y -(1.9) > Partt4.Position.Y 
or a.Part1.Position.Z +(1.9) < Partt4.Position.Z 
or a.Part1.Position.Z -(1.9) > Partt4.Position.Z 
then
if a.Part1.Position.X + 2.5 < Partt5.Position.X
or a.Part1.Position.X > Partt5.Position.X
or a.Part1.Position.Y +(1.9) < Partt5.Position.Y 
or a.Part1.Position.Y -(1.9) > Partt5.Position.Y 
or a.Part1.Position.Z +(1.9) < Partt5.Position.Z 
or a.Part1.Position.Z -(1.9) > Partt5.Position.Z 
then
if a.Part1.Position.X + 2.5 < Partt6.Position.X
or a.Part1.Position.X > Partt6.Position.X
or a.Part1.Position.Y +(1.9) < Partt6.Position.Y 
or a.Part1.Position.Y -(1.9) > Partt6.Position.Y 
or a.Part1.Position.Z +(1.9) < Partt6.Position.Z 
or a.Part1.Position.Z -(1.9) > Partt6.Position.Z 
then
if a.Part1.Position.X + 2.5 < Partt7.Position.X
or a.Part1.Position.X > Partt7.Position.X
or a.Part1.Position.Y +(1.9) < Partt7.Position.Y 
or a.Part1.Position.Y -(1.9) > Partt7.Position.Y 
or a.Part1.Position.Z +(1.9) < Partt7.Position.Z 
or a.Part1.Position.Z -(1.9) > Partt7.Position.Z 
then
if a.Part1.Position.X + 2.5 < Partt8.Position.X
or a.Part1.Position.X > Partt8.Position.X
or a.Part1.Position.Y +(1.9) < Partt8.Position.Y 
or a.Part1.Position.Y -(1.9) > Partt8.Position.Y 
or a.Part1.Position.Z +(1.9) < Partt8.Position.Z 
or a.Part1.Position.Z -(1.9) > Partt8.Position.Z 
then
xpoPart1 = 1
else xpoPart1 = 0 
end
else xpoPart1 = 0
end
else xpoPart1 = 0
end
else xpoPart1 = 0
end
else xpoPart1 = 0
end
else xpoPart1 = 0
end
else xpoPart1 = 0
end

if a.Part1.Position.X - 2.5 > Partt2.Position.X -- P1 -X Positions Library Reference
or a.Part1.Position.X < Partt2.Position.X
or a.Part1.Position.Y +(1.9) < Partt2.Position.Y 
or a.Part1.Position.Y -(1.9) > Partt2.Position.Y 
or a.Part1.Position.Z +(1.9) < Partt2.Position.Z 
or a.Part1.Position.Z -(1.9) > Partt2.Position.Z 
then
if a.Part1.Position.X - 2.5 > Partt3.Position.X
or a.Part1.Position.X < Partt3.Position.X
or a.Part1.Position.Y +(1.9) < Partt3.Position.Y 
or a.Part1.Position.Y -(1.9) > Partt3.Position.Y 
or a.Part1.Position.Z +(1.9) < Partt3.Position.Z 
or a.Part1.Position.Z -(1.9) > Partt3.Position.Z 
then
if a.Part1.Position.X - 2.5 > Partt4.Position.X
or a.Part1.Position.X < Partt4.Position.X
or a.Part1.Position.Y +(1.9) < Partt4.Position.Y 
or a.Part1.Position.Y -(1.9) > Partt4.Position.Y 
or a.Part1.Position.Z +(1.9) < Partt4.Position.Z 
or a.Part1.Position.Z -(1.9) > Partt4.Position.Z 
then
if a.Part1.Position.X - 2.5 > Partt5.Position.X
or a.Part1.Position.X < Partt5.Position.X
or a.Part1.Position.Y +(1.9) < Partt5.Position.Y 
or a.Part1.Position.Y -(1.9) > Partt5.Position.Y 
or a.Part1.Position.Z +(1.9) < Partt5.Position.Z 
or a.Part1.Position.Z -(1.9) > Partt5.Position.Z 
then
if a.Part1.Position.X - 2.5 > Partt6.Position.X
or a.Part1.Position.X < Partt6.Position.X
or a.Part1.Position.Y +(1.9) < Partt6.Position.Y 
or a.Part1.Position.Y -(1.9) > Partt6.Position.Y 
or a.Part1.Position.Z +(1.9) < Partt6.Position.Z 
or a.Part1.Position.Z -(1.9) > Partt6.Position.Z 
then
if a.Part1.Position.X - 2.5 > Partt7.Position.X
or a.Part1.Position.X < Partt7.Position.X
or a.Part1.Position.Y +(1.9) < Partt7.Position.Y 
or a.Part1.Position.Y -(1.9) > Partt7.Position.Y 
or a.Part1.Position.Z +(1.9) < Partt7.Position.Z 
or a.Part1.Position.Z -(1.9) > Partt7.Position.Z 
then
if a.Part1.Position.X - 2.5 > Partt8.Position.X
or a.Part1.Position.X < Partt8.Position.X
or a.Part1.Position.Y +(1.9) < Partt8.Position.Y 
or a.Part1.Position.Y -(1.9) > Partt8.Position.Y 
or a.Part1.Position.Z +(1.9) < Partt8.Position.Z 
or a.Part1.Position.Z -(1.9) > Partt8.Position.Z 
then
xnePart1 = 1
else xnePart1 = 0 
end
else xnePart1 = 0
end
else xnePart1 = 0
end
else xnePart1 = 0
end
else xnePart1 = 0
end
else xnePart1 = 0
end
else xnePart1 = 0
end

if a.Part1.Position.Y + 2.5 < Partt2.Position.Y -- P1 +Y Positions Library Reference
or a.Part1.Position.Y > Partt2.Position.Y
or a.Part1.Position.X +(1.9) < Partt2.Position.X 
or a.Part1.Position.X -(1.9) > Partt2.Position.X 
or a.Part1.Position.Z +(1.9) < Partt2.Position.Z 
or a.Part1.Position.Z -(1.9) > Partt2.Position.Z 
then
if a.Part1.Position.Y + 2.5 < Partt3.Position.Y
or a.Part1.Position.Y > Partt3.Position.Y
or a.Part1.Position.X +(1.9) < Partt3.Position.X 
or a.Part1.Position.X -(1.9) > Partt3.Position.X 
or a.Part1.Position.Z +(1.9) < Partt3.Position.Z 
or a.Part1.Position.Z -(1.9) > Partt3.Position.Z 
then
if a.Part1.Position.Y + 2.5 < Partt4.Position.Y
or a.Part1.Position.Y > Partt4.Position.Y
or a.Part1.Position.X +(1.9) < Partt4.Position.X 
or a.Part1.Position.X -(1.9) > Partt4.Position.X 
or a.Part1.Position.Z +(1.9) < Partt4.Position.Z 
or a.Part1.Position.Z -(1.9) > Partt4.Position.Z 
then
if a.Part1.Position.Y + 2.5 < Partt5.Position.Y
or a.Part1.Position.Y > Partt5.Position.Y
or a.Part1.Position.X +(1.9) < Partt5.Position.X 
or a.Part1.Position.X -(1.9) > Partt5.Position.X 
or a.Part1.Position.Z +(1.9) < Partt5.Position.Z 
or a.Part1.Position.Z -(1.9) > Partt5.Position.Z 
then
if a.Part1.Position.Y + 2.5 < Partt6.Position.Y
or a.Part1.Position.Y > Partt6.Position.Y
or a.Part1.Position.X +(1.9) < Partt6.Position.X 
or a.Part1.Position.X -(1.9) > Partt6.Position.X 
or a.Part1.Position.Z +(1.9) < Partt6.Position.Z 
or a.Part1.Position.Z -(1.9) > Partt6.Position.Z 
then
if a.Part1.Position.Y + 2.5 < Partt7.Position.Y
or a.Part1.Position.Y > Partt7.Position.Y
or a.Part1.Position.X +(1.9) < Partt7.Position.X 
or a.Part1.Position.X -(1.9) > Partt7.Position.X 
or a.Part1.Position.Z +(1.9) < Partt7.Position.Z 
or a.Part1.Position.Z -(1.9) > Partt7.Position.Z 
then
if a.Part1.Position.Y + 2.5 < Partt8.Position.Y
or a.Part1.Position.Y > Partt8.Position.Y
or a.Part1.Position.X +(1.9) < Partt8.Position.X 
or a.Part1.Position.X -(1.9) > Partt8.Position.X 
or a.Part1.Position.Z +(1.9) < Partt8.Position.Z 
or a.Part1.Position.Z -(1.9) > Partt8.Position.Z 
then
ypoPart1 = 1
else ypoPart1 = 0 
end
else ypoPart1 = 0
end
else ypoPart1 = 0
end
else ypoPart1 = 0
end
else ypoPart1 = 0
end
else ypoPart1 = 0
end
else ypoPart1 = 0
end

if a.Part1.Position.Y - 2.5 > Partt2.Position.Y -- P1 -Y Positions Library Reference
or a.Part1.Position.Y < Partt2.Position.Y
or a.Part1.Position.X +(1.9) < Partt2.Position.X 
or a.Part1.Position.X -(1.9) > Partt2.Position.X 
or a.Part1.Position.Z +(1.9) < Partt2.Position.Z 
or a.Part1.Position.Z -(1.9) > Partt2.Position.Z 
then
if a.Part1.Position.Y - 2.5 > Partt3.Position.Y
or a.Part1.Position.Y < Partt3.Position.Y
or a.Part1.Position.X +(1.9) < Partt3.Position.X 
or a.Part1.Position.X -(1.9) > Partt3.Position.X 
or a.Part1.Position.Z +(1.9) < Partt3.Position.Z 
or a.Part1.Position.Z -(1.9) > Partt3.Position.Z 
then
if a.Part1.Position.Y - 2.5 > Partt4.Position.Y
or a.Part1.Position.Y < Partt4.Position.Y
or a.Part1.Position.X +(1.9) < Partt4.Position.X 
or a.Part1.Position.X -(1.9) > Partt4.Position.X 
or a.Part1.Position.Z +(1.9) < Partt4.Position.Z 
or a.Part1.Position.Z -(1.9) > Partt4.Position.Z 
then
if a.Part1.Position.Y - 2.5 > Partt5.Position.Y
or a.Part1.Position.Y < Partt5.Position.Y
or a.Part1.Position.X +(1.9) < Partt5.Position.X 
or a.Part1.Position.X -(1.9) > Partt5.Position.X 
or a.Part1.Position.Z +(1.9) < Partt5.Position.Z 
or a.Part1.Position.Z -(1.9) > Partt5.Position.Z 
then
if a.Part1.Position.Y - 2.5 > Partt6.Position.Y
or a.Part1.Position.Y < Partt6.Position.Y
or a.Part1.Position.X +(1.9) < Partt6.Position.X 
or a.Part1.Position.X -(1.9) > Partt6.Position.X 
or a.Part1.Position.Z +(1.9) < Partt6.Position.Z 
or a.Part1.Position.Z -(1.9) > Partt6.Position.Z 
then
if a.Part1.Position.Y - 2.5 > Partt7.Position.Y
or a.Part1.Position.Y < Partt7.Position.Y
or a.Part1.Position.X +(1.9) < Partt7.Position.X 
or a.Part1.Position.X -(1.9) > Partt7.Position.X 
or a.Part1.Position.Z +(1.9) < Partt7.Position.Z 
or a.Part1.Position.Z -(1.9) > Partt7.Position.Z 
then
if a.Part1.Position.Y - 2.5 > Partt8.Position.Y
or a.Part1.Position.Y < Partt8.Position.Y
or a.Part1.Position.X +(1.9) < Partt8.Position.X 
or a.Part1.Position.X -(1.9) > Partt8.Position.X 
or a.Part1.Position.Z +(1.9) < Partt8.Position.Z 
or a.Part1.Position.Z -(1.9) > Partt8.Position.Z 
then
ynePart1 = 1
else ynePart1 = 0 
end
else ynePart1 = 0
end
else ynePart1 = 0
end
else ynePart1 = 0
end
else ynePart1 = 0
end
else ynePart1 = 0
end
else ynePart1 = 0
end

if a.Part1.Position.Z + 2.5 < Partt2.Position.Z -- P1 +Z Positions Library Reference
or a.Part1.Position.Z > Partt2.Position.Z
or a.Part1.Position.X +(1.9) < Partt2.Position.X 
or a.Part1.Position.X -(1.9) > Partt2.Position.X 
or a.Part1.Position.Y +(1.9) < Partt2.Position.Y 
or a.Part1.Position.Y -(1.9) > Partt2.Position.Y 
then
if a.Part1.Position.Z + 2.5 < Partt3.Position.Z
or a.Part1.Position.Z > Partt3.Position.Z
or a.Part1.Position.X +(1.9) < Partt3.Position.X 
or a.Part1.Position.X -(1.9) > Partt3.Position.X 
or a.Part1.Position.Y +(1.9) < Partt3.Position.Y 
or a.Part1.Position.Y -(1.9) > Partt3.Position.Y 
then
if a.Part1.Position.Z + 2.5 < Partt4.Position.Z
or a.Part1.Position.Z > Partt4.Position.Z
or a.Part1.Position.X +(1.9) < Partt4.Position.X 
or a.Part1.Position.X -(1.9) > Partt4.Position.X 
or a.Part1.Position.Y +(1.9) < Partt4.Position.Y 
or a.Part1.Position.Y -(1.9) > Partt4.Position.Y 
then
if a.Part1.Position.Z + 2.5 < Partt5.Position.Z
or a.Part1.Position.Z > Partt5.Position.Z
or a.Part1.Position.X +(1.9) < Partt5.Position.X 
or a.Part1.Position.X -(1.9) > Partt5.Position.X 
or a.Part1.Position.Y +(1.9) < Partt5.Position.Y 
or a.Part1.Position.Y -(1.9) > Partt5.Position.Y 
then
if a.Part1.Position.Z + 2.5 < Partt6.Position.Z
or a.Part1.Position.Z > Partt6.Position.Z
or a.Part1.Position.X +(1.9) < Partt6.Position.X 
or a.Part1.Position.X -(1.9) > Partt6.Position.X 
or a.Part1.Position.Y +(1.9) < Partt6.Position.Y 
or a.Part1.Position.Y -(1.9) > Partt6.Position.Y 
then
if a.Part1.Position.Z + 2.5 < Partt7.Position.Z
or a.Part1.Position.Z > Partt7.Position.Z
or a.Part1.Position.X +(1.9) < Partt7.Position.X 
or a.Part1.Position.X -(1.9) > Partt7.Position.X 
or a.Part1.Position.Y +(1.9) < Partt7.Position.Y 
or a.Part1.Position.Y -(1.9) > Partt7.Position.Y 
then
if a.Part1.Position.Z + 2.5 < Partt8.Position.Z
or a.Part1.Position.Z > Partt8.Position.Z
or a.Part1.Position.X +(1.9) < Partt8.Position.X 
or a.Part1.Position.X -(1.9) > Partt8.Position.X 
or a.Part1.Position.Y +(1.9) < Partt8.Position.Y 
or a.Part1.Position.Y -(1.9) > Partt8.Position.Y 
then
zpoPart1 = 1
else zpoPart1 = 0 
end
else zpoPart1 = 0
end
else zpoPart1 = 0
end
else zpoPart1 = 0
end
else zpoPart1 = 0
end
else zpoPart1 = 0
end
else zpoPart1 = 0
end

if a.Part1.Position.Z - 2.5 > Partt2.Position.Z -- P1 -Z Positions Library Reference
or a.Part1.Position.Z < Partt2.Position.Z
or a.Part1.Position.X +(1.9) < Partt2.Position.X 
or a.Part1.Position.X -(1.9) > Partt2.Position.X 
or a.Part1.Position.Y +(1.9) < Partt2.Position.Y 
or a.Part1.Position.Y -(1.9) > Partt2.Position.Y 
then
if a.Part1.Position.Z - 2.5 > Partt3.Position.Z
or a.Part1.Position.Z < Partt3.Position.Z
or a.Part1.Position.X +(1.9) < Partt3.Position.X 
or a.Part1.Position.X -(1.9) > Partt3.Position.X 
or a.Part1.Position.Y +(1.9) < Partt3.Position.Y 
or a.Part1.Position.Y -(1.9) > Partt3.Position.Y 
then
if a.Part1.Position.Z - 2.5 > Partt4.Position.Z
or a.Part1.Position.Z < Partt4.Position.Z
or a.Part1.Position.X +(1.9) < Partt4.Position.X 
or a.Part1.Position.X -(1.9) > Partt4.Position.X 
or a.Part1.Position.Y +(1.9) < Partt4.Position.Y 
or a.Part1.Position.Y -(1.9) > Partt4.Position.Y 
then
if a.Part1.Position.Z - 2.5 > Partt5.Position.Z
or a.Part1.Position.Z < Partt5.Position.Z
or a.Part1.Position.X +(1.9) < Partt5.Position.X 
or a.Part1.Position.X -(1.9) > Partt5.Position.X 
or a.Part1.Position.Y +(1.9) < Partt5.Position.Y 
or a.Part1.Position.Y -(1.9) > Partt5.Position.Y 
then
if a.Part1.Position.Z - 2.5 > Partt6.Position.Z
or a.Part1.Position.Z < Partt6.Position.Z
or a.Part1.Position.X +(1.9) < Partt6.Position.X 
or a.Part1.Position.X -(1.9) > Partt6.Position.X 
or a.Part1.Position.Y +(1.9) < Partt6.Position.Y 
or a.Part1.Position.Y -(1.9) > Partt6.Position.Y 
then
if a.Part1.Position.Z - 2.5 > Partt7.Position.Z
or a.Part1.Position.Z < Partt7.Position.Z
or a.Part1.Position.X +(1.9) < Partt7.Position.X 
or a.Part1.Position.X -(1.9) > Partt7.Position.X 
or a.Part1.Position.Y +(1.9) < Partt7.Position.Y 
or a.Part1.Position.Y -(1.9) > Partt7.Position.Y 
then
if a.Part1.Position.Z - 2.5 > Partt8.Position.Z
or a.Part1.Position.Z < Partt8.Position.Z
or a.Part1.Position.X +(1.9) < Partt8.Position.X 
or a.Part1.Position.X -(1.9) > Partt8.Position.X 
or a.Part1.Position.Y +(1.9) < Partt8.Position.Y 
or a.Part1.Position.Y -(1.9) > Partt8.Position.Y 
then
znePart1 = 1
else znePart1 = 0 
end
else znePart1 = 0
end
else znePart1 = 0
end
else znePart1 = 0
end
else znePart1 = 0
end
else znePart1 = 0
end
else znePart1 = 0
end

PriPart1 = 1 

if PriPart1 == 1
then	
if ypoPart1 == 1
then
for i=1, 10 do
a.Part1.CFrame = a.Part1.CFrame +(Vector3.new(0,.1,0))
wait(.01)
end
else PriPart1 = (PriPart1+1)
end
else end


if PriPart1 == 2
then	
if xpoPart1 == 1
then
for i=1, 10 do
a.Part1.CFrame = a.Part1.CFrame +(Vector3.new(.1,0,0))
wait(.01)
end
else PriPart1 = (PriPart1+1)
end
else end



if PriPart1 == 3
then	
if zpoPart1 == 1
then
for i=1, 10 do
a.Part1.CFrame = a.Part1.CFrame +(Vector3.new(0,0,.1))
wait(.01)
end
else PriPart1 = (PriPart1+1)
end
else end


if PriPart1 == 4
then	
if znePart1 == 1
then
for i=1, 10 do
a.Part1.CFrame = a.Part1.CFrame +(Vector3.new(0,0,-.1))
wait(.01)
end
else PriPart1 = (PriPart1+1)
end
else end

if PriPart1 == 5
then	
if xnePart1 == 1
then
for i=1, 10 do
a.Part1.CFrame = a.Part1.CFrame +(Vector3.new(-.1,0,0))
wait(.01)
end
else PriPart1 = (PriPart1+1)
end
else end

for i=1, 10 do
a.Part1.CFrame = a.Part1.CFrame * CFrame.fromEulerAnglesXYZ(0,math.pi/10,0)
wait(.01)
end
TMPart1 = (TMPart1+1)
until 
math.abs(a.Part1.Position.Y - cPart1.Position.Y) > 5
or TMPart1 == 7
else end
else end
------------------------------------------------------------------------------

if sPart1 == 3
and RPart1 == 3 --Checking +X Reconfiguration
then
if  XSPart1 == a.Part1.Position.X
and YSPart1 == a.Part1.Position.Y
and ZSPart1 == a.Part1.Position.Z
then
RPart1 = (RPart1+1)
repeat
if a.Part1.Position.X + 2.5 < Partt2.Position.X -- P1 +X Positions Library Reference
or a.Part1.Position.X > Partt2.Position.X
or a.Part1.Position.Y +(1.9) < Partt2.Position.Y 
or a.Part1.Position.Y -(1.9) > Partt2.Position.Y 
or a.Part1.Position.Z +(1.9) < Partt2.Position.Z 
or a.Part1.Position.Z -(1.9) > Partt2.Position.Z 
then
if a.Part1.Position.X + 2.5 < Partt3.Position.X
or a.Part1.Position.X > Partt3.Position.X
or a.Part1.Position.Y +(1.9) < Partt3.Position.Y 
or a.Part1.Position.Y -(1.9) > Partt3.Position.Y 
or a.Part1.Position.Z +(1.9) < Partt3.Position.Z 
or a.Part1.Position.Z -(1.9) > Partt3.Position.Z 
then
if a.Part1.Position.X + 2.5 < Partt4.Position.X
or a.Part1.Position.X > Partt4.Position.X
or a.Part1.Position.Y +(1.9) < Partt4.Position.Y 
or a.Part1.Position.Y -(1.9) > Partt4.Position.Y 
or a.Part1.Position.Z +(1.9) < Partt4.Position.Z 
or a.Part1.Position.Z -(1.9) > Partt4.Position.Z 
then
if a.Part1.Position.X + 2.5 < Partt5.Position.X
or a.Part1.Position.X > Partt5.Position.X
or a.Part1.Position.Y +(1.9) < Partt5.Position.Y 
or a.Part1.Position.Y -(1.9) > Partt5.Position.Y 
or a.Part1.Position.Z +(1.9) < Partt5.Position.Z 
or a.Part1.Position.Z -(1.9) > Partt5.Position.Z 
then
if a.Part1.Position.X + 2.5 < Partt6.Position.X
or a.Part1.Position.X > Partt6.Position.X
or a.Part1.Position.Y +(1.9) < Partt6.Position.Y 
or a.Part1.Position.Y -(1.9) > Partt6.Position.Y 
or a.Part1.Position.Z +(1.9) < Partt6.Position.Z 
or a.Part1.Position.Z -(1.9) > Partt6.Position.Z 
then
if a.Part1.Position.X + 2.5 < Partt7.Position.X
or a.Part1.Position.X > Partt7.Position.X
or a.Part1.Position.Y +(1.9) < Partt7.Position.Y 
or a.Part1.Position.Y -(1.9) > Partt7.Position.Y 
or a.Part1.Position.Z +(1.9) < Partt7.Position.Z 
or a.Part1.Position.Z -(1.9) > Partt7.Position.Z 
then
if a.Part1.Position.X + 2.5 < Partt8.Position.X
or a.Part1.Position.X > Partt8.Position.X
or a.Part1.Position.Y +(1.9) < Partt8.Position.Y 
or a.Part1.Position.Y -(1.9) > Partt8.Position.Y 
or a.Part1.Position.Z +(1.9) < Partt8.Position.Z 
or a.Part1.Position.Z -(1.9) > Partt8.Position.Z 
then
xpoPart1 = 1
else xpoPart1 = 0 
end
else xpoPart1 = 0
end
else xpoPart1 = 0
end
else xpoPart1 = 0
end
else xpoPart1 = 0
end
else xpoPart1 = 0
end
else xpoPart1 = 0
end

if a.Part1.Position.X - 2.5 > Partt2.Position.X -- P1 -X Positions Library Reference
or a.Part1.Position.X < Partt2.Position.X
or a.Part1.Position.Y +(1.9) < Partt2.Position.Y 
or a.Part1.Position.Y -(1.9) > Partt2.Position.Y 
or a.Part1.Position.Z +(1.9) < Partt2.Position.Z 
or a.Part1.Position.Z -(1.9) > Partt2.Position.Z 
then
if a.Part1.Position.X - 2.5 > Partt3.Position.X
or a.Part1.Position.X < Partt3.Position.X
or a.Part1.Position.Y +(1.9) < Partt3.Position.Y 
or a.Part1.Position.Y -(1.9) > Partt3.Position.Y 
or a.Part1.Position.Z +(1.9) < Partt3.Position.Z 
or a.Part1.Position.Z -(1.9) > Partt3.Position.Z 
then
if a.Part1.Position.X - 2.5 > Partt4.Position.X
or a.Part1.Position.X < Partt4.Position.X
or a.Part1.Position.Y +(1.9) < Partt4.Position.Y 
or a.Part1.Position.Y -(1.9) > Partt4.Position.Y 
or a.Part1.Position.Z +(1.9) < Partt4.Position.Z 
or a.Part1.Position.Z -(1.9) > Partt4.Position.Z 
then
if a.Part1.Position.X - 2.5 > Partt5.Position.X
or a.Part1.Position.X < Partt5.Position.X
or a.Part1.Position.Y +(1.9) < Partt5.Position.Y 
or a.Part1.Position.Y -(1.9) > Partt5.Position.Y 
or a.Part1.Position.Z +(1.9) < Partt5.Position.Z 
or a.Part1.Position.Z -(1.9) > Partt5.Position.Z 
then
if a.Part1.Position.X - 2.5 > Partt6.Position.X
or a.Part1.Position.X < Partt6.Position.X
or a.Part1.Position.Y +(1.9) < Partt6.Position.Y 
or a.Part1.Position.Y -(1.9) > Partt6.Position.Y 
or a.Part1.Position.Z +(1.9) < Partt6.Position.Z 
or a.Part1.Position.Z -(1.9) > Partt6.Position.Z 
then
if a.Part1.Position.X - 2.5 > Partt7.Position.X
or a.Part1.Position.X < Partt7.Position.X
or a.Part1.Position.Y +(1.9) < Partt7.Position.Y 
or a.Part1.Position.Y -(1.9) > Partt7.Position.Y 
or a.Part1.Position.Z +(1.9) < Partt7.Position.Z 
or a.Part1.Position.Z -(1.9) > Partt7.Position.Z 
then
if a.Part1.Position.X - 2.5 > Partt8.Position.X
or a.Part1.Position.X < Partt8.Position.X
or a.Part1.Position.Y +(1.9) < Partt8.Position.Y 
or a.Part1.Position.Y -(1.9) > Partt8.Position.Y 
or a.Part1.Position.Z +(1.9) < Partt8.Position.Z 
or a.Part1.Position.Z -(1.9) > Partt8.Position.Z 
then
xnePart1 = 1
else xnePart1 = 0 
end
else xnePart1 = 0
end
else xnePart1 = 0
end
else xnePart1 = 0
end
else xnePart1 = 0
end
else xnePart1 = 0
end
else xnePart1 = 0
end

if a.Part1.Position.Y + 2.5 < Partt2.Position.Y -- P1 +Y Positions Library Reference
or a.Part1.Position.Y > Partt2.Position.Y
or a.Part1.Position.X +(1.9) < Partt2.Position.X 
or a.Part1.Position.X -(1.9) > Partt2.Position.X 
or a.Part1.Position.Z +(1.9) < Partt2.Position.Z 
or a.Part1.Position.Z -(1.9) > Partt2.Position.Z 
then
if a.Part1.Position.Y + 2.5 < Partt3.Position.Y
or a.Part1.Position.Y > Partt3.Position.Y
or a.Part1.Position.X +(1.9) < Partt3.Position.X 
or a.Part1.Position.X -(1.9) > Partt3.Position.X 
or a.Part1.Position.Z +(1.9) < Partt3.Position.Z 
or a.Part1.Position.Z -(1.9) > Partt3.Position.Z 
then
if a.Part1.Position.Y + 2.5 < Partt4.Position.Y
or a.Part1.Position.Y > Partt4.Position.Y
or a.Part1.Position.X +(1.9) < Partt4.Position.X 
or a.Part1.Position.X -(1.9) > Partt4.Position.X 
or a.Part1.Position.Z +(1.9) < Partt4.Position.Z 
or a.Part1.Position.Z -(1.9) > Partt4.Position.Z 
then
if a.Part1.Position.Y + 2.5 < Partt5.Position.Y
or a.Part1.Position.Y > Partt5.Position.Y
or a.Part1.Position.X +(1.9) < Partt5.Position.X 
or a.Part1.Position.X -(1.9) > Partt5.Position.X 
or a.Part1.Position.Z +(1.9) < Partt5.Position.Z 
or a.Part1.Position.Z -(1.9) > Partt5.Position.Z 
then
if a.Part1.Position.Y + 2.5 < Partt6.Position.Y
or a.Part1.Position.Y > Partt6.Position.Y
or a.Part1.Position.X +(1.9) < Partt6.Position.X 
or a.Part1.Position.X -(1.9) > Partt6.Position.X 
or a.Part1.Position.Z +(1.9) < Partt6.Position.Z 
or a.Part1.Position.Z -(1.9) > Partt6.Position.Z 
then
if a.Part1.Position.Y + 2.5 < Partt7.Position.Y
or a.Part1.Position.Y > Partt7.Position.Y
or a.Part1.Position.X +(1.9) < Partt7.Position.X 
or a.Part1.Position.X -(1.9) > Partt7.Position.X 
or a.Part1.Position.Z +(1.9) < Partt7.Position.Z 
or a.Part1.Position.Z -(1.9) > Partt7.Position.Z 
then
if a.Part1.Position.Y + 2.5 < Partt8.Position.Y
or a.Part1.Position.Y > Partt8.Position.Y
or a.Part1.Position.X +(1.9) < Partt8.Position.X 
or a.Part1.Position.X -(1.9) > Partt8.Position.X 
or a.Part1.Position.Z +(1.9) < Partt8.Position.Z 
or a.Part1.Position.Z -(1.9) > Partt8.Position.Z 
then
ypoPart1 = 1
else ypoPart1 = 0 
end
else ypoPart1 = 0
end
else ypoPart1 = 0
end
else ypoPart1 = 0
end
else ypoPart1 = 0
end
else ypoPart1 = 0
end
else ypoPart1 = 0
end

if a.Part1.Position.Y - 2.5 > Partt2.Position.Y -- P1 -Y Positions Library Reference
or a.Part1.Position.Y < Partt2.Position.Y
or a.Part1.Position.X +(1.9) < Partt2.Position.X 
or a.Part1.Position.X -(1.9) > Partt2.Position.X 
or a.Part1.Position.Z +(1.9) < Partt2.Position.Z 
or a.Part1.Position.Z -(1.9) > Partt2.Position.Z 
then
if a.Part1.Position.Y - 2.5 > Partt3.Position.Y
or a.Part1.Position.Y < Partt3.Position.Y
or a.Part1.Position.X +(1.9) < Partt3.Position.X 
or a.Part1.Position.X -(1.9) > Partt3.Position.X 
or a.Part1.Position.Z +(1.9) < Partt3.Position.Z 
or a.Part1.Position.Z -(1.9) > Partt3.Position.Z 
then
if a.Part1.Position.Y - 2.5 > Partt4.Position.Y
or a.Part1.Position.Y < Partt4.Position.Y
or a.Part1.Position.X +(1.9) < Partt4.Position.X 
or a.Part1.Position.X -(1.9) > Partt4.Position.X 
or a.Part1.Position.Z +(1.9) < Partt4.Position.Z 
or a.Part1.Position.Z -(1.9) > Partt4.Position.Z 
then
if a.Part1.Position.Y - 2.5 > Partt5.Position.Y
or a.Part1.Position.Y < Partt5.Position.Y
or a.Part1.Position.X +(1.9) < Partt5.Position.X 
or a.Part1.Position.X -(1.9) > Partt5.Position.X 
or a.Part1.Position.Z +(1.9) < Partt5.Position.Z 
or a.Part1.Position.Z -(1.9) > Partt5.Position.Z 
then
if a.Part1.Position.Y - 2.5 > Partt6.Position.Y
or a.Part1.Position.Y < Partt6.Position.Y
or a.Part1.Position.X +(1.9) < Partt6.Position.X 
or a.Part1.Position.X -(1.9) > Partt6.Position.X 
or a.Part1.Position.Z +(1.9) < Partt6.Position.Z 
or a.Part1.Position.Z -(1.9) > Partt6.Position.Z 
then
if a.Part1.Position.Y - 2.5 > Partt7.Position.Y
or a.Part1.Position.Y < Partt7.Position.Y
or a.Part1.Position.X +(1.9) < Partt7.Position.X 
or a.Part1.Position.X -(1.9) > Partt7.Position.X 
or a.Part1.Position.Z +(1.9) < Partt7.Position.Z 
or a.Part1.Position.Z -(1.9) > Partt7.Position.Z 
then
if a.Part1.Position.Y - 2.5 > Partt8.Position.Y
or a.Part1.Position.Y < Partt8.Position.Y
or a.Part1.Position.X +(1.9) < Partt8.Position.X 
or a.Part1.Position.X -(1.9) > Partt8.Position.X 
or a.Part1.Position.Z +(1.9) < Partt8.Position.Z 
or a.Part1.Position.Z -(1.9) > Partt8.Position.Z 
then
ynePart1 = 1
else ynePart1 = 0 
end
else ynePart1 = 0
end
else ynePart1 = 0
end
else ynePart1 = 0
end
else ynePart1 = 0
end
else ynePart1 = 0
end
else ynePart1 = 0
end

if a.Part1.Position.Z + 2.5 < Partt2.Position.Z -- P1 +Z Positions Library Reference
or a.Part1.Position.Z > Partt2.Position.Z
or a.Part1.Position.X +(1.9) < Partt2.Position.X 
or a.Part1.Position.X -(1.9) > Partt2.Position.X 
or a.Part1.Position.Y +(1.9) < Partt2.Position.Y 
or a.Part1.Position.Y -(1.9) > Partt2.Position.Y 
then
if a.Part1.Position.Z + 2.5 < Partt3.Position.Z
or a.Part1.Position.Z > Partt3.Position.Z
or a.Part1.Position.X +(1.9) < Partt3.Position.X 
or a.Part1.Position.X -(1.9) > Partt3.Position.X 
or a.Part1.Position.Y +(1.9) < Partt3.Position.Y 
or a.Part1.Position.Y -(1.9) > Partt3.Position.Y 
then
if a.Part1.Position.Z + 2.5 < Partt4.Position.Z
or a.Part1.Position.Z > Partt4.Position.Z
or a.Part1.Position.X +(1.9) < Partt4.Position.X 
or a.Part1.Position.X -(1.9) > Partt4.Position.X 
or a.Part1.Position.Y +(1.9) < Partt4.Position.Y 
or a.Part1.Position.Y -(1.9) > Partt4.Position.Y 
then
if a.Part1.Position.Z + 2.5 < Partt5.Position.Z
or a.Part1.Position.Z > Partt5.Position.Z
or a.Part1.Position.X +(1.9) < Partt5.Position.X 
or a.Part1.Position.X -(1.9) > Partt5.Position.X 
or a.Part1.Position.Y +(1.9) < Partt5.Position.Y 
or a.Part1.Position.Y -(1.9) > Partt5.Position.Y 
then
if a.Part1.Position.Z + 2.5 < Partt6.Position.Z
or a.Part1.Position.Z > Partt6.Position.Z
or a.Part1.Position.X +(1.9) < Partt6.Position.X 
or a.Part1.Position.X -(1.9) > Partt6.Position.X 
or a.Part1.Position.Y +(1.9) < Partt6.Position.Y 
or a.Part1.Position.Y -(1.9) > Partt6.Position.Y 
then
if a.Part1.Position.Z + 2.5 < Partt7.Position.Z
or a.Part1.Position.Z > Partt7.Position.Z
or a.Part1.Position.X +(1.9) < Partt7.Position.X 
or a.Part1.Position.X -(1.9) > Partt7.Position.X 
or a.Part1.Position.Y +(1.9) < Partt7.Position.Y 
or a.Part1.Position.Y -(1.9) > Partt7.Position.Y 
then
if a.Part1.Position.Z + 2.5 < Partt8.Position.Z
or a.Part1.Position.Z > Partt8.Position.Z
or a.Part1.Position.X +(1.9) < Partt8.Position.X 
or a.Part1.Position.X -(1.9) > Partt8.Position.X 
or a.Part1.Position.Y +(1.9) < Partt8.Position.Y 
or a.Part1.Position.Y -(1.9) > Partt8.Position.Y 
then
zpoPart1 = 1
else zpoPart1 = 0 
end
else zpoPart1 = 0
end
else zpoPart1 = 0
end
else zpoPart1 = 0
end
else zpoPart1 = 0
end
else zpoPart1 = 0
end
else zpoPart1 = 0
end

if a.Part1.Position.Z - 2.5 > Partt2.Position.Z -- P1 -Z Positions Library Reference
or a.Part1.Position.Z < Partt2.Position.Z
or a.Part1.Position.X +(1.9) < Partt2.Position.X 
or a.Part1.Position.X -(1.9) > Partt2.Position.X 
or a.Part1.Position.Y +(1.9) < Partt2.Position.Y 
or a.Part1.Position.Y -(1.9) > Partt2.Position.Y 
then
if a.Part1.Position.Z - 2.5 > Partt3.Position.Z
or a.Part1.Position.Z < Partt3.Position.Z
or a.Part1.Position.X +(1.9) < Partt3.Position.X 
or a.Part1.Position.X -(1.9) > Partt3.Position.X 
or a.Part1.Position.Y +(1.9) < Partt3.Position.Y 
or a.Part1.Position.Y -(1.9) > Partt3.Position.Y 
then
if a.Part1.Position.Z - 2.5 > Partt4.Position.Z
or a.Part1.Position.Z < Partt4.Position.Z
or a.Part1.Position.X +(1.9) < Partt4.Position.X 
or a.Part1.Position.X -(1.9) > Partt4.Position.X 
or a.Part1.Position.Y +(1.9) < Partt4.Position.Y 
or a.Part1.Position.Y -(1.9) > Partt4.Position.Y 
then
if a.Part1.Position.Z - 2.5 > Partt5.Position.Z
or a.Part1.Position.Z < Partt5.Position.Z
or a.Part1.Position.X +(1.9) < Partt5.Position.X 
or a.Part1.Position.X -(1.9) > Partt5.Position.X 
or a.Part1.Position.Y +(1.9) < Partt5.Position.Y 
or a.Part1.Position.Y -(1.9) > Partt5.Position.Y 
then
if a.Part1.Position.Z - 2.5 > Partt6.Position.Z
or a.Part1.Position.Z < Partt6.Position.Z
or a.Part1.Position.X +(1.9) < Partt6.Position.X 
or a.Part1.Position.X -(1.9) > Partt6.Position.X 
or a.Part1.Position.Y +(1.9) < Partt6.Position.Y 
or a.Part1.Position.Y -(1.9) > Partt6.Position.Y 
then
if a.Part1.Position.Z - 2.5 > Partt7.Position.Z
or a.Part1.Position.Z < Partt7.Position.Z
or a.Part1.Position.X +(1.9) < Partt7.Position.X 
or a.Part1.Position.X -(1.9) > Partt7.Position.X 
or a.Part1.Position.Y +(1.9) < Partt7.Position.Y 
or a.Part1.Position.Y -(1.9) > Partt7.Position.Y 
then
if a.Part1.Position.Z - 2.5 > Partt8.Position.Z
or a.Part1.Position.Z < Partt8.Position.Z
or a.Part1.Position.X +(1.9) < Partt8.Position.X 
or a.Part1.Position.X -(1.9) > Partt8.Position.X 
or a.Part1.Position.Y +(1.9) < Partt8.Position.Y 
or a.Part1.Position.Y -(1.9) > Partt8.Position.Y 
then
znePart1 = 1
else znePart1 = 0 
end
else znePart1 = 0
end
else znePart1 = 0
end
else znePart1 = 0
end
else znePart1 = 0
end
else znePart1 = 0
end
else znePart1 = 0
end

PriPart1 = 1 
if PriPart1 == 1
then	
if xnePart1 == 1
then
for i=1, 10 do
a.Part1.CFrame = a.Part1.CFrame +(Vector3.new(-.1,0,0))
wait(.01)
end
else PriPart1 = (PriPart1+1)
end
else end

if PriPart1 == 2
then	
if ypoPart1 == 1
then
for i=1, 10 do
a.Part1.CFrame = a.Part1.CFrame +(Vector3.new(0,.1,0))
wait(.01)
end
else PriPart1 = (PriPart1+1)
end
else end

if PriPart1 == 3
then	
if zpoPart1 == 1
then
for i=1, 10 do
a.Part1.CFrame = a.Part1.CFrame +(Vector3.new(0,0,.1))
wait(.01)
end
else PriPart1 = (PriPart1+1)
end
else end

if PriPart1 == 4
then	
if ynePart1 == 1
then
for i=1, 10 do
a.Part1.CFrame = a.Part1.CFrame +(Vector3.new(0,-.1,0))
wait(.01)
end
else PriPart1 = (PriPart1+1)
end
else end

if PriPart1 == 5
then	
if znePart1 == 1
then
for i=1, 10 do
a.Part1.CFrame = a.Part1.CFrame +(Vector3.new(0,0,-.1))
wait(.01)
end
else PriPart1 = (PriPart1+1)
end
else end
------------------------------------------------------------------------------

wait(.1)
TMPart1 = (TMPart1+1)
until 
math.abs(a.Part1.Position.X - cPart1.Position.X) > 5
or TMPart1 == 7
else end
else end

if sPart1 == 3
and RPart1 == 4 --Checking +X Reconfiguration
then
if  XSPart1 == a.Part1.Position.X
and YSPart1 == a.Part1.Position.Y
and ZSPart1 == a.Part1.Position.Z
then
RPart1 = 1
repeat
if a.Part1.Position.X + 2.5 < Partt2.Position.X -- P1 +X Positions Library Reference
or a.Part1.Position.X > Partt2.Position.X
or a.Part1.Position.Y +(1.9) < Partt2.Position.Y 
or a.Part1.Position.Y -(1.9) > Partt2.Position.Y 
or a.Part1.Position.Z +(1.9) < Partt2.Position.Z 
or a.Part1.Position.Z -(1.9) > Partt2.Position.Z 
then
if a.Part1.Position.X + 2.5 < Partt3.Position.X
or a.Part1.Position.X > Partt3.Position.X
or a.Part1.Position.Y +(1.9) < Partt3.Position.Y 
or a.Part1.Position.Y -(1.9) > Partt3.Position.Y 
or a.Part1.Position.Z +(1.9) < Partt3.Position.Z 
or a.Part1.Position.Z -(1.9) > Partt3.Position.Z 
then
if a.Part1.Position.X + 2.5 < Partt4.Position.X
or a.Part1.Position.X > Partt4.Position.X
or a.Part1.Position.Y +(1.9) < Partt4.Position.Y 
or a.Part1.Position.Y -(1.9) > Partt4.Position.Y 
or a.Part1.Position.Z +(1.9) < Partt4.Position.Z 
or a.Part1.Position.Z -(1.9) > Partt4.Position.Z 
then
if a.Part1.Position.X + 2.5 < Partt5.Position.X
or a.Part1.Position.X > Partt5.Position.X
or a.Part1.Position.Y +(1.9) < Partt5.Position.Y 
or a.Part1.Position.Y -(1.9) > Partt5.Position.Y 
or a.Part1.Position.Z +(1.9) < Partt5.Position.Z 
or a.Part1.Position.Z -(1.9) > Partt5.Position.Z 
then
if a.Part1.Position.X + 2.5 < Partt6.Position.X
or a.Part1.Position.X > Partt6.Position.X
or a.Part1.Position.Y +(1.9) < Partt6.Position.Y 
or a.Part1.Position.Y -(1.9) > Partt6.Position.Y 
or a.Part1.Position.Z +(1.9) < Partt6.Position.Z 
or a.Part1.Position.Z -(1.9) > Partt6.Position.Z 
then
if a.Part1.Position.X + 2.5 < Partt7.Position.X
or a.Part1.Position.X > Partt7.Position.X
or a.Part1.Position.Y +(1.9) < Partt7.Position.Y 
or a.Part1.Position.Y -(1.9) > Partt7.Position.Y 
or a.Part1.Position.Z +(1.9) < Partt7.Position.Z 
or a.Part1.Position.Z -(1.9) > Partt7.Position.Z 
then
if a.Part1.Position.X + 2.5 < Partt8.Position.X
or a.Part1.Position.X > Partt8.Position.X
or a.Part1.Position.Y +(1.9) < Partt8.Position.Y 
or a.Part1.Position.Y -(1.9) > Partt8.Position.Y 
or a.Part1.Position.Z +(1.9) < Partt8.Position.Z 
or a.Part1.Position.Z -(1.9) > Partt8.Position.Z 
then
xpoPart1 = 1
else xpoPart1 = 0 
end
else xpoPart1 = 0
end
else xpoPart1 = 0
end
else xpoPart1 = 0
end
else xpoPart1 = 0
end
else xpoPart1 = 0
end
else xpoPart1 = 0
end

if a.Part1.Position.X - 2.5 > Partt2.Position.X -- P1 -X Positions Library Reference
or a.Part1.Position.X < Partt2.Position.X
or a.Part1.Position.Y +(1.9) < Partt2.Position.Y 
or a.Part1.Position.Y -(1.9) > Partt2.Position.Y 
or a.Part1.Position.Z +(1.9) < Partt2.Position.Z 
or a.Part1.Position.Z -(1.9) > Partt2.Position.Z 
then
if a.Part1.Position.X - 2.5 > Partt3.Position.X
or a.Part1.Position.X < Partt3.Position.X
or a.Part1.Position.Y +(1.9) < Partt3.Position.Y 
or a.Part1.Position.Y -(1.9) > Partt3.Position.Y 
or a.Part1.Position.Z +(1.9) < Partt3.Position.Z 
or a.Part1.Position.Z -(1.9) > Partt3.Position.Z 
then
if a.Part1.Position.X - 2.5 > Partt4.Position.X
or a.Part1.Position.X < Partt4.Position.X
or a.Part1.Position.Y +(1.9) < Partt4.Position.Y 
or a.Part1.Position.Y -(1.9) > Partt4.Position.Y 
or a.Part1.Position.Z +(1.9) < Partt4.Position.Z 
or a.Part1.Position.Z -(1.9) > Partt4.Position.Z 
then
if a.Part1.Position.X - 2.5 > Partt5.Position.X
or a.Part1.Position.X < Partt5.Position.X
or a.Part1.Position.Y +(1.9) < Partt5.Position.Y 
or a.Part1.Position.Y -(1.9) > Partt5.Position.Y 
or a.Part1.Position.Z +(1.9) < Partt5.Position.Z 
or a.Part1.Position.Z -(1.9) > Partt5.Position.Z 
then
if a.Part1.Position.X - 2.5 > Partt6.Position.X
or a.Part1.Position.X < Partt6.Position.X
or a.Part1.Position.Y +(1.9) < Partt6.Position.Y 
or a.Part1.Position.Y -(1.9) > Partt6.Position.Y 
or a.Part1.Position.Z +(1.9) < Partt6.Position.Z 
or a.Part1.Position.Z -(1.9) > Partt6.Position.Z 
then
if a.Part1.Position.X - 2.5 > Partt7.Position.X
or a.Part1.Position.X < Partt7.Position.X
or a.Part1.Position.Y +(1.9) < Partt7.Position.Y 
or a.Part1.Position.Y -(1.9) > Partt7.Position.Y 
or a.Part1.Position.Z +(1.9) < Partt7.Position.Z 
or a.Part1.Position.Z -(1.9) > Partt7.Position.Z 
then
if a.Part1.Position.X - 2.5 > Partt8.Position.X
or a.Part1.Position.X < Partt8.Position.X
or a.Part1.Position.Y +(1.9) < Partt8.Position.Y 
or a.Part1.Position.Y -(1.9) > Partt8.Position.Y 
or a.Part1.Position.Z +(1.9) < Partt8.Position.Z 
or a.Part1.Position.Z -(1.9) > Partt8.Position.Z 
then
xnePart1 = 1
else xnePart1 = 0 
end
else xnePart1 = 0
end
else xnePart1 = 0
end
else xnePart1 = 0
end
else xnePart1 = 0
end
else xnePart1 = 0
end
else xnePart1 = 0
end

if a.Part1.Position.Y + 2.5 < Partt2.Position.Y -- P1 +Y Positions Library Reference
or a.Part1.Position.Y > Partt2.Position.Y
or a.Part1.Position.X +(1.9) < Partt2.Position.X 
or a.Part1.Position.X -(1.9) > Partt2.Position.X 
or a.Part1.Position.Z +(1.9) < Partt2.Position.Z 
or a.Part1.Position.Z -(1.9) > Partt2.Position.Z 
then
if a.Part1.Position.Y + 2.5 < Partt3.Position.Y
or a.Part1.Position.Y > Partt3.Position.Y
or a.Part1.Position.X +(1.9) < Partt3.Position.X 
or a.Part1.Position.X -(1.9) > Partt3.Position.X 
or a.Part1.Position.Z +(1.9) < Partt3.Position.Z 
or a.Part1.Position.Z -(1.9) > Partt3.Position.Z 
then
if a.Part1.Position.Y + 2.5 < Partt4.Position.Y
or a.Part1.Position.Y > Partt4.Position.Y
or a.Part1.Position.X +(1.9) < Partt4.Position.X 
or a.Part1.Position.X -(1.9) > Partt4.Position.X 
or a.Part1.Position.Z +(1.9) < Partt4.Position.Z 
or a.Part1.Position.Z -(1.9) > Partt4.Position.Z 
then
if a.Part1.Position.Y + 2.5 < Partt5.Position.Y
or a.Part1.Position.Y > Partt5.Position.Y
or a.Part1.Position.X +(1.9) < Partt5.Position.X 
or a.Part1.Position.X -(1.9) > Partt5.Position.X 
or a.Part1.Position.Z +(1.9) < Partt5.Position.Z 
or a.Part1.Position.Z -(1.9) > Partt5.Position.Z 
then
if a.Part1.Position.Y + 2.5 < Partt6.Position.Y
or a.Part1.Position.Y > Partt6.Position.Y
or a.Part1.Position.X +(1.9) < Partt6.Position.X 
or a.Part1.Position.X -(1.9) > Partt6.Position.X 
or a.Part1.Position.Z +(1.9) < Partt6.Position.Z 
or a.Part1.Position.Z -(1.9) > Partt6.Position.Z 
then
if a.Part1.Position.Y + 2.5 < Partt7.Position.Y
or a.Part1.Position.Y > Partt7.Position.Y
or a.Part1.Position.X +(1.9) < Partt7.Position.X 
or a.Part1.Position.X -(1.9) > Partt7.Position.X 
or a.Part1.Position.Z +(1.9) < Partt7.Position.Z 
or a.Part1.Position.Z -(1.9) > Partt7.Position.Z 
then
if a.Part1.Position.Y + 2.5 < Partt8.Position.Y
or a.Part1.Position.Y > Partt8.Position.Y
or a.Part1.Position.X +(1.9) < Partt8.Position.X 
or a.Part1.Position.X -(1.9) > Partt8.Position.X 
or a.Part1.Position.Z +(1.9) < Partt8.Position.Z 
or a.Part1.Position.Z -(1.9) > Partt8.Position.Z 
then
ypoPart1 = 1
else ypoPart1 = 0 
end
else ypoPart1 = 0
end
else ypoPart1 = 0
end
else ypoPart1 = 0
end
else ypoPart1 = 0
end
else ypoPart1 = 0
end
else ypoPart1 = 0
end

if a.Part1.Position.Y - 2.5 > Partt2.Position.Y -- P1 -Y Positions Library Reference
or a.Part1.Position.Y < Partt2.Position.Y
or a.Part1.Position.X +(1.9) < Partt2.Position.X 
or a.Part1.Position.X -(1.9) > Partt2.Position.X 
or a.Part1.Position.Z +(1.9) < Partt2.Position.Z 
or a.Part1.Position.Z -(1.9) > Partt2.Position.Z 
then
if a.Part1.Position.Y - 2.5 > Partt3.Position.Y
or a.Part1.Position.Y < Partt3.Position.Y
or a.Part1.Position.X +(1.9) < Partt3.Position.X 
or a.Part1.Position.X -(1.9) > Partt3.Position.X 
or a.Part1.Position.Z +(1.9) < Partt3.Position.Z 
or a.Part1.Position.Z -(1.9) > Partt3.Position.Z 
then
if a.Part1.Position.Y - 2.5 > Partt4.Position.Y
or a.Part1.Position.Y < Partt4.Position.Y
or a.Part1.Position.X +(1.9) < Partt4.Position.X 
or a.Part1.Position.X -(1.9) > Partt4.Position.X 
or a.Part1.Position.Z +(1.9) < Partt4.Position.Z 
or a.Part1.Position.Z -(1.9) > Partt4.Position.Z 
then
if a.Part1.Position.Y - 2.5 > Partt5.Position.Y
or a.Part1.Position.Y < Partt5.Position.Y
or a.Part1.Position.X +(1.9) < Partt5.Position.X 
or a.Part1.Position.X -(1.9) > Partt5.Position.X 
or a.Part1.Position.Z +(1.9) < Partt5.Position.Z 
or a.Part1.Position.Z -(1.9) > Partt5.Position.Z 
then
if a.Part1.Position.Y - 2.5 > Partt6.Position.Y
or a.Part1.Position.Y < Partt6.Position.Y
or a.Part1.Position.X +(1.9) < Partt6.Position.X 
or a.Part1.Position.X -(1.9) > Partt6.Position.X 
or a.Part1.Position.Z +(1.9) < Partt6.Position.Z 
or a.Part1.Position.Z -(1.9) > Partt6.Position.Z 
then
if a.Part1.Position.Y - 2.5 > Partt7.Position.Y
or a.Part1.Position.Y < Partt7.Position.Y
or a.Part1.Position.X +(1.9) < Partt7.Position.X 
or a.Part1.Position.X -(1.9) > Partt7.Position.X 
or a.Part1.Position.Z +(1.9) < Partt7.Position.Z 
or a.Part1.Position.Z -(1.9) > Partt7.Position.Z 
then
if a.Part1.Position.Y - 2.5 > Partt8.Position.Y
or a.Part1.Position.Y < Partt8.Position.Y
or a.Part1.Position.X +(1.9) < Partt8.Position.X 
or a.Part1.Position.X -(1.9) > Partt8.Position.X 
or a.Part1.Position.Z +(1.9) < Partt8.Position.Z 
or a.Part1.Position.Z -(1.9) > Partt8.Position.Z 
then
ynePart1 = 1
else ynePart1 = 0 
end
else ynePart1 = 0
end
else ynePart1 = 0
end
else ynePart1 = 0
end
else ynePart1 = 0
end
else ynePart1 = 0
end
else ynePart1 = 0
end

if a.Part1.Position.Z + 2.5 < Partt2.Position.Z -- P1 +Z Positions Library Reference
or a.Part1.Position.Z > Partt2.Position.Z
or a.Part1.Position.X +(1.9) < Partt2.Position.X 
or a.Part1.Position.X -(1.9) > Partt2.Position.X 
or a.Part1.Position.Y +(1.9) < Partt2.Position.Y 
or a.Part1.Position.Y -(1.9) > Partt2.Position.Y 
then
if a.Part1.Position.Z + 2.5 < Partt3.Position.Z
or a.Part1.Position.Z > Partt3.Position.Z
or a.Part1.Position.X +(1.9) < Partt3.Position.X 
or a.Part1.Position.X -(1.9) > Partt3.Position.X 
or a.Part1.Position.Y +(1.9) < Partt3.Position.Y 
or a.Part1.Position.Y -(1.9) > Partt3.Position.Y 
then
if a.Part1.Position.Z + 2.5 < Partt4.Position.Z
or a.Part1.Position.Z > Partt4.Position.Z
or a.Part1.Position.X +(1.9) < Partt4.Position.X 
or a.Part1.Position.X -(1.9) > Partt4.Position.X 
or a.Part1.Position.Y +(1.9) < Partt4.Position.Y 
or a.Part1.Position.Y -(1.9) > Partt4.Position.Y 
then
if a.Part1.Position.Z + 2.5 < Partt5.Position.Z
or a.Part1.Position.Z > Partt5.Position.Z
or a.Part1.Position.X +(1.9) < Partt5.Position.X 
or a.Part1.Position.X -(1.9) > Partt5.Position.X 
or a.Part1.Position.Y +(1.9) < Partt5.Position.Y 
or a.Part1.Position.Y -(1.9) > Partt5.Position.Y 
then
if a.Part1.Position.Z + 2.5 < Partt6.Position.Z
or a.Part1.Position.Z > Partt6.Position.Z
or a.Part1.Position.X +(1.9) < Partt6.Position.X 
or a.Part1.Position.X -(1.9) > Partt6.Position.X 
or a.Part1.Position.Y +(1.9) < Partt6.Position.Y 
or a.Part1.Position.Y -(1.9) > Partt6.Position.Y 
then
if a.Part1.Position.Z + 2.5 < Partt7.Position.Z
or a.Part1.Position.Z > Partt7.Position.Z
or a.Part1.Position.X +(1.9) < Partt7.Position.X 
or a.Part1.Position.X -(1.9) > Partt7.Position.X 
or a.Part1.Position.Y +(1.9) < Partt7.Position.Y 
or a.Part1.Position.Y -(1.9) > Partt7.Position.Y 
then
if a.Part1.Position.Z + 2.5 < Partt8.Position.Z
or a.Part1.Position.Z > Partt8.Position.Z
or a.Part1.Position.X +(1.9) < Partt8.Position.X 
or a.Part1.Position.X -(1.9) > Partt8.Position.X 
or a.Part1.Position.Y +(1.9) < Partt8.Position.Y 
or a.Part1.Position.Y -(1.9) > Partt8.Position.Y 
then
zpoPart1 = 1
else zpoPart1 = 0 
end
else zpoPart1 = 0
end
else zpoPart1 = 0
end
else zpoPart1 = 0
end
else zpoPart1 = 0
end
else zpoPart1 = 0
end
else zpoPart1 = 0
end

if a.Part1.Position.Z - 2.5 > Partt2.Position.Z -- P1 -Z Positions Library Reference
or a.Part1.Position.Z < Partt2.Position.Z
or a.Part1.Position.X +(1.9) < Partt2.Position.X 
or a.Part1.Position.X -(1.9) > Partt2.Position.X 
or a.Part1.Position.Y +(1.9) < Partt2.Position.Y 
or a.Part1.Position.Y -(1.9) > Partt2.Position.Y 
then
if a.Part1.Position.Z - 2.5 > Partt3.Position.Z
or a.Part1.Position.Z < Partt3.Position.Z
or a.Part1.Position.X +(1.9) < Partt3.Position.X 
or a.Part1.Position.X -(1.9) > Partt3.Position.X 
or a.Part1.Position.Y +(1.9) < Partt3.Position.Y 
or a.Part1.Position.Y -(1.9) > Partt3.Position.Y 
then
if a.Part1.Position.Z - 2.5 > Partt4.Position.Z
or a.Part1.Position.Z < Partt4.Position.Z
or a.Part1.Position.X +(1.9) < Partt4.Position.X 
or a.Part1.Position.X -(1.9) > Partt4.Position.X 
or a.Part1.Position.Y +(1.9) < Partt4.Position.Y 
or a.Part1.Position.Y -(1.9) > Partt4.Position.Y 
then
if a.Part1.Position.Z - 2.5 > Partt5.Position.Z
or a.Part1.Position.Z < Partt5.Position.Z
or a.Part1.Position.X +(1.9) < Partt5.Position.X 
or a.Part1.Position.X -(1.9) > Partt5.Position.X 
or a.Part1.Position.Y +(1.9) < Partt5.Position.Y 
or a.Part1.Position.Y -(1.9) > Partt5.Position.Y 
then
if a.Part1.Position.Z - 2.5 > Partt6.Position.Z
or a.Part1.Position.Z < Partt6.Position.Z
or a.Part1.Position.X +(1.9) < Partt6.Position.X 
or a.Part1.Position.X -(1.9) > Partt6.Position.X 
or a.Part1.Position.Y +(1.9) < Partt6.Position.Y 
or a.Part1.Position.Y -(1.9) > Partt6.Position.Y 
then
if a.Part1.Position.Z - 2.5 > Partt7.Position.Z
or a.Part1.Position.Z < Partt7.Position.Z
or a.Part1.Position.X +(1.9) < Partt7.Position.X 
or a.Part1.Position.X -(1.9) > Partt7.Position.X 
or a.Part1.Position.Y +(1.9) < Partt7.Position.Y 
or a.Part1.Position.Y -(1.9) > Partt7.Position.Y 
then
if a.Part1.Position.Z - 2.5 > Partt8.Position.Z
or a.Part1.Position.Z < Partt8.Position.Z
or a.Part1.Position.X +(1.9) < Partt8.Position.X 
or a.Part1.Position.X -(1.9) > Partt8.Position.X 
or a.Part1.Position.Y +(1.9) < Partt8.Position.Y 
or a.Part1.Position.Y -(1.9) > Partt8.Position.Y 
then
znePart1 = 1
else znePart1 = 0 
end
else znePart1 = 0
end
else znePart1 = 0
end
else znePart1 = 0
end
else znePart1 = 0
end
else znePart1 = 0
end
else znePart1 = 0
end

PriPart1 = 1 

if PriPart1 == 1
then	
if ynePart1 == 1
then
for i=1, 10 do
a.Part1.CFrame = a.Part1.CFrame +(Vector3.new(0,-.1,0))
wait(.01)
end
else PriPart1 = (PriPart1+1)
end
else end


if PriPart1 == 2
then	
if xpoPart1 == 1
then
for i=1, 10 do
a.Part1.CFrame = a.Part1.CFrame +(Vector3.new(.1,0,0))
wait(.01)
end
else PriPart1 = (PriPart1+1)
end
else end



if PriPart1 == 3
then	
if zpoPart1 == 1
then
for i=1, 10 do
a.Part1.CFrame = a.Part1.CFrame +(Vector3.new(0,0,.1))
wait(.01)
end
else PriPart1 = (PriPart1+1)
end
else end


if PriPart1 == 4
then	
if znePart1 == 1
then
for i=1, 10 do
a.Part1.CFrame = a.Part1.CFrame +(Vector3.new(0,0,-.1))
wait(.01)
end
else PriPart1 = (PriPart1+1)
end
else end

if PriPart1 == 5
then	
if xnePart1 == 1
then
for i=1, 10 do
a.Part1.CFrame = a.Part1.CFrame +(Vector3.new(-.1,0,0))
wait(.01)
end
else PriPart1 = (PriPart1+1)
end
else end

wait(.1)
TMPart1 = (TMPart1+1)
until 
math.abs(a.Part1.Position.Y - cPart1.Position.Y) > 5
or TMPart1 == 7
else end
else end
------------------------------------------------------------------------------

if sPart1==3
then sPart1 = 0
else end

wait(.1)
until
    a.Part1.Position.X < cc.X +.7
and a.Part1.Position.X > cc.X -.7
and a.Part1.Position.Y < cc.Y +.7
and a.Part1.Position.Y > cc.Y -.7
and a.Part1.Position.Z < cc.Z +.7
and a.Part1.Position.Z > cc.Z -.7
end --Couroutine





function core2()
wait(.05)
repeat

TMPart2 =  0

if cPart2.Position.X > a.Part2.Position.X then --Checking X Positions
XPart2 = 1
elseif cPart2.Position.X < a.Part2.Position.X then
XPart2 = -1
elseif cPart2.Position.X == a.Part2.Position.X then
XPart2 = 0
end

if cPart2.Position.Y > a.Part2.Position.Y then --Checking Y Positions
YPart2 = 1
elseif cPart2.Position.Y < a.Part2.Position.Y then
YPart2 = -1
elseif cPart2.Position.Y == a.Part2.Position.Y then
YPart2 = 0
end

if cPart2.Position.Z > a.Part2.Position.Z then --Checking Z Positions
ZPart2 = 1
elseif cPart2.Position.Z < a.Part2.Position.Z then
ZPart2 = -1
elseif cPart2.Position.Z == a.Part2.Position.Z then
ZPart2 = 0
end
-- ++-- 											
if  math.abs(a.Part2.Position.X - cPart2.Position.X) > math.abs(a.Part2.Position.Y - cPart2.Position.Y) --Priority Checks 1=X 2=Y 3=Z
and math.abs(a.Part2.Position.X - cPart2.Position.X) > math.abs(a.Part2.Position.Z - cPart2.Position.Z)
then PriPart2 = 1
else end 
if  math.abs(a.Part2.Position.Y - cPart2.Position.Y) > math.abs(a.Part2.Position.X - cPart2.Position.X) 
and math.abs(a.Part2.Position.Y - cPart2.Position.Y) > math.abs(a.Part2.Position.Z - cPart2.Position.Z)
then PriPart2 = 2
else end 
if  math.abs(a.Part2.Position.Z - cPart2.Position.Z) > math.abs(a.Part2.Position.Y - cPart2.Position.Y) 
and math.abs(a.Part2.Position.Z - cPart2.Position.Z) > math.abs(a.Part2.Position.X - cPart2.Position.X)
then PriPart2 = 3
else end 
if math.abs(a.Part2.Position.X - cPart2.Position.X) == math.abs(a.Part2.Position.Y - cPart2.Position.Y)  
or math.abs(a.Part2.Position.X - cPart2.Position.X) == math.abs(a.Part2.Position.Z - cPart2.Position.Z)
or math.abs(a.Part2.Position.Y - cPart2.Position.Y) == math.abs(a.Part2.Position.X - cPart2.Position.X)
then PriPart2 = 1
else end 

if a.Part2.Position.X + 2.5 < Partt1.Position.X -- P1 +X Positions Library Reference
or a.Part2.Position.X > Partt1.Position.X
or a.Part2.Position.Y +(1.9) < Partt1.Position.Y 
or a.Part2.Position.Y -(1.9) > Partt1.Position.Y 
or a.Part2.Position.Z +(1.9) < Partt1.Position.Z 
or a.Part2.Position.Z -(1.9) > Partt1.Position.Z 
then
if a.Part2.Position.X + 2.5 < Partt3.Position.X
or a.Part2.Position.X > Partt3.Position.X
or a.Part2.Position.Y +(1.9) < Partt3.Position.Y 
or a.Part2.Position.Y -(1.9) > Partt3.Position.Y 
or a.Part2.Position.Z +(1.9) < Partt3.Position.Z 
or a.Part2.Position.Z -(1.9) > Partt3.Position.Z 
then
if a.Part2.Position.X + 2.5 < Partt4.Position.X
or a.Part2.Position.X > Partt4.Position.X
or a.Part2.Position.Y +(1.9) < Partt4.Position.Y 
or a.Part2.Position.Y -(1.9) > Partt4.Position.Y 
or a.Part2.Position.Z +(1.9) < Partt4.Position.Z 
or a.Part2.Position.Z -(1.9) > Partt4.Position.Z 
then
if a.Part2.Position.X + 2.5 < Partt5.Position.X
or a.Part2.Position.X > Partt5.Position.X
or a.Part2.Position.Y +(1.9) < Partt5.Position.Y 
or a.Part2.Position.Y -(1.9) > Partt5.Position.Y 
or a.Part2.Position.Z +(1.9) < Partt5.Position.Z 
or a.Part2.Position.Z -(1.9) > Partt5.Position.Z 
then
if a.Part2.Position.X + 2.5 < Partt6.Position.X
or a.Part2.Position.X > Partt6.Position.X
or a.Part2.Position.Y +(1.9) < Partt6.Position.Y 
or a.Part2.Position.Y -(1.9) > Partt6.Position.Y 
or a.Part2.Position.Z +(1.9) < Partt6.Position.Z 
or a.Part2.Position.Z -(1.9) > Partt6.Position.Z 
then
if a.Part2.Position.X + 2.5 < Partt7.Position.X
or a.Part2.Position.X > Partt7.Position.X
or a.Part2.Position.Y +(1.9) < Partt7.Position.Y 
or a.Part2.Position.Y -(1.9) > Partt7.Position.Y 
or a.Part2.Position.Z +(1.9) < Partt7.Position.Z 
or a.Part2.Position.Z -(1.9) > Partt7.Position.Z 
then
if a.Part2.Position.X + 2.5 < Partt8.Position.X
or a.Part2.Position.X > Partt8.Position.X
or a.Part2.Position.Y +(1.9) < Partt8.Position.Y 
or a.Part2.Position.Y -(1.9) > Partt8.Position.Y 
or a.Part2.Position.Z +(1.9) < Partt8.Position.Z 
or a.Part2.Position.Z -(1.9) > Partt8.Position.Z 
then
xpoPart2 = 1
else xpoPart2 = 0 
end
else xpoPart2 = 0
end
else xpoPart2 = 0
end
else xpoPart2 = 0
end
else xpoPart2 = 0
end
else xpoPart2 = 0
end
else xpoPart2 = 0
end

if a.Part2.Position.X - 2.5 > Partt1.Position.X -- P1 -X Positions Library Reference
or a.Part2.Position.X < Partt1.Position.X
or a.Part2.Position.Y +(1.9) < Partt1.Position.Y 
or a.Part2.Position.Y -(1.9) > Partt1.Position.Y 
or a.Part2.Position.Z +(1.9) < Partt1.Position.Z 
or a.Part2.Position.Z -(1.9) > Partt1.Position.Z 
then
if a.Part2.Position.X - 2.5 > Partt3.Position.X
or a.Part2.Position.X < Partt3.Position.X
or a.Part2.Position.Y +(1.9) < Partt3.Position.Y 
or a.Part2.Position.Y -(1.9) > Partt3.Position.Y 
or a.Part2.Position.Z +(1.9) < Partt3.Position.Z 
or a.Part2.Position.Z -(1.9) > Partt3.Position.Z 
then
if a.Part2.Position.X - 2.5 > Partt4.Position.X
or a.Part2.Position.X < Partt4.Position.X
or a.Part2.Position.Y +(1.9) < Partt4.Position.Y 
or a.Part2.Position.Y -(1.9) > Partt4.Position.Y 
or a.Part2.Position.Z +(1.9) < Partt4.Position.Z 
or a.Part2.Position.Z -(1.9) > Partt4.Position.Z 
then
if a.Part2.Position.X - 2.5 > Partt5.Position.X
or a.Part2.Position.X < Partt5.Position.X
or a.Part2.Position.Y +(1.9) < Partt5.Position.Y 
or a.Part2.Position.Y -(1.9) > Partt5.Position.Y 
or a.Part2.Position.Z +(1.9) < Partt5.Position.Z 
or a.Part2.Position.Z -(1.9) > Partt5.Position.Z 
then
if a.Part2.Position.X - 2.5 > Partt6.Position.X
or a.Part2.Position.X < Partt6.Position.X
or a.Part2.Position.Y +(1.9) < Partt6.Position.Y 
or a.Part2.Position.Y -(1.9) > Partt6.Position.Y 
or a.Part2.Position.Z +(1.9) < Partt6.Position.Z 
or a.Part2.Position.Z -(1.9) > Partt6.Position.Z 
then
if a.Part2.Position.X - 2.5 > Partt7.Position.X
or a.Part2.Position.X < Partt7.Position.X
or a.Part2.Position.Y +(1.9) < Partt7.Position.Y 
or a.Part2.Position.Y -(1.9) > Partt7.Position.Y 
or a.Part2.Position.Z +(1.9) < Partt7.Position.Z 
or a.Part2.Position.Z -(1.9) > Partt7.Position.Z 
then
if a.Part2.Position.X - 2.5 > Partt8.Position.X
or a.Part2.Position.X < Partt8.Position.X
or a.Part2.Position.Y +(1.9) < Partt8.Position.Y 
or a.Part2.Position.Y -(1.9) > Partt8.Position.Y 
or a.Part2.Position.Z +(1.9) < Partt8.Position.Z 
or a.Part2.Position.Z -(1.9) > Partt8.Position.Z 
then
xnePart2 = 1
else xnePart2 = 0 
end
else xnePart2 = 0
end
else xnePart2 = 0
end
else xnePart2 = 0
end
else xnePart2 = 0
end
else xnePart2 = 0
end
else xnePart2 = 0
end

if a.Part2.Position.Y + 2.5 < Partt1.Position.Y -- P1 +Y Positions Library Reference
or a.Part2.Position.Y > Partt1.Position.Y
or a.Part2.Position.X +(1.9) < Partt1.Position.X 
or a.Part2.Position.X -(1.9) > Partt1.Position.X 
or a.Part2.Position.Z +(1.9) < Partt1.Position.Z 
or a.Part2.Position.Z -(1.9) > Partt1.Position.Z 
then
if a.Part2.Position.Y + 2.5 < Partt3.Position.Y
or a.Part2.Position.Y > Partt3.Position.Y
or a.Part2.Position.X +(1.9) < Partt3.Position.X 
or a.Part2.Position.X -(1.9) > Partt3.Position.X 
or a.Part2.Position.Z +(1.9) < Partt3.Position.Z 
or a.Part2.Position.Z -(1.9) > Partt3.Position.Z 
then
if a.Part2.Position.Y + 2.5 < Partt4.Position.Y
or a.Part2.Position.Y > Partt4.Position.Y
or a.Part2.Position.X +(1.9) < Partt4.Position.X 
or a.Part2.Position.X -(1.9) > Partt4.Position.X 
or a.Part2.Position.Z +(1.9) < Partt4.Position.Z 
or a.Part2.Position.Z -(1.9) > Partt4.Position.Z 
then
if a.Part2.Position.Y + 2.5 < Partt5.Position.Y
or a.Part2.Position.Y > Partt5.Position.Y
or a.Part2.Position.X +(1.9) < Partt5.Position.X 
or a.Part2.Position.X -(1.9) > Partt5.Position.X 
or a.Part2.Position.Z +(1.9) < Partt5.Position.Z 
or a.Part2.Position.Z -(1.9) > Partt5.Position.Z 
then
if a.Part2.Position.Y + 2.5 < Partt6.Position.Y
or a.Part2.Position.Y > Partt6.Position.Y
or a.Part2.Position.X +(1.9) < Partt6.Position.X 
or a.Part2.Position.X -(1.9) > Partt6.Position.X 
or a.Part2.Position.Z +(1.9) < Partt6.Position.Z 
or a.Part2.Position.Z -(1.9) > Partt6.Position.Z 
then
if a.Part2.Position.Y + 2.5 < Partt7.Position.Y
or a.Part2.Position.Y > Partt7.Position.Y
or a.Part2.Position.X +(1.9) < Partt7.Position.X 
or a.Part2.Position.X -(1.9) > Partt7.Position.X 
or a.Part2.Position.Z +(1.9) < Partt7.Position.Z 
or a.Part2.Position.Z -(1.9) > Partt7.Position.Z 
then
if a.Part2.Position.Y + 2.5 < Partt8.Position.Y
or a.Part2.Position.Y > Partt8.Position.Y
or a.Part2.Position.X +(1.9) < Partt8.Position.X 
or a.Part2.Position.X -(1.9) > Partt8.Position.X 
or a.Part2.Position.Z +(1.9) < Partt8.Position.Z 
or a.Part2.Position.Z -(1.9) > Partt8.Position.Z 
then
ypoPart2 = 1
else ypoPart2 = 0 
end
else ypoPart2 = 0
end
else ypoPart2 = 0
end
else ypoPart2 = 0
end
else ypoPart2 = 0
end
else ypoPart2 = 0
end
else ypoPart2 = 0
end

if a.Part2.Position.Y - 2.5 > Partt1.Position.Y -- P1 -Y Positions Library Reference
or a.Part2.Position.Y < Partt1.Position.Y
or a.Part2.Position.X +(1.9) < Partt1.Position.X 
or a.Part2.Position.X -(1.9) > Partt1.Position.X 
or a.Part2.Position.Z +(1.9) < Partt1.Position.Z 
or a.Part2.Position.Z -(1.9) > Partt1.Position.Z 
then
if a.Part2.Position.Y - 2.5 > Partt3.Position.Y
or a.Part2.Position.Y < Partt3.Position.Y
or a.Part2.Position.X +(1.9) < Partt3.Position.X 
or a.Part2.Position.X -(1.9) > Partt3.Position.X 
or a.Part2.Position.Z +(1.9) < Partt3.Position.Z 
or a.Part2.Position.Z -(1.9) > Partt3.Position.Z 
then
if a.Part2.Position.Y - 2.5 > Partt4.Position.Y
or a.Part2.Position.Y < Partt4.Position.Y
or a.Part2.Position.X +(1.9) < Partt4.Position.X 
or a.Part2.Position.X -(1.9) > Partt4.Position.X 
or a.Part2.Position.Z +(1.9) < Partt4.Position.Z 
or a.Part2.Position.Z -(1.9) > Partt4.Position.Z 
then
if a.Part2.Position.Y - 2.5 > Partt5.Position.Y
or a.Part2.Position.Y < Partt5.Position.Y
or a.Part2.Position.X +(1.9) < Partt5.Position.X 
or a.Part2.Position.X -(1.9) > Partt5.Position.X 
or a.Part2.Position.Z +(1.9) < Partt5.Position.Z 
or a.Part2.Position.Z -(1.9) > Partt5.Position.Z 
then
if a.Part2.Position.Y - 2.5 > Partt6.Position.Y
or a.Part2.Position.Y < Partt6.Position.Y
or a.Part2.Position.X +(1.9) < Partt6.Position.X 
or a.Part2.Position.X -(1.9) > Partt6.Position.X 
or a.Part2.Position.Z +(1.9) < Partt6.Position.Z 
or a.Part2.Position.Z -(1.9) > Partt6.Position.Z 
then
if a.Part2.Position.Y - 2.5 > Partt7.Position.Y
or a.Part2.Position.Y < Partt7.Position.Y
or a.Part2.Position.X +(1.9) < Partt7.Position.X 
or a.Part2.Position.X -(1.9) > Partt7.Position.X 
or a.Part2.Position.Z +(1.9) < Partt7.Position.Z 
or a.Part2.Position.Z -(1.9) > Partt7.Position.Z 
then
if a.Part2.Position.Y - 2.5 > Partt8.Position.Y
or a.Part2.Position.Y < Partt8.Position.Y
or a.Part2.Position.X +(1.9) < Partt8.Position.X 
or a.Part2.Position.X -(1.9) > Partt8.Position.X 
or a.Part2.Position.Z +(1.9) < Partt8.Position.Z 
or a.Part2.Position.Z -(1.9) > Partt8.Position.Z 
then
ynePart2 = 1
else ynePart2 = 0 
end
else ynePart2 = 0
end
else ynePart2 = 0
end
else ynePart2 = 0
end
else ynePart2 = 0
end
else ynePart2 = 0
end
else ynePart2 = 0
end

if a.Part2.Position.Z + 2.5 < Partt1.Position.Z -- P1 +Z Positions Library Reference
or a.Part2.Position.Z > Partt1.Position.Z
or a.Part2.Position.X +(1.9) < Partt1.Position.X 
or a.Part2.Position.X -(1.9) > Partt1.Position.X 
or a.Part2.Position.Y +(1.9) < Partt1.Position.Y 
or a.Part2.Position.Y -(1.9) > Partt1.Position.Y 
then
if a.Part2.Position.Z + 2.5 < Partt3.Position.Z
or a.Part2.Position.Z > Partt3.Position.Z
or a.Part2.Position.X +(1.9) < Partt3.Position.X 
or a.Part2.Position.X -(1.9) > Partt3.Position.X 
or a.Part2.Position.Y +(1.9) < Partt3.Position.Y 
or a.Part2.Position.Y -(1.9) > Partt3.Position.Y 
then
if a.Part2.Position.Z + 2.5 < Partt4.Position.Z
or a.Part2.Position.Z > Partt4.Position.Z
or a.Part2.Position.X +(1.9) < Partt4.Position.X 
or a.Part2.Position.X -(1.9) > Partt4.Position.X 
or a.Part2.Position.Y +(1.9) < Partt4.Position.Y 
or a.Part2.Position.Y -(1.9) > Partt4.Position.Y 
then
if a.Part2.Position.Z + 2.5 < Partt5.Position.Z
or a.Part2.Position.Z > Partt5.Position.Z
or a.Part2.Position.X +(1.9) < Partt5.Position.X 
or a.Part2.Position.X -(1.9) > Partt5.Position.X 
or a.Part2.Position.Y +(1.9) < Partt5.Position.Y 
or a.Part2.Position.Y -(1.9) > Partt5.Position.Y 
then
if a.Part2.Position.Z + 2.5 < Partt6.Position.Z
or a.Part2.Position.Z > Partt6.Position.Z
or a.Part2.Position.X +(1.9) < Partt6.Position.X 
or a.Part2.Position.X -(1.9) > Partt6.Position.X 
or a.Part2.Position.Y +(1.9) < Partt6.Position.Y 
or a.Part2.Position.Y -(1.9) > Partt6.Position.Y 
then
if a.Part2.Position.Z + 2.5 < Partt7.Position.Z
or a.Part2.Position.Z > Partt7.Position.Z
or a.Part2.Position.X +(1.9) < Partt7.Position.X 
or a.Part2.Position.X -(1.9) > Partt7.Position.X 
or a.Part2.Position.Y +(1.9) < Partt7.Position.Y 
or a.Part2.Position.Y -(1.9) > Partt7.Position.Y 
then
if a.Part2.Position.Z + 2.5 < Partt8.Position.Z
or a.Part2.Position.Z > Partt8.Position.Z
or a.Part2.Position.X +(1.9) < Partt8.Position.X 
or a.Part2.Position.X -(1.9) > Partt8.Position.X 
or a.Part2.Position.Y +(1.9) < Partt8.Position.Y 
or a.Part2.Position.Y -(1.9) > Partt8.Position.Y 
then
zpoPart2 = 1
else zpoPart2 = 0 
end
else zpoPart2 = 0
end
else zpoPart2 = 0
end
else zpoPart2 = 0
end
else zpoPart2 = 0
end
else zpoPart2 = 0
end
else zpoPart2 = 0
end

if a.Part2.Position.Z - 2.5 > Partt1.Position.Z -- P1 -Z Positions Library Reference
or a.Part2.Position.Z < Partt1.Position.Z
or a.Part2.Position.X +(1.9) < Partt1.Position.X 
or a.Part2.Position.X -(1.9) > Partt1.Position.X 
or a.Part2.Position.Y +(1.9) < Partt1.Position.Y 
or a.Part2.Position.Y -(1.9) > Partt1.Position.Y 
then
if a.Part2.Position.Z - 2.5 > Partt3.Position.Z
or a.Part2.Position.Z < Partt3.Position.Z
or a.Part2.Position.X +(1.9) < Partt3.Position.X 
or a.Part2.Position.X -(1.9) > Partt3.Position.X 
or a.Part2.Position.Y +(1.9) < Partt3.Position.Y 
or a.Part2.Position.Y -(1.9) > Partt3.Position.Y 
then
if a.Part2.Position.Z - 2.5 > Partt4.Position.Z
or a.Part2.Position.Z < Partt4.Position.Z
or a.Part2.Position.X +(1.9) < Partt4.Position.X 
or a.Part2.Position.X -(1.9) > Partt4.Position.X 
or a.Part2.Position.Y +(1.9) < Partt4.Position.Y 
or a.Part2.Position.Y -(1.9) > Partt4.Position.Y 
then
if a.Part2.Position.Z - 2.5 > Partt5.Position.Z
or a.Part2.Position.Z < Partt5.Position.Z
or a.Part2.Position.X +(1.9) < Partt5.Position.X 
or a.Part2.Position.X -(1.9) > Partt5.Position.X 
or a.Part2.Position.Y +(1.9) < Partt5.Position.Y 
or a.Part2.Position.Y -(1.9) > Partt5.Position.Y 
then
if a.Part2.Position.Z - 2.5 > Partt6.Position.Z
or a.Part2.Position.Z < Partt6.Position.Z
or a.Part2.Position.X +(1.9) < Partt6.Position.X 
or a.Part2.Position.X -(1.9) > Partt6.Position.X 
or a.Part2.Position.Y +(1.9) < Partt6.Position.Y 
or a.Part2.Position.Y -(1.9) > Partt6.Position.Y 
then
if a.Part2.Position.Z - 2.5 > Partt7.Position.Z
or a.Part2.Position.Z < Partt7.Position.Z
or a.Part2.Position.X +(1.9) < Partt7.Position.X 
or a.Part2.Position.X -(1.9) > Partt7.Position.X 
or a.Part2.Position.Y +(1.9) < Partt7.Position.Y 
or a.Part2.Position.Y -(1.9) > Partt7.Position.Y 
then
if a.Part2.Position.Z - 2.5 > Partt8.Position.Z
or a.Part2.Position.Z < Partt8.Position.Z
or a.Part2.Position.X +(1.9) < Partt8.Position.X 
or a.Part2.Position.X -(1.9) > Partt8.Position.X 
or a.Part2.Position.Y +(1.9) < Partt8.Position.Y 
or a.Part2.Position.Y -(1.9) > Partt8.Position.Y 
then
znePart2 = 1
else znePart2 = 0 
end
else znePart2 = 0
end
else znePart2 = 0
end
else znePart2 = 0
end
else znePart2 = 0
end
else znePart2 = 0
end
else znePart2 = 0
end

if PriPart2 == 1
and XPart2 == 1
then	
if xpoPart2 == 1
then
for i=1, 10 do
a.Part2.CFrame = a.Part2.CFrame +(Vector3.new(XPart2/10,0,0))
wait(.01)
end
else PriPart2 = (PriPart2+1)
end
else end

if PriPart2 == 1
and XPart2 == -1
then	
if xnePart2 == 1
then
for i=1, 10 do
a.Part2.CFrame = a.Part2.CFrame +(Vector3.new(XPart2/10,0,0))
wait(.01)
end
else PriPart2 = (PriPart2+1)
end
else end

if PriPart2 == 2
and YPart2 == 1
then	
if ypoPart2 == 1
then
for i=1, 10 do
a.Part2.CFrame = a.Part2.CFrame +(Vector3.new(0,YPart2/10,0))
wait(.01)
end
else PriPart2 = (PriPart2+1)
end
else end

if PriPart2 == 2
and YPart2 == -1
then	
if ynePart2 == 1
then
for i=1, 10 do
a.Part2.CFrame = a.Part2.CFrame +(Vector3.new(0,YPart2/10,0))
wait(.01)
end
else PriPart2 = (PriPart2+1)
end
else end

if PriPart2 == 3
and ZPart2 == 1
then	
if zpoPart2 == 1
then
for i=1, 10 do
a.Part2.CFrame = a.Part2.CFrame +(Vector3.new(0,0,ZPart2/10))
wait(.01)
end
else PriPart2 = (PriPart2+1)
end
else end

if PriPart2 == 3
and ZPart2 == -1
then	
if znePart2 == 1
then
for i=1, 10 do
a.Part2.CFrame = a.Part2.CFrame +(Vector3.new(0,0,ZPart2/10))
wait(.01)
end
else PriPart2 = (PriPart2+1)
end
else end




sPart2 =(sPart2+1) --Checking reconfiguring positions

if sPart2 == 1
then
XSPart2 = a.Part2.Position.X
YSPart2 = a.Part2.Position.Y
ZSPart2 = a.Part2.Position.Z
else end

if sPart2 == 3 --Checking if Part is Valid for Instant Fix
and XSPart2 == a.Part2.Position.X
and YSPart2 == a.Part2.Position.Y
and ZSPart2 == a.Part2.Position.Z
and a.Part2.Position.X < cPart2.Position.X +4
and a.Part2.Position.X > cPart2.Position.X -4
and a.Part2.Position.Y < cPart2.Position.Y +4
and a.Part2.Position.Y > cPart2.Position.Y -4
and a.Part2.Position.Z < cPart2.Position.Z +4
and a.Part2.Position.Z > cPart2.Position.Z -4
then
for i=1, 20 do
a.Part2.CFrame = a.Part2.CFrame +(Vector3.new((cPart2.Position.X-XSPart2)/20,(cPart2.Position.Y-YSPart2)/20,(cPart2.Position.Z-ZSPart2)/20))
wait(.01)
end
else end

if sPart2 == 3
and RPart2 == 1 --Checking +X Reconfiguration
then
if  XSPart2 == a.Part2.Position.X
and YSPart2 == a.Part2.Position.Y
and ZSPart2 == a.Part2.Position.Z
then
RPart2 = (RPart2+1)
repeat
if a.Part2.Position.X + 2.5 < Partt1.Position.X -- P1 +X Positions Library Reference
or a.Part2.Position.X > Partt1.Position.X
or a.Part2.Position.Y +(1.9) < Partt1.Position.Y 
or a.Part2.Position.Y -(1.9) > Partt1.Position.Y 
or a.Part2.Position.Z +(1.9) < Partt1.Position.Z 
or a.Part2.Position.Z -(1.9) > Partt1.Position.Z 
then
if a.Part2.Position.X + 2.5 < Partt3.Position.X
or a.Part2.Position.X > Partt3.Position.X
or a.Part2.Position.Y +(1.9) < Partt3.Position.Y 
or a.Part2.Position.Y -(1.9) > Partt3.Position.Y 
or a.Part2.Position.Z +(1.9) < Partt3.Position.Z 
or a.Part2.Position.Z -(1.9) > Partt3.Position.Z 
then
if a.Part2.Position.X + 2.5 < Partt4.Position.X
or a.Part2.Position.X > Partt4.Position.X
or a.Part2.Position.Y +(1.9) < Partt4.Position.Y 
or a.Part2.Position.Y -(1.9) > Partt4.Position.Y 
or a.Part2.Position.Z +(1.9) < Partt4.Position.Z 
or a.Part2.Position.Z -(1.9) > Partt4.Position.Z 
then
if a.Part2.Position.X + 2.5 < Partt5.Position.X
or a.Part2.Position.X > Partt5.Position.X
or a.Part2.Position.Y +(1.9) < Partt5.Position.Y 
or a.Part2.Position.Y -(1.9) > Partt5.Position.Y 
or a.Part2.Position.Z +(1.9) < Partt5.Position.Z 
or a.Part2.Position.Z -(1.9) > Partt5.Position.Z 
then
if a.Part2.Position.X + 2.5 < Partt6.Position.X
or a.Part2.Position.X > Partt6.Position.X
or a.Part2.Position.Y +(1.9) < Partt6.Position.Y 
or a.Part2.Position.Y -(1.9) > Partt6.Position.Y 
or a.Part2.Position.Z +(1.9) < Partt6.Position.Z 
or a.Part2.Position.Z -(1.9) > Partt6.Position.Z 
then
if a.Part2.Position.X + 2.5 < Partt7.Position.X
or a.Part2.Position.X > Partt7.Position.X
or a.Part2.Position.Y +(1.9) < Partt7.Position.Y 
or a.Part2.Position.Y -(1.9) > Partt7.Position.Y 
or a.Part2.Position.Z +(1.9) < Partt7.Position.Z 
or a.Part2.Position.Z -(1.9) > Partt7.Position.Z 
then
if a.Part2.Position.X + 2.5 < Partt8.Position.X
or a.Part2.Position.X > Partt8.Position.X
or a.Part2.Position.Y +(1.9) < Partt8.Position.Y 
or a.Part2.Position.Y -(1.9) > Partt8.Position.Y 
or a.Part2.Position.Z +(1.9) < Partt8.Position.Z 
or a.Part2.Position.Z -(1.9) > Partt8.Position.Z 
then
xpoPart2 = 1
else xpoPart2 = 0 
end
else xpoPart2 = 0
end
else xpoPart2 = 0
end
else xpoPart2 = 0
end
else xpoPart2 = 0
end
else xpoPart2 = 0
end
else xpoPart2 = 0
end

if a.Part2.Position.X - 2.5 > Partt1.Position.X -- P1 -X Positions Library Reference
or a.Part2.Position.X < Partt1.Position.X
or a.Part2.Position.Y +(1.9) < Partt1.Position.Y 
or a.Part2.Position.Y -(1.9) > Partt1.Position.Y 
or a.Part2.Position.Z +(1.9) < Partt1.Position.Z 
or a.Part2.Position.Z -(1.9) > Partt1.Position.Z 
then
if a.Part2.Position.X - 2.5 > Partt3.Position.X
or a.Part2.Position.X < Partt3.Position.X
or a.Part2.Position.Y +(1.9) < Partt3.Position.Y 
or a.Part2.Position.Y -(1.9) > Partt3.Position.Y 
or a.Part2.Position.Z +(1.9) < Partt3.Position.Z 
or a.Part2.Position.Z -(1.9) > Partt3.Position.Z 
then
if a.Part2.Position.X - 2.5 > Partt4.Position.X
or a.Part2.Position.X < Partt4.Position.X
or a.Part2.Position.Y +(1.9) < Partt4.Position.Y 
or a.Part2.Position.Y -(1.9) > Partt4.Position.Y 
or a.Part2.Position.Z +(1.9) < Partt4.Position.Z 
or a.Part2.Position.Z -(1.9) > Partt4.Position.Z 
then
if a.Part2.Position.X - 2.5 > Partt5.Position.X
or a.Part2.Position.X < Partt5.Position.X
or a.Part2.Position.Y +(1.9) < Partt5.Position.Y 
or a.Part2.Position.Y -(1.9) > Partt5.Position.Y 
or a.Part2.Position.Z +(1.9) < Partt5.Position.Z 
or a.Part2.Position.Z -(1.9) > Partt5.Position.Z 
then
if a.Part2.Position.X - 2.5 > Partt6.Position.X
or a.Part2.Position.X < Partt6.Position.X
or a.Part2.Position.Y +(1.9) < Partt6.Position.Y 
or a.Part2.Position.Y -(1.9) > Partt6.Position.Y 
or a.Part2.Position.Z +(1.9) < Partt6.Position.Z 
or a.Part2.Position.Z -(1.9) > Partt6.Position.Z 
then
if a.Part2.Position.X - 2.5 > Partt7.Position.X
or a.Part2.Position.X < Partt7.Position.X
or a.Part2.Position.Y +(1.9) < Partt7.Position.Y 
or a.Part2.Position.Y -(1.9) > Partt7.Position.Y 
or a.Part2.Position.Z +(1.9) < Partt7.Position.Z 
or a.Part2.Position.Z -(1.9) > Partt7.Position.Z 
then
if a.Part2.Position.X - 2.5 > Partt8.Position.X
or a.Part2.Position.X < Partt8.Position.X
or a.Part2.Position.Y +(1.9) < Partt8.Position.Y 
or a.Part2.Position.Y -(1.9) > Partt8.Position.Y 
or a.Part2.Position.Z +(1.9) < Partt8.Position.Z 
or a.Part2.Position.Z -(1.9) > Partt8.Position.Z 
then
xnePart2 = 1
else xnePart2 = 0 
end
else xnePart2 = 0
end
else xnePart2 = 0
end
else xnePart2 = 0
end
else xnePart2 = 0
end
else xnePart2 = 0
end
else xnePart2 = 0
end

if a.Part2.Position.Y + 2.5 < Partt1.Position.Y -- P1 +Y Positions Library Reference
or a.Part2.Position.Y > Partt1.Position.Y
or a.Part2.Position.X +(1.9) < Partt1.Position.X 
or a.Part2.Position.X -(1.9) > Partt1.Position.X 
or a.Part2.Position.Z +(1.9) < Partt1.Position.Z 
or a.Part2.Position.Z -(1.9) > Partt1.Position.Z 
then
if a.Part2.Position.Y + 2.5 < Partt3.Position.Y
or a.Part2.Position.Y > Partt3.Position.Y
or a.Part2.Position.X +(1.9) < Partt3.Position.X 
or a.Part2.Position.X -(1.9) > Partt3.Position.X 
or a.Part2.Position.Z +(1.9) < Partt3.Position.Z 
or a.Part2.Position.Z -(1.9) > Partt3.Position.Z 
then
if a.Part2.Position.Y + 2.5 < Partt4.Position.Y
or a.Part2.Position.Y > Partt4.Position.Y
or a.Part2.Position.X +(1.9) < Partt4.Position.X 
or a.Part2.Position.X -(1.9) > Partt4.Position.X 
or a.Part2.Position.Z +(1.9) < Partt4.Position.Z 
or a.Part2.Position.Z -(1.9) > Partt4.Position.Z 
then
if a.Part2.Position.Y + 2.5 < Partt5.Position.Y
or a.Part2.Position.Y > Partt5.Position.Y
or a.Part2.Position.X +(1.9) < Partt5.Position.X 
or a.Part2.Position.X -(1.9) > Partt5.Position.X 
or a.Part2.Position.Z +(1.9) < Partt5.Position.Z 
or a.Part2.Position.Z -(1.9) > Partt5.Position.Z 
then
if a.Part2.Position.Y + 2.5 < Partt6.Position.Y
or a.Part2.Position.Y > Partt6.Position.Y
or a.Part2.Position.X +(1.9) < Partt6.Position.X 
or a.Part2.Position.X -(1.9) > Partt6.Position.X 
or a.Part2.Position.Z +(1.9) < Partt6.Position.Z 
or a.Part2.Position.Z -(1.9) > Partt6.Position.Z 
then
if a.Part2.Position.Y + 2.5 < Partt7.Position.Y
or a.Part2.Position.Y > Partt7.Position.Y
or a.Part2.Position.X +(1.9) < Partt7.Position.X 
or a.Part2.Position.X -(1.9) > Partt7.Position.X 
or a.Part2.Position.Z +(1.9) < Partt7.Position.Z 
or a.Part2.Position.Z -(1.9) > Partt7.Position.Z 
then
if a.Part2.Position.Y + 2.5 < Partt8.Position.Y
or a.Part2.Position.Y > Partt8.Position.Y
or a.Part2.Position.X +(1.9) < Partt8.Position.X 
or a.Part2.Position.X -(1.9) > Partt8.Position.X 
or a.Part2.Position.Z +(1.9) < Partt8.Position.Z 
or a.Part2.Position.Z -(1.9) > Partt8.Position.Z 
then
ypoPart2 = 1
else ypoPart2 = 0 
end
else ypoPart2 = 0
end
else ypoPart2 = 0
end
else ypoPart2 = 0
end
else ypoPart2 = 0
end
else ypoPart2 = 0
end
else ypoPart2 = 0
end

if a.Part2.Position.Y - 2.5 > Partt1.Position.Y -- P1 -Y Positions Library Reference
or a.Part2.Position.Y < Partt1.Position.Y
or a.Part2.Position.X +(1.9) < Partt1.Position.X 
or a.Part2.Position.X -(1.9) > Partt1.Position.X 
or a.Part2.Position.Z +(1.9) < Partt1.Position.Z 
or a.Part2.Position.Z -(1.9) > Partt1.Position.Z 
then
if a.Part2.Position.Y - 2.5 > Partt3.Position.Y
or a.Part2.Position.Y < Partt3.Position.Y
or a.Part2.Position.X +(1.9) < Partt3.Position.X 
or a.Part2.Position.X -(1.9) > Partt3.Position.X 
or a.Part2.Position.Z +(1.9) < Partt3.Position.Z 
or a.Part2.Position.Z -(1.9) > Partt3.Position.Z 
then
if a.Part2.Position.Y - 2.5 > Partt4.Position.Y
or a.Part2.Position.Y < Partt4.Position.Y
or a.Part2.Position.X +(1.9) < Partt4.Position.X 
or a.Part2.Position.X -(1.9) > Partt4.Position.X 
or a.Part2.Position.Z +(1.9) < Partt4.Position.Z 
or a.Part2.Position.Z -(1.9) > Partt4.Position.Z 
then
if a.Part2.Position.Y - 2.5 > Partt5.Position.Y
or a.Part2.Position.Y < Partt5.Position.Y
or a.Part2.Position.X +(1.9) < Partt5.Position.X 
or a.Part2.Position.X -(1.9) > Partt5.Position.X 
or a.Part2.Position.Z +(1.9) < Partt5.Position.Z 
or a.Part2.Position.Z -(1.9) > Partt5.Position.Z 
then
if a.Part2.Position.Y - 2.5 > Partt6.Position.Y
or a.Part2.Position.Y < Partt6.Position.Y
or a.Part2.Position.X +(1.9) < Partt6.Position.X 
or a.Part2.Position.X -(1.9) > Partt6.Position.X 
or a.Part2.Position.Z +(1.9) < Partt6.Position.Z 
or a.Part2.Position.Z -(1.9) > Partt6.Position.Z 
then
if a.Part2.Position.Y - 2.5 > Partt7.Position.Y
or a.Part2.Position.Y < Partt7.Position.Y
or a.Part2.Position.X +(1.9) < Partt7.Position.X 
or a.Part2.Position.X -(1.9) > Partt7.Position.X 
or a.Part2.Position.Z +(1.9) < Partt7.Position.Z 
or a.Part2.Position.Z -(1.9) > Partt7.Position.Z 
then
if a.Part2.Position.Y - 2.5 > Partt8.Position.Y
or a.Part2.Position.Y < Partt8.Position.Y
or a.Part2.Position.X +(1.9) < Partt8.Position.X 
or a.Part2.Position.X -(1.9) > Partt8.Position.X 
or a.Part2.Position.Z +(1.9) < Partt8.Position.Z 
or a.Part2.Position.Z -(1.9) > Partt8.Position.Z 
then
ynePart2 = 1
else ynePart2 = 0 
end
else ynePart2 = 0
end
else ynePart2 = 0
end
else ynePart2 = 0
end
else ynePart2 = 0
end
else ynePart2 = 0
end
else ynePart2 = 0
end

if a.Part2.Position.Z + 2.5 < Partt1.Position.Z -- P1 +Z Positions Library Reference
or a.Part2.Position.Z > Partt1.Position.Z
or a.Part2.Position.X +(1.9) < Partt1.Position.X 
or a.Part2.Position.X -(1.9) > Partt1.Position.X 
or a.Part2.Position.Y +(1.9) < Partt1.Position.Y 
or a.Part2.Position.Y -(1.9) > Partt1.Position.Y 
then
if a.Part2.Position.Z + 2.5 < Partt3.Position.Z
or a.Part2.Position.Z > Partt3.Position.Z
or a.Part2.Position.X +(1.9) < Partt3.Position.X 
or a.Part2.Position.X -(1.9) > Partt3.Position.X 
or a.Part2.Position.Y +(1.9) < Partt3.Position.Y 
or a.Part2.Position.Y -(1.9) > Partt3.Position.Y 
then
if a.Part2.Position.Z + 2.5 < Partt4.Position.Z
or a.Part2.Position.Z > Partt4.Position.Z
or a.Part2.Position.X +(1.9) < Partt4.Position.X 
or a.Part2.Position.X -(1.9) > Partt4.Position.X 
or a.Part2.Position.Y +(1.9) < Partt4.Position.Y 
or a.Part2.Position.Y -(1.9) > Partt4.Position.Y 
then
if a.Part2.Position.Z + 2.5 < Partt5.Position.Z
or a.Part2.Position.Z > Partt5.Position.Z
or a.Part2.Position.X +(1.9) < Partt5.Position.X 
or a.Part2.Position.X -(1.9) > Partt5.Position.X 
or a.Part2.Position.Y +(1.9) < Partt5.Position.Y 
or a.Part2.Position.Y -(1.9) > Partt5.Position.Y 
then
if a.Part2.Position.Z + 2.5 < Partt6.Position.Z
or a.Part2.Position.Z > Partt6.Position.Z
or a.Part2.Position.X +(1.9) < Partt6.Position.X 
or a.Part2.Position.X -(1.9) > Partt6.Position.X 
or a.Part2.Position.Y +(1.9) < Partt6.Position.Y 
or a.Part2.Position.Y -(1.9) > Partt6.Position.Y 
then
if a.Part2.Position.Z + 2.5 < Partt7.Position.Z
or a.Part2.Position.Z > Partt7.Position.Z
or a.Part2.Position.X +(1.9) < Partt7.Position.X 
or a.Part2.Position.X -(1.9) > Partt7.Position.X 
or a.Part2.Position.Y +(1.9) < Partt7.Position.Y 
or a.Part2.Position.Y -(1.9) > Partt7.Position.Y 
then
if a.Part2.Position.Z + 2.5 < Partt8.Position.Z
or a.Part2.Position.Z > Partt8.Position.Z
or a.Part2.Position.X +(1.9) < Partt8.Position.X 
or a.Part2.Position.X -(1.9) > Partt8.Position.X 
or a.Part2.Position.Y +(1.9) < Partt8.Position.Y 
or a.Part2.Position.Y -(1.9) > Partt8.Position.Y 
then
zpoPart2 = 1
else zpoPart2 = 0 
end
else zpoPart2 = 0
end
else zpoPart2 = 0
end
else zpoPart2 = 0
end
else zpoPart2 = 0
end
else zpoPart2 = 0
end
else zpoPart2 = 0
end

if a.Part2.Position.Z - 2.5 > Partt1.Position.Z -- P1 -Z Positions Library Reference
or a.Part2.Position.Z < Partt1.Position.Z
or a.Part2.Position.X +(1.9) < Partt1.Position.X 
or a.Part2.Position.X -(1.9) > Partt1.Position.X 
or a.Part2.Position.Y +(1.9) < Partt1.Position.Y 
or a.Part2.Position.Y -(1.9) > Partt1.Position.Y 
then
if a.Part2.Position.Z - 2.5 > Partt3.Position.Z
or a.Part2.Position.Z < Partt3.Position.Z
or a.Part2.Position.X +(1.9) < Partt3.Position.X 
or a.Part2.Position.X -(1.9) > Partt3.Position.X 
or a.Part2.Position.Y +(1.9) < Partt3.Position.Y 
or a.Part2.Position.Y -(1.9) > Partt3.Position.Y 
then
if a.Part2.Position.Z - 2.5 > Partt4.Position.Z
or a.Part2.Position.Z < Partt4.Position.Z
or a.Part2.Position.X +(1.9) < Partt4.Position.X 
or a.Part2.Position.X -(1.9) > Partt4.Position.X 
or a.Part2.Position.Y +(1.9) < Partt4.Position.Y 
or a.Part2.Position.Y -(1.9) > Partt4.Position.Y 
then
if a.Part2.Position.Z - 2.5 > Partt5.Position.Z
or a.Part2.Position.Z < Partt5.Position.Z
or a.Part2.Position.X +(1.9) < Partt5.Position.X 
or a.Part2.Position.X -(1.9) > Partt5.Position.X 
or a.Part2.Position.Y +(1.9) < Partt5.Position.Y 
or a.Part2.Position.Y -(1.9) > Partt5.Position.Y 
then
if a.Part2.Position.Z - 2.5 > Partt6.Position.Z
or a.Part2.Position.Z < Partt6.Position.Z
or a.Part2.Position.X +(1.9) < Partt6.Position.X 
or a.Part2.Position.X -(1.9) > Partt6.Position.X 
or a.Part2.Position.Y +(1.9) < Partt6.Position.Y 
or a.Part2.Position.Y -(1.9) > Partt6.Position.Y 
then
if a.Part2.Position.Z - 2.5 > Partt7.Position.Z
or a.Part2.Position.Z < Partt7.Position.Z
or a.Part2.Position.X +(1.9) < Partt7.Position.X 
or a.Part2.Position.X -(1.9) > Partt7.Position.X 
or a.Part2.Position.Y +(1.9) < Partt7.Position.Y 
or a.Part2.Position.Y -(1.9) > Partt7.Position.Y 
then
if a.Part2.Position.Z - 2.5 > Partt8.Position.Z
or a.Part2.Position.Z < Partt8.Position.Z
or a.Part2.Position.X +(1.9) < Partt8.Position.X 
or a.Part2.Position.X -(1.9) > Partt8.Position.X 
or a.Part2.Position.Y +(1.9) < Partt8.Position.Y 
or a.Part2.Position.Y -(1.9) > Partt8.Position.Y 
then
znePart2 = 1
else znePart2 = 0 
end
else znePart2 = 0
end
else znePart2 = 0
end
else znePart2 = 0
end
else znePart2 = 0
end
else znePart2 = 0
end
else znePart2 = 0
end

PriPart2 = 1 
if PriPart2 == 1
then	
if xpoPart2 == 1
then
for i=1, 10 do
a.Part2.CFrame = a.Part2.CFrame +(Vector3.new(.1,0,0))
wait(.01)
end
else PriPart2 = (PriPart2+1)
end
else end

if PriPart2 == 2
then	
if ypoPart2 == 1
then
for i=1, 10 do
a.Part2.CFrame = a.Part2.CFrame +(Vector3.new(0,.1,0))
wait(.01)
end
else PriPart2 = (PriPart2+1)
end
else end

if PriPart2 == 3
then	
if zpoPart2 == 1
then
for i=1, 10 do
a.Part2.CFrame = a.Part2.CFrame +(Vector3.new(0,0,.1))
wait(.01)
end
else PriPart2 = (PriPart2+1)
end
else end

if PriPart2 == 4
then	
if ynePart2 == 1
then
for i=1, 10 do
a.Part2.CFrame = a.Part2.CFrame +(Vector3.new(0,-.1,0))
wait(.01)
end
else PriPart2 = (PriPart2+1)
end
else end

if PriPart2 == 5
then	
if znePart2 == 1
then
for i=1, 10 do
a.Part2.CFrame = a.Part2.CFrame +(Vector3.new(0,0,-.1))
wait(.01)
end
else PriPart2 = (PriPart2+1)
end
else end
------------------------------------------------------------------------------
for i=1, 10 do
a.Part2.CFrame = a.Part2.CFrame * CFrame.fromEulerAnglesXYZ(math.pi/20,0,0)
wait(.01)
end
TMPart2 = (TMPart2+1)
until 
math.abs(a.Part2.Position.X - cPart2.Position.X) > 5
or TMPart2 == 7
else end
else end

if sPart2 == 3
and RPart2 == 2 --Checking +X Reconfiguration
then
if  XSPart2 == a.Part2.Position.X
and YSPart2 == a.Part2.Position.Y
and ZSPart2 == a.Part2.Position.Z
then
RPart2 = (RPart2+1)
repeat
if a.Part2.Position.X + 2.5 < Partt1.Position.X -- P1 +X Positions Library Reference
or a.Part2.Position.X > Partt1.Position.X
or a.Part2.Position.Y +(1.9) < Partt1.Position.Y 
or a.Part2.Position.Y -(1.9) > Partt1.Position.Y 
or a.Part2.Position.Z +(1.9) < Partt1.Position.Z 
or a.Part2.Position.Z -(1.9) > Partt1.Position.Z 
then
if a.Part2.Position.X + 2.5 < Partt3.Position.X
or a.Part2.Position.X > Partt3.Position.X
or a.Part2.Position.Y +(1.9) < Partt3.Position.Y 
or a.Part2.Position.Y -(1.9) > Partt3.Position.Y 
or a.Part2.Position.Z +(1.9) < Partt3.Position.Z 
or a.Part2.Position.Z -(1.9) > Partt3.Position.Z 
then
if a.Part2.Position.X + 2.5 < Partt4.Position.X
or a.Part2.Position.X > Partt4.Position.X
or a.Part2.Position.Y +(1.9) < Partt4.Position.Y 
or a.Part2.Position.Y -(1.9) > Partt4.Position.Y 
or a.Part2.Position.Z +(1.9) < Partt4.Position.Z 
or a.Part2.Position.Z -(1.9) > Partt4.Position.Z 
then
if a.Part2.Position.X + 2.5 < Partt5.Position.X
or a.Part2.Position.X > Partt5.Position.X
or a.Part2.Position.Y +(1.9) < Partt5.Position.Y 
or a.Part2.Position.Y -(1.9) > Partt5.Position.Y 
or a.Part2.Position.Z +(1.9) < Partt5.Position.Z 
or a.Part2.Position.Z -(1.9) > Partt5.Position.Z 
then
if a.Part2.Position.X + 2.5 < Partt6.Position.X
or a.Part2.Position.X > Partt6.Position.X
or a.Part2.Position.Y +(1.9) < Partt6.Position.Y 
or a.Part2.Position.Y -(1.9) > Partt6.Position.Y 
or a.Part2.Position.Z +(1.9) < Partt6.Position.Z 
or a.Part2.Position.Z -(1.9) > Partt6.Position.Z 
then
if a.Part2.Position.X + 2.5 < Partt7.Position.X
or a.Part2.Position.X > Partt7.Position.X
or a.Part2.Position.Y +(1.9) < Partt7.Position.Y 
or a.Part2.Position.Y -(1.9) > Partt7.Position.Y 
or a.Part2.Position.Z +(1.9) < Partt7.Position.Z 
or a.Part2.Position.Z -(1.9) > Partt7.Position.Z 
then
if a.Part2.Position.X + 2.5 < Partt8.Position.X
or a.Part2.Position.X > Partt8.Position.X
or a.Part2.Position.Y +(1.9) < Partt8.Position.Y 
or a.Part2.Position.Y -(1.9) > Partt8.Position.Y 
or a.Part2.Position.Z +(1.9) < Partt8.Position.Z 
or a.Part2.Position.Z -(1.9) > Partt8.Position.Z 
then
xpoPart2 = 1
else xpoPart2 = 0 
end
else xpoPart2 = 0
end
else xpoPart2 = 0
end
else xpoPart2 = 0
end
else xpoPart2 = 0
end
else xpoPart2 = 0
end
else xpoPart2 = 0
end

if a.Part2.Position.X - 2.5 > Partt1.Position.X -- P1 -X Positions Library Reference
or a.Part2.Position.X < Partt1.Position.X
or a.Part2.Position.Y +(1.9) < Partt1.Position.Y 
or a.Part2.Position.Y -(1.9) > Partt1.Position.Y 
or a.Part2.Position.Z +(1.9) < Partt1.Position.Z 
or a.Part2.Position.Z -(1.9) > Partt1.Position.Z 
then
if a.Part2.Position.X - 2.5 > Partt3.Position.X
or a.Part2.Position.X < Partt3.Position.X
or a.Part2.Position.Y +(1.9) < Partt3.Position.Y 
or a.Part2.Position.Y -(1.9) > Partt3.Position.Y 
or a.Part2.Position.Z +(1.9) < Partt3.Position.Z 
or a.Part2.Position.Z -(1.9) > Partt3.Position.Z 
then
if a.Part2.Position.X - 2.5 > Partt4.Position.X
or a.Part2.Position.X < Partt4.Position.X
or a.Part2.Position.Y +(1.9) < Partt4.Position.Y 
or a.Part2.Position.Y -(1.9) > Partt4.Position.Y 
or a.Part2.Position.Z +(1.9) < Partt4.Position.Z 
or a.Part2.Position.Z -(1.9) > Partt4.Position.Z 
then
if a.Part2.Position.X - 2.5 > Partt5.Position.X
or a.Part2.Position.X < Partt5.Position.X
or a.Part2.Position.Y +(1.9) < Partt5.Position.Y 
or a.Part2.Position.Y -(1.9) > Partt5.Position.Y 
or a.Part2.Position.Z +(1.9) < Partt5.Position.Z 
or a.Part2.Position.Z -(1.9) > Partt5.Position.Z 
then
if a.Part2.Position.X - 2.5 > Partt6.Position.X
or a.Part2.Position.X < Partt6.Position.X
or a.Part2.Position.Y +(1.9) < Partt6.Position.Y 
or a.Part2.Position.Y -(1.9) > Partt6.Position.Y 
or a.Part2.Position.Z +(1.9) < Partt6.Position.Z 
or a.Part2.Position.Z -(1.9) > Partt6.Position.Z 
then
if a.Part2.Position.X - 2.5 > Partt7.Position.X
or a.Part2.Position.X < Partt7.Position.X
or a.Part2.Position.Y +(1.9) < Partt7.Position.Y 
or a.Part2.Position.Y -(1.9) > Partt7.Position.Y 
or a.Part2.Position.Z +(1.9) < Partt7.Position.Z 
or a.Part2.Position.Z -(1.9) > Partt7.Position.Z 
then
if a.Part2.Position.X - 2.5 > Partt8.Position.X
or a.Part2.Position.X < Partt8.Position.X
or a.Part2.Position.Y +(1.9) < Partt8.Position.Y 
or a.Part2.Position.Y -(1.9) > Partt8.Position.Y 
or a.Part2.Position.Z +(1.9) < Partt8.Position.Z 
or a.Part2.Position.Z -(1.9) > Partt8.Position.Z 
then
xnePart2 = 1
else xnePart2 = 0 
end
else xnePart2 = 0
end
else xnePart2 = 0
end
else xnePart2 = 0
end
else xnePart2 = 0
end
else xnePart2 = 0
end
else xnePart2 = 0
end

if a.Part2.Position.Y + 2.5 < Partt1.Position.Y -- P1 +Y Positions Library Reference
or a.Part2.Position.Y > Partt1.Position.Y
or a.Part2.Position.X +(1.9) < Partt1.Position.X 
or a.Part2.Position.X -(1.9) > Partt1.Position.X 
or a.Part2.Position.Z +(1.9) < Partt1.Position.Z 
or a.Part2.Position.Z -(1.9) > Partt1.Position.Z 
then
if a.Part2.Position.Y + 2.5 < Partt3.Position.Y
or a.Part2.Position.Y > Partt3.Position.Y
or a.Part2.Position.X +(1.9) < Partt3.Position.X 
or a.Part2.Position.X -(1.9) > Partt3.Position.X 
or a.Part2.Position.Z +(1.9) < Partt3.Position.Z 
or a.Part2.Position.Z -(1.9) > Partt3.Position.Z 
then
if a.Part2.Position.Y + 2.5 < Partt4.Position.Y
or a.Part2.Position.Y > Partt4.Position.Y
or a.Part2.Position.X +(1.9) < Partt4.Position.X 
or a.Part2.Position.X -(1.9) > Partt4.Position.X 
or a.Part2.Position.Z +(1.9) < Partt4.Position.Z 
or a.Part2.Position.Z -(1.9) > Partt4.Position.Z 
then
if a.Part2.Position.Y + 2.5 < Partt5.Position.Y
or a.Part2.Position.Y > Partt5.Position.Y
or a.Part2.Position.X +(1.9) < Partt5.Position.X 
or a.Part2.Position.X -(1.9) > Partt5.Position.X 
or a.Part2.Position.Z +(1.9) < Partt5.Position.Z 
or a.Part2.Position.Z -(1.9) > Partt5.Position.Z 
then
if a.Part2.Position.Y + 2.5 < Partt6.Position.Y
or a.Part2.Position.Y > Partt6.Position.Y
or a.Part2.Position.X +(1.9) < Partt6.Position.X 
or a.Part2.Position.X -(1.9) > Partt6.Position.X 
or a.Part2.Position.Z +(1.9) < Partt6.Position.Z 
or a.Part2.Position.Z -(1.9) > Partt6.Position.Z 
then
if a.Part2.Position.Y + 2.5 < Partt7.Position.Y
or a.Part2.Position.Y > Partt7.Position.Y
or a.Part2.Position.X +(1.9) < Partt7.Position.X 
or a.Part2.Position.X -(1.9) > Partt7.Position.X 
or a.Part2.Position.Z +(1.9) < Partt7.Position.Z 
or a.Part2.Position.Z -(1.9) > Partt7.Position.Z 
then
if a.Part2.Position.Y + 2.5 < Partt8.Position.Y
or a.Part2.Position.Y > Partt8.Position.Y
or a.Part2.Position.X +(1.9) < Partt8.Position.X 
or a.Part2.Position.X -(1.9) > Partt8.Position.X 
or a.Part2.Position.Z +(1.9) < Partt8.Position.Z 
or a.Part2.Position.Z -(1.9) > Partt8.Position.Z 
then
ypoPart2 = 1
else ypoPart2 = 0 
end
else ypoPart2 = 0
end
else ypoPart2 = 0
end
else ypoPart2 = 0
end
else ypoPart2 = 0
end
else ypoPart2 = 0
end
else ypoPart2 = 0
end

if a.Part2.Position.Y - 2.5 > Partt1.Position.Y -- P1 -Y Positions Library Reference
or a.Part2.Position.Y < Partt1.Position.Y
or a.Part2.Position.X +(1.9) < Partt1.Position.X 
or a.Part2.Position.X -(1.9) > Partt1.Position.X 
or a.Part2.Position.Z +(1.9) < Partt1.Position.Z 
or a.Part2.Position.Z -(1.9) > Partt1.Position.Z 
then
if a.Part2.Position.Y - 2.5 > Partt3.Position.Y
or a.Part2.Position.Y < Partt3.Position.Y
or a.Part2.Position.X +(1.9) < Partt3.Position.X 
or a.Part2.Position.X -(1.9) > Partt3.Position.X 
or a.Part2.Position.Z +(1.9) < Partt3.Position.Z 
or a.Part2.Position.Z -(1.9) > Partt3.Position.Z 
then
if a.Part2.Position.Y - 2.5 > Partt4.Position.Y
or a.Part2.Position.Y < Partt4.Position.Y
or a.Part2.Position.X +(1.9) < Partt4.Position.X 
or a.Part2.Position.X -(1.9) > Partt4.Position.X 
or a.Part2.Position.Z +(1.9) < Partt4.Position.Z 
or a.Part2.Position.Z -(1.9) > Partt4.Position.Z 
then
if a.Part2.Position.Y - 2.5 > Partt5.Position.Y
or a.Part2.Position.Y < Partt5.Position.Y
or a.Part2.Position.X +(1.9) < Partt5.Position.X 
or a.Part2.Position.X -(1.9) > Partt5.Position.X 
or a.Part2.Position.Z +(1.9) < Partt5.Position.Z 
or a.Part2.Position.Z -(1.9) > Partt5.Position.Z 
then
if a.Part2.Position.Y - 2.5 > Partt6.Position.Y
or a.Part2.Position.Y < Partt6.Position.Y
or a.Part2.Position.X +(1.9) < Partt6.Position.X 
or a.Part2.Position.X -(1.9) > Partt6.Position.X 
or a.Part2.Position.Z +(1.9) < Partt6.Position.Z 
or a.Part2.Position.Z -(1.9) > Partt6.Position.Z 
then
if a.Part2.Position.Y - 2.5 > Partt7.Position.Y
or a.Part2.Position.Y < Partt7.Position.Y
or a.Part2.Position.X +(1.9) < Partt7.Position.X 
or a.Part2.Position.X -(1.9) > Partt7.Position.X 
or a.Part2.Position.Z +(1.9) < Partt7.Position.Z 
or a.Part2.Position.Z -(1.9) > Partt7.Position.Z 
then
if a.Part2.Position.Y - 2.5 > Partt8.Position.Y
or a.Part2.Position.Y < Partt8.Position.Y
or a.Part2.Position.X +(1.9) < Partt8.Position.X 
or a.Part2.Position.X -(1.9) > Partt8.Position.X 
or a.Part2.Position.Z +(1.9) < Partt8.Position.Z 
or a.Part2.Position.Z -(1.9) > Partt8.Position.Z 
then
ynePart2 = 1
else ynePart2 = 0 
end
else ynePart2 = 0
end
else ynePart2 = 0
end
else ynePart2 = 0
end
else ynePart2 = 0
end
else ynePart2 = 0
end
else ynePart2 = 0
end

if a.Part2.Position.Z + 2.5 < Partt1.Position.Z -- P1 +Z Positions Library Reference
or a.Part2.Position.Z > Partt1.Position.Z
or a.Part2.Position.X +(1.9) < Partt1.Position.X 
or a.Part2.Position.X -(1.9) > Partt1.Position.X 
or a.Part2.Position.Y +(1.9) < Partt1.Position.Y 
or a.Part2.Position.Y -(1.9) > Partt1.Position.Y 
then
if a.Part2.Position.Z + 2.5 < Partt3.Position.Z
or a.Part2.Position.Z > Partt3.Position.Z
or a.Part2.Position.X +(1.9) < Partt3.Position.X 
or a.Part2.Position.X -(1.9) > Partt3.Position.X 
or a.Part2.Position.Y +(1.9) < Partt3.Position.Y 
or a.Part2.Position.Y -(1.9) > Partt3.Position.Y 
then
if a.Part2.Position.Z + 2.5 < Partt4.Position.Z
or a.Part2.Position.Z > Partt4.Position.Z
or a.Part2.Position.X +(1.9) < Partt4.Position.X 
or a.Part2.Position.X -(1.9) > Partt4.Position.X 
or a.Part2.Position.Y +(1.9) < Partt4.Position.Y 
or a.Part2.Position.Y -(1.9) > Partt4.Position.Y 
then
if a.Part2.Position.Z + 2.5 < Partt5.Position.Z
or a.Part2.Position.Z > Partt5.Position.Z
or a.Part2.Position.X +(1.9) < Partt5.Position.X 
or a.Part2.Position.X -(1.9) > Partt5.Position.X 
or a.Part2.Position.Y +(1.9) < Partt5.Position.Y 
or a.Part2.Position.Y -(1.9) > Partt5.Position.Y 
then
if a.Part2.Position.Z + 2.5 < Partt6.Position.Z
or a.Part2.Position.Z > Partt6.Position.Z
or a.Part2.Position.X +(1.9) < Partt6.Position.X 
or a.Part2.Position.X -(1.9) > Partt6.Position.X 
or a.Part2.Position.Y +(1.9) < Partt6.Position.Y 
or a.Part2.Position.Y -(1.9) > Partt6.Position.Y 
then
if a.Part2.Position.Z + 2.5 < Partt7.Position.Z
or a.Part2.Position.Z > Partt7.Position.Z
or a.Part2.Position.X +(1.9) < Partt7.Position.X 
or a.Part2.Position.X -(1.9) > Partt7.Position.X 
or a.Part2.Position.Y +(1.9) < Partt7.Position.Y 
or a.Part2.Position.Y -(1.9) > Partt7.Position.Y 
then
if a.Part2.Position.Z + 2.5 < Partt8.Position.Z
or a.Part2.Position.Z > Partt8.Position.Z
or a.Part2.Position.X +(1.9) < Partt8.Position.X 
or a.Part2.Position.X -(1.9) > Partt8.Position.X 
or a.Part2.Position.Y +(1.9) < Partt8.Position.Y 
or a.Part2.Position.Y -(1.9) > Partt8.Position.Y 
then
zpoPart2 = 1
else zpoPart2 = 0 
end
else zpoPart2 = 0
end
else zpoPart2 = 0
end
else zpoPart2 = 0
end
else zpoPart2 = 0
end
else zpoPart2 = 0
end
else zpoPart2 = 0
end

if a.Part2.Position.Z - 2.5 > Partt1.Position.Z -- P1 -Z Positions Library Reference
or a.Part2.Position.Z < Partt1.Position.Z
or a.Part2.Position.X +(1.9) < Partt1.Position.X 
or a.Part2.Position.X -(1.9) > Partt1.Position.X 
or a.Part2.Position.Y +(1.9) < Partt1.Position.Y 
or a.Part2.Position.Y -(1.9) > Partt1.Position.Y 
then
if a.Part2.Position.Z - 2.5 > Partt3.Position.Z
or a.Part2.Position.Z < Partt3.Position.Z
or a.Part2.Position.X +(1.9) < Partt3.Position.X 
or a.Part2.Position.X -(1.9) > Partt3.Position.X 
or a.Part2.Position.Y +(1.9) < Partt3.Position.Y 
or a.Part2.Position.Y -(1.9) > Partt3.Position.Y 
then
if a.Part2.Position.Z - 2.5 > Partt4.Position.Z
or a.Part2.Position.Z < Partt4.Position.Z
or a.Part2.Position.X +(1.9) < Partt4.Position.X 
or a.Part2.Position.X -(1.9) > Partt4.Position.X 
or a.Part2.Position.Y +(1.9) < Partt4.Position.Y 
or a.Part2.Position.Y -(1.9) > Partt4.Position.Y 
then
if a.Part2.Position.Z - 2.5 > Partt5.Position.Z
or a.Part2.Position.Z < Partt5.Position.Z
or a.Part2.Position.X +(1.9) < Partt5.Position.X 
or a.Part2.Position.X -(1.9) > Partt5.Position.X 
or a.Part2.Position.Y +(1.9) < Partt5.Position.Y 
or a.Part2.Position.Y -(1.9) > Partt5.Position.Y 
then
if a.Part2.Position.Z - 2.5 > Partt6.Position.Z
or a.Part2.Position.Z < Partt6.Position.Z
or a.Part2.Position.X +(1.9) < Partt6.Position.X 
or a.Part2.Position.X -(1.9) > Partt6.Position.X 
or a.Part2.Position.Y +(1.9) < Partt6.Position.Y 
or a.Part2.Position.Y -(1.9) > Partt6.Position.Y 
then
if a.Part2.Position.Z - 2.5 > Partt7.Position.Z
or a.Part2.Position.Z < Partt7.Position.Z
or a.Part2.Position.X +(1.9) < Partt7.Position.X 
or a.Part2.Position.X -(1.9) > Partt7.Position.X 
or a.Part2.Position.Y +(1.9) < Partt7.Position.Y 
or a.Part2.Position.Y -(1.9) > Partt7.Position.Y 
then
if a.Part2.Position.Z - 2.5 > Partt8.Position.Z
or a.Part2.Position.Z < Partt8.Position.Z
or a.Part2.Position.X +(1.9) < Partt8.Position.X 
or a.Part2.Position.X -(1.9) > Partt8.Position.X 
or a.Part2.Position.Y +(1.9) < Partt8.Position.Y 
or a.Part2.Position.Y -(1.9) > Partt8.Position.Y 
then
znePart2 = 1
else znePart2 = 0 
end
else znePart2 = 0
end
else znePart2 = 0
end
else znePart2 = 0
end
else znePart2 = 0
end
else znePart2 = 0
end
else znePart2 = 0
end

PriPart2 = 1 

if PriPart2 == 1
then	
if ypoPart2 == 1
then
for i=1, 10 do
a.Part2.CFrame = a.Part2.CFrame +(Vector3.new(0,.1,0))
wait(.01)
end
else PriPart2 = (PriPart2+1)
end
else end


if PriPart2 == 2
then	
if xpoPart2 == 1
then
for i=1, 10 do
a.Part2.CFrame = a.Part2.CFrame +(Vector3.new(.1,0,0))
wait(.01)
end
else PriPart2 = (PriPart2+1)
end
else end



if PriPart2 == 3
then	
if zpoPart2 == 1
then
for i=1, 10 do
a.Part2.CFrame = a.Part2.CFrame +(Vector3.new(0,0,.1))
wait(.01)
end
else PriPart2 = (PriPart2+1)
end
else end


if PriPart2 == 4
then	
if znePart2 == 1
then
for i=1, 10 do
a.Part2.CFrame = a.Part2.CFrame +(Vector3.new(0,0,-.1))
wait(.01)
end
else PriPart2 = (PriPart2+1)
end
else end

if PriPart2 == 5
then	
if xnePart2 == 1
then
for i=1, 10 do
a.Part2.CFrame = a.Part2.CFrame +(Vector3.new(-.1,0,0))
wait(.01)
end
else PriPart2 = (PriPart2+1)
end
else end

for i=1, 10 do
a.Part2.CFrame = a.Part2.CFrame * CFrame.fromEulerAnglesXYZ(0,math.pi/10,0)
wait(.01)
end
TMPart2 = (TMPart2+1)
until 
math.abs(a.Part2.Position.Y - cPart2.Position.Y) > 5
or TMPart2 == 7
else end
else end
------------------------------------------------------------------------------

if sPart2 == 3
and RPart2 == 3 --Checking +X Reconfiguration
then
if  XSPart2 == a.Part2.Position.X
and YSPart2 == a.Part2.Position.Y
and ZSPart2 == a.Part2.Position.Z
then
RPart2 = (RPart2+1)
repeat
if a.Part2.Position.X + 2.5 < Partt1.Position.X -- P1 +X Positions Library Reference
or a.Part2.Position.X > Partt1.Position.X
or a.Part2.Position.Y +(1.9) < Partt1.Position.Y 
or a.Part2.Position.Y -(1.9) > Partt1.Position.Y 
or a.Part2.Position.Z +(1.9) < Partt1.Position.Z 
or a.Part2.Position.Z -(1.9) > Partt1.Position.Z 
then
if a.Part2.Position.X + 2.5 < Partt3.Position.X
or a.Part2.Position.X > Partt3.Position.X
or a.Part2.Position.Y +(1.9) < Partt3.Position.Y 
or a.Part2.Position.Y -(1.9) > Partt3.Position.Y 
or a.Part2.Position.Z +(1.9) < Partt3.Position.Z 
or a.Part2.Position.Z -(1.9) > Partt3.Position.Z 
then
if a.Part2.Position.X + 2.5 < Partt4.Position.X
or a.Part2.Position.X > Partt4.Position.X
or a.Part2.Position.Y +(1.9) < Partt4.Position.Y 
or a.Part2.Position.Y -(1.9) > Partt4.Position.Y 
or a.Part2.Position.Z +(1.9) < Partt4.Position.Z 
or a.Part2.Position.Z -(1.9) > Partt4.Position.Z 
then
if a.Part2.Position.X + 2.5 < Partt5.Position.X
or a.Part2.Position.X > Partt5.Position.X
or a.Part2.Position.Y +(1.9) < Partt5.Position.Y 
or a.Part2.Position.Y -(1.9) > Partt5.Position.Y 
or a.Part2.Position.Z +(1.9) < Partt5.Position.Z 
or a.Part2.Position.Z -(1.9) > Partt5.Position.Z 
then
if a.Part2.Position.X + 2.5 < Partt6.Position.X
or a.Part2.Position.X > Partt6.Position.X
or a.Part2.Position.Y +(1.9) < Partt6.Position.Y 
or a.Part2.Position.Y -(1.9) > Partt6.Position.Y 
or a.Part2.Position.Z +(1.9) < Partt6.Position.Z 
or a.Part2.Position.Z -(1.9) > Partt6.Position.Z 
then
if a.Part2.Position.X + 2.5 < Partt7.Position.X
or a.Part2.Position.X > Partt7.Position.X
or a.Part2.Position.Y +(1.9) < Partt7.Position.Y 
or a.Part2.Position.Y -(1.9) > Partt7.Position.Y 
or a.Part2.Position.Z +(1.9) < Partt7.Position.Z 
or a.Part2.Position.Z -(1.9) > Partt7.Position.Z 
then
if a.Part2.Position.X + 2.5 < Partt8.Position.X
or a.Part2.Position.X > Partt8.Position.X
or a.Part2.Position.Y +(1.9) < Partt8.Position.Y 
or a.Part2.Position.Y -(1.9) > Partt8.Position.Y 
or a.Part2.Position.Z +(1.9) < Partt8.Position.Z 
or a.Part2.Position.Z -(1.9) > Partt8.Position.Z 
then
xpoPart2 = 1
else xpoPart2 = 0 
end
else xpoPart2 = 0
end
else xpoPart2 = 0
end
else xpoPart2 = 0
end
else xpoPart2 = 0
end
else xpoPart2 = 0
end
else xpoPart2 = 0
end

if a.Part2.Position.X - 2.5 > Partt1.Position.X -- P1 -X Positions Library Reference
or a.Part2.Position.X < Partt1.Position.X
or a.Part2.Position.Y +(1.9) < Partt1.Position.Y 
or a.Part2.Position.Y -(1.9) > Partt1.Position.Y 
or a.Part2.Position.Z +(1.9) < Partt1.Position.Z 
or a.Part2.Position.Z -(1.9) > Partt1.Position.Z 
then
if a.Part2.Position.X - 2.5 > Partt3.Position.X
or a.Part2.Position.X < Partt3.Position.X
or a.Part2.Position.Y +(1.9) < Partt3.Position.Y 
or a.Part2.Position.Y -(1.9) > Partt3.Position.Y 
or a.Part2.Position.Z +(1.9) < Partt3.Position.Z 
or a.Part2.Position.Z -(1.9) > Partt3.Position.Z 
then
if a.Part2.Position.X - 2.5 > Partt4.Position.X
or a.Part2.Position.X < Partt4.Position.X
or a.Part2.Position.Y +(1.9) < Partt4.Position.Y 
or a.Part2.Position.Y -(1.9) > Partt4.Position.Y 
or a.Part2.Position.Z +(1.9) < Partt4.Position.Z 
or a.Part2.Position.Z -(1.9) > Partt4.Position.Z 
then
if a.Part2.Position.X - 2.5 > Partt5.Position.X
or a.Part2.Position.X < Partt5.Position.X
or a.Part2.Position.Y +(1.9) < Partt5.Position.Y 
or a.Part2.Position.Y -(1.9) > Partt5.Position.Y 
or a.Part2.Position.Z +(1.9) < Partt5.Position.Z 
or a.Part2.Position.Z -(1.9) > Partt5.Position.Z 
then
if a.Part2.Position.X - 2.5 > Partt6.Position.X
or a.Part2.Position.X < Partt6.Position.X
or a.Part2.Position.Y +(1.9) < Partt6.Position.Y 
or a.Part2.Position.Y -(1.9) > Partt6.Position.Y 
or a.Part2.Position.Z +(1.9) < Partt6.Position.Z 
or a.Part2.Position.Z -(1.9) > Partt6.Position.Z 
then
if a.Part2.Position.X - 2.5 > Partt7.Position.X
or a.Part2.Position.X < Partt7.Position.X
or a.Part2.Position.Y +(1.9) < Partt7.Position.Y 
or a.Part2.Position.Y -(1.9) > Partt7.Position.Y 
or a.Part2.Position.Z +(1.9) < Partt7.Position.Z 
or a.Part2.Position.Z -(1.9) > Partt7.Position.Z 
then
if a.Part2.Position.X - 2.5 > Partt8.Position.X
or a.Part2.Position.X < Partt8.Position.X
or a.Part2.Position.Y +(1.9) < Partt8.Position.Y 
or a.Part2.Position.Y -(1.9) > Partt8.Position.Y 
or a.Part2.Position.Z +(1.9) < Partt8.Position.Z 
or a.Part2.Position.Z -(1.9) > Partt8.Position.Z 
then
xnePart2 = 1
else xnePart2 = 0 
end
else xnePart2 = 0
end
else xnePart2 = 0
end
else xnePart2 = 0
end
else xnePart2 = 0
end
else xnePart2 = 0
end
else xnePart2 = 0
end

if a.Part2.Position.Y + 2.5 < Partt1.Position.Y -- P1 +Y Positions Library Reference
or a.Part2.Position.Y > Partt1.Position.Y
or a.Part2.Position.X +(1.9) < Partt1.Position.X 
or a.Part2.Position.X -(1.9) > Partt1.Position.X 
or a.Part2.Position.Z +(1.9) < Partt1.Position.Z 
or a.Part2.Position.Z -(1.9) > Partt1.Position.Z 
then
if a.Part2.Position.Y + 2.5 < Partt3.Position.Y
or a.Part2.Position.Y > Partt3.Position.Y
or a.Part2.Position.X +(1.9) < Partt3.Position.X 
or a.Part2.Position.X -(1.9) > Partt3.Position.X 
or a.Part2.Position.Z +(1.9) < Partt3.Position.Z 
or a.Part2.Position.Z -(1.9) > Partt3.Position.Z 
then
if a.Part2.Position.Y + 2.5 < Partt4.Position.Y
or a.Part2.Position.Y > Partt4.Position.Y
or a.Part2.Position.X +(1.9) < Partt4.Position.X 
or a.Part2.Position.X -(1.9) > Partt4.Position.X 
or a.Part2.Position.Z +(1.9) < Partt4.Position.Z 
or a.Part2.Position.Z -(1.9) > Partt4.Position.Z 
then
if a.Part2.Position.Y + 2.5 < Partt5.Position.Y
or a.Part2.Position.Y > Partt5.Position.Y
or a.Part2.Position.X +(1.9) < Partt5.Position.X 
or a.Part2.Position.X -(1.9) > Partt5.Position.X 
or a.Part2.Position.Z +(1.9) < Partt5.Position.Z 
or a.Part2.Position.Z -(1.9) > Partt5.Position.Z 
then
if a.Part2.Position.Y + 2.5 < Partt6.Position.Y
or a.Part2.Position.Y > Partt6.Position.Y
or a.Part2.Position.X +(1.9) < Partt6.Position.X 
or a.Part2.Position.X -(1.9) > Partt6.Position.X 
or a.Part2.Position.Z +(1.9) < Partt6.Position.Z 
or a.Part2.Position.Z -(1.9) > Partt6.Position.Z 
then
if a.Part2.Position.Y + 2.5 < Partt7.Position.Y
or a.Part2.Position.Y > Partt7.Position.Y
or a.Part2.Position.X +(1.9) < Partt7.Position.X 
or a.Part2.Position.X -(1.9) > Partt7.Position.X 
or a.Part2.Position.Z +(1.9) < Partt7.Position.Z 
or a.Part2.Position.Z -(1.9) > Partt7.Position.Z 
then
if a.Part2.Position.Y + 2.5 < Partt8.Position.Y
or a.Part2.Position.Y > Partt8.Position.Y
or a.Part2.Position.X +(1.9) < Partt8.Position.X 
or a.Part2.Position.X -(1.9) > Partt8.Position.X 
or a.Part2.Position.Z +(1.9) < Partt8.Position.Z 
or a.Part2.Position.Z -(1.9) > Partt8.Position.Z 
then
ypoPart2 = 1
else ypoPart2 = 0 
end
else ypoPart2 = 0
end
else ypoPart2 = 0
end
else ypoPart2 = 0
end
else ypoPart2 = 0
end
else ypoPart2 = 0
end
else ypoPart2 = 0
end

if a.Part2.Position.Y - 2.5 > Partt1.Position.Y -- P1 -Y Positions Library Reference
or a.Part2.Position.Y < Partt1.Position.Y
or a.Part2.Position.X +(1.9) < Partt1.Position.X 
or a.Part2.Position.X -(1.9) > Partt1.Position.X 
or a.Part2.Position.Z +(1.9) < Partt1.Position.Z 
or a.Part2.Position.Z -(1.9) > Partt1.Position.Z 
then
if a.Part2.Position.Y - 2.5 > Partt3.Position.Y
or a.Part2.Position.Y < Partt3.Position.Y
or a.Part2.Position.X +(1.9) < Partt3.Position.X 
or a.Part2.Position.X -(1.9) > Partt3.Position.X 
or a.Part2.Position.Z +(1.9) < Partt3.Position.Z 
or a.Part2.Position.Z -(1.9) > Partt3.Position.Z 
then
if a.Part2.Position.Y - 2.5 > Partt4.Position.Y
or a.Part2.Position.Y < Partt4.Position.Y
or a.Part2.Position.X +(1.9) < Partt4.Position.X 
or a.Part2.Position.X -(1.9) > Partt4.Position.X 
or a.Part2.Position.Z +(1.9) < Partt4.Position.Z 
or a.Part2.Position.Z -(1.9) > Partt4.Position.Z 
then
if a.Part2.Position.Y - 2.5 > Partt5.Position.Y
or a.Part2.Position.Y < Partt5.Position.Y
or a.Part2.Position.X +(1.9) < Partt5.Position.X 
or a.Part2.Position.X -(1.9) > Partt5.Position.X 
or a.Part2.Position.Z +(1.9) < Partt5.Position.Z 
or a.Part2.Position.Z -(1.9) > Partt5.Position.Z 
then
if a.Part2.Position.Y - 2.5 > Partt6.Position.Y
or a.Part2.Position.Y < Partt6.Position.Y
or a.Part2.Position.X +(1.9) < Partt6.Position.X 
or a.Part2.Position.X -(1.9) > Partt6.Position.X 
or a.Part2.Position.Z +(1.9) < Partt6.Position.Z 
or a.Part2.Position.Z -(1.9) > Partt6.Position.Z 
then
if a.Part2.Position.Y - 2.5 > Partt7.Position.Y
or a.Part2.Position.Y < Partt7.Position.Y
or a.Part2.Position.X +(1.9) < Partt7.Position.X 
or a.Part2.Position.X -(1.9) > Partt7.Position.X 
or a.Part2.Position.Z +(1.9) < Partt7.Position.Z 
or a.Part2.Position.Z -(1.9) > Partt7.Position.Z 
then
if a.Part2.Position.Y - 2.5 > Partt8.Position.Y
or a.Part2.Position.Y < Partt8.Position.Y
or a.Part2.Position.X +(1.9) < Partt8.Position.X 
or a.Part2.Position.X -(1.9) > Partt8.Position.X 
or a.Part2.Position.Z +(1.9) < Partt8.Position.Z 
or a.Part2.Position.Z -(1.9) > Partt8.Position.Z 
then
ynePart2 = 1
else ynePart2 = 0 
end
else ynePart2 = 0
end
else ynePart2 = 0
end
else ynePart2 = 0
end
else ynePart2 = 0
end
else ynePart2 = 0
end
else ynePart2 = 0
end

if a.Part2.Position.Z + 2.5 < Partt1.Position.Z -- P1 +Z Positions Library Reference
or a.Part2.Position.Z > Partt1.Position.Z
or a.Part2.Position.X +(1.9) < Partt1.Position.X 
or a.Part2.Position.X -(1.9) > Partt1.Position.X 
or a.Part2.Position.Y +(1.9) < Partt1.Position.Y 
or a.Part2.Position.Y -(1.9) > Partt1.Position.Y 
then
if a.Part2.Position.Z + 2.5 < Partt3.Position.Z
or a.Part2.Position.Z > Partt3.Position.Z
or a.Part2.Position.X +(1.9) < Partt3.Position.X 
or a.Part2.Position.X -(1.9) > Partt3.Position.X 
or a.Part2.Position.Y +(1.9) < Partt3.Position.Y 
or a.Part2.Position.Y -(1.9) > Partt3.Position.Y 
then
if a.Part2.Position.Z + 2.5 < Partt4.Position.Z
or a.Part2.Position.Z > Partt4.Position.Z
or a.Part2.Position.X +(1.9) < Partt4.Position.X 
or a.Part2.Position.X -(1.9) > Partt4.Position.X 
or a.Part2.Position.Y +(1.9) < Partt4.Position.Y 
or a.Part2.Position.Y -(1.9) > Partt4.Position.Y 
then
if a.Part2.Position.Z + 2.5 < Partt5.Position.Z
or a.Part2.Position.Z > Partt5.Position.Z
or a.Part2.Position.X +(1.9) < Partt5.Position.X 
or a.Part2.Position.X -(1.9) > Partt5.Position.X 
or a.Part2.Position.Y +(1.9) < Partt5.Position.Y 
or a.Part2.Position.Y -(1.9) > Partt5.Position.Y 
then
if a.Part2.Position.Z + 2.5 < Partt6.Position.Z
or a.Part2.Position.Z > Partt6.Position.Z
or a.Part2.Position.X +(1.9) < Partt6.Position.X 
or a.Part2.Position.X -(1.9) > Partt6.Position.X 
or a.Part2.Position.Y +(1.9) < Partt6.Position.Y 
or a.Part2.Position.Y -(1.9) > Partt6.Position.Y 
then
if a.Part2.Position.Z + 2.5 < Partt7.Position.Z
or a.Part2.Position.Z > Partt7.Position.Z
or a.Part2.Position.X +(1.9) < Partt7.Position.X 
or a.Part2.Position.X -(1.9) > Partt7.Position.X 
or a.Part2.Position.Y +(1.9) < Partt7.Position.Y 
or a.Part2.Position.Y -(1.9) > Partt7.Position.Y 
then
if a.Part2.Position.Z + 2.5 < Partt8.Position.Z
or a.Part2.Position.Z > Partt8.Position.Z
or a.Part2.Position.X +(1.9) < Partt8.Position.X 
or a.Part2.Position.X -(1.9) > Partt8.Position.X 
or a.Part2.Position.Y +(1.9) < Partt8.Position.Y 
or a.Part2.Position.Y -(1.9) > Partt8.Position.Y 
then
zpoPart2 = 1
else zpoPart2 = 0 
end
else zpoPart2 = 0
end
else zpoPart2 = 0
end
else zpoPart2 = 0
end
else zpoPart2 = 0
end
else zpoPart2 = 0
end
else zpoPart2 = 0
end

if a.Part2.Position.Z - 2.5 > Partt1.Position.Z -- P1 -Z Positions Library Reference
or a.Part2.Position.Z < Partt1.Position.Z
or a.Part2.Position.X +(1.9) < Partt1.Position.X 
or a.Part2.Position.X -(1.9) > Partt1.Position.X 
or a.Part2.Position.Y +(1.9) < Partt1.Position.Y 
or a.Part2.Position.Y -(1.9) > Partt1.Position.Y 
then
if a.Part2.Position.Z - 2.5 > Partt3.Position.Z
or a.Part2.Position.Z < Partt3.Position.Z
or a.Part2.Position.X +(1.9) < Partt3.Position.X 
or a.Part2.Position.X -(1.9) > Partt3.Position.X 
or a.Part2.Position.Y +(1.9) < Partt3.Position.Y 
or a.Part2.Position.Y -(1.9) > Partt3.Position.Y 
then
if a.Part2.Position.Z - 2.5 > Partt4.Position.Z
or a.Part2.Position.Z < Partt4.Position.Z
or a.Part2.Position.X +(1.9) < Partt4.Position.X 
or a.Part2.Position.X -(1.9) > Partt4.Position.X 
or a.Part2.Position.Y +(1.9) < Partt4.Position.Y 
or a.Part2.Position.Y -(1.9) > Partt4.Position.Y 
then
if a.Part2.Position.Z - 2.5 > Partt5.Position.Z
or a.Part2.Position.Z < Partt5.Position.Z
or a.Part2.Position.X +(1.9) < Partt5.Position.X 
or a.Part2.Position.X -(1.9) > Partt5.Position.X 
or a.Part2.Position.Y +(1.9) < Partt5.Position.Y 
or a.Part2.Position.Y -(1.9) > Partt5.Position.Y 
then
if a.Part2.Position.Z - 2.5 > Partt6.Position.Z
or a.Part2.Position.Z < Partt6.Position.Z
or a.Part2.Position.X +(1.9) < Partt6.Position.X 
or a.Part2.Position.X -(1.9) > Partt6.Position.X 
or a.Part2.Position.Y +(1.9) < Partt6.Position.Y 
or a.Part2.Position.Y -(1.9) > Partt6.Position.Y 
then
if a.Part2.Position.Z - 2.5 > Partt7.Position.Z
or a.Part2.Position.Z < Partt7.Position.Z
or a.Part2.Position.X +(1.9) < Partt7.Position.X 
or a.Part2.Position.X -(1.9) > Partt7.Position.X 
or a.Part2.Position.Y +(1.9) < Partt7.Position.Y 
or a.Part2.Position.Y -(1.9) > Partt7.Position.Y 
then
if a.Part2.Position.Z - 2.5 > Partt8.Position.Z
or a.Part2.Position.Z < Partt8.Position.Z
or a.Part2.Position.X +(1.9) < Partt8.Position.X 
or a.Part2.Position.X -(1.9) > Partt8.Position.X 
or a.Part2.Position.Y +(1.9) < Partt8.Position.Y 
or a.Part2.Position.Y -(1.9) > Partt8.Position.Y 
then
znePart2 = 1
else znePart2 = 0 
end
else znePart2 = 0
end
else znePart2 = 0
end
else znePart2 = 0
end
else znePart2 = 0
end
else znePart2 = 0
end
else znePart2 = 0
end

PriPart2 = 1 
if PriPart2 == 1
then	
if xnePart2 == 1
then
for i=1, 10 do
a.Part2.CFrame = a.Part2.CFrame +(Vector3.new(-.1,0,0))
wait(.01)
end
else PriPart2 = (PriPart2+1)
end
else end

if PriPart2 == 2
then	
if ypoPart2 == 1
then
for i=1, 10 do
a.Part2.CFrame = a.Part2.CFrame +(Vector3.new(0,.1,0))
wait(.01)
end
else PriPart2 = (PriPart2+1)
end
else end

if PriPart2 == 3
then	
if zpoPart2 == 1
then
for i=1, 10 do
a.Part2.CFrame = a.Part2.CFrame +(Vector3.new(0,0,.1))
wait(.01)
end
else PriPart2 = (PriPart2+1)
end
else end

if PriPart2 == 4
then	
if ynePart2 == 1
then
for i=1, 10 do
a.Part2.CFrame = a.Part2.CFrame +(Vector3.new(0,-.1,0))
wait(.01)
end
else PriPart2 = (PriPart2+1)
end
else end

if PriPart2 == 5
then	
if znePart2 == 1
then
for i=1, 10 do
a.Part2.CFrame = a.Part2.CFrame +(Vector3.new(0,0,-.1))
wait(.01)
end
else PriPart2 = (PriPart2+1)
end
else end
------------------------------------------------------------------------------

wait(.1)
TMPart2 = (TMPart2+1)
until 
math.abs(a.Part2.Position.X - cPart2.Position.X) > 5
or TMPart2 == 7
else end
else end

if sPart2 == 3
and RPart2 == 4 --Checking +X Reconfiguration
then
if  XSPart2 == a.Part2.Position.X
and YSPart2 == a.Part2.Position.Y
and ZSPart2 == a.Part2.Position.Z
then
-- "Reconfiguring"
RPart2 = 1
repeat
if a.Part2.Position.X + 2.5 < Partt1.Position.X -- P1 +X Positions Library Reference
or a.Part2.Position.X > Partt1.Position.X
or a.Part2.Position.Y +(1.9) < Partt1.Position.Y 
or a.Part2.Position.Y -(1.9) > Partt1.Position.Y 
or a.Part2.Position.Z +(1.9) < Partt1.Position.Z 
or a.Part2.Position.Z -(1.9) > Partt1.Position.Z 
then
if a.Part2.Position.X + 2.5 < Partt3.Position.X
or a.Part2.Position.X > Partt3.Position.X
or a.Part2.Position.Y +(1.9) < Partt3.Position.Y 
or a.Part2.Position.Y -(1.9) > Partt3.Position.Y 
or a.Part2.Position.Z +(1.9) < Partt3.Position.Z 
or a.Part2.Position.Z -(1.9) > Partt3.Position.Z 
then
if a.Part2.Position.X + 2.5 < Partt4.Position.X
or a.Part2.Position.X > Partt4.Position.X
or a.Part2.Position.Y +(1.9) < Partt4.Position.Y 
or a.Part2.Position.Y -(1.9) > Partt4.Position.Y 
or a.Part2.Position.Z +(1.9) < Partt4.Position.Z 
or a.Part2.Position.Z -(1.9) > Partt4.Position.Z 
then
if a.Part2.Position.X + 2.5 < Partt5.Position.X
or a.Part2.Position.X > Partt5.Position.X
or a.Part2.Position.Y +(1.9) < Partt5.Position.Y 
or a.Part2.Position.Y -(1.9) > Partt5.Position.Y 
or a.Part2.Position.Z +(1.9) < Partt5.Position.Z 
or a.Part2.Position.Z -(1.9) > Partt5.Position.Z 
then
if a.Part2.Position.X + 2.5 < Partt6.Position.X
or a.Part2.Position.X > Partt6.Position.X
or a.Part2.Position.Y +(1.9) < Partt6.Position.Y 
or a.Part2.Position.Y -(1.9) > Partt6.Position.Y 
or a.Part2.Position.Z +(1.9) < Partt6.Position.Z 
or a.Part2.Position.Z -(1.9) > Partt6.Position.Z 
then
if a.Part2.Position.X + 2.5 < Partt7.Position.X
or a.Part2.Position.X > Partt7.Position.X
or a.Part2.Position.Y +(1.9) < Partt7.Position.Y 
or a.Part2.Position.Y -(1.9) > Partt7.Position.Y 
or a.Part2.Position.Z +(1.9) < Partt7.Position.Z 
or a.Part2.Position.Z -(1.9) > Partt7.Position.Z 
then
if a.Part2.Position.X + 2.5 < Partt8.Position.X
or a.Part2.Position.X > Partt8.Position.X
or a.Part2.Position.Y +(1.9) < Partt8.Position.Y 
or a.Part2.Position.Y -(1.9) > Partt8.Position.Y 
or a.Part2.Position.Z +(1.9) < Partt8.Position.Z 
or a.Part2.Position.Z -(1.9) > Partt8.Position.Z 
then
xpoPart2 = 1
else xpoPart2 = 0 
end
else xpoPart2 = 0
end
else xpoPart2 = 0
end
else xpoPart2 = 0
end
else xpoPart2 = 0
end
else xpoPart2 = 0
end
else xpoPart2 = 0
end

if a.Part2.Position.X - 2.5 > Partt1.Position.X -- P1 -X Positions Library Reference
or a.Part2.Position.X < Partt1.Position.X
or a.Part2.Position.Y +(1.9) < Partt1.Position.Y 
or a.Part2.Position.Y -(1.9) > Partt1.Position.Y 
or a.Part2.Position.Z +(1.9) < Partt1.Position.Z 
or a.Part2.Position.Z -(1.9) > Partt1.Position.Z 
then
if a.Part2.Position.X - 2.5 > Partt3.Position.X
or a.Part2.Position.X < Partt3.Position.X
or a.Part2.Position.Y +(1.9) < Partt3.Position.Y 
or a.Part2.Position.Y -(1.9) > Partt3.Position.Y 
or a.Part2.Position.Z +(1.9) < Partt3.Position.Z 
or a.Part2.Position.Z -(1.9) > Partt3.Position.Z 
then
if a.Part2.Position.X - 2.5 > Partt4.Position.X
or a.Part2.Position.X < Partt4.Position.X
or a.Part2.Position.Y +(1.9) < Partt4.Position.Y 
or a.Part2.Position.Y -(1.9) > Partt4.Position.Y 
or a.Part2.Position.Z +(1.9) < Partt4.Position.Z 
or a.Part2.Position.Z -(1.9) > Partt4.Position.Z 
then
if a.Part2.Position.X - 2.5 > Partt5.Position.X
or a.Part2.Position.X < Partt5.Position.X
or a.Part2.Position.Y +(1.9) < Partt5.Position.Y 
or a.Part2.Position.Y -(1.9) > Partt5.Position.Y 
or a.Part2.Position.Z +(1.9) < Partt5.Position.Z 
or a.Part2.Position.Z -(1.9) > Partt5.Position.Z 
then
if a.Part2.Position.X - 2.5 > Partt6.Position.X
or a.Part2.Position.X < Partt6.Position.X
or a.Part2.Position.Y +(1.9) < Partt6.Position.Y 
or a.Part2.Position.Y -(1.9) > Partt6.Position.Y 
or a.Part2.Position.Z +(1.9) < Partt6.Position.Z 
or a.Part2.Position.Z -(1.9) > Partt6.Position.Z 
then
if a.Part2.Position.X - 2.5 > Partt7.Position.X
or a.Part2.Position.X < Partt7.Position.X
or a.Part2.Position.Y +(1.9) < Partt7.Position.Y 
or a.Part2.Position.Y -(1.9) > Partt7.Position.Y 
or a.Part2.Position.Z +(1.9) < Partt7.Position.Z 
or a.Part2.Position.Z -(1.9) > Partt7.Position.Z 
then
if a.Part2.Position.X - 2.5 > Partt8.Position.X
or a.Part2.Position.X < Partt8.Position.X
or a.Part2.Position.Y +(1.9) < Partt8.Position.Y 
or a.Part2.Position.Y -(1.9) > Partt8.Position.Y 
or a.Part2.Position.Z +(1.9) < Partt8.Position.Z 
or a.Part2.Position.Z -(1.9) > Partt8.Position.Z 
then
xnePart2 = 1
else xnePart2 = 0 
end
else xnePart2 = 0
end
else xnePart2 = 0
end
else xnePart2 = 0
end
else xnePart2 = 0
end
else xnePart2 = 0
end
else xnePart2 = 0
end

if a.Part2.Position.Y + 2.5 < Partt1.Position.Y -- P1 +Y Positions Library Reference
or a.Part2.Position.Y > Partt1.Position.Y
or a.Part2.Position.X +(1.9) < Partt1.Position.X 
or a.Part2.Position.X -(1.9) > Partt1.Position.X 
or a.Part2.Position.Z +(1.9) < Partt1.Position.Z 
or a.Part2.Position.Z -(1.9) > Partt1.Position.Z 
then
if a.Part2.Position.Y + 2.5 < Partt3.Position.Y
or a.Part2.Position.Y > Partt3.Position.Y
or a.Part2.Position.X +(1.9) < Partt3.Position.X 
or a.Part2.Position.X -(1.9) > Partt3.Position.X 
or a.Part2.Position.Z +(1.9) < Partt3.Position.Z 
or a.Part2.Position.Z -(1.9) > Partt3.Position.Z 
then
if a.Part2.Position.Y + 2.5 < Partt4.Position.Y
or a.Part2.Position.Y > Partt4.Position.Y
or a.Part2.Position.X +(1.9) < Partt4.Position.X 
or a.Part2.Position.X -(1.9) > Partt4.Position.X 
or a.Part2.Position.Z +(1.9) < Partt4.Position.Z 
or a.Part2.Position.Z -(1.9) > Partt4.Position.Z 
then
if a.Part2.Position.Y + 2.5 < Partt5.Position.Y
or a.Part2.Position.Y > Partt5.Position.Y
or a.Part2.Position.X +(1.9) < Partt5.Position.X 
or a.Part2.Position.X -(1.9) > Partt5.Position.X 
or a.Part2.Position.Z +(1.9) < Partt5.Position.Z 
or a.Part2.Position.Z -(1.9) > Partt5.Position.Z 
then
if a.Part2.Position.Y + 2.5 < Partt6.Position.Y
or a.Part2.Position.Y > Partt6.Position.Y
or a.Part2.Position.X +(1.9) < Partt6.Position.X 
or a.Part2.Position.X -(1.9) > Partt6.Position.X 
or a.Part2.Position.Z +(1.9) < Partt6.Position.Z 
or a.Part2.Position.Z -(1.9) > Partt6.Position.Z 
then
if a.Part2.Position.Y + 2.5 < Partt7.Position.Y
or a.Part2.Position.Y > Partt7.Position.Y
or a.Part2.Position.X +(1.9) < Partt7.Position.X 
or a.Part2.Position.X -(1.9) > Partt7.Position.X 
or a.Part2.Position.Z +(1.9) < Partt7.Position.Z 
or a.Part2.Position.Z -(1.9) > Partt7.Position.Z 
then
if a.Part2.Position.Y + 2.5 < Partt8.Position.Y
or a.Part2.Position.Y > Partt8.Position.Y
or a.Part2.Position.X +(1.9) < Partt8.Position.X 
or a.Part2.Position.X -(1.9) > Partt8.Position.X 
or a.Part2.Position.Z +(1.9) < Partt8.Position.Z 
or a.Part2.Position.Z -(1.9) > Partt8.Position.Z 
then
ypoPart2 = 1
else ypoPart2 = 0 
end
else ypoPart2 = 0
end
else ypoPart2 = 0
end
else ypoPart2 = 0
end
else ypoPart2 = 0
end
else ypoPart2 = 0
end
else ypoPart2 = 0
end

if a.Part2.Position.Y - 2.5 > Partt1.Position.Y -- P1 -Y Positions Library Reference
or a.Part2.Position.Y < Partt1.Position.Y
or a.Part2.Position.X +(1.9) < Partt1.Position.X 
or a.Part2.Position.X -(1.9) > Partt1.Position.X 
or a.Part2.Position.Z +(1.9) < Partt1.Position.Z 
or a.Part2.Position.Z -(1.9) > Partt1.Position.Z 
then
if a.Part2.Position.Y - 2.5 > Partt3.Position.Y
or a.Part2.Position.Y < Partt3.Position.Y
or a.Part2.Position.X +(1.9) < Partt3.Position.X 
or a.Part2.Position.X -(1.9) > Partt3.Position.X 
or a.Part2.Position.Z +(1.9) < Partt3.Position.Z 
or a.Part2.Position.Z -(1.9) > Partt3.Position.Z 
then
if a.Part2.Position.Y - 2.5 > Partt4.Position.Y
or a.Part2.Position.Y < Partt4.Position.Y
or a.Part2.Position.X +(1.9) < Partt4.Position.X 
or a.Part2.Position.X -(1.9) > Partt4.Position.X 
or a.Part2.Position.Z +(1.9) < Partt4.Position.Z 
or a.Part2.Position.Z -(1.9) > Partt4.Position.Z 
then
if a.Part2.Position.Y - 2.5 > Partt5.Position.Y
or a.Part2.Position.Y < Partt5.Position.Y
or a.Part2.Position.X +(1.9) < Partt5.Position.X 
or a.Part2.Position.X -(1.9) > Partt5.Position.X 
or a.Part2.Position.Z +(1.9) < Partt5.Position.Z 
or a.Part2.Position.Z -(1.9) > Partt5.Position.Z 
then
if a.Part2.Position.Y - 2.5 > Partt6.Position.Y
or a.Part2.Position.Y < Partt6.Position.Y
or a.Part2.Position.X +(1.9) < Partt6.Position.X 
or a.Part2.Position.X -(1.9) > Partt6.Position.X 
or a.Part2.Position.Z +(1.9) < Partt6.Position.Z 
or a.Part2.Position.Z -(1.9) > Partt6.Position.Z 
then
if a.Part2.Position.Y - 2.5 > Partt7.Position.Y
or a.Part2.Position.Y < Partt7.Position.Y
or a.Part2.Position.X +(1.9) < Partt7.Position.X 
or a.Part2.Position.X -(1.9) > Partt7.Position.X 
or a.Part2.Position.Z +(1.9) < Partt7.Position.Z 
or a.Part2.Position.Z -(1.9) > Partt7.Position.Z 
then
if a.Part2.Position.Y - 2.5 > Partt8.Position.Y
or a.Part2.Position.Y < Partt8.Position.Y
or a.Part2.Position.X +(1.9) < Partt8.Position.X 
or a.Part2.Position.X -(1.9) > Partt8.Position.X 
or a.Part2.Position.Z +(1.9) < Partt8.Position.Z 
or a.Part2.Position.Z -(1.9) > Partt8.Position.Z 
then
ynePart2 = 1
else ynePart2 = 0 
end
else ynePart2 = 0
end
else ynePart2 = 0
end
else ynePart2 = 0
end
else ynePart2 = 0
end
else ynePart2 = 0
end
else ynePart2 = 0
end

if a.Part2.Position.Z + 2.5 < Partt1.Position.Z -- P1 +Z Positions Library Reference
or a.Part2.Position.Z > Partt1.Position.Z
or a.Part2.Position.X +(1.9) < Partt1.Position.X 
or a.Part2.Position.X -(1.9) > Partt1.Position.X 
or a.Part2.Position.Y +(1.9) < Partt1.Position.Y 
or a.Part2.Position.Y -(1.9) > Partt1.Position.Y 
then
if a.Part2.Position.Z + 2.5 < Partt3.Position.Z
or a.Part2.Position.Z > Partt3.Position.Z
or a.Part2.Position.X +(1.9) < Partt3.Position.X 
or a.Part2.Position.X -(1.9) > Partt3.Position.X 
or a.Part2.Position.Y +(1.9) < Partt3.Position.Y 
or a.Part2.Position.Y -(1.9) > Partt3.Position.Y 
then
if a.Part2.Position.Z + 2.5 < Partt4.Position.Z
or a.Part2.Position.Z > Partt4.Position.Z
or a.Part2.Position.X +(1.9) < Partt4.Position.X 
or a.Part2.Position.X -(1.9) > Partt4.Position.X 
or a.Part2.Position.Y +(1.9) < Partt4.Position.Y 
or a.Part2.Position.Y -(1.9) > Partt4.Position.Y 
then
if a.Part2.Position.Z + 2.5 < Partt5.Position.Z
or a.Part2.Position.Z > Partt5.Position.Z
or a.Part2.Position.X +(1.9) < Partt5.Position.X 
or a.Part2.Position.X -(1.9) > Partt5.Position.X 
or a.Part2.Position.Y +(1.9) < Partt5.Position.Y 
or a.Part2.Position.Y -(1.9) > Partt5.Position.Y 
then
if a.Part2.Position.Z + 2.5 < Partt6.Position.Z
or a.Part2.Position.Z > Partt6.Position.Z
or a.Part2.Position.X +(1.9) < Partt6.Position.X 
or a.Part2.Position.X -(1.9) > Partt6.Position.X 
or a.Part2.Position.Y +(1.9) < Partt6.Position.Y 
or a.Part2.Position.Y -(1.9) > Partt6.Position.Y 
then
if a.Part2.Position.Z + 2.5 < Partt7.Position.Z
or a.Part2.Position.Z > Partt7.Position.Z
or a.Part2.Position.X +(1.9) < Partt7.Position.X 
or a.Part2.Position.X -(1.9) > Partt7.Position.X 
or a.Part2.Position.Y +(1.9) < Partt7.Position.Y 
or a.Part2.Position.Y -(1.9) > Partt7.Position.Y 
then
if a.Part2.Position.Z + 2.5 < Partt8.Position.Z
or a.Part2.Position.Z > Partt8.Position.Z
or a.Part2.Position.X +(1.9) < Partt8.Position.X 
or a.Part2.Position.X -(1.9) > Partt8.Position.X 
or a.Part2.Position.Y +(1.9) < Partt8.Position.Y 
or a.Part2.Position.Y -(1.9) > Partt8.Position.Y 
then
zpoPart2 = 1
else zpoPart2 = 0 
end
else zpoPart2 = 0
end
else zpoPart2 = 0
end
else zpoPart2 = 0
end
else zpoPart2 = 0
end
else zpoPart2 = 0
end
else zpoPart2 = 0
end

if a.Part2.Position.Z - 2.5 > Partt1.Position.Z -- P1 -Z Positions Library Reference
or a.Part2.Position.Z < Partt1.Position.Z
or a.Part2.Position.X +(1.9) < Partt1.Position.X 
or a.Part2.Position.X -(1.9) > Partt1.Position.X 
or a.Part2.Position.Y +(1.9) < Partt1.Position.Y 
or a.Part2.Position.Y -(1.9) > Partt1.Position.Y 
then
if a.Part2.Position.Z - 2.5 > Partt3.Position.Z
or a.Part2.Position.Z < Partt3.Position.Z
or a.Part2.Position.X +(1.9) < Partt3.Position.X 
or a.Part2.Position.X -(1.9) > Partt3.Position.X 
or a.Part2.Position.Y +(1.9) < Partt3.Position.Y 
or a.Part2.Position.Y -(1.9) > Partt3.Position.Y 
then
if a.Part2.Position.Z - 2.5 > Partt4.Position.Z
or a.Part2.Position.Z < Partt4.Position.Z
or a.Part2.Position.X +(1.9) < Partt4.Position.X 
or a.Part2.Position.X -(1.9) > Partt4.Position.X 
or a.Part2.Position.Y +(1.9) < Partt4.Position.Y 
or a.Part2.Position.Y -(1.9) > Partt4.Position.Y 
then
if a.Part2.Position.Z - 2.5 > Partt5.Position.Z
or a.Part2.Position.Z < Partt5.Position.Z
or a.Part2.Position.X +(1.9) < Partt5.Position.X 
or a.Part2.Position.X -(1.9) > Partt5.Position.X 
or a.Part2.Position.Y +(1.9) < Partt5.Position.Y 
or a.Part2.Position.Y -(1.9) > Partt5.Position.Y 
then
if a.Part2.Position.Z - 2.5 > Partt6.Position.Z
or a.Part2.Position.Z < Partt6.Position.Z
or a.Part2.Position.X +(1.9) < Partt6.Position.X 
or a.Part2.Position.X -(1.9) > Partt6.Position.X 
or a.Part2.Position.Y +(1.9) < Partt6.Position.Y 
or a.Part2.Position.Y -(1.9) > Partt6.Position.Y 
then
if a.Part2.Position.Z - 2.5 > Partt7.Position.Z
or a.Part2.Position.Z < Partt7.Position.Z
or a.Part2.Position.X +(1.9) < Partt7.Position.X 
or a.Part2.Position.X -(1.9) > Partt7.Position.X 
or a.Part2.Position.Y +(1.9) < Partt7.Position.Y 
or a.Part2.Position.Y -(1.9) > Partt7.Position.Y 
then
if a.Part2.Position.Z - 2.5 > Partt8.Position.Z
or a.Part2.Position.Z < Partt8.Position.Z
or a.Part2.Position.X +(1.9) < Partt8.Position.X 
or a.Part2.Position.X -(1.9) > Partt8.Position.X 
or a.Part2.Position.Y +(1.9) < Partt8.Position.Y 
or a.Part2.Position.Y -(1.9) > Partt8.Position.Y 
then
znePart2 = 1
else znePart2 = 0 
end
else znePart2 = 0
end
else znePart2 = 0
end
else znePart2 = 0
end
else znePart2 = 0
end
else znePart2 = 0
end
else znePart2 = 0
end

PriPart2 = 1 

if PriPart2 == 1
then	
if ynePart2 == 1
then
for i=1, 10 do
a.Part2.CFrame = a.Part2.CFrame +(Vector3.new(0,-.1,0))
wait(.01)
end
else PriPart2 = (PriPart2+1)
end
else end


if PriPart2 == 2
then	
if xpoPart2 == 1
then
for i=1, 10 do
a.Part2.CFrame = a.Part2.CFrame +(Vector3.new(.1,0,0))
wait(.01)
end
else PriPart2 = (PriPart2+1)
end
else end



if PriPart2 == 3
then	
if zpoPart2 == 1
then
for i=1, 10 do
a.Part2.CFrame = a.Part2.CFrame +(Vector3.new(0,0,.1))
wait(.01)
end
else PriPart2 = (PriPart2+1)
end
else end


if PriPart2 == 4
then	
if znePart2 == 1
then
for i=1, 10 do
a.Part2.CFrame = a.Part2.CFrame +(Vector3.new(0,0,-.1))
wait(.01)
end
else PriPart2 = (PriPart2+1)
end
else end

if PriPart2 == 5
then	
if xnePart2 == 1
then
for i=1, 10 do
a.Part2.CFrame = a.Part2.CFrame +(Vector3.new(-.1,0,0))
wait(.01)
end
else PriPart2 = (PriPart2+1)
end
else end
-- (PriPart2)

wait(.1)
TMPart2 = (TMPart2+1)
until 
math.abs(a.Part2.Position.Y - cPart2.Position.Y) > 5
or TMPart2 == 7
else end
else end
------------------------------------------------------------------------------

if sPart2==3
then sPart2 = 0
else end

wait(.1)
until
    a.Part2.Position.X < cPart2.Position.X +.7
and a.Part2.Position.X > cPart2.Position.X -.7
and a.Part2.Position.Y < cPart2.Position.Y +.7
and a.Part2.Position.Y > cPart2.Position.Y -.7
and a.Part2.Position.Z < cPart2.Position.Z +.7
and a.Part2.Position.Z > cPart2.Position.Z -.7
end --Couroutine






function core3()
wait(.1)
repeat

TMPart3 =  0

if cPart3.Position.X > a.Part3.Position.X then --Checking X Positions
XPart3 = 1
elseif cPart3.Position.X < a.Part3.Position.X then
XPart3 = -1
elseif cPart3.Position.X == a.Part3.Position.X then
XPart3 = 0
end

if cPart3.Position.Y > a.Part3.Position.Y then --Checking Y Positions
YPart3 = 1
elseif cPart3.Position.Y < a.Part3.Position.Y then
YPart3 = -1
elseif cPart3.Position.Y == a.Part3.Position.Y then
YPart3 = 0
end

if cPart3.Position.Z > a.Part3.Position.Z then --Checking Z Positions
ZPart3 = 1
elseif cPart3.Position.Z < a.Part3.Position.Z then
ZPart3 = -1
elseif cPart3.Position.Z == a.Part3.Position.Z then
ZPart3 = 0
end
-- ++-- 											
if  math.abs(a.Part3.Position.X - cPart3.Position.X) > math.abs(a.Part3.Position.Y - cPart3.Position.Y) --Priority Checks 1=X 2=Y 3=Z
and math.abs(a.Part3.Position.X - cPart3.Position.X) > math.abs(a.Part3.Position.Z - cPart3.Position.Z)
then PriPart3 = 1
else end 
if  math.abs(a.Part3.Position.Y - cPart3.Position.Y) > math.abs(a.Part3.Position.X - cPart3.Position.X) 
and math.abs(a.Part3.Position.Y - cPart3.Position.Y) > math.abs(a.Part3.Position.Z - cPart3.Position.Z)
then PriPart3 = 2
else end 
if  math.abs(a.Part3.Position.Z - cPart3.Position.Z) > math.abs(a.Part3.Position.Y - cPart3.Position.Y) 
and math.abs(a.Part3.Position.Z - cPart3.Position.Z) > math.abs(a.Part3.Position.X - cPart3.Position.X)
then PriPart3 = 3
else end 
if math.abs(a.Part3.Position.X - cPart3.Position.X) == math.abs(a.Part3.Position.Y - cPart3.Position.Y)  
or math.abs(a.Part3.Position.X - cPart3.Position.X) == math.abs(a.Part3.Position.Z - cPart3.Position.Z)
or math.abs(a.Part3.Position.Y - cPart3.Position.Y) == math.abs(a.Part3.Position.X - cPart3.Position.X)
then PriPart3 = 1
else end 

if a.Part3.Position.X + 2.5 < Partt1.Position.X -- P1 +X Positions Library Reference
or a.Part3.Position.X > Partt1.Position.X
or a.Part3.Position.Y +(1.9) < Partt1.Position.Y 
or a.Part3.Position.Y -(1.9) > Partt1.Position.Y 
or a.Part3.Position.Z +(1.9) < Partt1.Position.Z 
or a.Part3.Position.Z -(1.9) > Partt1.Position.Z 
then
if a.Part3.Position.X + 2.5 < Partt2.Position.X
or a.Part3.Position.X > Partt2.Position.X
or a.Part3.Position.Y +(1.9) < Partt2.Position.Y 
or a.Part3.Position.Y -(1.9) > Partt2.Position.Y 
or a.Part3.Position.Z +(1.9) < Partt2.Position.Z 
or a.Part3.Position.Z -(1.9) > Partt2.Position.Z 
then
if a.Part3.Position.X + 2.5 < Partt4.Position.X
or a.Part3.Position.X > Partt4.Position.X
or a.Part3.Position.Y +(1.9) < Partt4.Position.Y 
or a.Part3.Position.Y -(1.9) > Partt4.Position.Y 
or a.Part3.Position.Z +(1.9) < Partt4.Position.Z 
or a.Part3.Position.Z -(1.9) > Partt4.Position.Z 
then
if a.Part3.Position.X + 2.5 < Partt5.Position.X
or a.Part3.Position.X > Partt5.Position.X
or a.Part3.Position.Y +(1.9) < Partt5.Position.Y 
or a.Part3.Position.Y -(1.9) > Partt5.Position.Y 
or a.Part3.Position.Z +(1.9) < Partt5.Position.Z 
or a.Part3.Position.Z -(1.9) > Partt5.Position.Z 
then
if a.Part3.Position.X + 2.5 < Partt6.Position.X
or a.Part3.Position.X > Partt6.Position.X
or a.Part3.Position.Y +(1.9) < Partt6.Position.Y 
or a.Part3.Position.Y -(1.9) > Partt6.Position.Y 
or a.Part3.Position.Z +(1.9) < Partt6.Position.Z 
or a.Part3.Position.Z -(1.9) > Partt6.Position.Z 
then
if a.Part3.Position.X + 2.5 < Partt7.Position.X
or a.Part3.Position.X > Partt7.Position.X
or a.Part3.Position.Y +(1.9) < Partt7.Position.Y 
or a.Part3.Position.Y -(1.9) > Partt7.Position.Y 
or a.Part3.Position.Z +(1.9) < Partt7.Position.Z 
or a.Part3.Position.Z -(1.9) > Partt7.Position.Z 
then
if a.Part3.Position.X + 2.5 < Partt8.Position.X
or a.Part3.Position.X > Partt8.Position.X
or a.Part3.Position.Y +(1.9) < Partt8.Position.Y 
or a.Part3.Position.Y -(1.9) > Partt8.Position.Y 
or a.Part3.Position.Z +(1.9) < Partt8.Position.Z 
or a.Part3.Position.Z -(1.9) > Partt8.Position.Z 
then
xpoPart3 = 1
else xpoPart3 = 0 
end
else xpoPart3 = 0
end
else xpoPart3 = 0
end
else xpoPart3 = 0
end
else xpoPart3 = 0
end
else xpoPart3 = 0
end
else xpoPart3 = 0
end

if a.Part3.Position.X - 2.5 > Partt1.Position.X -- P1 -X Positions Library Reference
or a.Part3.Position.X < Partt1.Position.X
or a.Part3.Position.Y +(1.9) < Partt1.Position.Y 
or a.Part3.Position.Y -(1.9) > Partt1.Position.Y 
or a.Part3.Position.Z +(1.9) < Partt1.Position.Z 
or a.Part3.Position.Z -(1.9) > Partt1.Position.Z 
then
if a.Part3.Position.X - 2.5 > Partt2.Position.X
or a.Part3.Position.X < Partt2.Position.X
or a.Part3.Position.Y +(1.9) < Partt2.Position.Y 
or a.Part3.Position.Y -(1.9) > Partt2.Position.Y 
or a.Part3.Position.Z +(1.9) < Partt2.Position.Z 
or a.Part3.Position.Z -(1.9) > Partt2.Position.Z 
then
if a.Part3.Position.X - 2.5 > Partt4.Position.X
or a.Part3.Position.X < Partt4.Position.X
or a.Part3.Position.Y +(1.9) < Partt4.Position.Y 
or a.Part3.Position.Y -(1.9) > Partt4.Position.Y 
or a.Part3.Position.Z +(1.9) < Partt4.Position.Z 
or a.Part3.Position.Z -(1.9) > Partt4.Position.Z 
then
if a.Part3.Position.X - 2.5 > Partt5.Position.X
or a.Part3.Position.X < Partt5.Position.X
or a.Part3.Position.Y +(1.9) < Partt5.Position.Y 
or a.Part3.Position.Y -(1.9) > Partt5.Position.Y 
or a.Part3.Position.Z +(1.9) < Partt5.Position.Z 
or a.Part3.Position.Z -(1.9) > Partt5.Position.Z 
then
if a.Part3.Position.X - 2.5 > Partt6.Position.X
or a.Part3.Position.X < Partt6.Position.X
or a.Part3.Position.Y +(1.9) < Partt6.Position.Y 
or a.Part3.Position.Y -(1.9) > Partt6.Position.Y 
or a.Part3.Position.Z +(1.9) < Partt6.Position.Z 
or a.Part3.Position.Z -(1.9) > Partt6.Position.Z 
then
if a.Part3.Position.X - 2.5 > Partt7.Position.X
or a.Part3.Position.X < Partt7.Position.X
or a.Part3.Position.Y +(1.9) < Partt7.Position.Y 
or a.Part3.Position.Y -(1.9) > Partt7.Position.Y 
or a.Part3.Position.Z +(1.9) < Partt7.Position.Z 
or a.Part3.Position.Z -(1.9) > Partt7.Position.Z 
then
if a.Part3.Position.X - 2.5 > Partt8.Position.X
or a.Part3.Position.X < Partt8.Position.X
or a.Part3.Position.Y +(1.9) < Partt8.Position.Y 
or a.Part3.Position.Y -(1.9) > Partt8.Position.Y 
or a.Part3.Position.Z +(1.9) < Partt8.Position.Z 
or a.Part3.Position.Z -(1.9) > Partt8.Position.Z 
then
xnePart3 = 1
else xnePart3 = 0 
end
else xnePart3 = 0
end
else xnePart3 = 0
end
else xnePart3 = 0
end
else xnePart3 = 0
end
else xnePart3 = 0
end
else xnePart3 = 0
end

if a.Part3.Position.Y + 2.5 < Partt1.Position.Y -- P1 +Y Positions Library Reference
or a.Part3.Position.Y > Partt1.Position.Y
or a.Part3.Position.X +(1.9) < Partt1.Position.X 
or a.Part3.Position.X -(1.9) > Partt1.Position.X 
or a.Part3.Position.Z +(1.9) < Partt1.Position.Z 
or a.Part3.Position.Z -(1.9) > Partt1.Position.Z 
then
if a.Part3.Position.Y + 2.5 < Partt2.Position.Y
or a.Part3.Position.Y > Partt2.Position.Y
or a.Part3.Position.X +(1.9) < Partt2.Position.X 
or a.Part3.Position.X -(1.9) > Partt2.Position.X 
or a.Part3.Position.Z +(1.9) < Partt2.Position.Z 
or a.Part3.Position.Z -(1.9) > Partt2.Position.Z 
then
if a.Part3.Position.Y + 2.5 < Partt4.Position.Y
or a.Part3.Position.Y > Partt4.Position.Y
or a.Part3.Position.X +(1.9) < Partt4.Position.X 
or a.Part3.Position.X -(1.9) > Partt4.Position.X 
or a.Part3.Position.Z +(1.9) < Partt4.Position.Z 
or a.Part3.Position.Z -(1.9) > Partt4.Position.Z 
then
if a.Part3.Position.Y + 2.5 < Partt5.Position.Y
or a.Part3.Position.Y > Partt5.Position.Y
or a.Part3.Position.X +(1.9) < Partt5.Position.X 
or a.Part3.Position.X -(1.9) > Partt5.Position.X 
or a.Part3.Position.Z +(1.9) < Partt5.Position.Z 
or a.Part3.Position.Z -(1.9) > Partt5.Position.Z 
then
if a.Part3.Position.Y + 2.5 < Partt6.Position.Y
or a.Part3.Position.Y > Partt6.Position.Y
or a.Part3.Position.X +(1.9) < Partt6.Position.X 
or a.Part3.Position.X -(1.9) > Partt6.Position.X 
or a.Part3.Position.Z +(1.9) < Partt6.Position.Z 
or a.Part3.Position.Z -(1.9) > Partt6.Position.Z 
then
if a.Part3.Position.Y + 2.5 < Partt7.Position.Y
or a.Part3.Position.Y > Partt7.Position.Y
or a.Part3.Position.X +(1.9) < Partt7.Position.X 
or a.Part3.Position.X -(1.9) > Partt7.Position.X 
or a.Part3.Position.Z +(1.9) < Partt7.Position.Z 
or a.Part3.Position.Z -(1.9) > Partt7.Position.Z 
then
if a.Part3.Position.Y + 2.5 < Partt8.Position.Y
or a.Part3.Position.Y > Partt8.Position.Y
or a.Part3.Position.X +(1.9) < Partt8.Position.X 
or a.Part3.Position.X -(1.9) > Partt8.Position.X 
or a.Part3.Position.Z +(1.9) < Partt8.Position.Z 
or a.Part3.Position.Z -(1.9) > Partt8.Position.Z 
then
ypoPart3 = 1
else ypoPart3 = 0 
end
else ypoPart3 = 0
end
else ypoPart3 = 0
end
else ypoPart3 = 0
end
else ypoPart3 = 0
end
else ypoPart3 = 0
end
else ypoPart3 = 0
end

if a.Part3.Position.Y - 2.5 > Partt1.Position.Y -- P1 -Y Positions Library Reference
or a.Part3.Position.Y < Partt1.Position.Y
or a.Part3.Position.X +(1.9) < Partt1.Position.X 
or a.Part3.Position.X -(1.9) > Partt1.Position.X 
or a.Part3.Position.Z +(1.9) < Partt1.Position.Z 
or a.Part3.Position.Z -(1.9) > Partt1.Position.Z 
then
if a.Part3.Position.Y - 2.5 > Partt2.Position.Y
or a.Part3.Position.Y < Partt2.Position.Y
or a.Part3.Position.X +(1.9) < Partt2.Position.X 
or a.Part3.Position.X -(1.9) > Partt2.Position.X 
or a.Part3.Position.Z +(1.9) < Partt2.Position.Z 
or a.Part3.Position.Z -(1.9) > Partt2.Position.Z 
then
if a.Part3.Position.Y - 2.5 > Partt4.Position.Y
or a.Part3.Position.Y < Partt4.Position.Y
or a.Part3.Position.X +(1.9) < Partt4.Position.X 
or a.Part3.Position.X -(1.9) > Partt4.Position.X 
or a.Part3.Position.Z +(1.9) < Partt4.Position.Z 
or a.Part3.Position.Z -(1.9) > Partt4.Position.Z 
then
if a.Part3.Position.Y - 2.5 > Partt5.Position.Y
or a.Part3.Position.Y < Partt5.Position.Y
or a.Part3.Position.X +(1.9) < Partt5.Position.X 
or a.Part3.Position.X -(1.9) > Partt5.Position.X 
or a.Part3.Position.Z +(1.9) < Partt5.Position.Z 
or a.Part3.Position.Z -(1.9) > Partt5.Position.Z 
then
if a.Part3.Position.Y - 2.5 > Partt6.Position.Y
or a.Part3.Position.Y < Partt6.Position.Y
or a.Part3.Position.X +(1.9) < Partt6.Position.X 
or a.Part3.Position.X -(1.9) > Partt6.Position.X 
or a.Part3.Position.Z +(1.9) < Partt6.Position.Z 
or a.Part3.Position.Z -(1.9) > Partt6.Position.Z 
then
if a.Part3.Position.Y - 2.5 > Partt7.Position.Y
or a.Part3.Position.Y < Partt7.Position.Y
or a.Part3.Position.X +(1.9) < Partt7.Position.X 
or a.Part3.Position.X -(1.9) > Partt7.Position.X 
or a.Part3.Position.Z +(1.9) < Partt7.Position.Z 
or a.Part3.Position.Z -(1.9) > Partt7.Position.Z 
then
if a.Part3.Position.Y - 2.5 > Partt8.Position.Y
or a.Part3.Position.Y < Partt8.Position.Y
or a.Part3.Position.X +(1.9) < Partt8.Position.X 
or a.Part3.Position.X -(1.9) > Partt8.Position.X 
or a.Part3.Position.Z +(1.9) < Partt8.Position.Z 
or a.Part3.Position.Z -(1.9) > Partt8.Position.Z 
then
ynePart3 = 1
else ynePart3 = 0 
end
else ynePart3 = 0
end
else ynePart3 = 0
end
else ynePart3 = 0
end
else ynePart3 = 0
end
else ynePart3 = 0
end
else ynePart3 = 0
end

if a.Part3.Position.Z + 2.5 < Partt1.Position.Z -- P1 +Z Positions Library Reference
or a.Part3.Position.Z > Partt1.Position.Z
or a.Part3.Position.X +(1.9) < Partt1.Position.X 
or a.Part3.Position.X -(1.9) > Partt1.Position.X 
or a.Part3.Position.Y +(1.9) < Partt1.Position.Y 
or a.Part3.Position.Y -(1.9) > Partt1.Position.Y 
then
if a.Part3.Position.Z + 2.5 < Partt2.Position.Z
or a.Part3.Position.Z > Partt2.Position.Z
or a.Part3.Position.X +(1.9) < Partt2.Position.X 
or a.Part3.Position.X -(1.9) > Partt2.Position.X 
or a.Part3.Position.Y +(1.9) < Partt2.Position.Y 
or a.Part3.Position.Y -(1.9) > Partt2.Position.Y 
then
if a.Part3.Position.Z + 2.5 < Partt4.Position.Z
or a.Part3.Position.Z > Partt4.Position.Z
or a.Part3.Position.X +(1.9) < Partt4.Position.X 
or a.Part3.Position.X -(1.9) > Partt4.Position.X 
or a.Part3.Position.Y +(1.9) < Partt4.Position.Y 
or a.Part3.Position.Y -(1.9) > Partt4.Position.Y 
then
if a.Part3.Position.Z + 2.5 < Partt5.Position.Z
or a.Part3.Position.Z > Partt5.Position.Z
or a.Part3.Position.X +(1.9) < Partt5.Position.X 
or a.Part3.Position.X -(1.9) > Partt5.Position.X 
or a.Part3.Position.Y +(1.9) < Partt5.Position.Y 
or a.Part3.Position.Y -(1.9) > Partt5.Position.Y 
then
if a.Part3.Position.Z + 2.5 < Partt6.Position.Z
or a.Part3.Position.Z > Partt6.Position.Z
or a.Part3.Position.X +(1.9) < Partt6.Position.X 
or a.Part3.Position.X -(1.9) > Partt6.Position.X 
or a.Part3.Position.Y +(1.9) < Partt6.Position.Y 
or a.Part3.Position.Y -(1.9) > Partt6.Position.Y 
then
if a.Part3.Position.Z + 2.5 < Partt7.Position.Z
or a.Part3.Position.Z > Partt7.Position.Z
or a.Part3.Position.X +(1.9) < Partt7.Position.X 
or a.Part3.Position.X -(1.9) > Partt7.Position.X 
or a.Part3.Position.Y +(1.9) < Partt7.Position.Y 
or a.Part3.Position.Y -(1.9) > Partt7.Position.Y 
then
if a.Part3.Position.Z + 2.5 < Partt8.Position.Z
or a.Part3.Position.Z > Partt8.Position.Z
or a.Part3.Position.X +(1.9) < Partt8.Position.X 
or a.Part3.Position.X -(1.9) > Partt8.Position.X 
or a.Part3.Position.Y +(1.9) < Partt8.Position.Y 
or a.Part3.Position.Y -(1.9) > Partt8.Position.Y 
then
zpoPart3 = 1
else zpoPart3 = 0 
end
else zpoPart3 = 0
end
else zpoPart3 = 0
end
else zpoPart3 = 0
end
else zpoPart3 = 0
end
else zpoPart3 = 0
end
else zpoPart3 = 0
end

if a.Part3.Position.Z - 2.5 > Partt1.Position.Z -- P1 -Z Positions Library Reference
or a.Part3.Position.Z < Partt1.Position.Z
or a.Part3.Position.X +(1.9) < Partt1.Position.X 
or a.Part3.Position.X -(1.9) > Partt1.Position.X 
or a.Part3.Position.Y +(1.9) < Partt1.Position.Y 
or a.Part3.Position.Y -(1.9) > Partt1.Position.Y 
then
if a.Part3.Position.Z - 2.5 > Partt2.Position.Z
or a.Part3.Position.Z < Partt2.Position.Z
or a.Part3.Position.X +(1.9) < Partt2.Position.X 
or a.Part3.Position.X -(1.9) > Partt2.Position.X 
or a.Part3.Position.Y +(1.9) < Partt2.Position.Y 
or a.Part3.Position.Y -(1.9) > Partt2.Position.Y 
then
if a.Part3.Position.Z - 2.5 > Partt4.Position.Z
or a.Part3.Position.Z < Partt4.Position.Z
or a.Part3.Position.X +(1.9) < Partt4.Position.X 
or a.Part3.Position.X -(1.9) > Partt4.Position.X 
or a.Part3.Position.Y +(1.9) < Partt4.Position.Y 
or a.Part3.Position.Y -(1.9) > Partt4.Position.Y 
then
if a.Part3.Position.Z - 2.5 > Partt5.Position.Z
or a.Part3.Position.Z < Partt5.Position.Z
or a.Part3.Position.X +(1.9) < Partt5.Position.X 
or a.Part3.Position.X -(1.9) > Partt5.Position.X 
or a.Part3.Position.Y +(1.9) < Partt5.Position.Y 
or a.Part3.Position.Y -(1.9) > Partt5.Position.Y 
then
if a.Part3.Position.Z - 2.5 > Partt6.Position.Z
or a.Part3.Position.Z < Partt6.Position.Z
or a.Part3.Position.X +(1.9) < Partt6.Position.X 
or a.Part3.Position.X -(1.9) > Partt6.Position.X 
or a.Part3.Position.Y +(1.9) < Partt6.Position.Y 
or a.Part3.Position.Y -(1.9) > Partt6.Position.Y 
then
if a.Part3.Position.Z - 2.5 > Partt7.Position.Z
or a.Part3.Position.Z < Partt7.Position.Z
or a.Part3.Position.X +(1.9) < Partt7.Position.X 
or a.Part3.Position.X -(1.9) > Partt7.Position.X 
or a.Part3.Position.Y +(1.9) < Partt7.Position.Y 
or a.Part3.Position.Y -(1.9) > Partt7.Position.Y 
then
if a.Part3.Position.Z - 2.5 > Partt8.Position.Z
or a.Part3.Position.Z < Partt8.Position.Z
or a.Part3.Position.X +(1.9) < Partt8.Position.X 
or a.Part3.Position.X -(1.9) > Partt8.Position.X 
or a.Part3.Position.Y +(1.9) < Partt8.Position.Y 
or a.Part3.Position.Y -(1.9) > Partt8.Position.Y 
then
znePart3 = 1
else znePart3 = 0 
end
else znePart3 = 0
end
else znePart3 = 0
end
else znePart3 = 0
end
else znePart3 = 0
end
else znePart3 = 0
end
else znePart3 = 0
end

if PriPart3 == 1
and XPart3 == 1
then	
if xpoPart3 == 1
then
for i=1, 10 do
a.Part3.CFrame = a.Part3.CFrame +(Vector3.new(XPart3/10,0,0))
wait(.01)
end
else PriPart3 = (PriPart3+1)
end
else end

if PriPart3 == 1
and XPart3 == -1
then	
if xnePart3 == 1
then
for i=1, 10 do
a.Part3.CFrame = a.Part3.CFrame +(Vector3.new(XPart3/10,0,0))
wait(.01)
end
else PriPart3 = (PriPart3+1)
end
else end

if PriPart3 == 2
and YPart3 == 1
then	
if ypoPart3 == 1
then
for i=1, 10 do
a.Part3.CFrame = a.Part3.CFrame +(Vector3.new(0,YPart3/10,0))
wait(.01)
end
else PriPart3 = (PriPart3+1)
end
else end

if PriPart3 == 2
and YPart3 == -1
then	
if ynePart3 == 1
then
for i=1, 10 do
a.Part3.CFrame = a.Part3.CFrame +(Vector3.new(0,YPart3/10,0))
wait(.01)
end
else PriPart3 = (PriPart3+1)
end
else end

if PriPart3 == 3
and ZPart3 == 1
then	
if zpoPart3 == 1
then
for i=1, 10 do
a.Part3.CFrame = a.Part3.CFrame +(Vector3.new(0,0,ZPart3/10))
wait(.01)
end
else PriPart3 = (PriPart3+1)
end
else end

if PriPart3 == 3
and ZPart3 == -1
then	
if znePart3 == 1
then
for i=1, 10 do
a.Part3.CFrame = a.Part3.CFrame +(Vector3.new(0,0,ZPart3/10))
wait(.01)
end
else PriPart3 = (PriPart3+1)
end
else end




sPart3 =(sPart3+1) --Checking reconfiguring positions

if sPart3 == 1
then
XSPart3 = a.Part3.Position.X
YSPart3 = a.Part3.Position.Y
ZSPart3 = a.Part3.Position.Z
else end

if sPart3 == 3 --Checking if Part is Valid for Instant Fix
and XSPart3 == a.Part3.Position.X
and YSPart3 == a.Part3.Position.Y
and ZSPart3 == a.Part3.Position.Z
and a.Part3.Position.X < cPart3.Position.X +4
and a.Part3.Position.X > cPart3.Position.X -4
and a.Part3.Position.Y < cPart3.Position.Y +4
and a.Part3.Position.Y > cPart3.Position.Y -4
and a.Part3.Position.Z < cPart3.Position.Z +4
and a.Part3.Position.Z > cPart3.Position.Z -4
then
for i=1, 20 do
a.Part3.CFrame = a.Part3.CFrame +(Vector3.new((cPart3.Position.X-XSPart3)/20,(cPart3.Position.Y-YSPart3)/20,(cPart3.Position.Z-ZSPart3)/20))
wait(.01)
end
else end

if sPart3 == 3
and RPart3 == 1 --Checking +X Reconfiguration
then
if  XSPart3 == a.Part3.Position.X
and YSPart3 == a.Part3.Position.Y
and ZSPart3 == a.Part3.Position.Z
then
-- "Reconfiguring"
RPart3 = (RPart3+1)
repeat
if a.Part3.Position.X + 2.5 < Partt1.Position.X -- P1 +X Positions Library Reference
or a.Part3.Position.X > Partt1.Position.X
or a.Part3.Position.Y +(1.9) < Partt1.Position.Y 
or a.Part3.Position.Y -(1.9) > Partt1.Position.Y 
or a.Part3.Position.Z +(1.9) < Partt1.Position.Z 
or a.Part3.Position.Z -(1.9) > Partt1.Position.Z 
then
if a.Part3.Position.X + 2.5 < Partt2.Position.X
or a.Part3.Position.X > Partt2.Position.X
or a.Part3.Position.Y +(1.9) < Partt2.Position.Y 
or a.Part3.Position.Y -(1.9) > Partt2.Position.Y 
or a.Part3.Position.Z +(1.9) < Partt2.Position.Z 
or a.Part3.Position.Z -(1.9) > Partt2.Position.Z 
then
if a.Part3.Position.X + 2.5 < Partt4.Position.X
or a.Part3.Position.X > Partt4.Position.X
or a.Part3.Position.Y +(1.9) < Partt4.Position.Y 
or a.Part3.Position.Y -(1.9) > Partt4.Position.Y 
or a.Part3.Position.Z +(1.9) < Partt4.Position.Z 
or a.Part3.Position.Z -(1.9) > Partt4.Position.Z 
then
if a.Part3.Position.X + 2.5 < Partt5.Position.X
or a.Part3.Position.X > Partt5.Position.X
or a.Part3.Position.Y +(1.9) < Partt5.Position.Y 
or a.Part3.Position.Y -(1.9) > Partt5.Position.Y 
or a.Part3.Position.Z +(1.9) < Partt5.Position.Z 
or a.Part3.Position.Z -(1.9) > Partt5.Position.Z 
then
if a.Part3.Position.X + 2.5 < Partt6.Position.X
or a.Part3.Position.X > Partt6.Position.X
or a.Part3.Position.Y +(1.9) < Partt6.Position.Y 
or a.Part3.Position.Y -(1.9) > Partt6.Position.Y 
or a.Part3.Position.Z +(1.9) < Partt6.Position.Z 
or a.Part3.Position.Z -(1.9) > Partt6.Position.Z 
then
if a.Part3.Position.X + 2.5 < Partt7.Position.X
or a.Part3.Position.X > Partt7.Position.X
or a.Part3.Position.Y +(1.9) < Partt7.Position.Y 
or a.Part3.Position.Y -(1.9) > Partt7.Position.Y 
or a.Part3.Position.Z +(1.9) < Partt7.Position.Z 
or a.Part3.Position.Z -(1.9) > Partt7.Position.Z 
then
if a.Part3.Position.X + 2.5 < Partt8.Position.X
or a.Part3.Position.X > Partt8.Position.X
or a.Part3.Position.Y +(1.9) < Partt8.Position.Y 
or a.Part3.Position.Y -(1.9) > Partt8.Position.Y 
or a.Part3.Position.Z +(1.9) < Partt8.Position.Z 
or a.Part3.Position.Z -(1.9) > Partt8.Position.Z 
then
xpoPart3 = 1
else xpoPart3 = 0 
end
else xpoPart3 = 0
end
else xpoPart3 = 0
end
else xpoPart3 = 0
end
else xpoPart3 = 0
end
else xpoPart3 = 0
end
else xpoPart3 = 0
end

if a.Part3.Position.X - 2.5 > Partt1.Position.X -- P1 -X Positions Library Reference
or a.Part3.Position.X < Partt1.Position.X
or a.Part3.Position.Y +(1.9) < Partt1.Position.Y 
or a.Part3.Position.Y -(1.9) > Partt1.Position.Y 
or a.Part3.Position.Z +(1.9) < Partt1.Position.Z 
or a.Part3.Position.Z -(1.9) > Partt1.Position.Z 
then
if a.Part3.Position.X - 2.5 > Partt2.Position.X
or a.Part3.Position.X < Partt2.Position.X
or a.Part3.Position.Y +(1.9) < Partt2.Position.Y 
or a.Part3.Position.Y -(1.9) > Partt2.Position.Y 
or a.Part3.Position.Z +(1.9) < Partt2.Position.Z 
or a.Part3.Position.Z -(1.9) > Partt2.Position.Z 
then
if a.Part3.Position.X - 2.5 > Partt4.Position.X
or a.Part3.Position.X < Partt4.Position.X
or a.Part3.Position.Y +(1.9) < Partt4.Position.Y 
or a.Part3.Position.Y -(1.9) > Partt4.Position.Y 
or a.Part3.Position.Z +(1.9) < Partt4.Position.Z 
or a.Part3.Position.Z -(1.9) > Partt4.Position.Z 
then
if a.Part3.Position.X - 2.5 > Partt5.Position.X
or a.Part3.Position.X < Partt5.Position.X
or a.Part3.Position.Y +(1.9) < Partt5.Position.Y 
or a.Part3.Position.Y -(1.9) > Partt5.Position.Y 
or a.Part3.Position.Z +(1.9) < Partt5.Position.Z 
or a.Part3.Position.Z -(1.9) > Partt5.Position.Z 
then
if a.Part3.Position.X - 2.5 > Partt6.Position.X
or a.Part3.Position.X < Partt6.Position.X
or a.Part3.Position.Y +(1.9) < Partt6.Position.Y 
or a.Part3.Position.Y -(1.9) > Partt6.Position.Y 
or a.Part3.Position.Z +(1.9) < Partt6.Position.Z 
or a.Part3.Position.Z -(1.9) > Partt6.Position.Z 
then
if a.Part3.Position.X - 2.5 > Partt7.Position.X
or a.Part3.Position.X < Partt7.Position.X
or a.Part3.Position.Y +(1.9) < Partt7.Position.Y 
or a.Part3.Position.Y -(1.9) > Partt7.Position.Y 
or a.Part3.Position.Z +(1.9) < Partt7.Position.Z 
or a.Part3.Position.Z -(1.9) > Partt7.Position.Z 
then
if a.Part3.Position.X - 2.5 > Partt8.Position.X
or a.Part3.Position.X < Partt8.Position.X
or a.Part3.Position.Y +(1.9) < Partt8.Position.Y 
or a.Part3.Position.Y -(1.9) > Partt8.Position.Y 
or a.Part3.Position.Z +(1.9) < Partt8.Position.Z 
or a.Part3.Position.Z -(1.9) > Partt8.Position.Z 
then
xnePart3 = 1
else xnePart3 = 0 
end
else xnePart3 = 0
end
else xnePart3 = 0
end
else xnePart3 = 0
end
else xnePart3 = 0
end
else xnePart3 = 0
end
else xnePart3 = 0
end

if a.Part3.Position.Y + 2.5 < Partt1.Position.Y -- P1 +Y Positions Library Reference
or a.Part3.Position.Y > Partt1.Position.Y
or a.Part3.Position.X +(1.9) < Partt1.Position.X 
or a.Part3.Position.X -(1.9) > Partt1.Position.X 
or a.Part3.Position.Z +(1.9) < Partt1.Position.Z 
or a.Part3.Position.Z -(1.9) > Partt1.Position.Z 
then
if a.Part3.Position.Y + 2.5 < Partt2.Position.Y
or a.Part3.Position.Y > Partt2.Position.Y
or a.Part3.Position.X +(1.9) < Partt2.Position.X 
or a.Part3.Position.X -(1.9) > Partt2.Position.X 
or a.Part3.Position.Z +(1.9) < Partt2.Position.Z 
or a.Part3.Position.Z -(1.9) > Partt2.Position.Z 
then
if a.Part3.Position.Y + 2.5 < Partt4.Position.Y
or a.Part3.Position.Y > Partt4.Position.Y
or a.Part3.Position.X +(1.9) < Partt4.Position.X 
or a.Part3.Position.X -(1.9) > Partt4.Position.X 
or a.Part3.Position.Z +(1.9) < Partt4.Position.Z 
or a.Part3.Position.Z -(1.9) > Partt4.Position.Z 
then
if a.Part3.Position.Y + 2.5 < Partt5.Position.Y
or a.Part3.Position.Y > Partt5.Position.Y
or a.Part3.Position.X +(1.9) < Partt5.Position.X 
or a.Part3.Position.X -(1.9) > Partt5.Position.X 
or a.Part3.Position.Z +(1.9) < Partt5.Position.Z 
or a.Part3.Position.Z -(1.9) > Partt5.Position.Z 
then
if a.Part3.Position.Y + 2.5 < Partt6.Position.Y
or a.Part3.Position.Y > Partt6.Position.Y
or a.Part3.Position.X +(1.9) < Partt6.Position.X 
or a.Part3.Position.X -(1.9) > Partt6.Position.X 
or a.Part3.Position.Z +(1.9) < Partt6.Position.Z 
or a.Part3.Position.Z -(1.9) > Partt6.Position.Z 
then
if a.Part3.Position.Y + 2.5 < Partt7.Position.Y
or a.Part3.Position.Y > Partt7.Position.Y
or a.Part3.Position.X +(1.9) < Partt7.Position.X 
or a.Part3.Position.X -(1.9) > Partt7.Position.X 
or a.Part3.Position.Z +(1.9) < Partt7.Position.Z 
or a.Part3.Position.Z -(1.9) > Partt7.Position.Z 
then
if a.Part3.Position.Y + 2.5 < Partt8.Position.Y
or a.Part3.Position.Y > Partt8.Position.Y
or a.Part3.Position.X +(1.9) < Partt8.Position.X 
or a.Part3.Position.X -(1.9) > Partt8.Position.X 
or a.Part3.Position.Z +(1.9) < Partt8.Position.Z 
or a.Part3.Position.Z -(1.9) > Partt8.Position.Z 
then
ypoPart3 = 1
else ypoPart3 = 0 
end
else ypoPart3 = 0
end
else ypoPart3 = 0
end
else ypoPart3 = 0
end
else ypoPart3 = 0
end
else ypoPart3 = 0
end
else ypoPart3 = 0
end

if a.Part3.Position.Y - 2.5 > Partt1.Position.Y -- P1 -Y Positions Library Reference
or a.Part3.Position.Y < Partt1.Position.Y
or a.Part3.Position.X +(1.9) < Partt1.Position.X 
or a.Part3.Position.X -(1.9) > Partt1.Position.X 
or a.Part3.Position.Z +(1.9) < Partt1.Position.Z 
or a.Part3.Position.Z -(1.9) > Partt1.Position.Z 
then
if a.Part3.Position.Y - 2.5 > Partt2.Position.Y
or a.Part3.Position.Y < Partt2.Position.Y
or a.Part3.Position.X +(1.9) < Partt2.Position.X 
or a.Part3.Position.X -(1.9) > Partt2.Position.X 
or a.Part3.Position.Z +(1.9) < Partt2.Position.Z 
or a.Part3.Position.Z -(1.9) > Partt2.Position.Z 
then
if a.Part3.Position.Y - 2.5 > Partt4.Position.Y
or a.Part3.Position.Y < Partt4.Position.Y
or a.Part3.Position.X +(1.9) < Partt4.Position.X 
or a.Part3.Position.X -(1.9) > Partt4.Position.X 
or a.Part3.Position.Z +(1.9) < Partt4.Position.Z 
or a.Part3.Position.Z -(1.9) > Partt4.Position.Z 
then
if a.Part3.Position.Y - 2.5 > Partt5.Position.Y
or a.Part3.Position.Y < Partt5.Position.Y
or a.Part3.Position.X +(1.9) < Partt5.Position.X 
or a.Part3.Position.X -(1.9) > Partt5.Position.X 
or a.Part3.Position.Z +(1.9) < Partt5.Position.Z 
or a.Part3.Position.Z -(1.9) > Partt5.Position.Z 
then
if a.Part3.Position.Y - 2.5 > Partt6.Position.Y
or a.Part3.Position.Y < Partt6.Position.Y
or a.Part3.Position.X +(1.9) < Partt6.Position.X 
or a.Part3.Position.X -(1.9) > Partt6.Position.X 
or a.Part3.Position.Z +(1.9) < Partt6.Position.Z 
or a.Part3.Position.Z -(1.9) > Partt6.Position.Z 
then
if a.Part3.Position.Y - 2.5 > Partt7.Position.Y
or a.Part3.Position.Y < Partt7.Position.Y
or a.Part3.Position.X +(1.9) < Partt7.Position.X 
or a.Part3.Position.X -(1.9) > Partt7.Position.X 
or a.Part3.Position.Z +(1.9) < Partt7.Position.Z 
or a.Part3.Position.Z -(1.9) > Partt7.Position.Z 
then
if a.Part3.Position.Y - 2.5 > Partt8.Position.Y
or a.Part3.Position.Y < Partt8.Position.Y
or a.Part3.Position.X +(1.9) < Partt8.Position.X 
or a.Part3.Position.X -(1.9) > Partt8.Position.X 
or a.Part3.Position.Z +(1.9) < Partt8.Position.Z 
or a.Part3.Position.Z -(1.9) > Partt8.Position.Z 
then
ynePart3 = 1
else ynePart3 = 0 
end
else ynePart3 = 0
end
else ynePart3 = 0
end
else ynePart3 = 0
end
else ynePart3 = 0
end
else ynePart3 = 0
end
else ynePart3 = 0
end

if a.Part3.Position.Z + 2.5 < Partt1.Position.Z -- P1 +Z Positions Library Reference
or a.Part3.Position.Z > Partt1.Position.Z
or a.Part3.Position.X +(1.9) < Partt1.Position.X 
or a.Part3.Position.X -(1.9) > Partt1.Position.X 
or a.Part3.Position.Y +(1.9) < Partt1.Position.Y 
or a.Part3.Position.Y -(1.9) > Partt1.Position.Y 
then
if a.Part3.Position.Z + 2.5 < Partt2.Position.Z
or a.Part3.Position.Z > Partt2.Position.Z
or a.Part3.Position.X +(1.9) < Partt2.Position.X 
or a.Part3.Position.X -(1.9) > Partt2.Position.X 
or a.Part3.Position.Y +(1.9) < Partt2.Position.Y 
or a.Part3.Position.Y -(1.9) > Partt2.Position.Y 
then
if a.Part3.Position.Z + 2.5 < Partt4.Position.Z
or a.Part3.Position.Z > Partt4.Position.Z
or a.Part3.Position.X +(1.9) < Partt4.Position.X 
or a.Part3.Position.X -(1.9) > Partt4.Position.X 
or a.Part3.Position.Y +(1.9) < Partt4.Position.Y 
or a.Part3.Position.Y -(1.9) > Partt4.Position.Y 
then
if a.Part3.Position.Z + 2.5 < Partt5.Position.Z
or a.Part3.Position.Z > Partt5.Position.Z
or a.Part3.Position.X +(1.9) < Partt5.Position.X 
or a.Part3.Position.X -(1.9) > Partt5.Position.X 
or a.Part3.Position.Y +(1.9) < Partt5.Position.Y 
or a.Part3.Position.Y -(1.9) > Partt5.Position.Y 
then
if a.Part3.Position.Z + 2.5 < Partt6.Position.Z
or a.Part3.Position.Z > Partt6.Position.Z
or a.Part3.Position.X +(1.9) < Partt6.Position.X 
or a.Part3.Position.X -(1.9) > Partt6.Position.X 
or a.Part3.Position.Y +(1.9) < Partt6.Position.Y 
or a.Part3.Position.Y -(1.9) > Partt6.Position.Y 
then
if a.Part3.Position.Z + 2.5 < Partt7.Position.Z
or a.Part3.Position.Z > Partt7.Position.Z
or a.Part3.Position.X +(1.9) < Partt7.Position.X 
or a.Part3.Position.X -(1.9) > Partt7.Position.X 
or a.Part3.Position.Y +(1.9) < Partt7.Position.Y 
or a.Part3.Position.Y -(1.9) > Partt7.Position.Y 
then
if a.Part3.Position.Z + 2.5 < Partt8.Position.Z
or a.Part3.Position.Z > Partt8.Position.Z
or a.Part3.Position.X +(1.9) < Partt8.Position.X 
or a.Part3.Position.X -(1.9) > Partt8.Position.X 
or a.Part3.Position.Y +(1.9) < Partt8.Position.Y 
or a.Part3.Position.Y -(1.9) > Partt8.Position.Y 
then
zpoPart3 = 1
else zpoPart3 = 0 
end
else zpoPart3 = 0
end
else zpoPart3 = 0
end
else zpoPart3 = 0
end
else zpoPart3 = 0
end
else zpoPart3 = 0
end
else zpoPart3 = 0
end

if a.Part3.Position.Z - 2.5 > Partt1.Position.Z -- P1 -Z Positions Library Reference
or a.Part3.Position.Z < Partt1.Position.Z
or a.Part3.Position.X +(1.9) < Partt1.Position.X 
or a.Part3.Position.X -(1.9) > Partt1.Position.X 
or a.Part3.Position.Y +(1.9) < Partt1.Position.Y 
or a.Part3.Position.Y -(1.9) > Partt1.Position.Y 
then
if a.Part3.Position.Z - 2.5 > Partt2.Position.Z
or a.Part3.Position.Z < Partt2.Position.Z
or a.Part3.Position.X +(1.9) < Partt2.Position.X 
or a.Part3.Position.X -(1.9) > Partt2.Position.X 
or a.Part3.Position.Y +(1.9) < Partt2.Position.Y 
or a.Part3.Position.Y -(1.9) > Partt2.Position.Y 
then
if a.Part3.Position.Z - 2.5 > Partt4.Position.Z
or a.Part3.Position.Z < Partt4.Position.Z
or a.Part3.Position.X +(1.9) < Partt4.Position.X 
or a.Part3.Position.X -(1.9) > Partt4.Position.X 
or a.Part3.Position.Y +(1.9) < Partt4.Position.Y 
or a.Part3.Position.Y -(1.9) > Partt4.Position.Y 
then
if a.Part3.Position.Z - 2.5 > Partt5.Position.Z
or a.Part3.Position.Z < Partt5.Position.Z
or a.Part3.Position.X +(1.9) < Partt5.Position.X 
or a.Part3.Position.X -(1.9) > Partt5.Position.X 
or a.Part3.Position.Y +(1.9) < Partt5.Position.Y 
or a.Part3.Position.Y -(1.9) > Partt5.Position.Y 
then
if a.Part3.Position.Z - 2.5 > Partt6.Position.Z
or a.Part3.Position.Z < Partt6.Position.Z
or a.Part3.Position.X +(1.9) < Partt6.Position.X 
or a.Part3.Position.X -(1.9) > Partt6.Position.X 
or a.Part3.Position.Y +(1.9) < Partt6.Position.Y 
or a.Part3.Position.Y -(1.9) > Partt6.Position.Y 
then
if a.Part3.Position.Z - 2.5 > Partt7.Position.Z
or a.Part3.Position.Z < Partt7.Position.Z
or a.Part3.Position.X +(1.9) < Partt7.Position.X 
or a.Part3.Position.X -(1.9) > Partt7.Position.X 
or a.Part3.Position.Y +(1.9) < Partt7.Position.Y 
or a.Part3.Position.Y -(1.9) > Partt7.Position.Y 
then
if a.Part3.Position.Z - 2.5 > Partt8.Position.Z
or a.Part3.Position.Z < Partt8.Position.Z
or a.Part3.Position.X +(1.9) < Partt8.Position.X 
or a.Part3.Position.X -(1.9) > Partt8.Position.X 
or a.Part3.Position.Y +(1.9) < Partt8.Position.Y 
or a.Part3.Position.Y -(1.9) > Partt8.Position.Y 
then
znePart3 = 1
else znePart3 = 0 
end
else znePart3 = 0
end
else znePart3 = 0
end
else znePart3 = 0
end
else znePart3 = 0
end
else znePart3 = 0
end
else znePart3 = 0
end

PriPart3 = 1 
if PriPart3 == 1
then	
if xpoPart3 == 1
then
for i=1, 10 do
a.Part3.CFrame = a.Part3.CFrame +(Vector3.new(.1,0,0))
wait(.01)
end
else PriPart3 = (PriPart3+1)
end
else end

if PriPart3 == 2
then	
if ypoPart3 == 1
then
for i=1, 10 do
a.Part3.CFrame = a.Part3.CFrame +(Vector3.new(0,.1,0))
wait(.01)
end
else PriPart3 = (PriPart3+1)
end
else end

if PriPart3 == 3
then	
if zpoPart3 == 1
then
for i=1, 10 do
a.Part3.CFrame = a.Part3.CFrame +(Vector3.new(0,0,.1))
wait(.01)
end
else PriPart3 = (PriPart3+1)
end
else end

if PriPart3 == 4
then	
if ynePart3 == 1
then
for i=1, 10 do
a.Part3.CFrame = a.Part3.CFrame +(Vector3.new(0,-.1,0))
wait(.01)
end
else PriPart3 = (PriPart3+1)
end
else end

if PriPart3 == 5
then	
if znePart3 == 1
then
for i=1, 10 do
a.Part3.CFrame = a.Part3.CFrame +(Vector3.new(0,0,-.1))
wait(.01)
end
else PriPart3 = (PriPart3+1)
end
else end
-- (PriPart3)
------------------------------------------------------------------------------
for i=1, 10 do
a.Part3.CFrame = a.Part3.CFrame * CFrame.fromEulerAnglesXYZ(math.pi/20,0,0)
wait(.01)
end
TMPart3 = (TMPart3+1)
until 
math.abs(a.Part3.Position.X - cPart3.Position.X) > 5
or TMPart3 == 7
else end
else end

if sPart3 == 3
and RPart3 == 2 --Checking +X Reconfiguration
then
if  XSPart3 == a.Part3.Position.X
and YSPart3 == a.Part3.Position.Y
and ZSPart3 == a.Part3.Position.Z
then
-- "Reconfiguring"
RPart3 = (RPart3+1)
repeat
if a.Part3.Position.X + 2.5 < Partt1.Position.X -- P1 +X Positions Library Reference
or a.Part3.Position.X > Partt1.Position.X
or a.Part3.Position.Y +(1.9) < Partt1.Position.Y 
or a.Part3.Position.Y -(1.9) > Partt1.Position.Y 
or a.Part3.Position.Z +(1.9) < Partt1.Position.Z 
or a.Part3.Position.Z -(1.9) > Partt1.Position.Z 
then
if a.Part3.Position.X + 2.5 < Partt2.Position.X
or a.Part3.Position.X > Partt2.Position.X
or a.Part3.Position.Y +(1.9) < Partt2.Position.Y 
or a.Part3.Position.Y -(1.9) > Partt2.Position.Y 
or a.Part3.Position.Z +(1.9) < Partt2.Position.Z 
or a.Part3.Position.Z -(1.9) > Partt2.Position.Z 
then
if a.Part3.Position.X + 2.5 < Partt4.Position.X
or a.Part3.Position.X > Partt4.Position.X
or a.Part3.Position.Y +(1.9) < Partt4.Position.Y 
or a.Part3.Position.Y -(1.9) > Partt4.Position.Y 
or a.Part3.Position.Z +(1.9) < Partt4.Position.Z 
or a.Part3.Position.Z -(1.9) > Partt4.Position.Z 
then
if a.Part3.Position.X + 2.5 < Partt5.Position.X
or a.Part3.Position.X > Partt5.Position.X
or a.Part3.Position.Y +(1.9) < Partt5.Position.Y 
or a.Part3.Position.Y -(1.9) > Partt5.Position.Y 
or a.Part3.Position.Z +(1.9) < Partt5.Position.Z 
or a.Part3.Position.Z -(1.9) > Partt5.Position.Z 
then
if a.Part3.Position.X + 2.5 < Partt6.Position.X
or a.Part3.Position.X > Partt6.Position.X
or a.Part3.Position.Y +(1.9) < Partt6.Position.Y 
or a.Part3.Position.Y -(1.9) > Partt6.Position.Y 
or a.Part3.Position.Z +(1.9) < Partt6.Position.Z 
or a.Part3.Position.Z -(1.9) > Partt6.Position.Z 
then
if a.Part3.Position.X + 2.5 < Partt7.Position.X
or a.Part3.Position.X > Partt7.Position.X
or a.Part3.Position.Y +(1.9) < Partt7.Position.Y 
or a.Part3.Position.Y -(1.9) > Partt7.Position.Y 
or a.Part3.Position.Z +(1.9) < Partt7.Position.Z 
or a.Part3.Position.Z -(1.9) > Partt7.Position.Z 
then
if a.Part3.Position.X + 2.5 < Partt8.Position.X
or a.Part3.Position.X > Partt8.Position.X
or a.Part3.Position.Y +(1.9) < Partt8.Position.Y 
or a.Part3.Position.Y -(1.9) > Partt8.Position.Y 
or a.Part3.Position.Z +(1.9) < Partt8.Position.Z 
or a.Part3.Position.Z -(1.9) > Partt8.Position.Z 
then
xpoPart3 = 1
else xpoPart3 = 0 
end
else xpoPart3 = 0
end
else xpoPart3 = 0
end
else xpoPart3 = 0
end
else xpoPart3 = 0
end
else xpoPart3 = 0
end
else xpoPart3 = 0
end

if a.Part3.Position.X - 2.5 > Partt1.Position.X -- P1 -X Positions Library Reference
or a.Part3.Position.X < Partt1.Position.X
or a.Part3.Position.Y +(1.9) < Partt1.Position.Y 
or a.Part3.Position.Y -(1.9) > Partt1.Position.Y 
or a.Part3.Position.Z +(1.9) < Partt1.Position.Z 
or a.Part3.Position.Z -(1.9) > Partt1.Position.Z 
then
if a.Part3.Position.X - 2.5 > Partt2.Position.X
or a.Part3.Position.X < Partt2.Position.X
or a.Part3.Position.Y +(1.9) < Partt2.Position.Y 
or a.Part3.Position.Y -(1.9) > Partt2.Position.Y 
or a.Part3.Position.Z +(1.9) < Partt2.Position.Z 
or a.Part3.Position.Z -(1.9) > Partt2.Position.Z 
then
if a.Part3.Position.X - 2.5 > Partt4.Position.X
or a.Part3.Position.X < Partt4.Position.X
or a.Part3.Position.Y +(1.9) < Partt4.Position.Y 
or a.Part3.Position.Y -(1.9) > Partt4.Position.Y 
or a.Part3.Position.Z +(1.9) < Partt4.Position.Z 
or a.Part3.Position.Z -(1.9) > Partt4.Position.Z 
then
if a.Part3.Position.X - 2.5 > Partt5.Position.X
or a.Part3.Position.X < Partt5.Position.X
or a.Part3.Position.Y +(1.9) < Partt5.Position.Y 
or a.Part3.Position.Y -(1.9) > Partt5.Position.Y 
or a.Part3.Position.Z +(1.9) < Partt5.Position.Z 
or a.Part3.Position.Z -(1.9) > Partt5.Position.Z 
then
if a.Part3.Position.X - 2.5 > Partt6.Position.X
or a.Part3.Position.X < Partt6.Position.X
or a.Part3.Position.Y +(1.9) < Partt6.Position.Y 
or a.Part3.Position.Y -(1.9) > Partt6.Position.Y 
or a.Part3.Position.Z +(1.9) < Partt6.Position.Z 
or a.Part3.Position.Z -(1.9) > Partt6.Position.Z 
then
if a.Part3.Position.X - 2.5 > Partt7.Position.X
or a.Part3.Position.X < Partt7.Position.X
or a.Part3.Position.Y +(1.9) < Partt7.Position.Y 
or a.Part3.Position.Y -(1.9) > Partt7.Position.Y 
or a.Part3.Position.Z +(1.9) < Partt7.Position.Z 
or a.Part3.Position.Z -(1.9) > Partt7.Position.Z 
then
if a.Part3.Position.X - 2.5 > Partt8.Position.X
or a.Part3.Position.X < Partt8.Position.X
or a.Part3.Position.Y +(1.9) < Partt8.Position.Y 
or a.Part3.Position.Y -(1.9) > Partt8.Position.Y 
or a.Part3.Position.Z +(1.9) < Partt8.Position.Z 
or a.Part3.Position.Z -(1.9) > Partt8.Position.Z 
then
xnePart3 = 1
else xnePart3 = 0 
end
else xnePart3 = 0
end
else xnePart3 = 0
end
else xnePart3 = 0
end
else xnePart3 = 0
end
else xnePart3 = 0
end
else xnePart3 = 0
end

if a.Part3.Position.Y + 2.5 < Partt1.Position.Y -- P1 +Y Positions Library Reference
or a.Part3.Position.Y > Partt1.Position.Y
or a.Part3.Position.X +(1.9) < Partt1.Position.X 
or a.Part3.Position.X -(1.9) > Partt1.Position.X 
or a.Part3.Position.Z +(1.9) < Partt1.Position.Z 
or a.Part3.Position.Z -(1.9) > Partt1.Position.Z 
then
if a.Part3.Position.Y + 2.5 < Partt2.Position.Y
or a.Part3.Position.Y > Partt2.Position.Y
or a.Part3.Position.X +(1.9) < Partt2.Position.X 
or a.Part3.Position.X -(1.9) > Partt2.Position.X 
or a.Part3.Position.Z +(1.9) < Partt2.Position.Z 
or a.Part3.Position.Z -(1.9) > Partt2.Position.Z 
then
if a.Part3.Position.Y + 2.5 < Partt4.Position.Y
or a.Part3.Position.Y > Partt4.Position.Y
or a.Part3.Position.X +(1.9) < Partt4.Position.X 
or a.Part3.Position.X -(1.9) > Partt4.Position.X 
or a.Part3.Position.Z +(1.9) < Partt4.Position.Z 
or a.Part3.Position.Z -(1.9) > Partt4.Position.Z 
then
if a.Part3.Position.Y + 2.5 < Partt5.Position.Y
or a.Part3.Position.Y > Partt5.Position.Y
or a.Part3.Position.X +(1.9) < Partt5.Position.X 
or a.Part3.Position.X -(1.9) > Partt5.Position.X 
or a.Part3.Position.Z +(1.9) < Partt5.Position.Z 
or a.Part3.Position.Z -(1.9) > Partt5.Position.Z 
then
if a.Part3.Position.Y + 2.5 < Partt6.Position.Y
or a.Part3.Position.Y > Partt6.Position.Y
or a.Part3.Position.X +(1.9) < Partt6.Position.X 
or a.Part3.Position.X -(1.9) > Partt6.Position.X 
or a.Part3.Position.Z +(1.9) < Partt6.Position.Z 
or a.Part3.Position.Z -(1.9) > Partt6.Position.Z 
then
if a.Part3.Position.Y + 2.5 < Partt7.Position.Y
or a.Part3.Position.Y > Partt7.Position.Y
or a.Part3.Position.X +(1.9) < Partt7.Position.X 
or a.Part3.Position.X -(1.9) > Partt7.Position.X 
or a.Part3.Position.Z +(1.9) < Partt7.Position.Z 
or a.Part3.Position.Z -(1.9) > Partt7.Position.Z 
then
if a.Part3.Position.Y + 2.5 < Partt8.Position.Y
or a.Part3.Position.Y > Partt8.Position.Y
or a.Part3.Position.X +(1.9) < Partt8.Position.X 
or a.Part3.Position.X -(1.9) > Partt8.Position.X 
or a.Part3.Position.Z +(1.9) < Partt8.Position.Z 
or a.Part3.Position.Z -(1.9) > Partt8.Position.Z 
then
ypoPart3 = 1
else ypoPart3 = 0 
end
else ypoPart3 = 0
end
else ypoPart3 = 0
end
else ypoPart3 = 0
end
else ypoPart3 = 0
end
else ypoPart3 = 0
end
else ypoPart3 = 0
end

if a.Part3.Position.Y - 2.5 > Partt1.Position.Y -- P1 -Y Positions Library Reference
or a.Part3.Position.Y < Partt1.Position.Y
or a.Part3.Position.X +(1.9) < Partt1.Position.X 
or a.Part3.Position.X -(1.9) > Partt1.Position.X 
or a.Part3.Position.Z +(1.9) < Partt1.Position.Z 
or a.Part3.Position.Z -(1.9) > Partt1.Position.Z 
then
if a.Part3.Position.Y - 2.5 > Partt2.Position.Y
or a.Part3.Position.Y < Partt2.Position.Y
or a.Part3.Position.X +(1.9) < Partt2.Position.X 
or a.Part3.Position.X -(1.9) > Partt2.Position.X 
or a.Part3.Position.Z +(1.9) < Partt2.Position.Z 
or a.Part3.Position.Z -(1.9) > Partt2.Position.Z 
then
if a.Part3.Position.Y - 2.5 > Partt4.Position.Y
or a.Part3.Position.Y < Partt4.Position.Y
or a.Part3.Position.X +(1.9) < Partt4.Position.X 
or a.Part3.Position.X -(1.9) > Partt4.Position.X 
or a.Part3.Position.Z +(1.9) < Partt4.Position.Z 
or a.Part3.Position.Z -(1.9) > Partt4.Position.Z 
then
if a.Part3.Position.Y - 2.5 > Partt5.Position.Y
or a.Part3.Position.Y < Partt5.Position.Y
or a.Part3.Position.X +(1.9) < Partt5.Position.X 
or a.Part3.Position.X -(1.9) > Partt5.Position.X 
or a.Part3.Position.Z +(1.9) < Partt5.Position.Z 
or a.Part3.Position.Z -(1.9) > Partt5.Position.Z 
then
if a.Part3.Position.Y - 2.5 > Partt6.Position.Y
or a.Part3.Position.Y < Partt6.Position.Y
or a.Part3.Position.X +(1.9) < Partt6.Position.X 
or a.Part3.Position.X -(1.9) > Partt6.Position.X 
or a.Part3.Position.Z +(1.9) < Partt6.Position.Z 
or a.Part3.Position.Z -(1.9) > Partt6.Position.Z 
then
if a.Part3.Position.Y - 2.5 > Partt7.Position.Y
or a.Part3.Position.Y < Partt7.Position.Y
or a.Part3.Position.X +(1.9) < Partt7.Position.X 
or a.Part3.Position.X -(1.9) > Partt7.Position.X 
or a.Part3.Position.Z +(1.9) < Partt7.Position.Z 
or a.Part3.Position.Z -(1.9) > Partt7.Position.Z 
then
if a.Part3.Position.Y - 2.5 > Partt8.Position.Y
or a.Part3.Position.Y < Partt8.Position.Y
or a.Part3.Position.X +(1.9) < Partt8.Position.X 
or a.Part3.Position.X -(1.9) > Partt8.Position.X 
or a.Part3.Position.Z +(1.9) < Partt8.Position.Z 
or a.Part3.Position.Z -(1.9) > Partt8.Position.Z 
then
ynePart3 = 1
else ynePart3 = 0 
end
else ynePart3 = 0
end
else ynePart3 = 0
end
else ynePart3 = 0
end
else ynePart3 = 0
end
else ynePart3 = 0
end
else ynePart3 = 0
end

if a.Part3.Position.Z + 2.5 < Partt1.Position.Z -- P1 +Z Positions Library Reference
or a.Part3.Position.Z > Partt1.Position.Z
or a.Part3.Position.X +(1.9) < Partt1.Position.X 
or a.Part3.Position.X -(1.9) > Partt1.Position.X 
or a.Part3.Position.Y +(1.9) < Partt1.Position.Y 
or a.Part3.Position.Y -(1.9) > Partt1.Position.Y 
then
if a.Part3.Position.Z + 2.5 < Partt2.Position.Z
or a.Part3.Position.Z > Partt2.Position.Z
or a.Part3.Position.X +(1.9) < Partt2.Position.X 
or a.Part3.Position.X -(1.9) > Partt2.Position.X 
or a.Part3.Position.Y +(1.9) < Partt2.Position.Y 
or a.Part3.Position.Y -(1.9) > Partt2.Position.Y 
then
if a.Part3.Position.Z + 2.5 < Partt4.Position.Z
or a.Part3.Position.Z > Partt4.Position.Z
or a.Part3.Position.X +(1.9) < Partt4.Position.X 
or a.Part3.Position.X -(1.9) > Partt4.Position.X 
or a.Part3.Position.Y +(1.9) < Partt4.Position.Y 
or a.Part3.Position.Y -(1.9) > Partt4.Position.Y 
then
if a.Part3.Position.Z + 2.5 < Partt5.Position.Z
or a.Part3.Position.Z > Partt5.Position.Z
or a.Part3.Position.X +(1.9) < Partt5.Position.X 
or a.Part3.Position.X -(1.9) > Partt5.Position.X 
or a.Part3.Position.Y +(1.9) < Partt5.Position.Y 
or a.Part3.Position.Y -(1.9) > Partt5.Position.Y 
then
if a.Part3.Position.Z + 2.5 < Partt6.Position.Z
or a.Part3.Position.Z > Partt6.Position.Z
or a.Part3.Position.X +(1.9) < Partt6.Position.X 
or a.Part3.Position.X -(1.9) > Partt6.Position.X 
or a.Part3.Position.Y +(1.9) < Partt6.Position.Y 
or a.Part3.Position.Y -(1.9) > Partt6.Position.Y 
then
if a.Part3.Position.Z + 2.5 < Partt7.Position.Z
or a.Part3.Position.Z > Partt7.Position.Z
or a.Part3.Position.X +(1.9) < Partt7.Position.X 
or a.Part3.Position.X -(1.9) > Partt7.Position.X 
or a.Part3.Position.Y +(1.9) < Partt7.Position.Y 
or a.Part3.Position.Y -(1.9) > Partt7.Position.Y 
then
if a.Part3.Position.Z + 2.5 < Partt8.Position.Z
or a.Part3.Position.Z > Partt8.Position.Z
or a.Part3.Position.X +(1.9) < Partt8.Position.X 
or a.Part3.Position.X -(1.9) > Partt8.Position.X 
or a.Part3.Position.Y +(1.9) < Partt8.Position.Y 
or a.Part3.Position.Y -(1.9) > Partt8.Position.Y 
then
zpoPart3 = 1
else zpoPart3 = 0 
end
else zpoPart3 = 0
end
else zpoPart3 = 0
end
else zpoPart3 = 0
end
else zpoPart3 = 0
end
else zpoPart3 = 0
end
else zpoPart3 = 0
end

if a.Part3.Position.Z - 2.5 > Partt1.Position.Z -- P1 -Z Positions Library Reference
or a.Part3.Position.Z < Partt1.Position.Z
or a.Part3.Position.X +(1.9) < Partt1.Position.X 
or a.Part3.Position.X -(1.9) > Partt1.Position.X 
or a.Part3.Position.Y +(1.9) < Partt1.Position.Y 
or a.Part3.Position.Y -(1.9) > Partt1.Position.Y 
then
if a.Part3.Position.Z - 2.5 > Partt2.Position.Z
or a.Part3.Position.Z < Partt2.Position.Z
or a.Part3.Position.X +(1.9) < Partt2.Position.X 
or a.Part3.Position.X -(1.9) > Partt2.Position.X 
or a.Part3.Position.Y +(1.9) < Partt2.Position.Y 
or a.Part3.Position.Y -(1.9) > Partt2.Position.Y 
then
if a.Part3.Position.Z - 2.5 > Partt4.Position.Z
or a.Part3.Position.Z < Partt4.Position.Z
or a.Part3.Position.X +(1.9) < Partt4.Position.X 
or a.Part3.Position.X -(1.9) > Partt4.Position.X 
or a.Part3.Position.Y +(1.9) < Partt4.Position.Y 
or a.Part3.Position.Y -(1.9) > Partt4.Position.Y 
then
if a.Part3.Position.Z - 2.5 > Partt5.Position.Z
or a.Part3.Position.Z < Partt5.Position.Z
or a.Part3.Position.X +(1.9) < Partt5.Position.X 
or a.Part3.Position.X -(1.9) > Partt5.Position.X 
or a.Part3.Position.Y +(1.9) < Partt5.Position.Y 
or a.Part3.Position.Y -(1.9) > Partt5.Position.Y 
then
if a.Part3.Position.Z - 2.5 > Partt6.Position.Z
or a.Part3.Position.Z < Partt6.Position.Z
or a.Part3.Position.X +(1.9) < Partt6.Position.X 
or a.Part3.Position.X -(1.9) > Partt6.Position.X 
or a.Part3.Position.Y +(1.9) < Partt6.Position.Y 
or a.Part3.Position.Y -(1.9) > Partt6.Position.Y 
then
if a.Part3.Position.Z - 2.5 > Partt7.Position.Z
or a.Part3.Position.Z < Partt7.Position.Z
or a.Part3.Position.X +(1.9) < Partt7.Position.X 
or a.Part3.Position.X -(1.9) > Partt7.Position.X 
or a.Part3.Position.Y +(1.9) < Partt7.Position.Y 
or a.Part3.Position.Y -(1.9) > Partt7.Position.Y 
then
if a.Part3.Position.Z - 2.5 > Partt8.Position.Z
or a.Part3.Position.Z < Partt8.Position.Z
or a.Part3.Position.X +(1.9) < Partt8.Position.X 
or a.Part3.Position.X -(1.9) > Partt8.Position.X 
or a.Part3.Position.Y +(1.9) < Partt8.Position.Y 
or a.Part3.Position.Y -(1.9) > Partt8.Position.Y 
then
znePart3 = 1
else znePart3 = 0 
end
else znePart3 = 0
end
else znePart3 = 0
end
else znePart3 = 0
end
else znePart3 = 0
end
else znePart3 = 0
end
else znePart3 = 0
end

PriPart3 = 1 

if PriPart3 == 1
then	
if ypoPart3 == 1
then
for i=1, 10 do
a.Part3.CFrame = a.Part3.CFrame +(Vector3.new(0,.1,0))
wait(.01)
end
else PriPart3 = (PriPart3+1)
end
else end


if PriPart3 == 2
then	
if xpoPart3 == 1
then
for i=1, 10 do
a.Part3.CFrame = a.Part3.CFrame +(Vector3.new(.1,0,0))
wait(.01)
end
else PriPart3 = (PriPart3+1)
end
else end



if PriPart3 == 3
then	
if zpoPart3 == 1
then
for i=1, 10 do
a.Part3.CFrame = a.Part3.CFrame +(Vector3.new(0,0,.1))
wait(.01)
end
else PriPart3 = (PriPart3+1)
end
else end


if PriPart3 == 4
then	
if znePart3 == 1
then
for i=1, 10 do
a.Part3.CFrame = a.Part3.CFrame +(Vector3.new(0,0,-.1))
wait(.01)
end
else PriPart3 = (PriPart3+1)
end
else end

if PriPart3 == 5
then	
if xnePart3 == 1
then
for i=1, 10 do
a.Part3.CFrame = a.Part3.CFrame +(Vector3.new(-.1,0,0))
wait(.01)
end
else PriPart3 = (PriPart3+1)
end
else end
-- (PriPart3)

for i=1, 10 do
a.Part3.CFrame = a.Part3.CFrame * CFrame.fromEulerAnglesXYZ(0,math.pi/10,0)
wait(.01)
end
TMPart3 = (TMPart3+1)
until 
math.abs(a.Part3.Position.Y - cPart3.Position.Y) > 5
or TMPart3 == 7
else end
else end
------------------------------------------------------------------------------

if sPart3 == 3
and RPart3 == 3 --Checking +X Reconfiguration
then
if  XSPart3 == a.Part3.Position.X
and YSPart3 == a.Part3.Position.Y
and ZSPart3 == a.Part3.Position.Z
then
-- "Reconfiguring"
RPart3 = (RPart3+1)
repeat
if a.Part3.Position.X + 2.5 < Partt1.Position.X -- P1 +X Positions Library Reference
or a.Part3.Position.X > Partt1.Position.X
or a.Part3.Position.Y +(1.9) < Partt1.Position.Y 
or a.Part3.Position.Y -(1.9) > Partt1.Position.Y 
or a.Part3.Position.Z +(1.9) < Partt1.Position.Z 
or a.Part3.Position.Z -(1.9) > Partt1.Position.Z 
then
if a.Part3.Position.X + 2.5 < Partt2.Position.X
or a.Part3.Position.X > Partt2.Position.X
or a.Part3.Position.Y +(1.9) < Partt2.Position.Y 
or a.Part3.Position.Y -(1.9) > Partt2.Position.Y 
or a.Part3.Position.Z +(1.9) < Partt2.Position.Z 
or a.Part3.Position.Z -(1.9) > Partt2.Position.Z 
then
if a.Part3.Position.X + 2.5 < Partt4.Position.X
or a.Part3.Position.X > Partt4.Position.X
or a.Part3.Position.Y +(1.9) < Partt4.Position.Y 
or a.Part3.Position.Y -(1.9) > Partt4.Position.Y 
or a.Part3.Position.Z +(1.9) < Partt4.Position.Z 
or a.Part3.Position.Z -(1.9) > Partt4.Position.Z 
then
if a.Part3.Position.X + 2.5 < Partt5.Position.X
or a.Part3.Position.X > Partt5.Position.X
or a.Part3.Position.Y +(1.9) < Partt5.Position.Y 
or a.Part3.Position.Y -(1.9) > Partt5.Position.Y 
or a.Part3.Position.Z +(1.9) < Partt5.Position.Z 
or a.Part3.Position.Z -(1.9) > Partt5.Position.Z 
then
if a.Part3.Position.X + 2.5 < Partt6.Position.X
or a.Part3.Position.X > Partt6.Position.X
or a.Part3.Position.Y +(1.9) < Partt6.Position.Y 
or a.Part3.Position.Y -(1.9) > Partt6.Position.Y 
or a.Part3.Position.Z +(1.9) < Partt6.Position.Z 
or a.Part3.Position.Z -(1.9) > Partt6.Position.Z 
then
if a.Part3.Position.X + 2.5 < Partt7.Position.X
or a.Part3.Position.X > Partt7.Position.X
or a.Part3.Position.Y +(1.9) < Partt7.Position.Y 
or a.Part3.Position.Y -(1.9) > Partt7.Position.Y 
or a.Part3.Position.Z +(1.9) < Partt7.Position.Z 
or a.Part3.Position.Z -(1.9) > Partt7.Position.Z 
then
if a.Part3.Position.X + 2.5 < Partt8.Position.X
or a.Part3.Position.X > Partt8.Position.X
or a.Part3.Position.Y +(1.9) < Partt8.Position.Y 
or a.Part3.Position.Y -(1.9) > Partt8.Position.Y 
or a.Part3.Position.Z +(1.9) < Partt8.Position.Z 
or a.Part3.Position.Z -(1.9) > Partt8.Position.Z 
then
xpoPart3 = 1
else xpoPart3 = 0 
end
else xpoPart3 = 0
end
else xpoPart3 = 0
end
else xpoPart3 = 0
end
else xpoPart3 = 0
end
else xpoPart3 = 0
end
else xpoPart3 = 0
end

if a.Part3.Position.X - 2.5 > Partt1.Position.X -- P1 -X Positions Library Reference
or a.Part3.Position.X < Partt1.Position.X
or a.Part3.Position.Y +(1.9) < Partt1.Position.Y 
or a.Part3.Position.Y -(1.9) > Partt1.Position.Y 
or a.Part3.Position.Z +(1.9) < Partt1.Position.Z 
or a.Part3.Position.Z -(1.9) > Partt1.Position.Z 
then
if a.Part3.Position.X - 2.5 > Partt2.Position.X
or a.Part3.Position.X < Partt2.Position.X
or a.Part3.Position.Y +(1.9) < Partt2.Position.Y 
or a.Part3.Position.Y -(1.9) > Partt2.Position.Y 
or a.Part3.Position.Z +(1.9) < Partt2.Position.Z 
or a.Part3.Position.Z -(1.9) > Partt2.Position.Z 
then
if a.Part3.Position.X - 2.5 > Partt4.Position.X
or a.Part3.Position.X < Partt4.Position.X
or a.Part3.Position.Y +(1.9) < Partt4.Position.Y 
or a.Part3.Position.Y -(1.9) > Partt4.Position.Y 
or a.Part3.Position.Z +(1.9) < Partt4.Position.Z 
or a.Part3.Position.Z -(1.9) > Partt4.Position.Z 
then
if a.Part3.Position.X - 2.5 > Partt5.Position.X
or a.Part3.Position.X < Partt5.Position.X
or a.Part3.Position.Y +(1.9) < Partt5.Position.Y 
or a.Part3.Position.Y -(1.9) > Partt5.Position.Y 
or a.Part3.Position.Z +(1.9) < Partt5.Position.Z 
or a.Part3.Position.Z -(1.9) > Partt5.Position.Z 
then
if a.Part3.Position.X - 2.5 > Partt6.Position.X
or a.Part3.Position.X < Partt6.Position.X
or a.Part3.Position.Y +(1.9) < Partt6.Position.Y 
or a.Part3.Position.Y -(1.9) > Partt6.Position.Y 
or a.Part3.Position.Z +(1.9) < Partt6.Position.Z 
or a.Part3.Position.Z -(1.9) > Partt6.Position.Z 
then
if a.Part3.Position.X - 2.5 > Partt7.Position.X
or a.Part3.Position.X < Partt7.Position.X
or a.Part3.Position.Y +(1.9) < Partt7.Position.Y 
or a.Part3.Position.Y -(1.9) > Partt7.Position.Y 
or a.Part3.Position.Z +(1.9) < Partt7.Position.Z 
or a.Part3.Position.Z -(1.9) > Partt7.Position.Z 
then
if a.Part3.Position.X - 2.5 > Partt8.Position.X
or a.Part3.Position.X < Partt8.Position.X
or a.Part3.Position.Y +(1.9) < Partt8.Position.Y 
or a.Part3.Position.Y -(1.9) > Partt8.Position.Y 
or a.Part3.Position.Z +(1.9) < Partt8.Position.Z 
or a.Part3.Position.Z -(1.9) > Partt8.Position.Z 
then
xnePart3 = 1
else xnePart3 = 0 
end
else xnePart3 = 0
end
else xnePart3 = 0
end
else xnePart3 = 0
end
else xnePart3 = 0
end
else xnePart3 = 0
end
else xnePart3 = 0
end

if a.Part3.Position.Y + 2.5 < Partt1.Position.Y -- P1 +Y Positions Library Reference
or a.Part3.Position.Y > Partt1.Position.Y
or a.Part3.Position.X +(1.9) < Partt1.Position.X 
or a.Part3.Position.X -(1.9) > Partt1.Position.X 
or a.Part3.Position.Z +(1.9) < Partt1.Position.Z 
or a.Part3.Position.Z -(1.9) > Partt1.Position.Z 
then
if a.Part3.Position.Y + 2.5 < Partt2.Position.Y
or a.Part3.Position.Y > Partt2.Position.Y
or a.Part3.Position.X +(1.9) < Partt2.Position.X 
or a.Part3.Position.X -(1.9) > Partt2.Position.X 
or a.Part3.Position.Z +(1.9) < Partt2.Position.Z 
or a.Part3.Position.Z -(1.9) > Partt2.Position.Z 
then
if a.Part3.Position.Y + 2.5 < Partt4.Position.Y
or a.Part3.Position.Y > Partt4.Position.Y
or a.Part3.Position.X +(1.9) < Partt4.Position.X 
or a.Part3.Position.X -(1.9) > Partt4.Position.X 
or a.Part3.Position.Z +(1.9) < Partt4.Position.Z 
or a.Part3.Position.Z -(1.9) > Partt4.Position.Z 
then
if a.Part3.Position.Y + 2.5 < Partt5.Position.Y
or a.Part3.Position.Y > Partt5.Position.Y
or a.Part3.Position.X +(1.9) < Partt5.Position.X 
or a.Part3.Position.X -(1.9) > Partt5.Position.X 
or a.Part3.Position.Z +(1.9) < Partt5.Position.Z 
or a.Part3.Position.Z -(1.9) > Partt5.Position.Z 
then
if a.Part3.Position.Y + 2.5 < Partt6.Position.Y
or a.Part3.Position.Y > Partt6.Position.Y
or a.Part3.Position.X +(1.9) < Partt6.Position.X 
or a.Part3.Position.X -(1.9) > Partt6.Position.X 
or a.Part3.Position.Z +(1.9) < Partt6.Position.Z 
or a.Part3.Position.Z -(1.9) > Partt6.Position.Z 
then
if a.Part3.Position.Y + 2.5 < Partt7.Position.Y
or a.Part3.Position.Y > Partt7.Position.Y
or a.Part3.Position.X +(1.9) < Partt7.Position.X 
or a.Part3.Position.X -(1.9) > Partt7.Position.X 
or a.Part3.Position.Z +(1.9) < Partt7.Position.Z 
or a.Part3.Position.Z -(1.9) > Partt7.Position.Z 
then
if a.Part3.Position.Y + 2.5 < Partt8.Position.Y
or a.Part3.Position.Y > Partt8.Position.Y
or a.Part3.Position.X +(1.9) < Partt8.Position.X 
or a.Part3.Position.X -(1.9) > Partt8.Position.X 
or a.Part3.Position.Z +(1.9) < Partt8.Position.Z 
or a.Part3.Position.Z -(1.9) > Partt8.Position.Z 
then
ypoPart3 = 1
else ypoPart3 = 0 
end
else ypoPart3 = 0
end
else ypoPart3 = 0
end
else ypoPart3 = 0
end
else ypoPart3 = 0
end
else ypoPart3 = 0
end
else ypoPart3 = 0
end

if a.Part3.Position.Y - 2.5 > Partt1.Position.Y -- P1 -Y Positions Library Reference
or a.Part3.Position.Y < Partt1.Position.Y
or a.Part3.Position.X +(1.9) < Partt1.Position.X 
or a.Part3.Position.X -(1.9) > Partt1.Position.X 
or a.Part3.Position.Z +(1.9) < Partt1.Position.Z 
or a.Part3.Position.Z -(1.9) > Partt1.Position.Z 
then
if a.Part3.Position.Y - 2.5 > Partt2.Position.Y
or a.Part3.Position.Y < Partt2.Position.Y
or a.Part3.Position.X +(1.9) < Partt2.Position.X 
or a.Part3.Position.X -(1.9) > Partt2.Position.X 
or a.Part3.Position.Z +(1.9) < Partt2.Position.Z 
or a.Part3.Position.Z -(1.9) > Partt2.Position.Z 
then
if a.Part3.Position.Y - 2.5 > Partt4.Position.Y
or a.Part3.Position.Y < Partt4.Position.Y
or a.Part3.Position.X +(1.9) < Partt4.Position.X 
or a.Part3.Position.X -(1.9) > Partt4.Position.X 
or a.Part3.Position.Z +(1.9) < Partt4.Position.Z 
or a.Part3.Position.Z -(1.9) > Partt4.Position.Z 
then
if a.Part3.Position.Y - 2.5 > Partt5.Position.Y
or a.Part3.Position.Y < Partt5.Position.Y
or a.Part3.Position.X +(1.9) < Partt5.Position.X 
or a.Part3.Position.X -(1.9) > Partt5.Position.X 
or a.Part3.Position.Z +(1.9) < Partt5.Position.Z 
or a.Part3.Position.Z -(1.9) > Partt5.Position.Z 
then
if a.Part3.Position.Y - 2.5 > Partt6.Position.Y
or a.Part3.Position.Y < Partt6.Position.Y
or a.Part3.Position.X +(1.9) < Partt6.Position.X 
or a.Part3.Position.X -(1.9) > Partt6.Position.X 
or a.Part3.Position.Z +(1.9) < Partt6.Position.Z 
or a.Part3.Position.Z -(1.9) > Partt6.Position.Z 
then
if a.Part3.Position.Y - 2.5 > Partt7.Position.Y
or a.Part3.Position.Y < Partt7.Position.Y
or a.Part3.Position.X +(1.9) < Partt7.Position.X 
or a.Part3.Position.X -(1.9) > Partt7.Position.X 
or a.Part3.Position.Z +(1.9) < Partt7.Position.Z 
or a.Part3.Position.Z -(1.9) > Partt7.Position.Z 
then
if a.Part3.Position.Y - 2.5 > Partt8.Position.Y
or a.Part3.Position.Y < Partt8.Position.Y
or a.Part3.Position.X +(1.9) < Partt8.Position.X 
or a.Part3.Position.X -(1.9) > Partt8.Position.X 
or a.Part3.Position.Z +(1.9) < Partt8.Position.Z 
or a.Part3.Position.Z -(1.9) > Partt8.Position.Z 
then
ynePart3 = 1
else ynePart3 = 0 
end
else ynePart3 = 0
end
else ynePart3 = 0
end
else ynePart3 = 0
end
else ynePart3 = 0
end
else ynePart3 = 0
end
else ynePart3 = 0
end

if a.Part3.Position.Z + 2.5 < Partt1.Position.Z -- P1 +Z Positions Library Reference
or a.Part3.Position.Z > Partt1.Position.Z
or a.Part3.Position.X +(1.9) < Partt1.Position.X 
or a.Part3.Position.X -(1.9) > Partt1.Position.X 
or a.Part3.Position.Y +(1.9) < Partt1.Position.Y 
or a.Part3.Position.Y -(1.9) > Partt1.Position.Y 
then
if a.Part3.Position.Z + 2.5 < Partt2.Position.Z
or a.Part3.Position.Z > Partt2.Position.Z
or a.Part3.Position.X +(1.9) < Partt2.Position.X 
or a.Part3.Position.X -(1.9) > Partt2.Position.X 
or a.Part3.Position.Y +(1.9) < Partt2.Position.Y 
or a.Part3.Position.Y -(1.9) > Partt2.Position.Y 
then
if a.Part3.Position.Z + 2.5 < Partt4.Position.Z
or a.Part3.Position.Z > Partt4.Position.Z
or a.Part3.Position.X +(1.9) < Partt4.Position.X 
or a.Part3.Position.X -(1.9) > Partt4.Position.X 
or a.Part3.Position.Y +(1.9) < Partt4.Position.Y 
or a.Part3.Position.Y -(1.9) > Partt4.Position.Y 
then
if a.Part3.Position.Z + 2.5 < Partt5.Position.Z
or a.Part3.Position.Z > Partt5.Position.Z
or a.Part3.Position.X +(1.9) < Partt5.Position.X 
or a.Part3.Position.X -(1.9) > Partt5.Position.X 
or a.Part3.Position.Y +(1.9) < Partt5.Position.Y 
or a.Part3.Position.Y -(1.9) > Partt5.Position.Y 
then
if a.Part3.Position.Z + 2.5 < Partt6.Position.Z
or a.Part3.Position.Z > Partt6.Position.Z
or a.Part3.Position.X +(1.9) < Partt6.Position.X 
or a.Part3.Position.X -(1.9) > Partt6.Position.X 
or a.Part3.Position.Y +(1.9) < Partt6.Position.Y 
or a.Part3.Position.Y -(1.9) > Partt6.Position.Y 
then
if a.Part3.Position.Z + 2.5 < Partt7.Position.Z
or a.Part3.Position.Z > Partt7.Position.Z
or a.Part3.Position.X +(1.9) < Partt7.Position.X 
or a.Part3.Position.X -(1.9) > Partt7.Position.X 
or a.Part3.Position.Y +(1.9) < Partt7.Position.Y 
or a.Part3.Position.Y -(1.9) > Partt7.Position.Y 
then
if a.Part3.Position.Z + 2.5 < Partt8.Position.Z
or a.Part3.Position.Z > Partt8.Position.Z
or a.Part3.Position.X +(1.9) < Partt8.Position.X 
or a.Part3.Position.X -(1.9) > Partt8.Position.X 
or a.Part3.Position.Y +(1.9) < Partt8.Position.Y 
or a.Part3.Position.Y -(1.9) > Partt8.Position.Y 
then
zpoPart3 = 1
else zpoPart3 = 0 
end
else zpoPart3 = 0
end
else zpoPart3 = 0
end
else zpoPart3 = 0
end
else zpoPart3 = 0
end
else zpoPart3 = 0
end
else zpoPart3 = 0
end

if a.Part3.Position.Z - 2.5 > Partt1.Position.Z -- P1 -Z Positions Library Reference
or a.Part3.Position.Z < Partt1.Position.Z
or a.Part3.Position.X +(1.9) < Partt1.Position.X 
or a.Part3.Position.X -(1.9) > Partt1.Position.X 
or a.Part3.Position.Y +(1.9) < Partt1.Position.Y 
or a.Part3.Position.Y -(1.9) > Partt1.Position.Y 
then
if a.Part3.Position.Z - 2.5 > Partt2.Position.Z
or a.Part3.Position.Z < Partt2.Position.Z
or a.Part3.Position.X +(1.9) < Partt2.Position.X 
or a.Part3.Position.X -(1.9) > Partt2.Position.X 
or a.Part3.Position.Y +(1.9) < Partt2.Position.Y 
or a.Part3.Position.Y -(1.9) > Partt2.Position.Y 
then
if a.Part3.Position.Z - 2.5 > Partt4.Position.Z
or a.Part3.Position.Z < Partt4.Position.Z
or a.Part3.Position.X +(1.9) < Partt4.Position.X 
or a.Part3.Position.X -(1.9) > Partt4.Position.X 
or a.Part3.Position.Y +(1.9) < Partt4.Position.Y 
or a.Part3.Position.Y -(1.9) > Partt4.Position.Y 
then
if a.Part3.Position.Z - 2.5 > Partt5.Position.Z
or a.Part3.Position.Z < Partt5.Position.Z
or a.Part3.Position.X +(1.9) < Partt5.Position.X 
or a.Part3.Position.X -(1.9) > Partt5.Position.X 
or a.Part3.Position.Y +(1.9) < Partt5.Position.Y 
or a.Part3.Position.Y -(1.9) > Partt5.Position.Y 
then
if a.Part3.Position.Z - 2.5 > Partt6.Position.Z
or a.Part3.Position.Z < Partt6.Position.Z
or a.Part3.Position.X +(1.9) < Partt6.Position.X 
or a.Part3.Position.X -(1.9) > Partt6.Position.X 
or a.Part3.Position.Y +(1.9) < Partt6.Position.Y 
or a.Part3.Position.Y -(1.9) > Partt6.Position.Y 
then
if a.Part3.Position.Z - 2.5 > Partt7.Position.Z
or a.Part3.Position.Z < Partt7.Position.Z
or a.Part3.Position.X +(1.9) < Partt7.Position.X 
or a.Part3.Position.X -(1.9) > Partt7.Position.X 
or a.Part3.Position.Y +(1.9) < Partt7.Position.Y 
or a.Part3.Position.Y -(1.9) > Partt7.Position.Y 
then
if a.Part3.Position.Z - 2.5 > Partt8.Position.Z
or a.Part3.Position.Z < Partt8.Position.Z
or a.Part3.Position.X +(1.9) < Partt8.Position.X 
or a.Part3.Position.X -(1.9) > Partt8.Position.X 
or a.Part3.Position.Y +(1.9) < Partt8.Position.Y 
or a.Part3.Position.Y -(1.9) > Partt8.Position.Y 
then
znePart3 = 1
else znePart3 = 0 
end
else znePart3 = 0
end
else znePart3 = 0
end
else znePart3 = 0
end
else znePart3 = 0
end
else znePart3 = 0
end
else znePart3 = 0
end

PriPart3 = 1 
if PriPart3 == 1
then	
if xnePart3 == 1
then
for i=1, 10 do
a.Part3.CFrame = a.Part3.CFrame +(Vector3.new(-.1,0,0))
wait(.01)
end
else PriPart3 = (PriPart3+1)
end
else end

if PriPart3 == 2
then	
if ypoPart3 == 1
then
for i=1, 10 do
a.Part3.CFrame = a.Part3.CFrame +(Vector3.new(0,.1,0))
wait(.01)
end
else PriPart3 = (PriPart3+1)
end
else end

if PriPart3 == 3
then	
if zpoPart3 == 1
then
for i=1, 10 do
a.Part3.CFrame = a.Part3.CFrame +(Vector3.new(0,0,.1))
wait(.01)
end
else PriPart3 = (PriPart3+1)
end
else end

if PriPart3 == 4
then	
if ynePart3 == 1
then
for i=1, 10 do
a.Part3.CFrame = a.Part3.CFrame +(Vector3.new(0,-.1,0))
wait(.01)
end
else PriPart3 = (PriPart3+1)
end
else end

if PriPart3 == 5
then	
if znePart3 == 1
then
for i=1, 10 do
a.Part3.CFrame = a.Part3.CFrame +(Vector3.new(0,0,-.1))
wait(.01)
end
else PriPart3 = (PriPart3+1)
end
else end
------------------------------------------------------------------------------
-- (PriPart3)

wait(.1)
TMPart3 = (TMPart3+1)
until 
math.abs(a.Part3.Position.X - cPart3.Position.X) > 5
or TMPart3 == 7
else end
else end

if sPart3 == 3
and RPart3 == 4 --Checking +X Reconfiguration
then
if  XSPart3 == a.Part3.Position.X
and YSPart3 == a.Part3.Position.Y
and ZSPart3 == a.Part3.Position.Z
then
-- "Reconfiguring"
RPart3 = 1
repeat
if a.Part3.Position.X + 2.5 < Partt1.Position.X -- P1 +X Positions Library Reference
or a.Part3.Position.X > Partt1.Position.X
or a.Part3.Position.Y +(1.9) < Partt1.Position.Y 
or a.Part3.Position.Y -(1.9) > Partt1.Position.Y 
or a.Part3.Position.Z +(1.9) < Partt1.Position.Z 
or a.Part3.Position.Z -(1.9) > Partt1.Position.Z 
then
if a.Part3.Position.X + 2.5 < Partt2.Position.X
or a.Part3.Position.X > Partt2.Position.X
or a.Part3.Position.Y +(1.9) < Partt2.Position.Y 
or a.Part3.Position.Y -(1.9) > Partt2.Position.Y 
or a.Part3.Position.Z +(1.9) < Partt2.Position.Z 
or a.Part3.Position.Z -(1.9) > Partt2.Position.Z 
then
if a.Part3.Position.X + 2.5 < Partt4.Position.X
or a.Part3.Position.X > Partt4.Position.X
or a.Part3.Position.Y +(1.9) < Partt4.Position.Y 
or a.Part3.Position.Y -(1.9) > Partt4.Position.Y 
or a.Part3.Position.Z +(1.9) < Partt4.Position.Z 
or a.Part3.Position.Z -(1.9) > Partt4.Position.Z 
then
if a.Part3.Position.X + 2.5 < Partt5.Position.X
or a.Part3.Position.X > Partt5.Position.X
or a.Part3.Position.Y +(1.9) < Partt5.Position.Y 
or a.Part3.Position.Y -(1.9) > Partt5.Position.Y 
or a.Part3.Position.Z +(1.9) < Partt5.Position.Z 
or a.Part3.Position.Z -(1.9) > Partt5.Position.Z 
then
if a.Part3.Position.X + 2.5 < Partt6.Position.X
or a.Part3.Position.X > Partt6.Position.X
or a.Part3.Position.Y +(1.9) < Partt6.Position.Y 
or a.Part3.Position.Y -(1.9) > Partt6.Position.Y 
or a.Part3.Position.Z +(1.9) < Partt6.Position.Z 
or a.Part3.Position.Z -(1.9) > Partt6.Position.Z 
then
if a.Part3.Position.X + 2.5 < Partt7.Position.X
or a.Part3.Position.X > Partt7.Position.X
or a.Part3.Position.Y +(1.9) < Partt7.Position.Y 
or a.Part3.Position.Y -(1.9) > Partt7.Position.Y 
or a.Part3.Position.Z +(1.9) < Partt7.Position.Z 
or a.Part3.Position.Z -(1.9) > Partt7.Position.Z 
then
if a.Part3.Position.X + 2.5 < Partt8.Position.X
or a.Part3.Position.X > Partt8.Position.X
or a.Part3.Position.Y +(1.9) < Partt8.Position.Y 
or a.Part3.Position.Y -(1.9) > Partt8.Position.Y 
or a.Part3.Position.Z +(1.9) < Partt8.Position.Z 
or a.Part3.Position.Z -(1.9) > Partt8.Position.Z 
then
xpoPart3 = 1
else xpoPart3 = 0 
end
else xpoPart3 = 0
end
else xpoPart3 = 0
end
else xpoPart3 = 0
end
else xpoPart3 = 0
end
else xpoPart3 = 0
end
else xpoPart3 = 0
end

if a.Part3.Position.X - 2.5 > Partt1.Position.X -- P1 -X Positions Library Reference
or a.Part3.Position.X < Partt1.Position.X
or a.Part3.Position.Y +(1.9) < Partt1.Position.Y 
or a.Part3.Position.Y -(1.9) > Partt1.Position.Y 
or a.Part3.Position.Z +(1.9) < Partt1.Position.Z 
or a.Part3.Position.Z -(1.9) > Partt1.Position.Z 
then
if a.Part3.Position.X - 2.5 > Partt2.Position.X
or a.Part3.Position.X < Partt2.Position.X
or a.Part3.Position.Y +(1.9) < Partt2.Position.Y 
or a.Part3.Position.Y -(1.9) > Partt2.Position.Y 
or a.Part3.Position.Z +(1.9) < Partt2.Position.Z 
or a.Part3.Position.Z -(1.9) > Partt2.Position.Z 
then
if a.Part3.Position.X - 2.5 > Partt4.Position.X
or a.Part3.Position.X < Partt4.Position.X
or a.Part3.Position.Y +(1.9) < Partt4.Position.Y 
or a.Part3.Position.Y -(1.9) > Partt4.Position.Y 
or a.Part3.Position.Z +(1.9) < Partt4.Position.Z 
or a.Part3.Position.Z -(1.9) > Partt4.Position.Z 
then
if a.Part3.Position.X - 2.5 > Partt5.Position.X
or a.Part3.Position.X < Partt5.Position.X
or a.Part3.Position.Y +(1.9) < Partt5.Position.Y 
or a.Part3.Position.Y -(1.9) > Partt5.Position.Y 
or a.Part3.Position.Z +(1.9) < Partt5.Position.Z 
or a.Part3.Position.Z -(1.9) > Partt5.Position.Z 
then
if a.Part3.Position.X - 2.5 > Partt6.Position.X
or a.Part3.Position.X < Partt6.Position.X
or a.Part3.Position.Y +(1.9) < Partt6.Position.Y 
or a.Part3.Position.Y -(1.9) > Partt6.Position.Y 
or a.Part3.Position.Z +(1.9) < Partt6.Position.Z 
or a.Part3.Position.Z -(1.9) > Partt6.Position.Z 
then
if a.Part3.Position.X - 2.5 > Partt7.Position.X
or a.Part3.Position.X < Partt7.Position.X
or a.Part3.Position.Y +(1.9) < Partt7.Position.Y 
or a.Part3.Position.Y -(1.9) > Partt7.Position.Y 
or a.Part3.Position.Z +(1.9) < Partt7.Position.Z 
or a.Part3.Position.Z -(1.9) > Partt7.Position.Z 
then
if a.Part3.Position.X - 2.5 > Partt8.Position.X
or a.Part3.Position.X < Partt8.Position.X
or a.Part3.Position.Y +(1.9) < Partt8.Position.Y 
or a.Part3.Position.Y -(1.9) > Partt8.Position.Y 
or a.Part3.Position.Z +(1.9) < Partt8.Position.Z 
or a.Part3.Position.Z -(1.9) > Partt8.Position.Z 
then
xnePart3 = 1
else xnePart3 = 0 
end
else xnePart3 = 0
end
else xnePart3 = 0
end
else xnePart3 = 0
end
else xnePart3 = 0
end
else xnePart3 = 0
end
else xnePart3 = 0
end

if a.Part3.Position.Y + 2.5 < Partt1.Position.Y -- P1 +Y Positions Library Reference
or a.Part3.Position.Y > Partt1.Position.Y
or a.Part3.Position.X +(1.9) < Partt1.Position.X 
or a.Part3.Position.X -(1.9) > Partt1.Position.X 
or a.Part3.Position.Z +(1.9) < Partt1.Position.Z 
or a.Part3.Position.Z -(1.9) > Partt1.Position.Z 
then
if a.Part3.Position.Y + 2.5 < Partt2.Position.Y
or a.Part3.Position.Y > Partt2.Position.Y
or a.Part3.Position.X +(1.9) < Partt2.Position.X 
or a.Part3.Position.X -(1.9) > Partt2.Position.X 
or a.Part3.Position.Z +(1.9) < Partt2.Position.Z 
or a.Part3.Position.Z -(1.9) > Partt2.Position.Z 
then
if a.Part3.Position.Y + 2.5 < Partt4.Position.Y
or a.Part3.Position.Y > Partt4.Position.Y
or a.Part3.Position.X +(1.9) < Partt4.Position.X 
or a.Part3.Position.X -(1.9) > Partt4.Position.X 
or a.Part3.Position.Z +(1.9) < Partt4.Position.Z 
or a.Part3.Position.Z -(1.9) > Partt4.Position.Z 
then
if a.Part3.Position.Y + 2.5 < Partt5.Position.Y
or a.Part3.Position.Y > Partt5.Position.Y
or a.Part3.Position.X +(1.9) < Partt5.Position.X 
or a.Part3.Position.X -(1.9) > Partt5.Position.X 
or a.Part3.Position.Z +(1.9) < Partt5.Position.Z 
or a.Part3.Position.Z -(1.9) > Partt5.Position.Z 
then
if a.Part3.Position.Y + 2.5 < Partt6.Position.Y
or a.Part3.Position.Y > Partt6.Position.Y
or a.Part3.Position.X +(1.9) < Partt6.Position.X 
or a.Part3.Position.X -(1.9) > Partt6.Position.X 
or a.Part3.Position.Z +(1.9) < Partt6.Position.Z 
or a.Part3.Position.Z -(1.9) > Partt6.Position.Z 
then
if a.Part3.Position.Y + 2.5 < Partt7.Position.Y
or a.Part3.Position.Y > Partt7.Position.Y
or a.Part3.Position.X +(1.9) < Partt7.Position.X 
or a.Part3.Position.X -(1.9) > Partt7.Position.X 
or a.Part3.Position.Z +(1.9) < Partt7.Position.Z 
or a.Part3.Position.Z -(1.9) > Partt7.Position.Z 
then
if a.Part3.Position.Y + 2.5 < Partt8.Position.Y
or a.Part3.Position.Y > Partt8.Position.Y
or a.Part3.Position.X +(1.9) < Partt8.Position.X 
or a.Part3.Position.X -(1.9) > Partt8.Position.X 
or a.Part3.Position.Z +(1.9) < Partt8.Position.Z 
or a.Part3.Position.Z -(1.9) > Partt8.Position.Z 
then
ypoPart3 = 1
else ypoPart3 = 0 
end
else ypoPart3 = 0
end
else ypoPart3 = 0
end
else ypoPart3 = 0
end
else ypoPart3 = 0
end
else ypoPart3 = 0
end
else ypoPart3 = 0
end

if a.Part3.Position.Y - 2.5 > Partt1.Position.Y -- P1 -Y Positions Library Reference
or a.Part3.Position.Y < Partt1.Position.Y
or a.Part3.Position.X +(1.9) < Partt1.Position.X 
or a.Part3.Position.X -(1.9) > Partt1.Position.X 
or a.Part3.Position.Z +(1.9) < Partt1.Position.Z 
or a.Part3.Position.Z -(1.9) > Partt1.Position.Z 
then
if a.Part3.Position.Y - 2.5 > Partt2.Position.Y
or a.Part3.Position.Y < Partt2.Position.Y
or a.Part3.Position.X +(1.9) < Partt2.Position.X 
or a.Part3.Position.X -(1.9) > Partt2.Position.X 
or a.Part3.Position.Z +(1.9) < Partt2.Position.Z 
or a.Part3.Position.Z -(1.9) > Partt2.Position.Z 
then
if a.Part3.Position.Y - 2.5 > Partt4.Position.Y
or a.Part3.Position.Y < Partt4.Position.Y
or a.Part3.Position.X +(1.9) < Partt4.Position.X 
or a.Part3.Position.X -(1.9) > Partt4.Position.X 
or a.Part3.Position.Z +(1.9) < Partt4.Position.Z 
or a.Part3.Position.Z -(1.9) > Partt4.Position.Z 
then
if a.Part3.Position.Y - 2.5 > Partt5.Position.Y
or a.Part3.Position.Y < Partt5.Position.Y
or a.Part3.Position.X +(1.9) < Partt5.Position.X 
or a.Part3.Position.X -(1.9) > Partt5.Position.X 
or a.Part3.Position.Z +(1.9) < Partt5.Position.Z 
or a.Part3.Position.Z -(1.9) > Partt5.Position.Z 
then
if a.Part3.Position.Y - 2.5 > Partt6.Position.Y
or a.Part3.Position.Y < Partt6.Position.Y
or a.Part3.Position.X +(1.9) < Partt6.Position.X 
or a.Part3.Position.X -(1.9) > Partt6.Position.X 
or a.Part3.Position.Z +(1.9) < Partt6.Position.Z 
or a.Part3.Position.Z -(1.9) > Partt6.Position.Z 
then
if a.Part3.Position.Y - 2.5 > Partt7.Position.Y
or a.Part3.Position.Y < Partt7.Position.Y
or a.Part3.Position.X +(1.9) < Partt7.Position.X 
or a.Part3.Position.X -(1.9) > Partt7.Position.X 
or a.Part3.Position.Z +(1.9) < Partt7.Position.Z 
or a.Part3.Position.Z -(1.9) > Partt7.Position.Z 
then
if a.Part3.Position.Y - 2.5 > Partt8.Position.Y
or a.Part3.Position.Y < Partt8.Position.Y
or a.Part3.Position.X +(1.9) < Partt8.Position.X 
or a.Part3.Position.X -(1.9) > Partt8.Position.X 
or a.Part3.Position.Z +(1.9) < Partt8.Position.Z 
or a.Part3.Position.Z -(1.9) > Partt8.Position.Z 
then
ynePart3 = 1
else ynePart3 = 0 
end
else ynePart3 = 0
end
else ynePart3 = 0
end
else ynePart3 = 0
end
else ynePart3 = 0
end
else ynePart3 = 0
end
else ynePart3 = 0
end

if a.Part3.Position.Z + 2.5 < Partt1.Position.Z -- P1 +Z Positions Library Reference
or a.Part3.Position.Z > Partt1.Position.Z
or a.Part3.Position.X +(1.9) < Partt1.Position.X 
or a.Part3.Position.X -(1.9) > Partt1.Position.X 
or a.Part3.Position.Y +(1.9) < Partt1.Position.Y 
or a.Part3.Position.Y -(1.9) > Partt1.Position.Y 
then
if a.Part3.Position.Z + 2.5 < Partt2.Position.Z
or a.Part3.Position.Z > Partt2.Position.Z
or a.Part3.Position.X +(1.9) < Partt2.Position.X 
or a.Part3.Position.X -(1.9) > Partt2.Position.X 
or a.Part3.Position.Y +(1.9) < Partt2.Position.Y 
or a.Part3.Position.Y -(1.9) > Partt2.Position.Y 
then
if a.Part3.Position.Z + 2.5 < Partt4.Position.Z
or a.Part3.Position.Z > Partt4.Position.Z
or a.Part3.Position.X +(1.9) < Partt4.Position.X 
or a.Part3.Position.X -(1.9) > Partt4.Position.X 
or a.Part3.Position.Y +(1.9) < Partt4.Position.Y 
or a.Part3.Position.Y -(1.9) > Partt4.Position.Y 
then
if a.Part3.Position.Z + 2.5 < Partt5.Position.Z
or a.Part3.Position.Z > Partt5.Position.Z
or a.Part3.Position.X +(1.9) < Partt5.Position.X 
or a.Part3.Position.X -(1.9) > Partt5.Position.X 
or a.Part3.Position.Y +(1.9) < Partt5.Position.Y 
or a.Part3.Position.Y -(1.9) > Partt5.Position.Y 
then
if a.Part3.Position.Z + 2.5 < Partt6.Position.Z
or a.Part3.Position.Z > Partt6.Position.Z
or a.Part3.Position.X +(1.9) < Partt6.Position.X 
or a.Part3.Position.X -(1.9) > Partt6.Position.X 
or a.Part3.Position.Y +(1.9) < Partt6.Position.Y 
or a.Part3.Position.Y -(1.9) > Partt6.Position.Y 
then
if a.Part3.Position.Z + 2.5 < Partt7.Position.Z
or a.Part3.Position.Z > Partt7.Position.Z
or a.Part3.Position.X +(1.9) < Partt7.Position.X 
or a.Part3.Position.X -(1.9) > Partt7.Position.X 
or a.Part3.Position.Y +(1.9) < Partt7.Position.Y 
or a.Part3.Position.Y -(1.9) > Partt7.Position.Y 
then
if a.Part3.Position.Z + 2.5 < Partt8.Position.Z
or a.Part3.Position.Z > Partt8.Position.Z
or a.Part3.Position.X +(1.9) < Partt8.Position.X 
or a.Part3.Position.X -(1.9) > Partt8.Position.X 
or a.Part3.Position.Y +(1.9) < Partt8.Position.Y 
or a.Part3.Position.Y -(1.9) > Partt8.Position.Y 
then
zpoPart3 = 1
else zpoPart3 = 0 
end
else zpoPart3 = 0
end
else zpoPart3 = 0
end
else zpoPart3 = 0
end
else zpoPart3 = 0
end
else zpoPart3 = 0
end
else zpoPart3 = 0
end

if a.Part3.Position.Z - 2.5 > Partt1.Position.Z -- P1 -Z Positions Library Reference
or a.Part3.Position.Z < Partt1.Position.Z
or a.Part3.Position.X +(1.9) < Partt1.Position.X 
or a.Part3.Position.X -(1.9) > Partt1.Position.X 
or a.Part3.Position.Y +(1.9) < Partt1.Position.Y 
or a.Part3.Position.Y -(1.9) > Partt1.Position.Y 
then
if a.Part3.Position.Z - 2.5 > Partt2.Position.Z
or a.Part3.Position.Z < Partt2.Position.Z
or a.Part3.Position.X +(1.9) < Partt2.Position.X 
or a.Part3.Position.X -(1.9) > Partt2.Position.X 
or a.Part3.Position.Y +(1.9) < Partt2.Position.Y 
or a.Part3.Position.Y -(1.9) > Partt2.Position.Y 
then
if a.Part3.Position.Z - 2.5 > Partt4.Position.Z
or a.Part3.Position.Z < Partt4.Position.Z
or a.Part3.Position.X +(1.9) < Partt4.Position.X 
or a.Part3.Position.X -(1.9) > Partt4.Position.X 
or a.Part3.Position.Y +(1.9) < Partt4.Position.Y 
or a.Part3.Position.Y -(1.9) > Partt4.Position.Y 
then
if a.Part3.Position.Z - 2.5 > Partt5.Position.Z
or a.Part3.Position.Z < Partt5.Position.Z
or a.Part3.Position.X +(1.9) < Partt5.Position.X 
or a.Part3.Position.X -(1.9) > Partt5.Position.X 
or a.Part3.Position.Y +(1.9) < Partt5.Position.Y 
or a.Part3.Position.Y -(1.9) > Partt5.Position.Y 
then
if a.Part3.Position.Z - 2.5 > Partt6.Position.Z
or a.Part3.Position.Z < Partt6.Position.Z
or a.Part3.Position.X +(1.9) < Partt6.Position.X 
or a.Part3.Position.X -(1.9) > Partt6.Position.X 
or a.Part3.Position.Y +(1.9) < Partt6.Position.Y 
or a.Part3.Position.Y -(1.9) > Partt6.Position.Y 
then
if a.Part3.Position.Z - 2.5 > Partt7.Position.Z
or a.Part3.Position.Z < Partt7.Position.Z
or a.Part3.Position.X +(1.9) < Partt7.Position.X 
or a.Part3.Position.X -(1.9) > Partt7.Position.X 
or a.Part3.Position.Y +(1.9) < Partt7.Position.Y 
or a.Part3.Position.Y -(1.9) > Partt7.Position.Y 
then
if a.Part3.Position.Z - 2.5 > Partt8.Position.Z
or a.Part3.Position.Z < Partt8.Position.Z
or a.Part3.Position.X +(1.9) < Partt8.Position.X 
or a.Part3.Position.X -(1.9) > Partt8.Position.X 
or a.Part3.Position.Y +(1.9) < Partt8.Position.Y 
or a.Part3.Position.Y -(1.9) > Partt8.Position.Y 
then
znePart3 = 1
else znePart3 = 0 
end
else znePart3 = 0
end
else znePart3 = 0
end
else znePart3 = 0
end
else znePart3 = 0
end
else znePart3 = 0
end
else znePart3 = 0
end

PriPart3 = 1 

if PriPart3 == 1
then	
if ynePart3 == 1
then
for i=1, 10 do
a.Part3.CFrame = a.Part3.CFrame +(Vector3.new(0,-.1,0))
wait(.01)
end
else PriPart3 = (PriPart3+1)
end
else end


if PriPart3 == 2
then	
if xpoPart3 == 1
then
for i=1, 10 do
a.Part3.CFrame = a.Part3.CFrame +(Vector3.new(.1,0,0))
wait(.01)
end
else PriPart3 = (PriPart3+1)
end
else end



if PriPart3 == 3
then	
if zpoPart3 == 1
then
for i=1, 10 do
a.Part3.CFrame = a.Part3.CFrame +(Vector3.new(0,0,.1))
wait(.01)
end
else PriPart3 = (PriPart3+1)
end
else end


if PriPart3 == 4
then	
if znePart3 == 1
then
for i=1, 10 do
a.Part3.CFrame = a.Part3.CFrame +(Vector3.new(0,0,-.1))
wait(.01)
end
else PriPart3 = (PriPart3+1)
end
else end

if PriPart3 == 5
then	
if xnePart3 == 1
then
for i=1, 10 do
a.Part3.CFrame = a.Part3.CFrame +(Vector3.new(-.1,0,0))
wait(.01)
end
else PriPart3 = (PriPart3+1)
end
else end
-- (PriPart3)

wait(.1)
TMPart3 = (TMPart3+1)
until 
math.abs(a.Part3.Position.Y - cPart3.Position.Y) > 5
or TMPart3 == 7
else end
else end
------------------------------------------------------------------------------

if sPart3==3
then sPart3 = 0
else end

wait(.1)
until
    a.Part3.Position.X < cPart3.Position.X +.7
and a.Part3.Position.X > cPart3.Position.X -.7
and a.Part3.Position.Y < cPart3.Position.Y +.7
and a.Part3.Position.Y > cPart3.Position.Y -.7
and a.Part3.Position.Z < cPart3.Position.Z +.7
and a.Part3.Position.Z > cPart3.Position.Z -.7
end --Couroutine





function core4()
wait(.15)
repeat

TMPart4 =  0

if cPart4.Position.X > a.Part4.Position.X then --Checking X Positions
XPart4 = 1
elseif cPart4.Position.X < a.Part4.Position.X then
XPart4 = -1
elseif cPart4.Position.X == a.Part4.Position.X then
XPart4 = 0
end

if cPart4.Position.Y > a.Part4.Position.Y then --Checking Y Positions
YPart4 = 1
elseif cPart4.Position.Y < a.Part4.Position.Y then
YPart4 = -1
elseif cPart4.Position.Y == a.Part4.Position.Y then
YPart4 = 0
end

if cPart4.Position.Z > a.Part4.Position.Z then --Checking Z Positions
ZPart4 = 1
elseif cPart4.Position.Z < a.Part4.Position.Z then
ZPart4 = -1
elseif cPart4.Position.Z == a.Part4.Position.Z then
ZPart4 = 0
end
-- ++-- 											
if  math.abs(a.Part4.Position.X - cPart4.Position.X) > math.abs(a.Part4.Position.Y - cPart4.Position.Y) --Priority Checks 1=X 2=Y 3=Z
and math.abs(a.Part4.Position.X - cPart4.Position.X) > math.abs(a.Part4.Position.Z - cPart4.Position.Z)
then PriPart4 = 1
else end 
if  math.abs(a.Part4.Position.Y - cPart4.Position.Y) > math.abs(a.Part4.Position.X - cPart4.Position.X) 
and math.abs(a.Part4.Position.Y - cPart4.Position.Y) > math.abs(a.Part4.Position.Z - cPart4.Position.Z)
then PriPart4 = 2
else end 
if  math.abs(a.Part4.Position.Z - cPart4.Position.Z) > math.abs(a.Part4.Position.Y - cPart4.Position.Y) 
and math.abs(a.Part4.Position.Z - cPart4.Position.Z) > math.abs(a.Part4.Position.X - cPart4.Position.X)
then PriPart4 = 3
else end 
if math.abs(a.Part4.Position.X - cPart4.Position.X) == math.abs(a.Part4.Position.Y - cPart4.Position.Y)  
or math.abs(a.Part4.Position.X - cPart4.Position.X) == math.abs(a.Part4.Position.Z - cPart4.Position.Z)
or math.abs(a.Part4.Position.Y - cPart4.Position.Y) == math.abs(a.Part4.Position.X - cPart4.Position.X)
then PriPart4 = 1
else end 

if a.Part4.Position.X + 2.5 < Partt1.Position.X -- P1 +X Positions Library Reference
or a.Part4.Position.X > Partt1.Position.X
or a.Part4.Position.Y +(1.9) < Partt1.Position.Y 
or a.Part4.Position.Y -(1.9) > Partt1.Position.Y 
or a.Part4.Position.Z +(1.9) < Partt1.Position.Z 
or a.Part4.Position.Z -(1.9) > Partt1.Position.Z 
then
if a.Part4.Position.X + 2.5 < Partt2.Position.X
or a.Part4.Position.X > Partt2.Position.X
or a.Part4.Position.Y +(1.9) < Partt2.Position.Y 
or a.Part4.Position.Y -(1.9) > Partt2.Position.Y 
or a.Part4.Position.Z +(1.9) < Partt2.Position.Z 
or a.Part4.Position.Z -(1.9) > Partt2.Position.Z 
then
if a.Part4.Position.X + 2.5 < Partt3.Position.X
or a.Part4.Position.X > Partt3.Position.X
or a.Part4.Position.Y +(1.9) < Partt3.Position.Y 
or a.Part4.Position.Y -(1.9) > Partt3.Position.Y 
or a.Part4.Position.Z +(1.9) < Partt3.Position.Z 
or a.Part4.Position.Z -(1.9) > Partt3.Position.Z 
then
if a.Part4.Position.X + 2.5 < Partt5.Position.X
or a.Part4.Position.X > Partt5.Position.X
or a.Part4.Position.Y +(1.9) < Partt5.Position.Y 
or a.Part4.Position.Y -(1.9) > Partt5.Position.Y 
or a.Part4.Position.Z +(1.9) < Partt5.Position.Z 
or a.Part4.Position.Z -(1.9) > Partt5.Position.Z 
then
if a.Part4.Position.X + 2.5 < Partt6.Position.X
or a.Part4.Position.X > Partt6.Position.X
or a.Part4.Position.Y +(1.9) < Partt6.Position.Y 
or a.Part4.Position.Y -(1.9) > Partt6.Position.Y 
or a.Part4.Position.Z +(1.9) < Partt6.Position.Z 
or a.Part4.Position.Z -(1.9) > Partt6.Position.Z 
then
if a.Part4.Position.X + 2.5 < Partt7.Position.X
or a.Part4.Position.X > Partt7.Position.X
or a.Part4.Position.Y +(1.9) < Partt7.Position.Y 
or a.Part4.Position.Y -(1.9) > Partt7.Position.Y 
or a.Part4.Position.Z +(1.9) < Partt7.Position.Z 
or a.Part4.Position.Z -(1.9) > Partt7.Position.Z 
then
if a.Part4.Position.X + 2.5 < Partt8.Position.X
or a.Part4.Position.X > Partt8.Position.X
or a.Part4.Position.Y +(1.9) < Partt8.Position.Y 
or a.Part4.Position.Y -(1.9) > Partt8.Position.Y 
or a.Part4.Position.Z +(1.9) < Partt8.Position.Z 
or a.Part4.Position.Z -(1.9) > Partt8.Position.Z 
then
xpoPart4 = 1
else xpoPart4 = 0 
end
else xpoPart4 = 0
end
else xpoPart4 = 0
end
else xpoPart4 = 0
end
else xpoPart4 = 0
end
else xpoPart4 = 0
end
else xpoPart4 = 0
end

if a.Part4.Position.X - 2.5 > Partt1.Position.X -- P1 -X Positions Library Reference
or a.Part4.Position.X < Partt1.Position.X
or a.Part4.Position.Y +(1.9) < Partt1.Position.Y 
or a.Part4.Position.Y -(1.9) > Partt1.Position.Y 
or a.Part4.Position.Z +(1.9) < Partt1.Position.Z 
or a.Part4.Position.Z -(1.9) > Partt1.Position.Z 
then
if a.Part4.Position.X - 2.5 > Partt2.Position.X
or a.Part4.Position.X < Partt2.Position.X
or a.Part4.Position.Y +(1.9) < Partt2.Position.Y 
or a.Part4.Position.Y -(1.9) > Partt2.Position.Y 
or a.Part4.Position.Z +(1.9) < Partt2.Position.Z 
or a.Part4.Position.Z -(1.9) > Partt2.Position.Z 
then
if a.Part4.Position.X - 2.5 > Partt3.Position.X
or a.Part4.Position.X < Partt3.Position.X
or a.Part4.Position.Y +(1.9) < Partt3.Position.Y 
or a.Part4.Position.Y -(1.9) > Partt3.Position.Y 
or a.Part4.Position.Z +(1.9) < Partt3.Position.Z 
or a.Part4.Position.Z -(1.9) > Partt3.Position.Z 
then
if a.Part4.Position.X - 2.5 > Partt5.Position.X
or a.Part4.Position.X < Partt5.Position.X
or a.Part4.Position.Y +(1.9) < Partt5.Position.Y 
or a.Part4.Position.Y -(1.9) > Partt5.Position.Y 
or a.Part4.Position.Z +(1.9) < Partt5.Position.Z 
or a.Part4.Position.Z -(1.9) > Partt5.Position.Z 
then
if a.Part4.Position.X - 2.5 > Partt6.Position.X
or a.Part4.Position.X < Partt6.Position.X
or a.Part4.Position.Y +(1.9) < Partt6.Position.Y 
or a.Part4.Position.Y -(1.9) > Partt6.Position.Y 
or a.Part4.Position.Z +(1.9) < Partt6.Position.Z 
or a.Part4.Position.Z -(1.9) > Partt6.Position.Z 
then
if a.Part4.Position.X - 2.5 > Partt7.Position.X
or a.Part4.Position.X < Partt7.Position.X
or a.Part4.Position.Y +(1.9) < Partt7.Position.Y 
or a.Part4.Position.Y -(1.9) > Partt7.Position.Y 
or a.Part4.Position.Z +(1.9) < Partt7.Position.Z 
or a.Part4.Position.Z -(1.9) > Partt7.Position.Z 
then
if a.Part4.Position.X - 2.5 > Partt8.Position.X
or a.Part4.Position.X < Partt8.Position.X
or a.Part4.Position.Y +(1.9) < Partt8.Position.Y 
or a.Part4.Position.Y -(1.9) > Partt8.Position.Y 
or a.Part4.Position.Z +(1.9) < Partt8.Position.Z 
or a.Part4.Position.Z -(1.9) > Partt8.Position.Z 
then
xnePart4 = 1
else xnePart4 = 0 
end
else xnePart4 = 0
end
else xnePart4 = 0
end
else xnePart4 = 0
end
else xnePart4 = 0
end
else xnePart4 = 0
end
else xnePart4 = 0
end

if a.Part4.Position.Y + 2.5 < Partt1.Position.Y -- P1 +Y Positions Library Reference
or a.Part4.Position.Y > Partt1.Position.Y
or a.Part4.Position.X +(1.9) < Partt1.Position.X 
or a.Part4.Position.X -(1.9) > Partt1.Position.X 
or a.Part4.Position.Z +(1.9) < Partt1.Position.Z 
or a.Part4.Position.Z -(1.9) > Partt1.Position.Z 
then
if a.Part4.Position.Y + 2.5 < Partt2.Position.Y
or a.Part4.Position.Y > Partt2.Position.Y
or a.Part4.Position.X +(1.9) < Partt2.Position.X 
or a.Part4.Position.X -(1.9) > Partt2.Position.X 
or a.Part4.Position.Z +(1.9) < Partt2.Position.Z 
or a.Part4.Position.Z -(1.9) > Partt2.Position.Z 
then
if a.Part4.Position.Y + 2.5 < Partt3.Position.Y
or a.Part4.Position.Y > Partt3.Position.Y
or a.Part4.Position.X +(1.9) < Partt3.Position.X 
or a.Part4.Position.X -(1.9) > Partt3.Position.X 
or a.Part4.Position.Z +(1.9) < Partt3.Position.Z 
or a.Part4.Position.Z -(1.9) > Partt3.Position.Z 
then
if a.Part4.Position.Y + 2.5 < Partt5.Position.Y
or a.Part4.Position.Y > Partt5.Position.Y
or a.Part4.Position.X +(1.9) < Partt5.Position.X 
or a.Part4.Position.X -(1.9) > Partt5.Position.X 
or a.Part4.Position.Z +(1.9) < Partt5.Position.Z 
or a.Part4.Position.Z -(1.9) > Partt5.Position.Z 
then
if a.Part4.Position.Y + 2.5 < Partt6.Position.Y
or a.Part4.Position.Y > Partt6.Position.Y
or a.Part4.Position.X +(1.9) < Partt6.Position.X 
or a.Part4.Position.X -(1.9) > Partt6.Position.X 
or a.Part4.Position.Z +(1.9) < Partt6.Position.Z 
or a.Part4.Position.Z -(1.9) > Partt6.Position.Z 
then
if a.Part4.Position.Y + 2.5 < Partt7.Position.Y
or a.Part4.Position.Y > Partt7.Position.Y
or a.Part4.Position.X +(1.9) < Partt7.Position.X 
or a.Part4.Position.X -(1.9) > Partt7.Position.X 
or a.Part4.Position.Z +(1.9) < Partt7.Position.Z 
or a.Part4.Position.Z -(1.9) > Partt7.Position.Z 
then
if a.Part4.Position.Y + 2.5 < Partt8.Position.Y
or a.Part4.Position.Y > Partt8.Position.Y
or a.Part4.Position.X +(1.9) < Partt8.Position.X 
or a.Part4.Position.X -(1.9) > Partt8.Position.X 
or a.Part4.Position.Z +(1.9) < Partt8.Position.Z 
or a.Part4.Position.Z -(1.9) > Partt8.Position.Z 
then
ypoPart4 = 1
else ypoPart4 = 0 
end
else ypoPart4 = 0
end
else ypoPart4 = 0
end
else ypoPart4 = 0
end
else ypoPart4 = 0
end
else ypoPart4 = 0
end
else ypoPart4 = 0
end

if a.Part4.Position.Y - 2.5 > Partt1.Position.Y -- P1 -Y Positions Library Reference
or a.Part4.Position.Y < Partt1.Position.Y
or a.Part4.Position.X +(1.9) < Partt1.Position.X 
or a.Part4.Position.X -(1.9) > Partt1.Position.X 
or a.Part4.Position.Z +(1.9) < Partt1.Position.Z 
or a.Part4.Position.Z -(1.9) > Partt1.Position.Z 
then
if a.Part4.Position.Y - 2.5 > Partt2.Position.Y
or a.Part4.Position.Y < Partt2.Position.Y
or a.Part4.Position.X +(1.9) < Partt2.Position.X 
or a.Part4.Position.X -(1.9) > Partt2.Position.X 
or a.Part4.Position.Z +(1.9) < Partt2.Position.Z 
or a.Part4.Position.Z -(1.9) > Partt2.Position.Z 
then
if a.Part4.Position.Y - 2.5 > Partt3.Position.Y
or a.Part4.Position.Y < Partt3.Position.Y
or a.Part4.Position.X +(1.9) < Partt3.Position.X 
or a.Part4.Position.X -(1.9) > Partt3.Position.X 
or a.Part4.Position.Z +(1.9) < Partt3.Position.Z 
or a.Part4.Position.Z -(1.9) > Partt3.Position.Z 
then
if a.Part4.Position.Y - 2.5 > Partt5.Position.Y
or a.Part4.Position.Y < Partt5.Position.Y
or a.Part4.Position.X +(1.9) < Partt5.Position.X 
or a.Part4.Position.X -(1.9) > Partt5.Position.X 
or a.Part4.Position.Z +(1.9) < Partt5.Position.Z 
or a.Part4.Position.Z -(1.9) > Partt5.Position.Z 
then
if a.Part4.Position.Y - 2.5 > Partt6.Position.Y
or a.Part4.Position.Y < Partt6.Position.Y
or a.Part4.Position.X +(1.9) < Partt6.Position.X 
or a.Part4.Position.X -(1.9) > Partt6.Position.X 
or a.Part4.Position.Z +(1.9) < Partt6.Position.Z 
or a.Part4.Position.Z -(1.9) > Partt6.Position.Z 
then
if a.Part4.Position.Y - 2.5 > Partt7.Position.Y
or a.Part4.Position.Y < Partt7.Position.Y
or a.Part4.Position.X +(1.9) < Partt7.Position.X 
or a.Part4.Position.X -(1.9) > Partt7.Position.X 
or a.Part4.Position.Z +(1.9) < Partt7.Position.Z 
or a.Part4.Position.Z -(1.9) > Partt7.Position.Z 
then
if a.Part4.Position.Y - 2.5 > Partt8.Position.Y
or a.Part4.Position.Y < Partt8.Position.Y
or a.Part4.Position.X +(1.9) < Partt8.Position.X 
or a.Part4.Position.X -(1.9) > Partt8.Position.X 
or a.Part4.Position.Z +(1.9) < Partt8.Position.Z 
or a.Part4.Position.Z -(1.9) > Partt8.Position.Z 
then
ynePart4 = 1
else ynePart4 = 0 
end
else ynePart4 = 0
end
else ynePart4 = 0
end
else ynePart4 = 0
end
else ynePart4 = 0
end
else ynePart4 = 0
end
else ynePart4 = 0
end

if a.Part4.Position.Z + 2.5 < Partt1.Position.Z -- P1 +Z Positions Library Reference
or a.Part4.Position.Z > Partt1.Position.Z
or a.Part4.Position.X +(1.9) < Partt1.Position.X 
or a.Part4.Position.X -(1.9) > Partt1.Position.X 
or a.Part4.Position.Y +(1.9) < Partt1.Position.Y 
or a.Part4.Position.Y -(1.9) > Partt1.Position.Y 
then
if a.Part4.Position.Z + 2.5 < Partt2.Position.Z
or a.Part4.Position.Z > Partt2.Position.Z
or a.Part4.Position.X +(1.9) < Partt2.Position.X 
or a.Part4.Position.X -(1.9) > Partt2.Position.X 
or a.Part4.Position.Y +(1.9) < Partt2.Position.Y 
or a.Part4.Position.Y -(1.9) > Partt2.Position.Y 
then
if a.Part4.Position.Z + 2.5 < Partt3.Position.Z
or a.Part4.Position.Z > Partt3.Position.Z
or a.Part4.Position.X +(1.9) < Partt3.Position.X 
or a.Part4.Position.X -(1.9) > Partt3.Position.X 
or a.Part4.Position.Y +(1.9) < Partt3.Position.Y 
or a.Part4.Position.Y -(1.9) > Partt3.Position.Y 
then
if a.Part4.Position.Z + 2.5 < Partt5.Position.Z
or a.Part4.Position.Z > Partt5.Position.Z
or a.Part4.Position.X +(1.9) < Partt5.Position.X 
or a.Part4.Position.X -(1.9) > Partt5.Position.X 
or a.Part4.Position.Y +(1.9) < Partt5.Position.Y 
or a.Part4.Position.Y -(1.9) > Partt5.Position.Y 
then
if a.Part4.Position.Z + 2.5 < Partt6.Position.Z
or a.Part4.Position.Z > Partt6.Position.Z
or a.Part4.Position.X +(1.9) < Partt6.Position.X 
or a.Part4.Position.X -(1.9) > Partt6.Position.X 
or a.Part4.Position.Y +(1.9) < Partt6.Position.Y 
or a.Part4.Position.Y -(1.9) > Partt6.Position.Y 
then
if a.Part4.Position.Z + 2.5 < Partt7.Position.Z
or a.Part4.Position.Z > Partt7.Position.Z
or a.Part4.Position.X +(1.9) < Partt7.Position.X 
or a.Part4.Position.X -(1.9) > Partt7.Position.X 
or a.Part4.Position.Y +(1.9) < Partt7.Position.Y 
or a.Part4.Position.Y -(1.9) > Partt7.Position.Y 
then
if a.Part4.Position.Z + 2.5 < Partt8.Position.Z
or a.Part4.Position.Z > Partt8.Position.Z
or a.Part4.Position.X +(1.9) < Partt8.Position.X 
or a.Part4.Position.X -(1.9) > Partt8.Position.X 
or a.Part4.Position.Y +(1.9) < Partt8.Position.Y 
or a.Part4.Position.Y -(1.9) > Partt8.Position.Y 
then
zpoPart4 = 1
else zpoPart4 = 0 
end
else zpoPart4 = 0
end
else zpoPart4 = 0
end
else zpoPart4 = 0
end
else zpoPart4 = 0
end
else zpoPart4 = 0
end
else zpoPart4 = 0
end

if a.Part4.Position.Z - 2.5 > Partt1.Position.Z -- P1 -Z Positions Library Reference
or a.Part4.Position.Z < Partt1.Position.Z
or a.Part4.Position.X +(1.9) < Partt1.Position.X 
or a.Part4.Position.X -(1.9) > Partt1.Position.X 
or a.Part4.Position.Y +(1.9) < Partt1.Position.Y 
or a.Part4.Position.Y -(1.9) > Partt1.Position.Y 
then
if a.Part4.Position.Z - 2.5 > Partt2.Position.Z
or a.Part4.Position.Z < Partt2.Position.Z
or a.Part4.Position.X +(1.9) < Partt2.Position.X 
or a.Part4.Position.X -(1.9) > Partt2.Position.X 
or a.Part4.Position.Y +(1.9) < Partt2.Position.Y 
or a.Part4.Position.Y -(1.9) > Partt2.Position.Y 
then
if a.Part4.Position.Z - 2.5 > Partt3.Position.Z
or a.Part4.Position.Z < Partt3.Position.Z
or a.Part4.Position.X +(1.9) < Partt3.Position.X 
or a.Part4.Position.X -(1.9) > Partt3.Position.X 
or a.Part4.Position.Y +(1.9) < Partt3.Position.Y 
or a.Part4.Position.Y -(1.9) > Partt3.Position.Y 
then
if a.Part4.Position.Z - 2.5 > Partt5.Position.Z
or a.Part4.Position.Z < Partt5.Position.Z
or a.Part4.Position.X +(1.9) < Partt5.Position.X 
or a.Part4.Position.X -(1.9) > Partt5.Position.X 
or a.Part4.Position.Y +(1.9) < Partt5.Position.Y 
or a.Part4.Position.Y -(1.9) > Partt5.Position.Y 
then
if a.Part4.Position.Z - 2.5 > Partt6.Position.Z
or a.Part4.Position.Z < Partt6.Position.Z
or a.Part4.Position.X +(1.9) < Partt6.Position.X 
or a.Part4.Position.X -(1.9) > Partt6.Position.X 
or a.Part4.Position.Y +(1.9) < Partt6.Position.Y 
or a.Part4.Position.Y -(1.9) > Partt6.Position.Y 
then
if a.Part4.Position.Z - 2.5 > Partt7.Position.Z
or a.Part4.Position.Z < Partt7.Position.Z
or a.Part4.Position.X +(1.9) < Partt7.Position.X 
or a.Part4.Position.X -(1.9) > Partt7.Position.X 
or a.Part4.Position.Y +(1.9) < Partt7.Position.Y 
or a.Part4.Position.Y -(1.9) > Partt7.Position.Y 
then
if a.Part4.Position.Z - 2.5 > Partt8.Position.Z
or a.Part4.Position.Z < Partt8.Position.Z
or a.Part4.Position.X +(1.9) < Partt8.Position.X 
or a.Part4.Position.X -(1.9) > Partt8.Position.X 
or a.Part4.Position.Y +(1.9) < Partt8.Position.Y 
or a.Part4.Position.Y -(1.9) > Partt8.Position.Y 
then
znePart4 = 1
else znePart4 = 0 
end
else znePart4 = 0
end
else znePart4 = 0
end
else znePart4 = 0
end
else znePart4 = 0
end
else znePart4 = 0
end
else znePart4 = 0
end

if PriPart4 == 1
and XPart4 == 1
then	
if xpoPart4 == 1
then
for i=1, 10 do
a.Part4.CFrame = a.Part4.CFrame +(Vector3.new(XPart4/10,0,0))
wait(.01)
end
else PriPart4 = (PriPart4+1)
end
else end

if PriPart4 == 1
and XPart4 == -1
then	
if xnePart4 == 1
then
for i=1, 10 do
a.Part4.CFrame = a.Part4.CFrame +(Vector3.new(XPart4/10,0,0))
wait(.01)
end
else PriPart4 = (PriPart4+1)
end
else end

if PriPart4 == 2
and YPart4 == 1
then	
if ypoPart4 == 1
then
for i=1, 10 do
a.Part4.CFrame = a.Part4.CFrame +(Vector3.new(0,YPart4/10,0))
wait(.01)
end
else PriPart4 = (PriPart4+1)
end
else end

if PriPart4 == 2
and YPart4 == -1
then	
if ynePart4 == 1
then
for i=1, 10 do
a.Part4.CFrame = a.Part4.CFrame +(Vector3.new(0,YPart4/10,0))
wait(.01)
end
else PriPart4 = (PriPart4+1)
end
else end

if PriPart4 == 3
and ZPart4 == 1
then	
if zpoPart4 == 1
then
for i=1, 10 do
a.Part4.CFrame = a.Part4.CFrame +(Vector3.new(0,0,ZPart4/10))
wait(.01)
end
else PriPart4 = (PriPart4+1)
end
else end

if PriPart4 == 3
and ZPart4 == -1
then	
if znePart4 == 1
then
for i=1, 10 do
a.Part4.CFrame = a.Part4.CFrame +(Vector3.new(0,0,ZPart4/10))
wait(.01)
end
else PriPart4 = (PriPart4+1)
end
else end




sPart4 =(sPart4+1) --Checking reconfiguring positions

if sPart4 == 1
then
XSPart4 = a.Part4.Position.X
YSPart4 = a.Part4.Position.Y
ZSPart4 = a.Part4.Position.Z
else end

if sPart4 == 3 --Checking if Part is Valid for Instant Fix
and XSPart4 == a.Part4.Position.X
and YSPart4 == a.Part4.Position.Y
and ZSPart4 == a.Part4.Position.Z
and a.Part4.Position.X < cPart4.Position.X +4
and a.Part4.Position.X > cPart4.Position.X -4
and a.Part4.Position.Y < cPart4.Position.Y +4
and a.Part4.Position.Y > cPart4.Position.Y -4
and a.Part4.Position.Z < cPart4.Position.Z +4
and a.Part4.Position.Z > cPart4.Position.Z -4
then
for i=1, 20 do
a.Part4.CFrame = a.Part4.CFrame +(Vector3.new((cPart4.Position.X-XSPart4)/20,(cPart4.Position.Y-YSPart4)/20,(cPart4.Position.Z-ZSPart4)/20))
wait(.01)
end
else end

if sPart4 == 3
and RPart4 == 1 --Checking +X Reconfiguration
then
if  XSPart4 == a.Part4.Position.X
and YSPart4 == a.Part4.Position.Y
and ZSPart4 == a.Part4.Position.Z
then
-- "Reconfiguring"
RPart4 = (RPart4+1)
repeat
if a.Part4.Position.X + 2.5 < Partt1.Position.X -- P1 +X Positions Library Reference
or a.Part4.Position.X > Partt1.Position.X
or a.Part4.Position.Y +(1.9) < Partt1.Position.Y 
or a.Part4.Position.Y -(1.9) > Partt1.Position.Y 
or a.Part4.Position.Z +(1.9) < Partt1.Position.Z 
or a.Part4.Position.Z -(1.9) > Partt1.Position.Z 
then
if a.Part4.Position.X + 2.5 < Partt2.Position.X
or a.Part4.Position.X > Partt2.Position.X
or a.Part4.Position.Y +(1.9) < Partt2.Position.Y 
or a.Part4.Position.Y -(1.9) > Partt2.Position.Y 
or a.Part4.Position.Z +(1.9) < Partt2.Position.Z 
or a.Part4.Position.Z -(1.9) > Partt2.Position.Z 
then
if a.Part4.Position.X + 2.5 < Partt3.Position.X
or a.Part4.Position.X > Partt3.Position.X
or a.Part4.Position.Y +(1.9) < Partt3.Position.Y 
or a.Part4.Position.Y -(1.9) > Partt3.Position.Y 
or a.Part4.Position.Z +(1.9) < Partt3.Position.Z 
or a.Part4.Position.Z -(1.9) > Partt3.Position.Z 
then
if a.Part4.Position.X + 2.5 < Partt5.Position.X
or a.Part4.Position.X > Partt5.Position.X
or a.Part4.Position.Y +(1.9) < Partt5.Position.Y 
or a.Part4.Position.Y -(1.9) > Partt5.Position.Y 
or a.Part4.Position.Z +(1.9) < Partt5.Position.Z 
or a.Part4.Position.Z -(1.9) > Partt5.Position.Z 
then
if a.Part4.Position.X + 2.5 < Partt6.Position.X
or a.Part4.Position.X > Partt6.Position.X
or a.Part4.Position.Y +(1.9) < Partt6.Position.Y 
or a.Part4.Position.Y -(1.9) > Partt6.Position.Y 
or a.Part4.Position.Z +(1.9) < Partt6.Position.Z 
or a.Part4.Position.Z -(1.9) > Partt6.Position.Z 
then
if a.Part4.Position.X + 2.5 < Partt7.Position.X
or a.Part4.Position.X > Partt7.Position.X
or a.Part4.Position.Y +(1.9) < Partt7.Position.Y 
or a.Part4.Position.Y -(1.9) > Partt7.Position.Y 
or a.Part4.Position.Z +(1.9) < Partt7.Position.Z 
or a.Part4.Position.Z -(1.9) > Partt7.Position.Z 
then
if a.Part4.Position.X + 2.5 < Partt8.Position.X
or a.Part4.Position.X > Partt8.Position.X
or a.Part4.Position.Y +(1.9) < Partt8.Position.Y 
or a.Part4.Position.Y -(1.9) > Partt8.Position.Y 
or a.Part4.Position.Z +(1.9) < Partt8.Position.Z 
or a.Part4.Position.Z -(1.9) > Partt8.Position.Z 
then
xpoPart4 = 1
else xpoPart4 = 0 
end
else xpoPart4 = 0
end
else xpoPart4 = 0
end
else xpoPart4 = 0
end
else xpoPart4 = 0
end
else xpoPart4 = 0
end
else xpoPart4 = 0
end

if a.Part4.Position.X - 2.5 > Partt1.Position.X -- P1 -X Positions Library Reference
or a.Part4.Position.X < Partt1.Position.X
or a.Part4.Position.Y +(1.9) < Partt1.Position.Y 
or a.Part4.Position.Y -(1.9) > Partt1.Position.Y 
or a.Part4.Position.Z +(1.9) < Partt1.Position.Z 
or a.Part4.Position.Z -(1.9) > Partt1.Position.Z 
then
if a.Part4.Position.X - 2.5 > Partt2.Position.X
or a.Part4.Position.X < Partt2.Position.X
or a.Part4.Position.Y +(1.9) < Partt2.Position.Y 
or a.Part4.Position.Y -(1.9) > Partt2.Position.Y 
or a.Part4.Position.Z +(1.9) < Partt2.Position.Z 
or a.Part4.Position.Z -(1.9) > Partt2.Position.Z 
then
if a.Part4.Position.X - 2.5 > Partt3.Position.X
or a.Part4.Position.X < Partt3.Position.X
or a.Part4.Position.Y +(1.9) < Partt3.Position.Y 
or a.Part4.Position.Y -(1.9) > Partt3.Position.Y 
or a.Part4.Position.Z +(1.9) < Partt3.Position.Z 
or a.Part4.Position.Z -(1.9) > Partt3.Position.Z 
then
if a.Part4.Position.X - 2.5 > Partt5.Position.X
or a.Part4.Position.X < Partt5.Position.X
or a.Part4.Position.Y +(1.9) < Partt5.Position.Y 
or a.Part4.Position.Y -(1.9) > Partt5.Position.Y 
or a.Part4.Position.Z +(1.9) < Partt5.Position.Z 
or a.Part4.Position.Z -(1.9) > Partt5.Position.Z 
then
if a.Part4.Position.X - 2.5 > Partt6.Position.X
or a.Part4.Position.X < Partt6.Position.X
or a.Part4.Position.Y +(1.9) < Partt6.Position.Y 
or a.Part4.Position.Y -(1.9) > Partt6.Position.Y 
or a.Part4.Position.Z +(1.9) < Partt6.Position.Z 
or a.Part4.Position.Z -(1.9) > Partt6.Position.Z 
then
if a.Part4.Position.X - 2.5 > Partt7.Position.X
or a.Part4.Position.X < Partt7.Position.X
or a.Part4.Position.Y +(1.9) < Partt7.Position.Y 
or a.Part4.Position.Y -(1.9) > Partt7.Position.Y 
or a.Part4.Position.Z +(1.9) < Partt7.Position.Z 
or a.Part4.Position.Z -(1.9) > Partt7.Position.Z 
then
if a.Part4.Position.X - 2.5 > Partt8.Position.X
or a.Part4.Position.X < Partt8.Position.X
or a.Part4.Position.Y +(1.9) < Partt8.Position.Y 
or a.Part4.Position.Y -(1.9) > Partt8.Position.Y 
or a.Part4.Position.Z +(1.9) < Partt8.Position.Z 
or a.Part4.Position.Z -(1.9) > Partt8.Position.Z 
then
xnePart4 = 1
else xnePart4 = 0 
end
else xnePart4 = 0
end
else xnePart4 = 0
end
else xnePart4 = 0
end
else xnePart4 = 0
end
else xnePart4 = 0
end
else xnePart4 = 0
end

if a.Part4.Position.Y + 2.5 < Partt1.Position.Y -- P1 +Y Positions Library Reference
or a.Part4.Position.Y > Partt1.Position.Y
or a.Part4.Position.X +(1.9) < Partt1.Position.X 
or a.Part4.Position.X -(1.9) > Partt1.Position.X 
or a.Part4.Position.Z +(1.9) < Partt1.Position.Z 
or a.Part4.Position.Z -(1.9) > Partt1.Position.Z 
then
if a.Part4.Position.Y + 2.5 < Partt2.Position.Y
or a.Part4.Position.Y > Partt2.Position.Y
or a.Part4.Position.X +(1.9) < Partt2.Position.X 
or a.Part4.Position.X -(1.9) > Partt2.Position.X 
or a.Part4.Position.Z +(1.9) < Partt2.Position.Z 
or a.Part4.Position.Z -(1.9) > Partt2.Position.Z 
then
if a.Part4.Position.Y + 2.5 < Partt3.Position.Y
or a.Part4.Position.Y > Partt3.Position.Y
or a.Part4.Position.X +(1.9) < Partt3.Position.X 
or a.Part4.Position.X -(1.9) > Partt3.Position.X 
or a.Part4.Position.Z +(1.9) < Partt3.Position.Z 
or a.Part4.Position.Z -(1.9) > Partt3.Position.Z 
then
if a.Part4.Position.Y + 2.5 < Partt5.Position.Y
or a.Part4.Position.Y > Partt5.Position.Y
or a.Part4.Position.X +(1.9) < Partt5.Position.X 
or a.Part4.Position.X -(1.9) > Partt5.Position.X 
or a.Part4.Position.Z +(1.9) < Partt5.Position.Z 
or a.Part4.Position.Z -(1.9) > Partt5.Position.Z 
then
if a.Part4.Position.Y + 2.5 < Partt6.Position.Y
or a.Part4.Position.Y > Partt6.Position.Y
or a.Part4.Position.X +(1.9) < Partt6.Position.X 
or a.Part4.Position.X -(1.9) > Partt6.Position.X 
or a.Part4.Position.Z +(1.9) < Partt6.Position.Z 
or a.Part4.Position.Z -(1.9) > Partt6.Position.Z 
then
if a.Part4.Position.Y + 2.5 < Partt7.Position.Y
or a.Part4.Position.Y > Partt7.Position.Y
or a.Part4.Position.X +(1.9) < Partt7.Position.X 
or a.Part4.Position.X -(1.9) > Partt7.Position.X 
or a.Part4.Position.Z +(1.9) < Partt7.Position.Z 
or a.Part4.Position.Z -(1.9) > Partt7.Position.Z 
then
if a.Part4.Position.Y + 2.5 < Partt8.Position.Y
or a.Part4.Position.Y > Partt8.Position.Y
or a.Part4.Position.X +(1.9) < Partt8.Position.X 
or a.Part4.Position.X -(1.9) > Partt8.Position.X 
or a.Part4.Position.Z +(1.9) < Partt8.Position.Z 
or a.Part4.Position.Z -(1.9) > Partt8.Position.Z 
then
ypoPart4 = 1
else ypoPart4 = 0 
end
else ypoPart4 = 0
end
else ypoPart4 = 0
end
else ypoPart4 = 0
end
else ypoPart4 = 0
end
else ypoPart4 = 0
end
else ypoPart4 = 0
end

if a.Part4.Position.Y - 2.5 > Partt1.Position.Y -- P1 -Y Positions Library Reference
or a.Part4.Position.Y < Partt1.Position.Y
or a.Part4.Position.X +(1.9) < Partt1.Position.X 
or a.Part4.Position.X -(1.9) > Partt1.Position.X 
or a.Part4.Position.Z +(1.9) < Partt1.Position.Z 
or a.Part4.Position.Z -(1.9) > Partt1.Position.Z 
then
if a.Part4.Position.Y - 2.5 > Partt2.Position.Y
or a.Part4.Position.Y < Partt2.Position.Y
or a.Part4.Position.X +(1.9) < Partt2.Position.X 
or a.Part4.Position.X -(1.9) > Partt2.Position.X 
or a.Part4.Position.Z +(1.9) < Partt2.Position.Z 
or a.Part4.Position.Z -(1.9) > Partt2.Position.Z 
then
if a.Part4.Position.Y - 2.5 > Partt3.Position.Y
or a.Part4.Position.Y < Partt3.Position.Y
or a.Part4.Position.X +(1.9) < Partt3.Position.X 
or a.Part4.Position.X -(1.9) > Partt3.Position.X 
or a.Part4.Position.Z +(1.9) < Partt3.Position.Z 
or a.Part4.Position.Z -(1.9) > Partt3.Position.Z 
then
if a.Part4.Position.Y - 2.5 > Partt5.Position.Y
or a.Part4.Position.Y < Partt5.Position.Y
or a.Part4.Position.X +(1.9) < Partt5.Position.X 
or a.Part4.Position.X -(1.9) > Partt5.Position.X 
or a.Part4.Position.Z +(1.9) < Partt5.Position.Z 
or a.Part4.Position.Z -(1.9) > Partt5.Position.Z 
then
if a.Part4.Position.Y - 2.5 > Partt6.Position.Y
or a.Part4.Position.Y < Partt6.Position.Y
or a.Part4.Position.X +(1.9) < Partt6.Position.X 
or a.Part4.Position.X -(1.9) > Partt6.Position.X 
or a.Part4.Position.Z +(1.9) < Partt6.Position.Z 
or a.Part4.Position.Z -(1.9) > Partt6.Position.Z 
then
if a.Part4.Position.Y - 2.5 > Partt7.Position.Y
or a.Part4.Position.Y < Partt7.Position.Y
or a.Part4.Position.X +(1.9) < Partt7.Position.X 
or a.Part4.Position.X -(1.9) > Partt7.Position.X 
or a.Part4.Position.Z +(1.9) < Partt7.Position.Z 
or a.Part4.Position.Z -(1.9) > Partt7.Position.Z 
then
if a.Part4.Position.Y - 2.5 > Partt8.Position.Y
or a.Part4.Position.Y < Partt8.Position.Y
or a.Part4.Position.X +(1.9) < Partt8.Position.X 
or a.Part4.Position.X -(1.9) > Partt8.Position.X 
or a.Part4.Position.Z +(1.9) < Partt8.Position.Z 
or a.Part4.Position.Z -(1.9) > Partt8.Position.Z 
then
ynePart4 = 1
else ynePart4 = 0 
end
else ynePart4 = 0
end
else ynePart4 = 0
end
else ynePart4 = 0
end
else ynePart4 = 0
end
else ynePart4 = 0
end
else ynePart4 = 0
end

if a.Part4.Position.Z + 2.5 < Partt1.Position.Z -- P1 +Z Positions Library Reference
or a.Part4.Position.Z > Partt1.Position.Z
or a.Part4.Position.X +(1.9) < Partt1.Position.X 
or a.Part4.Position.X -(1.9) > Partt1.Position.X 
or a.Part4.Position.Y +(1.9) < Partt1.Position.Y 
or a.Part4.Position.Y -(1.9) > Partt1.Position.Y 
then
if a.Part4.Position.Z + 2.5 < Partt2.Position.Z
or a.Part4.Position.Z > Partt2.Position.Z
or a.Part4.Position.X +(1.9) < Partt2.Position.X 
or a.Part4.Position.X -(1.9) > Partt2.Position.X 
or a.Part4.Position.Y +(1.9) < Partt2.Position.Y 
or a.Part4.Position.Y -(1.9) > Partt2.Position.Y 
then
if a.Part4.Position.Z + 2.5 < Partt3.Position.Z
or a.Part4.Position.Z > Partt3.Position.Z
or a.Part4.Position.X +(1.9) < Partt3.Position.X 
or a.Part4.Position.X -(1.9) > Partt3.Position.X 
or a.Part4.Position.Y +(1.9) < Partt3.Position.Y 
or a.Part4.Position.Y -(1.9) > Partt3.Position.Y 
then
if a.Part4.Position.Z + 2.5 < Partt5.Position.Z
or a.Part4.Position.Z > Partt5.Position.Z
or a.Part4.Position.X +(1.9) < Partt5.Position.X 
or a.Part4.Position.X -(1.9) > Partt5.Position.X 
or a.Part4.Position.Y +(1.9) < Partt5.Position.Y 
or a.Part4.Position.Y -(1.9) > Partt5.Position.Y 
then
if a.Part4.Position.Z + 2.5 < Partt6.Position.Z
or a.Part4.Position.Z > Partt6.Position.Z
or a.Part4.Position.X +(1.9) < Partt6.Position.X 
or a.Part4.Position.X -(1.9) > Partt6.Position.X 
or a.Part4.Position.Y +(1.9) < Partt6.Position.Y 
or a.Part4.Position.Y -(1.9) > Partt6.Position.Y 
then
if a.Part4.Position.Z + 2.5 < Partt7.Position.Z
or a.Part4.Position.Z > Partt7.Position.Z
or a.Part4.Position.X +(1.9) < Partt7.Position.X 
or a.Part4.Position.X -(1.9) > Partt7.Position.X 
or a.Part4.Position.Y +(1.9) < Partt7.Position.Y 
or a.Part4.Position.Y -(1.9) > Partt7.Position.Y 
then
if a.Part4.Position.Z + 2.5 < Partt8.Position.Z
or a.Part4.Position.Z > Partt8.Position.Z
or a.Part4.Position.X +(1.9) < Partt8.Position.X 
or a.Part4.Position.X -(1.9) > Partt8.Position.X 
or a.Part4.Position.Y +(1.9) < Partt8.Position.Y 
or a.Part4.Position.Y -(1.9) > Partt8.Position.Y 
then
zpoPart4 = 1
else zpoPart4 = 0 
end
else zpoPart4 = 0
end
else zpoPart4 = 0
end
else zpoPart4 = 0
end
else zpoPart4 = 0
end
else zpoPart4 = 0
end
else zpoPart4 = 0
end

if a.Part4.Position.Z - 2.5 > Partt1.Position.Z -- P1 -Z Positions Library Reference
or a.Part4.Position.Z < Partt1.Position.Z
or a.Part4.Position.X +(1.9) < Partt1.Position.X 
or a.Part4.Position.X -(1.9) > Partt1.Position.X 
or a.Part4.Position.Y +(1.9) < Partt1.Position.Y 
or a.Part4.Position.Y -(1.9) > Partt1.Position.Y 
then
if a.Part4.Position.Z - 2.5 > Partt2.Position.Z
or a.Part4.Position.Z < Partt2.Position.Z
or a.Part4.Position.X +(1.9) < Partt2.Position.X 
or a.Part4.Position.X -(1.9) > Partt2.Position.X 
or a.Part4.Position.Y +(1.9) < Partt2.Position.Y 
or a.Part4.Position.Y -(1.9) > Partt2.Position.Y 
then
if a.Part4.Position.Z - 2.5 > Partt3.Position.Z
or a.Part4.Position.Z < Partt3.Position.Z
or a.Part4.Position.X +(1.9) < Partt3.Position.X 
or a.Part4.Position.X -(1.9) > Partt3.Position.X 
or a.Part4.Position.Y +(1.9) < Partt3.Position.Y 
or a.Part4.Position.Y -(1.9) > Partt3.Position.Y 
then
if a.Part4.Position.Z - 2.5 > Partt5.Position.Z
or a.Part4.Position.Z < Partt5.Position.Z
or a.Part4.Position.X +(1.9) < Partt5.Position.X 
or a.Part4.Position.X -(1.9) > Partt5.Position.X 
or a.Part4.Position.Y +(1.9) < Partt5.Position.Y 
or a.Part4.Position.Y -(1.9) > Partt5.Position.Y 
then
if a.Part4.Position.Z - 2.5 > Partt6.Position.Z
or a.Part4.Position.Z < Partt6.Position.Z
or a.Part4.Position.X +(1.9) < Partt6.Position.X 
or a.Part4.Position.X -(1.9) > Partt6.Position.X 
or a.Part4.Position.Y +(1.9) < Partt6.Position.Y 
or a.Part4.Position.Y -(1.9) > Partt6.Position.Y 
then
if a.Part4.Position.Z - 2.5 > Partt7.Position.Z
or a.Part4.Position.Z < Partt7.Position.Z
or a.Part4.Position.X +(1.9) < Partt7.Position.X 
or a.Part4.Position.X -(1.9) > Partt7.Position.X 
or a.Part4.Position.Y +(1.9) < Partt7.Position.Y 
or a.Part4.Position.Y -(1.9) > Partt7.Position.Y 
then
if a.Part4.Position.Z - 2.5 > Partt8.Position.Z
or a.Part4.Position.Z < Partt8.Position.Z
or a.Part4.Position.X +(1.9) < Partt8.Position.X 
or a.Part4.Position.X -(1.9) > Partt8.Position.X 
or a.Part4.Position.Y +(1.9) < Partt8.Position.Y 
or a.Part4.Position.Y -(1.9) > Partt8.Position.Y 
then
znePart4 = 1
else znePart4 = 0 
end
else znePart4 = 0
end
else znePart4 = 0
end
else znePart4 = 0
end
else znePart4 = 0
end
else znePart4 = 0
end
else znePart4 = 0
end

PriPart4 = 1 
if PriPart4 == 1
then	
if xpoPart4 == 1
then
for i=1, 10 do
a.Part4.CFrame = a.Part4.CFrame +(Vector3.new(.1,0,0))
wait(.01)
end
else PriPart4 = (PriPart4+1)
end
else end

if PriPart4 == 2
then	
if ypoPart4 == 1
then
for i=1, 10 do
a.Part4.CFrame = a.Part4.CFrame +(Vector3.new(0,.1,0))
wait(.01)
end
else PriPart4 = (PriPart4+1)
end
else end

if PriPart4 == 3
then	
if zpoPart4 == 1
then
for i=1, 10 do
a.Part4.CFrame = a.Part4.CFrame +(Vector3.new(0,0,.1))
wait(.01)
end
else PriPart4 = (PriPart4+1)
end
else end

if PriPart4 == 4
then	
if ynePart4 == 1
then
for i=1, 10 do
a.Part4.CFrame = a.Part4.CFrame +(Vector3.new(0,-.1,0))
wait(.01)
end
else PriPart4 = (PriPart4+1)
end
else end

if PriPart4 == 5
then	
if znePart4 == 1
then
for i=1, 10 do
a.Part4.CFrame = a.Part4.CFrame +(Vector3.new(0,0,-.1))
wait(.01)
end
else PriPart4 = (PriPart4+1)
end
else end
-- (PriPart4)
------------------------------------------------------------------------------
for i=1, 10 do
a.Part4.CFrame = a.Part4.CFrame * CFrame.fromEulerAnglesXYZ(math.pi/20,0,0)
wait(.01)
end
TMPart4 = (TMPart4+1)
until 
math.abs(a.Part4.Position.X - cPart4.Position.X) > 5
or TMPart4 == 7
else end
else end

if sPart4 == 3
and RPart4 == 2 --Checking +X Reconfiguration
then
if  XSPart4 == a.Part4.Position.X
and YSPart4 == a.Part4.Position.Y
and ZSPart4 == a.Part4.Position.Z
then
-- "Reconfiguring"
RPart4 = (RPart4+1)
repeat
if a.Part4.Position.X + 2.5 < Partt1.Position.X -- P1 +X Positions Library Reference
or a.Part4.Position.X > Partt1.Position.X
or a.Part4.Position.Y +(1.9) < Partt1.Position.Y 
or a.Part4.Position.Y -(1.9) > Partt1.Position.Y 
or a.Part4.Position.Z +(1.9) < Partt1.Position.Z 
or a.Part4.Position.Z -(1.9) > Partt1.Position.Z 
then
if a.Part4.Position.X + 2.5 < Partt2.Position.X
or a.Part4.Position.X > Partt2.Position.X
or a.Part4.Position.Y +(1.9) < Partt2.Position.Y 
or a.Part4.Position.Y -(1.9) > Partt2.Position.Y 
or a.Part4.Position.Z +(1.9) < Partt2.Position.Z 
or a.Part4.Position.Z -(1.9) > Partt2.Position.Z 
then
if a.Part4.Position.X + 2.5 < Partt3.Position.X
or a.Part4.Position.X > Partt3.Position.X
or a.Part4.Position.Y +(1.9) < Partt3.Position.Y 
or a.Part4.Position.Y -(1.9) > Partt3.Position.Y 
or a.Part4.Position.Z +(1.9) < Partt3.Position.Z 
or a.Part4.Position.Z -(1.9) > Partt3.Position.Z 
then
if a.Part4.Position.X + 2.5 < Partt5.Position.X
or a.Part4.Position.X > Partt5.Position.X
or a.Part4.Position.Y +(1.9) < Partt5.Position.Y 
or a.Part4.Position.Y -(1.9) > Partt5.Position.Y 
or a.Part4.Position.Z +(1.9) < Partt5.Position.Z 
or a.Part4.Position.Z -(1.9) > Partt5.Position.Z 
then
if a.Part4.Position.X + 2.5 < Partt6.Position.X
or a.Part4.Position.X > Partt6.Position.X
or a.Part4.Position.Y +(1.9) < Partt6.Position.Y 
or a.Part4.Position.Y -(1.9) > Partt6.Position.Y 
or a.Part4.Position.Z +(1.9) < Partt6.Position.Z 
or a.Part4.Position.Z -(1.9) > Partt6.Position.Z 
then
if a.Part4.Position.X + 2.5 < Partt7.Position.X
or a.Part4.Position.X > Partt7.Position.X
or a.Part4.Position.Y +(1.9) < Partt7.Position.Y 
or a.Part4.Position.Y -(1.9) > Partt7.Position.Y 
or a.Part4.Position.Z +(1.9) < Partt7.Position.Z 
or a.Part4.Position.Z -(1.9) > Partt7.Position.Z 
then
if a.Part4.Position.X + 2.5 < Partt8.Position.X
or a.Part4.Position.X > Partt8.Position.X
or a.Part4.Position.Y +(1.9) < Partt8.Position.Y 
or a.Part4.Position.Y -(1.9) > Partt8.Position.Y 
or a.Part4.Position.Z +(1.9) < Partt8.Position.Z 
or a.Part4.Position.Z -(1.9) > Partt8.Position.Z 
then
xpoPart4 = 1
else xpoPart4 = 0 
end
else xpoPart4 = 0
end
else xpoPart4 = 0
end
else xpoPart4 = 0
end
else xpoPart4 = 0
end
else xpoPart4 = 0
end
else xpoPart4 = 0
end

if a.Part4.Position.X - 2.5 > Partt1.Position.X -- P1 -X Positions Library Reference
or a.Part4.Position.X < Partt1.Position.X
or a.Part4.Position.Y +(1.9) < Partt1.Position.Y 
or a.Part4.Position.Y -(1.9) > Partt1.Position.Y 
or a.Part4.Position.Z +(1.9) < Partt1.Position.Z 
or a.Part4.Position.Z -(1.9) > Partt1.Position.Z 
then
if a.Part4.Position.X - 2.5 > Partt2.Position.X
or a.Part4.Position.X < Partt2.Position.X
or a.Part4.Position.Y +(1.9) < Partt2.Position.Y 
or a.Part4.Position.Y -(1.9) > Partt2.Position.Y 
or a.Part4.Position.Z +(1.9) < Partt2.Position.Z 
or a.Part4.Position.Z -(1.9) > Partt2.Position.Z 
then
if a.Part4.Position.X - 2.5 > Partt3.Position.X
or a.Part4.Position.X < Partt3.Position.X
or a.Part4.Position.Y +(1.9) < Partt3.Position.Y 
or a.Part4.Position.Y -(1.9) > Partt3.Position.Y 
or a.Part4.Position.Z +(1.9) < Partt3.Position.Z 
or a.Part4.Position.Z -(1.9) > Partt3.Position.Z 
then
if a.Part4.Position.X - 2.5 > Partt5.Position.X
or a.Part4.Position.X < Partt5.Position.X
or a.Part4.Position.Y +(1.9) < Partt5.Position.Y 
or a.Part4.Position.Y -(1.9) > Partt5.Position.Y 
or a.Part4.Position.Z +(1.9) < Partt5.Position.Z 
or a.Part4.Position.Z -(1.9) > Partt5.Position.Z 
then
if a.Part4.Position.X - 2.5 > Partt6.Position.X
or a.Part4.Position.X < Partt6.Position.X
or a.Part4.Position.Y +(1.9) < Partt6.Position.Y 
or a.Part4.Position.Y -(1.9) > Partt6.Position.Y 
or a.Part4.Position.Z +(1.9) < Partt6.Position.Z 
or a.Part4.Position.Z -(1.9) > Partt6.Position.Z 
then
if a.Part4.Position.X - 2.5 > Partt7.Position.X
or a.Part4.Position.X < Partt7.Position.X
or a.Part4.Position.Y +(1.9) < Partt7.Position.Y 
or a.Part4.Position.Y -(1.9) > Partt7.Position.Y 
or a.Part4.Position.Z +(1.9) < Partt7.Position.Z 
or a.Part4.Position.Z -(1.9) > Partt7.Position.Z 
then
if a.Part4.Position.X - 2.5 > Partt8.Position.X
or a.Part4.Position.X < Partt8.Position.X
or a.Part4.Position.Y +(1.9) < Partt8.Position.Y 
or a.Part4.Position.Y -(1.9) > Partt8.Position.Y 
or a.Part4.Position.Z +(1.9) < Partt8.Position.Z 
or a.Part4.Position.Z -(1.9) > Partt8.Position.Z 
then
xnePart4 = 1
else xnePart4 = 0 
end
else xnePart4 = 0
end
else xnePart4 = 0
end
else xnePart4 = 0
end
else xnePart4 = 0
end
else xnePart4 = 0
end
else xnePart4 = 0
end

if a.Part4.Position.Y + 2.5 < Partt1.Position.Y -- P1 +Y Positions Library Reference
or a.Part4.Position.Y > Partt1.Position.Y
or a.Part4.Position.X +(1.9) < Partt1.Position.X 
or a.Part4.Position.X -(1.9) > Partt1.Position.X 
or a.Part4.Position.Z +(1.9) < Partt1.Position.Z 
or a.Part4.Position.Z -(1.9) > Partt1.Position.Z 
then
if a.Part4.Position.Y + 2.5 < Partt2.Position.Y
or a.Part4.Position.Y > Partt2.Position.Y
or a.Part4.Position.X +(1.9) < Partt2.Position.X 
or a.Part4.Position.X -(1.9) > Partt2.Position.X 
or a.Part4.Position.Z +(1.9) < Partt2.Position.Z 
or a.Part4.Position.Z -(1.9) > Partt2.Position.Z 
then
if a.Part4.Position.Y + 2.5 < Partt3.Position.Y
or a.Part4.Position.Y > Partt3.Position.Y
or a.Part4.Position.X +(1.9) < Partt3.Position.X 
or a.Part4.Position.X -(1.9) > Partt3.Position.X 
or a.Part4.Position.Z +(1.9) < Partt3.Position.Z 
or a.Part4.Position.Z -(1.9) > Partt3.Position.Z 
then
if a.Part4.Position.Y + 2.5 < Partt5.Position.Y
or a.Part4.Position.Y > Partt5.Position.Y
or a.Part4.Position.X +(1.9) < Partt5.Position.X 
or a.Part4.Position.X -(1.9) > Partt5.Position.X 
or a.Part4.Position.Z +(1.9) < Partt5.Position.Z 
or a.Part4.Position.Z -(1.9) > Partt5.Position.Z 
then
if a.Part4.Position.Y + 2.5 < Partt6.Position.Y
or a.Part4.Position.Y > Partt6.Position.Y
or a.Part4.Position.X +(1.9) < Partt6.Position.X 
or a.Part4.Position.X -(1.9) > Partt6.Position.X 
or a.Part4.Position.Z +(1.9) < Partt6.Position.Z 
or a.Part4.Position.Z -(1.9) > Partt6.Position.Z 
then
if a.Part4.Position.Y + 2.5 < Partt7.Position.Y
or a.Part4.Position.Y > Partt7.Position.Y
or a.Part4.Position.X +(1.9) < Partt7.Position.X 
or a.Part4.Position.X -(1.9) > Partt7.Position.X 
or a.Part4.Position.Z +(1.9) < Partt7.Position.Z 
or a.Part4.Position.Z -(1.9) > Partt7.Position.Z 
then
if a.Part4.Position.Y + 2.5 < Partt8.Position.Y
or a.Part4.Position.Y > Partt8.Position.Y
or a.Part4.Position.X +(1.9) < Partt8.Position.X 
or a.Part4.Position.X -(1.9) > Partt8.Position.X 
or a.Part4.Position.Z +(1.9) < Partt8.Position.Z 
or a.Part4.Position.Z -(1.9) > Partt8.Position.Z 
then
ypoPart4 = 1
else ypoPart4 = 0 
end
else ypoPart4 = 0
end
else ypoPart4 = 0
end
else ypoPart4 = 0
end
else ypoPart4 = 0
end
else ypoPart4 = 0
end
else ypoPart4 = 0
end

if a.Part4.Position.Y - 2.5 > Partt1.Position.Y -- P1 -Y Positions Library Reference
or a.Part4.Position.Y < Partt1.Position.Y
or a.Part4.Position.X +(1.9) < Partt1.Position.X 
or a.Part4.Position.X -(1.9) > Partt1.Position.X 
or a.Part4.Position.Z +(1.9) < Partt1.Position.Z 
or a.Part4.Position.Z -(1.9) > Partt1.Position.Z 
then
if a.Part4.Position.Y - 2.5 > Partt2.Position.Y
or a.Part4.Position.Y < Partt2.Position.Y
or a.Part4.Position.X +(1.9) < Partt2.Position.X 
or a.Part4.Position.X -(1.9) > Partt2.Position.X 
or a.Part4.Position.Z +(1.9) < Partt2.Position.Z 
or a.Part4.Position.Z -(1.9) > Partt2.Position.Z 
then
if a.Part4.Position.Y - 2.5 > Partt3.Position.Y
or a.Part4.Position.Y < Partt3.Position.Y
or a.Part4.Position.X +(1.9) < Partt3.Position.X 
or a.Part4.Position.X -(1.9) > Partt3.Position.X 
or a.Part4.Position.Z +(1.9) < Partt3.Position.Z 
or a.Part4.Position.Z -(1.9) > Partt3.Position.Z 
then
if a.Part4.Position.Y - 2.5 > Partt5.Position.Y
or a.Part4.Position.Y < Partt5.Position.Y
or a.Part4.Position.X +(1.9) < Partt5.Position.X 
or a.Part4.Position.X -(1.9) > Partt5.Position.X 
or a.Part4.Position.Z +(1.9) < Partt5.Position.Z 
or a.Part4.Position.Z -(1.9) > Partt5.Position.Z 
then
if a.Part4.Position.Y - 2.5 > Partt6.Position.Y
or a.Part4.Position.Y < Partt6.Position.Y
or a.Part4.Position.X +(1.9) < Partt6.Position.X 
or a.Part4.Position.X -(1.9) > Partt6.Position.X 
or a.Part4.Position.Z +(1.9) < Partt6.Position.Z 
or a.Part4.Position.Z -(1.9) > Partt6.Position.Z 
then
if a.Part4.Position.Y - 2.5 > Partt7.Position.Y
or a.Part4.Position.Y < Partt7.Position.Y
or a.Part4.Position.X +(1.9) < Partt7.Position.X 
or a.Part4.Position.X -(1.9) > Partt7.Position.X 
or a.Part4.Position.Z +(1.9) < Partt7.Position.Z 
or a.Part4.Position.Z -(1.9) > Partt7.Position.Z 
then
if a.Part4.Position.Y - 2.5 > Partt8.Position.Y
or a.Part4.Position.Y < Partt8.Position.Y
or a.Part4.Position.X +(1.9) < Partt8.Position.X 
or a.Part4.Position.X -(1.9) > Partt8.Position.X 
or a.Part4.Position.Z +(1.9) < Partt8.Position.Z 
or a.Part4.Position.Z -(1.9) > Partt8.Position.Z 
then
ynePart4 = 1
else ynePart4 = 0 
end
else ynePart4 = 0
end
else ynePart4 = 0
end
else ynePart4 = 0
end
else ynePart4 = 0
end
else ynePart4 = 0
end
else ynePart4 = 0
end

if a.Part4.Position.Z + 2.5 < Partt1.Position.Z -- P1 +Z Positions Library Reference
or a.Part4.Position.Z > Partt1.Position.Z
or a.Part4.Position.X +(1.9) < Partt1.Position.X 
or a.Part4.Position.X -(1.9) > Partt1.Position.X 
or a.Part4.Position.Y +(1.9) < Partt1.Position.Y 
or a.Part4.Position.Y -(1.9) > Partt1.Position.Y 
then
if a.Part4.Position.Z + 2.5 < Partt2.Position.Z
or a.Part4.Position.Z > Partt2.Position.Z
or a.Part4.Position.X +(1.9) < Partt2.Position.X 
or a.Part4.Position.X -(1.9) > Partt2.Position.X 
or a.Part4.Position.Y +(1.9) < Partt2.Position.Y 
or a.Part4.Position.Y -(1.9) > Partt2.Position.Y 
then
if a.Part4.Position.Z + 2.5 < Partt3.Position.Z
or a.Part4.Position.Z > Partt3.Position.Z
or a.Part4.Position.X +(1.9) < Partt3.Position.X 
or a.Part4.Position.X -(1.9) > Partt3.Position.X 
or a.Part4.Position.Y +(1.9) < Partt3.Position.Y 
or a.Part4.Position.Y -(1.9) > Partt3.Position.Y 
then
if a.Part4.Position.Z + 2.5 < Partt5.Position.Z
or a.Part4.Position.Z > Partt5.Position.Z
or a.Part4.Position.X +(1.9) < Partt5.Position.X 
or a.Part4.Position.X -(1.9) > Partt5.Position.X 
or a.Part4.Position.Y +(1.9) < Partt5.Position.Y 
or a.Part4.Position.Y -(1.9) > Partt5.Position.Y 
then
if a.Part4.Position.Z + 2.5 < Partt6.Position.Z
or a.Part4.Position.Z > Partt6.Position.Z
or a.Part4.Position.X +(1.9) < Partt6.Position.X 
or a.Part4.Position.X -(1.9) > Partt6.Position.X 
or a.Part4.Position.Y +(1.9) < Partt6.Position.Y 
or a.Part4.Position.Y -(1.9) > Partt6.Position.Y 
then
if a.Part4.Position.Z + 2.5 < Partt7.Position.Z
or a.Part4.Position.Z > Partt7.Position.Z
or a.Part4.Position.X +(1.9) < Partt7.Position.X 
or a.Part4.Position.X -(1.9) > Partt7.Position.X 
or a.Part4.Position.Y +(1.9) < Partt7.Position.Y 
or a.Part4.Position.Y -(1.9) > Partt7.Position.Y 
then
if a.Part4.Position.Z + 2.5 < Partt8.Position.Z
or a.Part4.Position.Z > Partt8.Position.Z
or a.Part4.Position.X +(1.9) < Partt8.Position.X 
or a.Part4.Position.X -(1.9) > Partt8.Position.X 
or a.Part4.Position.Y +(1.9) < Partt8.Position.Y 
or a.Part4.Position.Y -(1.9) > Partt8.Position.Y 
then
zpoPart4 = 1
else zpoPart4 = 0 
end
else zpoPart4 = 0
end
else zpoPart4 = 0
end
else zpoPart4 = 0
end
else zpoPart4 = 0
end
else zpoPart4 = 0
end
else zpoPart4 = 0
end

if a.Part4.Position.Z - 2.5 > Partt1.Position.Z -- P1 -Z Positions Library Reference
or a.Part4.Position.Z < Partt1.Position.Z
or a.Part4.Position.X +(1.9) < Partt1.Position.X 
or a.Part4.Position.X -(1.9) > Partt1.Position.X 
or a.Part4.Position.Y +(1.9) < Partt1.Position.Y 
or a.Part4.Position.Y -(1.9) > Partt1.Position.Y 
then
if a.Part4.Position.Z - 2.5 > Partt2.Position.Z
or a.Part4.Position.Z < Partt2.Position.Z
or a.Part4.Position.X +(1.9) < Partt2.Position.X 
or a.Part4.Position.X -(1.9) > Partt2.Position.X 
or a.Part4.Position.Y +(1.9) < Partt2.Position.Y 
or a.Part4.Position.Y -(1.9) > Partt2.Position.Y 
then
if a.Part4.Position.Z - 2.5 > Partt3.Position.Z
or a.Part4.Position.Z < Partt3.Position.Z
or a.Part4.Position.X +(1.9) < Partt3.Position.X 
or a.Part4.Position.X -(1.9) > Partt3.Position.X 
or a.Part4.Position.Y +(1.9) < Partt3.Position.Y 
or a.Part4.Position.Y -(1.9) > Partt3.Position.Y 
then
if a.Part4.Position.Z - 2.5 > Partt5.Position.Z
or a.Part4.Position.Z < Partt5.Position.Z
or a.Part4.Position.X +(1.9) < Partt5.Position.X 
or a.Part4.Position.X -(1.9) > Partt5.Position.X 
or a.Part4.Position.Y +(1.9) < Partt5.Position.Y 
or a.Part4.Position.Y -(1.9) > Partt5.Position.Y 
then
if a.Part4.Position.Z - 2.5 > Partt6.Position.Z
or a.Part4.Position.Z < Partt6.Position.Z
or a.Part4.Position.X +(1.9) < Partt6.Position.X 
or a.Part4.Position.X -(1.9) > Partt6.Position.X 
or a.Part4.Position.Y +(1.9) < Partt6.Position.Y 
or a.Part4.Position.Y -(1.9) > Partt6.Position.Y 
then
if a.Part4.Position.Z - 2.5 > Partt7.Position.Z
or a.Part4.Position.Z < Partt7.Position.Z
or a.Part4.Position.X +(1.9) < Partt7.Position.X 
or a.Part4.Position.X -(1.9) > Partt7.Position.X 
or a.Part4.Position.Y +(1.9) < Partt7.Position.Y 
or a.Part4.Position.Y -(1.9) > Partt7.Position.Y 
then
if a.Part4.Position.Z - 2.5 > Partt8.Position.Z
or a.Part4.Position.Z < Partt8.Position.Z
or a.Part4.Position.X +(1.9) < Partt8.Position.X 
or a.Part4.Position.X -(1.9) > Partt8.Position.X 
or a.Part4.Position.Y +(1.9) < Partt8.Position.Y 
or a.Part4.Position.Y -(1.9) > Partt8.Position.Y 
then
znePart4 = 1
else znePart4 = 0 
end
else znePart4 = 0
end
else znePart4 = 0
end
else znePart4 = 0
end
else znePart4 = 0
end
else znePart4 = 0
end
else znePart4 = 0
end

PriPart4 = 1 

if PriPart4 == 1
then	
if ypoPart4 == 1
then
for i=1, 10 do
a.Part4.CFrame = a.Part4.CFrame +(Vector3.new(0,.1,0))
wait(.01)
end
else PriPart4 = (PriPart4+1)
end
else end


if PriPart4 == 2
then	
if xpoPart4 == 1
then
for i=1, 10 do
a.Part4.CFrame = a.Part4.CFrame +(Vector3.new(.1,0,0))
wait(.01)
end
else PriPart4 = (PriPart4+1)
end
else end



if PriPart4 == 3
then	
if zpoPart4 == 1
then
for i=1, 10 do
a.Part4.CFrame = a.Part4.CFrame +(Vector3.new(0,0,.1))
wait(.01)
end
else PriPart4 = (PriPart4+1)
end
else end


if PriPart4 == 4
then	
if znePart4 == 1
then
for i=1, 10 do
a.Part4.CFrame = a.Part4.CFrame +(Vector3.new(0,0,-.1))
wait(.01)
end
else PriPart4 = (PriPart4+1)
end
else end

if PriPart4 == 5
then	
if xnePart4 == 1
then
for i=1, 10 do
a.Part4.CFrame = a.Part4.CFrame +(Vector3.new(-.1,0,0))
wait(.01)
end
else PriPart4 = (PriPart4+1)
end
else end
-- (PriPart4)

for i=1, 10 do
a.Part4.CFrame = a.Part4.CFrame * CFrame.fromEulerAnglesXYZ(0,math.pi/10,0)
wait(.01)
end
TMPart4 = (TMPart4+1)
until 
math.abs(a.Part4.Position.Y - cPart4.Position.Y) > 5
or TMPart4 == 7
else end
else end
------------------------------------------------------------------------------

if sPart4 == 3
and RPart4 == 3 --Checking +X Reconfiguration
then
if  XSPart4 == a.Part4.Position.X
and YSPart4 == a.Part4.Position.Y
and ZSPart4 == a.Part4.Position.Z
then
-- "Reconfiguring"
RPart4 = (RPart4+1)
repeat
if a.Part4.Position.X + 2.5 < Partt1.Position.X -- P1 +X Positions Library Reference
or a.Part4.Position.X > Partt1.Position.X
or a.Part4.Position.Y +(1.9) < Partt1.Position.Y 
or a.Part4.Position.Y -(1.9) > Partt1.Position.Y 
or a.Part4.Position.Z +(1.9) < Partt1.Position.Z 
or a.Part4.Position.Z -(1.9) > Partt1.Position.Z 
then
if a.Part4.Position.X + 2.5 < Partt2.Position.X
or a.Part4.Position.X > Partt2.Position.X
or a.Part4.Position.Y +(1.9) < Partt2.Position.Y 
or a.Part4.Position.Y -(1.9) > Partt2.Position.Y 
or a.Part4.Position.Z +(1.9) < Partt2.Position.Z 
or a.Part4.Position.Z -(1.9) > Partt2.Position.Z 
then
if a.Part4.Position.X + 2.5 < Partt3.Position.X
or a.Part4.Position.X > Partt3.Position.X
or a.Part4.Position.Y +(1.9) < Partt3.Position.Y 
or a.Part4.Position.Y -(1.9) > Partt3.Position.Y 
or a.Part4.Position.Z +(1.9) < Partt3.Position.Z 
or a.Part4.Position.Z -(1.9) > Partt3.Position.Z 
then
if a.Part4.Position.X + 2.5 < Partt5.Position.X
or a.Part4.Position.X > Partt5.Position.X
or a.Part4.Position.Y +(1.9) < Partt5.Position.Y 
or a.Part4.Position.Y -(1.9) > Partt5.Position.Y 
or a.Part4.Position.Z +(1.9) < Partt5.Position.Z 
or a.Part4.Position.Z -(1.9) > Partt5.Position.Z 
then
if a.Part4.Position.X + 2.5 < Partt6.Position.X
or a.Part4.Position.X > Partt6.Position.X
or a.Part4.Position.Y +(1.9) < Partt6.Position.Y 
or a.Part4.Position.Y -(1.9) > Partt6.Position.Y 
or a.Part4.Position.Z +(1.9) < Partt6.Position.Z 
or a.Part4.Position.Z -(1.9) > Partt6.Position.Z 
then
if a.Part4.Position.X + 2.5 < Partt7.Position.X
or a.Part4.Position.X > Partt7.Position.X
or a.Part4.Position.Y +(1.9) < Partt7.Position.Y 
or a.Part4.Position.Y -(1.9) > Partt7.Position.Y 
or a.Part4.Position.Z +(1.9) < Partt7.Position.Z 
or a.Part4.Position.Z -(1.9) > Partt7.Position.Z 
then
if a.Part4.Position.X + 2.5 < Partt8.Position.X
or a.Part4.Position.X > Partt8.Position.X
or a.Part4.Position.Y +(1.9) < Partt8.Position.Y 
or a.Part4.Position.Y -(1.9) > Partt8.Position.Y 
or a.Part4.Position.Z +(1.9) < Partt8.Position.Z 
or a.Part4.Position.Z -(1.9) > Partt8.Position.Z 
then
xpoPart4 = 1
else xpoPart4 = 0 
end
else xpoPart4 = 0
end
else xpoPart4 = 0
end
else xpoPart4 = 0
end
else xpoPart4 = 0
end
else xpoPart4 = 0
end
else xpoPart4 = 0
end

if a.Part4.Position.X - 2.5 > Partt1.Position.X -- P1 -X Positions Library Reference
or a.Part4.Position.X < Partt1.Position.X
or a.Part4.Position.Y +(1.9) < Partt1.Position.Y 
or a.Part4.Position.Y -(1.9) > Partt1.Position.Y 
or a.Part4.Position.Z +(1.9) < Partt1.Position.Z 
or a.Part4.Position.Z -(1.9) > Partt1.Position.Z 
then
if a.Part4.Position.X - 2.5 > Partt2.Position.X
or a.Part4.Position.X < Partt2.Position.X
or a.Part4.Position.Y +(1.9) < Partt2.Position.Y 
or a.Part4.Position.Y -(1.9) > Partt2.Position.Y 
or a.Part4.Position.Z +(1.9) < Partt2.Position.Z 
or a.Part4.Position.Z -(1.9) > Partt2.Position.Z 
then
if a.Part4.Position.X - 2.5 > Partt3.Position.X
or a.Part4.Position.X < Partt3.Position.X
or a.Part4.Position.Y +(1.9) < Partt3.Position.Y 
or a.Part4.Position.Y -(1.9) > Partt3.Position.Y 
or a.Part4.Position.Z +(1.9) < Partt3.Position.Z 
or a.Part4.Position.Z -(1.9) > Partt3.Position.Z 
then
if a.Part4.Position.X - 2.5 > Partt5.Position.X
or a.Part4.Position.X < Partt5.Position.X
or a.Part4.Position.Y +(1.9) < Partt5.Position.Y 
or a.Part4.Position.Y -(1.9) > Partt5.Position.Y 
or a.Part4.Position.Z +(1.9) < Partt5.Position.Z 
or a.Part4.Position.Z -(1.9) > Partt5.Position.Z 
then
if a.Part4.Position.X - 2.5 > Partt6.Position.X
or a.Part4.Position.X < Partt6.Position.X
or a.Part4.Position.Y +(1.9) < Partt6.Position.Y 
or a.Part4.Position.Y -(1.9) > Partt6.Position.Y 
or a.Part4.Position.Z +(1.9) < Partt6.Position.Z 
or a.Part4.Position.Z -(1.9) > Partt6.Position.Z 
then
if a.Part4.Position.X - 2.5 > Partt7.Position.X
or a.Part4.Position.X < Partt7.Position.X
or a.Part4.Position.Y +(1.9) < Partt7.Position.Y 
or a.Part4.Position.Y -(1.9) > Partt7.Position.Y 
or a.Part4.Position.Z +(1.9) < Partt7.Position.Z 
or a.Part4.Position.Z -(1.9) > Partt7.Position.Z 
then
if a.Part4.Position.X - 2.5 > Partt8.Position.X
or a.Part4.Position.X < Partt8.Position.X
or a.Part4.Position.Y +(1.9) < Partt8.Position.Y 
or a.Part4.Position.Y -(1.9) > Partt8.Position.Y 
or a.Part4.Position.Z +(1.9) < Partt8.Position.Z 
or a.Part4.Position.Z -(1.9) > Partt8.Position.Z 
then
xnePart4 = 1
else xnePart4 = 0 
end
else xnePart4 = 0
end
else xnePart4 = 0
end
else xnePart4 = 0
end
else xnePart4 = 0
end
else xnePart4 = 0
end
else xnePart4 = 0
end

if a.Part4.Position.Y + 2.5 < Partt1.Position.Y -- P1 +Y Positions Library Reference
or a.Part4.Position.Y > Partt1.Position.Y
or a.Part4.Position.X +(1.9) < Partt1.Position.X 
or a.Part4.Position.X -(1.9) > Partt1.Position.X 
or a.Part4.Position.Z +(1.9) < Partt1.Position.Z 
or a.Part4.Position.Z -(1.9) > Partt1.Position.Z 
then
if a.Part4.Position.Y + 2.5 < Partt2.Position.Y
or a.Part4.Position.Y > Partt2.Position.Y
or a.Part4.Position.X +(1.9) < Partt2.Position.X 
or a.Part4.Position.X -(1.9) > Partt2.Position.X 
or a.Part4.Position.Z +(1.9) < Partt2.Position.Z 
or a.Part4.Position.Z -(1.9) > Partt2.Position.Z 
then
if a.Part4.Position.Y + 2.5 < Partt3.Position.Y
or a.Part4.Position.Y > Partt3.Position.Y
or a.Part4.Position.X +(1.9) < Partt3.Position.X 
or a.Part4.Position.X -(1.9) > Partt3.Position.X 
or a.Part4.Position.Z +(1.9) < Partt3.Position.Z 
or a.Part4.Position.Z -(1.9) > Partt3.Position.Z 
then
if a.Part4.Position.Y + 2.5 < Partt5.Position.Y
or a.Part4.Position.Y > Partt5.Position.Y
or a.Part4.Position.X +(1.9) < Partt5.Position.X 
or a.Part4.Position.X -(1.9) > Partt5.Position.X 
or a.Part4.Position.Z +(1.9) < Partt5.Position.Z 
or a.Part4.Position.Z -(1.9) > Partt5.Position.Z 
then
if a.Part4.Position.Y + 2.5 < Partt6.Position.Y
or a.Part4.Position.Y > Partt6.Position.Y
or a.Part4.Position.X +(1.9) < Partt6.Position.X 
or a.Part4.Position.X -(1.9) > Partt6.Position.X 
or a.Part4.Position.Z +(1.9) < Partt6.Position.Z 
or a.Part4.Position.Z -(1.9) > Partt6.Position.Z 
then
if a.Part4.Position.Y + 2.5 < Partt7.Position.Y
or a.Part4.Position.Y > Partt7.Position.Y
or a.Part4.Position.X +(1.9) < Partt7.Position.X 
or a.Part4.Position.X -(1.9) > Partt7.Position.X 
or a.Part4.Position.Z +(1.9) < Partt7.Position.Z 
or a.Part4.Position.Z -(1.9) > Partt7.Position.Z 
then
if a.Part4.Position.Y + 2.5 < Partt8.Position.Y
or a.Part4.Position.Y > Partt8.Position.Y
or a.Part4.Position.X +(1.9) < Partt8.Position.X 
or a.Part4.Position.X -(1.9) > Partt8.Position.X 
or a.Part4.Position.Z +(1.9) < Partt8.Position.Z 
or a.Part4.Position.Z -(1.9) > Partt8.Position.Z 
then
ypoPart4 = 1
else ypoPart4 = 0 
end
else ypoPart4 = 0
end
else ypoPart4 = 0
end
else ypoPart4 = 0
end
else ypoPart4 = 0
end
else ypoPart4 = 0
end
else ypoPart4 = 0
end

if a.Part4.Position.Y - 2.5 > Partt1.Position.Y -- P1 -Y Positions Library Reference
or a.Part4.Position.Y < Partt1.Position.Y
or a.Part4.Position.X +(1.9) < Partt1.Position.X 
or a.Part4.Position.X -(1.9) > Partt1.Position.X 
or a.Part4.Position.Z +(1.9) < Partt1.Position.Z 
or a.Part4.Position.Z -(1.9) > Partt1.Position.Z 
then
if a.Part4.Position.Y - 2.5 > Partt2.Position.Y
or a.Part4.Position.Y < Partt2.Position.Y
or a.Part4.Position.X +(1.9) < Partt2.Position.X 
or a.Part4.Position.X -(1.9) > Partt2.Position.X 
or a.Part4.Position.Z +(1.9) < Partt2.Position.Z 
or a.Part4.Position.Z -(1.9) > Partt2.Position.Z 
then
if a.Part4.Position.Y - 2.5 > Partt3.Position.Y
or a.Part4.Position.Y < Partt3.Position.Y
or a.Part4.Position.X +(1.9) < Partt3.Position.X 
or a.Part4.Position.X -(1.9) > Partt3.Position.X 
or a.Part4.Position.Z +(1.9) < Partt3.Position.Z 
or a.Part4.Position.Z -(1.9) > Partt3.Position.Z 
then
if a.Part4.Position.Y - 2.5 > Partt5.Position.Y
or a.Part4.Position.Y < Partt5.Position.Y
or a.Part4.Position.X +(1.9) < Partt5.Position.X 
or a.Part4.Position.X -(1.9) > Partt5.Position.X 
or a.Part4.Position.Z +(1.9) < Partt5.Position.Z 
or a.Part4.Position.Z -(1.9) > Partt5.Position.Z 
then
if a.Part4.Position.Y - 2.5 > Partt6.Position.Y
or a.Part4.Position.Y < Partt6.Position.Y
or a.Part4.Position.X +(1.9) < Partt6.Position.X 
or a.Part4.Position.X -(1.9) > Partt6.Position.X 
or a.Part4.Position.Z +(1.9) < Partt6.Position.Z 
or a.Part4.Position.Z -(1.9) > Partt6.Position.Z 
then
if a.Part4.Position.Y - 2.5 > Partt7.Position.Y
or a.Part4.Position.Y < Partt7.Position.Y
or a.Part4.Position.X +(1.9) < Partt7.Position.X 
or a.Part4.Position.X -(1.9) > Partt7.Position.X 
or a.Part4.Position.Z +(1.9) < Partt7.Position.Z 
or a.Part4.Position.Z -(1.9) > Partt7.Position.Z 
then
if a.Part4.Position.Y - 2.5 > Partt8.Position.Y
or a.Part4.Position.Y < Partt8.Position.Y
or a.Part4.Position.X +(1.9) < Partt8.Position.X 
or a.Part4.Position.X -(1.9) > Partt8.Position.X 
or a.Part4.Position.Z +(1.9) < Partt8.Position.Z 
or a.Part4.Position.Z -(1.9) > Partt8.Position.Z 
then
ynePart4 = 1
else ynePart4 = 0 
end
else ynePart4 = 0
end
else ynePart4 = 0
end
else ynePart4 = 0
end
else ynePart4 = 0
end
else ynePart4 = 0
end
else ynePart4 = 0
end

if a.Part4.Position.Z + 2.5 < Partt1.Position.Z -- P1 +Z Positions Library Reference
or a.Part4.Position.Z > Partt1.Position.Z
or a.Part4.Position.X +(1.9) < Partt1.Position.X 
or a.Part4.Position.X -(1.9) > Partt1.Position.X 
or a.Part4.Position.Y +(1.9) < Partt1.Position.Y 
or a.Part4.Position.Y -(1.9) > Partt1.Position.Y 
then
if a.Part4.Position.Z + 2.5 < Partt2.Position.Z
or a.Part4.Position.Z > Partt2.Position.Z
or a.Part4.Position.X +(1.9) < Partt2.Position.X 
or a.Part4.Position.X -(1.9) > Partt2.Position.X 
or a.Part4.Position.Y +(1.9) < Partt2.Position.Y 
or a.Part4.Position.Y -(1.9) > Partt2.Position.Y 
then
if a.Part4.Position.Z + 2.5 < Partt3.Position.Z
or a.Part4.Position.Z > Partt3.Position.Z
or a.Part4.Position.X +(1.9) < Partt3.Position.X 
or a.Part4.Position.X -(1.9) > Partt3.Position.X 
or a.Part4.Position.Y +(1.9) < Partt3.Position.Y 
or a.Part4.Position.Y -(1.9) > Partt3.Position.Y 
then
if a.Part4.Position.Z + 2.5 < Partt5.Position.Z
or a.Part4.Position.Z > Partt5.Position.Z
or a.Part4.Position.X +(1.9) < Partt5.Position.X 
or a.Part4.Position.X -(1.9) > Partt5.Position.X 
or a.Part4.Position.Y +(1.9) < Partt5.Position.Y 
or a.Part4.Position.Y -(1.9) > Partt5.Position.Y 
then
if a.Part4.Position.Z + 2.5 < Partt6.Position.Z
or a.Part4.Position.Z > Partt6.Position.Z
or a.Part4.Position.X +(1.9) < Partt6.Position.X 
or a.Part4.Position.X -(1.9) > Partt6.Position.X 
or a.Part4.Position.Y +(1.9) < Partt6.Position.Y 
or a.Part4.Position.Y -(1.9) > Partt6.Position.Y 
then
if a.Part4.Position.Z + 2.5 < Partt7.Position.Z
or a.Part4.Position.Z > Partt7.Position.Z
or a.Part4.Position.X +(1.9) < Partt7.Position.X 
or a.Part4.Position.X -(1.9) > Partt7.Position.X 
or a.Part4.Position.Y +(1.9) < Partt7.Position.Y 
or a.Part4.Position.Y -(1.9) > Partt7.Position.Y 
then
if a.Part4.Position.Z + 2.5 < Partt8.Position.Z
or a.Part4.Position.Z > Partt8.Position.Z
or a.Part4.Position.X +(1.9) < Partt8.Position.X 
or a.Part4.Position.X -(1.9) > Partt8.Position.X 
or a.Part4.Position.Y +(1.9) < Partt8.Position.Y 
or a.Part4.Position.Y -(1.9) > Partt8.Position.Y 
then
zpoPart4 = 1
else zpoPart4 = 0 
end
else zpoPart4 = 0
end
else zpoPart4 = 0
end
else zpoPart4 = 0
end
else zpoPart4 = 0
end
else zpoPart4 = 0
end
else zpoPart4 = 0
end

if a.Part4.Position.Z - 2.5 > Partt1.Position.Z -- P1 -Z Positions Library Reference
or a.Part4.Position.Z < Partt1.Position.Z
or a.Part4.Position.X +(1.9) < Partt1.Position.X 
or a.Part4.Position.X -(1.9) > Partt1.Position.X 
or a.Part4.Position.Y +(1.9) < Partt1.Position.Y 
or a.Part4.Position.Y -(1.9) > Partt1.Position.Y 
then
if a.Part4.Position.Z - 2.5 > Partt2.Position.Z
or a.Part4.Position.Z < Partt2.Position.Z
or a.Part4.Position.X +(1.9) < Partt2.Position.X 
or a.Part4.Position.X -(1.9) > Partt2.Position.X 
or a.Part4.Position.Y +(1.9) < Partt2.Position.Y 
or a.Part4.Position.Y -(1.9) > Partt2.Position.Y 
then
if a.Part4.Position.Z - 2.5 > Partt3.Position.Z
or a.Part4.Position.Z < Partt3.Position.Z
or a.Part4.Position.X +(1.9) < Partt3.Position.X 
or a.Part4.Position.X -(1.9) > Partt3.Position.X 
or a.Part4.Position.Y +(1.9) < Partt3.Position.Y 
or a.Part4.Position.Y -(1.9) > Partt3.Position.Y 
then
if a.Part4.Position.Z - 2.5 > Partt5.Position.Z
or a.Part4.Position.Z < Partt5.Position.Z
or a.Part4.Position.X +(1.9) < Partt5.Position.X 
or a.Part4.Position.X -(1.9) > Partt5.Position.X 
or a.Part4.Position.Y +(1.9) < Partt5.Position.Y 
or a.Part4.Position.Y -(1.9) > Partt5.Position.Y 
then
if a.Part4.Position.Z - 2.5 > Partt6.Position.Z
or a.Part4.Position.Z < Partt6.Position.Z
or a.Part4.Position.X +(1.9) < Partt6.Position.X 
or a.Part4.Position.X -(1.9) > Partt6.Position.X 
or a.Part4.Position.Y +(1.9) < Partt6.Position.Y 
or a.Part4.Position.Y -(1.9) > Partt6.Position.Y 
then
if a.Part4.Position.Z - 2.5 > Partt7.Position.Z
or a.Part4.Position.Z < Partt7.Position.Z
or a.Part4.Position.X +(1.9) < Partt7.Position.X 
or a.Part4.Position.X -(1.9) > Partt7.Position.X 
or a.Part4.Position.Y +(1.9) < Partt7.Position.Y 
or a.Part4.Position.Y -(1.9) > Partt7.Position.Y 
then
if a.Part4.Position.Z - 2.5 > Partt8.Position.Z
or a.Part4.Position.Z < Partt8.Position.Z
or a.Part4.Position.X +(1.9) < Partt8.Position.X 
or a.Part4.Position.X -(1.9) > Partt8.Position.X 
or a.Part4.Position.Y +(1.9) < Partt8.Position.Y 
or a.Part4.Position.Y -(1.9) > Partt8.Position.Y 
then
znePart4 = 1
else znePart4 = 0 
end
else znePart4 = 0
end
else znePart4 = 0
end
else znePart4 = 0
end
else znePart4 = 0
end
else znePart4 = 0
end
else znePart4 = 0
end

PriPart4 = 1 
if PriPart4 == 1
then	
if xnePart4 == 1
then
for i=1, 10 do
a.Part4.CFrame = a.Part4.CFrame +(Vector3.new(-.1,0,0))
wait(.01)
end
else PriPart4 = (PriPart4+1)
end
else end

if PriPart4 == 2
then	
if ypoPart4 == 1
then
for i=1, 10 do
a.Part4.CFrame = a.Part4.CFrame +(Vector3.new(0,.1,0))
wait(.01)
end
else PriPart4 = (PriPart4+1)
end
else end

if PriPart4 == 3
then	
if zpoPart4 == 1
then
for i=1, 10 do
a.Part4.CFrame = a.Part4.CFrame +(Vector3.new(0,0,.1))
wait(.01)
end
else PriPart4 = (PriPart4+1)
end
else end

if PriPart4 == 4
then	
if ynePart4 == 1
then
for i=1, 10 do
a.Part4.CFrame = a.Part4.CFrame +(Vector3.new(0,-.1,0))
wait(.01)
end
else PriPart4 = (PriPart4+1)
end
else end

if PriPart4 == 5
then	
if znePart4 == 1
then
for i=1, 10 do
a.Part4.CFrame = a.Part4.CFrame +(Vector3.new(0,0,-.1))
wait(.01)
end
else PriPart4 = (PriPart4+1)
end
else end
------------------------------------------------------------------------------
-- (PriPart4)

wait(.1)
TMPart4 = (TMPart4+1)
until 
math.abs(a.Part4.Position.X - cPart4.Position.X) > 5
or TMPart4 == 7
else end
else end

if sPart4 == 3
and RPart4 == 4 --Checking +X Reconfiguration
then
if  XSPart4 == a.Part4.Position.X
and YSPart4 == a.Part4.Position.Y
and ZSPart4 == a.Part4.Position.Z
then
-- "Reconfiguring"
RPart4 = 1
repeat
if a.Part4.Position.X + 2.5 < Partt1.Position.X -- P1 +X Positions Library Reference
or a.Part4.Position.X > Partt1.Position.X
or a.Part4.Position.Y +(1.9) < Partt1.Position.Y 
or a.Part4.Position.Y -(1.9) > Partt1.Position.Y 
or a.Part4.Position.Z +(1.9) < Partt1.Position.Z 
or a.Part4.Position.Z -(1.9) > Partt1.Position.Z 
then
if a.Part4.Position.X + 2.5 < Partt2.Position.X
or a.Part4.Position.X > Partt2.Position.X
or a.Part4.Position.Y +(1.9) < Partt2.Position.Y 
or a.Part4.Position.Y -(1.9) > Partt2.Position.Y 
or a.Part4.Position.Z +(1.9) < Partt2.Position.Z 
or a.Part4.Position.Z -(1.9) > Partt2.Position.Z 
then
if a.Part4.Position.X + 2.5 < Partt3.Position.X
or a.Part4.Position.X > Partt3.Position.X
or a.Part4.Position.Y +(1.9) < Partt3.Position.Y 
or a.Part4.Position.Y -(1.9) > Partt3.Position.Y 
or a.Part4.Position.Z +(1.9) < Partt3.Position.Z 
or a.Part4.Position.Z -(1.9) > Partt3.Position.Z 
then
if a.Part4.Position.X + 2.5 < Partt5.Position.X
or a.Part4.Position.X > Partt5.Position.X
or a.Part4.Position.Y +(1.9) < Partt5.Position.Y 
or a.Part4.Position.Y -(1.9) > Partt5.Position.Y 
or a.Part4.Position.Z +(1.9) < Partt5.Position.Z 
or a.Part4.Position.Z -(1.9) > Partt5.Position.Z 
then
if a.Part4.Position.X + 2.5 < Partt6.Position.X
or a.Part4.Position.X > Partt6.Position.X
or a.Part4.Position.Y +(1.9) < Partt6.Position.Y 
or a.Part4.Position.Y -(1.9) > Partt6.Position.Y 
or a.Part4.Position.Z +(1.9) < Partt6.Position.Z 
or a.Part4.Position.Z -(1.9) > Partt6.Position.Z 
then
if a.Part4.Position.X + 2.5 < Partt7.Position.X
or a.Part4.Position.X > Partt7.Position.X
or a.Part4.Position.Y +(1.9) < Partt7.Position.Y 
or a.Part4.Position.Y -(1.9) > Partt7.Position.Y 
or a.Part4.Position.Z +(1.9) < Partt7.Position.Z 
or a.Part4.Position.Z -(1.9) > Partt7.Position.Z 
then
if a.Part4.Position.X + 2.5 < Partt8.Position.X
or a.Part4.Position.X > Partt8.Position.X
or a.Part4.Position.Y +(1.9) < Partt8.Position.Y 
or a.Part4.Position.Y -(1.9) > Partt8.Position.Y 
or a.Part4.Position.Z +(1.9) < Partt8.Position.Z 
or a.Part4.Position.Z -(1.9) > Partt8.Position.Z 
then
xpoPart4 = 1
else xpoPart4 = 0 
end
else xpoPart4 = 0
end
else xpoPart4 = 0
end
else xpoPart4 = 0
end
else xpoPart4 = 0
end
else xpoPart4 = 0
end
else xpoPart4 = 0
end

if a.Part4.Position.X - 2.5 > Partt1.Position.X -- P1 -X Positions Library Reference
or a.Part4.Position.X < Partt1.Position.X
or a.Part4.Position.Y +(1.9) < Partt1.Position.Y 
or a.Part4.Position.Y -(1.9) > Partt1.Position.Y 
or a.Part4.Position.Z +(1.9) < Partt1.Position.Z 
or a.Part4.Position.Z -(1.9) > Partt1.Position.Z 
then
if a.Part4.Position.X - 2.5 > Partt2.Position.X
or a.Part4.Position.X < Partt2.Position.X
or a.Part4.Position.Y +(1.9) < Partt2.Position.Y 
or a.Part4.Position.Y -(1.9) > Partt2.Position.Y 
or a.Part4.Position.Z +(1.9) < Partt2.Position.Z 
or a.Part4.Position.Z -(1.9) > Partt2.Position.Z 
then
if a.Part4.Position.X - 2.5 > Partt3.Position.X
or a.Part4.Position.X < Partt3.Position.X
or a.Part4.Position.Y +(1.9) < Partt3.Position.Y 
or a.Part4.Position.Y -(1.9) > Partt3.Position.Y 
or a.Part4.Position.Z +(1.9) < Partt3.Position.Z 
or a.Part4.Position.Z -(1.9) > Partt3.Position.Z 
then
if a.Part4.Position.X - 2.5 > Partt5.Position.X
or a.Part4.Position.X < Partt5.Position.X
or a.Part4.Position.Y +(1.9) < Partt5.Position.Y 
or a.Part4.Position.Y -(1.9) > Partt5.Position.Y 
or a.Part4.Position.Z +(1.9) < Partt5.Position.Z 
or a.Part4.Position.Z -(1.9) > Partt5.Position.Z 
then
if a.Part4.Position.X - 2.5 > Partt6.Position.X
or a.Part4.Position.X < Partt6.Position.X
or a.Part4.Position.Y +(1.9) < Partt6.Position.Y 
or a.Part4.Position.Y -(1.9) > Partt6.Position.Y 
or a.Part4.Position.Z +(1.9) < Partt6.Position.Z 
or a.Part4.Position.Z -(1.9) > Partt6.Position.Z 
then
if a.Part4.Position.X - 2.5 > Partt7.Position.X
or a.Part4.Position.X < Partt7.Position.X
or a.Part4.Position.Y +(1.9) < Partt7.Position.Y 
or a.Part4.Position.Y -(1.9) > Partt7.Position.Y 
or a.Part4.Position.Z +(1.9) < Partt7.Position.Z 
or a.Part4.Position.Z -(1.9) > Partt7.Position.Z 
then
if a.Part4.Position.X - 2.5 > Partt8.Position.X
or a.Part4.Position.X < Partt8.Position.X
or a.Part4.Position.Y +(1.9) < Partt8.Position.Y 
or a.Part4.Position.Y -(1.9) > Partt8.Position.Y 
or a.Part4.Position.Z +(1.9) < Partt8.Position.Z 
or a.Part4.Position.Z -(1.9) > Partt8.Position.Z 
then
xnePart4 = 1
else xnePart4 = 0 
end
else xnePart4 = 0
end
else xnePart4 = 0
end
else xnePart4 = 0
end
else xnePart4 = 0
end
else xnePart4 = 0
end
else xnePart4 = 0
end

if a.Part4.Position.Y + 2.5 < Partt1.Position.Y -- P1 +Y Positions Library Reference
or a.Part4.Position.Y > Partt1.Position.Y
or a.Part4.Position.X +(1.9) < Partt1.Position.X 
or a.Part4.Position.X -(1.9) > Partt1.Position.X 
or a.Part4.Position.Z +(1.9) < Partt1.Position.Z 
or a.Part4.Position.Z -(1.9) > Partt1.Position.Z 
then
if a.Part4.Position.Y + 2.5 < Partt2.Position.Y
or a.Part4.Position.Y > Partt2.Position.Y
or a.Part4.Position.X +(1.9) < Partt2.Position.X 
or a.Part4.Position.X -(1.9) > Partt2.Position.X 
or a.Part4.Position.Z +(1.9) < Partt2.Position.Z 
or a.Part4.Position.Z -(1.9) > Partt2.Position.Z 
then
if a.Part4.Position.Y + 2.5 < Partt3.Position.Y
or a.Part4.Position.Y > Partt3.Position.Y
or a.Part4.Position.X +(1.9) < Partt3.Position.X 
or a.Part4.Position.X -(1.9) > Partt3.Position.X 
or a.Part4.Position.Z +(1.9) < Partt3.Position.Z 
or a.Part4.Position.Z -(1.9) > Partt3.Position.Z 
then
if a.Part4.Position.Y + 2.5 < Partt5.Position.Y
or a.Part4.Position.Y > Partt5.Position.Y
or a.Part4.Position.X +(1.9) < Partt5.Position.X 
or a.Part4.Position.X -(1.9) > Partt5.Position.X 
or a.Part4.Position.Z +(1.9) < Partt5.Position.Z 
or a.Part4.Position.Z -(1.9) > Partt5.Position.Z 
then
if a.Part4.Position.Y + 2.5 < Partt6.Position.Y
or a.Part4.Position.Y > Partt6.Position.Y
or a.Part4.Position.X +(1.9) < Partt6.Position.X 
or a.Part4.Position.X -(1.9) > Partt6.Position.X 
or a.Part4.Position.Z +(1.9) < Partt6.Position.Z 
or a.Part4.Position.Z -(1.9) > Partt6.Position.Z 
then
if a.Part4.Position.Y + 2.5 < Partt7.Position.Y
or a.Part4.Position.Y > Partt7.Position.Y
or a.Part4.Position.X +(1.9) < Partt7.Position.X 
or a.Part4.Position.X -(1.9) > Partt7.Position.X 
or a.Part4.Position.Z +(1.9) < Partt7.Position.Z 
or a.Part4.Position.Z -(1.9) > Partt7.Position.Z 
then
if a.Part4.Position.Y + 2.5 < Partt8.Position.Y
or a.Part4.Position.Y > Partt8.Position.Y
or a.Part4.Position.X +(1.9) < Partt8.Position.X 
or a.Part4.Position.X -(1.9) > Partt8.Position.X 
or a.Part4.Position.Z +(1.9) < Partt8.Position.Z 
or a.Part4.Position.Z -(1.9) > Partt8.Position.Z 
then
ypoPart4 = 1
else ypoPart4 = 0 
end
else ypoPart4 = 0
end
else ypoPart4 = 0
end
else ypoPart4 = 0
end
else ypoPart4 = 0
end
else ypoPart4 = 0
end
else ypoPart4 = 0
end

if a.Part4.Position.Y - 2.5 > Partt1.Position.Y -- P1 -Y Positions Library Reference
or a.Part4.Position.Y < Partt1.Position.Y
or a.Part4.Position.X +(1.9) < Partt1.Position.X 
or a.Part4.Position.X -(1.9) > Partt1.Position.X 
or a.Part4.Position.Z +(1.9) < Partt1.Position.Z 
or a.Part4.Position.Z -(1.9) > Partt1.Position.Z 
then
if a.Part4.Position.Y - 2.5 > Partt2.Position.Y
or a.Part4.Position.Y < Partt2.Position.Y
or a.Part4.Position.X +(1.9) < Partt2.Position.X 
or a.Part4.Position.X -(1.9) > Partt2.Position.X 
or a.Part4.Position.Z +(1.9) < Partt2.Position.Z 
or a.Part4.Position.Z -(1.9) > Partt2.Position.Z 
then
if a.Part4.Position.Y - 2.5 > Partt3.Position.Y
or a.Part4.Position.Y < Partt3.Position.Y
or a.Part4.Position.X +(1.9) < Partt3.Position.X 
or a.Part4.Position.X -(1.9) > Partt3.Position.X 
or a.Part4.Position.Z +(1.9) < Partt3.Position.Z 
or a.Part4.Position.Z -(1.9) > Partt3.Position.Z 
then
if a.Part4.Position.Y - 2.5 > Partt5.Position.Y
or a.Part4.Position.Y < Partt5.Position.Y
or a.Part4.Position.X +(1.9) < Partt5.Position.X 
or a.Part4.Position.X -(1.9) > Partt5.Position.X 
or a.Part4.Position.Z +(1.9) < Partt5.Position.Z 
or a.Part4.Position.Z -(1.9) > Partt5.Position.Z 
then
if a.Part4.Position.Y - 2.5 > Partt6.Position.Y
or a.Part4.Position.Y < Partt6.Position.Y
or a.Part4.Position.X +(1.9) < Partt6.Position.X 
or a.Part4.Position.X -(1.9) > Partt6.Position.X 
or a.Part4.Position.Z +(1.9) < Partt6.Position.Z 
or a.Part4.Position.Z -(1.9) > Partt6.Position.Z 
then
if a.Part4.Position.Y - 2.5 > Partt7.Position.Y
or a.Part4.Position.Y < Partt7.Position.Y
or a.Part4.Position.X +(1.9) < Partt7.Position.X 
or a.Part4.Position.X -(1.9) > Partt7.Position.X 
or a.Part4.Position.Z +(1.9) < Partt7.Position.Z 
or a.Part4.Position.Z -(1.9) > Partt7.Position.Z 
then
if a.Part4.Position.Y - 2.5 > Partt8.Position.Y
or a.Part4.Position.Y < Partt8.Position.Y
or a.Part4.Position.X +(1.9) < Partt8.Position.X 
or a.Part4.Position.X -(1.9) > Partt8.Position.X 
or a.Part4.Position.Z +(1.9) < Partt8.Position.Z 
or a.Part4.Position.Z -(1.9) > Partt8.Position.Z 
then
ynePart4 = 1
else ynePart4 = 0 
end
else ynePart4 = 0
end
else ynePart4 = 0
end
else ynePart4 = 0
end
else ynePart4 = 0
end
else ynePart4 = 0
end
else ynePart4 = 0
end

if a.Part4.Position.Z + 2.5 < Partt1.Position.Z -- P1 +Z Positions Library Reference
or a.Part4.Position.Z > Partt1.Position.Z
or a.Part4.Position.X +(1.9) < Partt1.Position.X 
or a.Part4.Position.X -(1.9) > Partt1.Position.X 
or a.Part4.Position.Y +(1.9) < Partt1.Position.Y 
or a.Part4.Position.Y -(1.9) > Partt1.Position.Y 
then
if a.Part4.Position.Z + 2.5 < Partt2.Position.Z
or a.Part4.Position.Z > Partt2.Position.Z
or a.Part4.Position.X +(1.9) < Partt2.Position.X 
or a.Part4.Position.X -(1.9) > Partt2.Position.X 
or a.Part4.Position.Y +(1.9) < Partt2.Position.Y 
or a.Part4.Position.Y -(1.9) > Partt2.Position.Y 
then
if a.Part4.Position.Z + 2.5 < Partt3.Position.Z
or a.Part4.Position.Z > Partt3.Position.Z
or a.Part4.Position.X +(1.9) < Partt3.Position.X 
or a.Part4.Position.X -(1.9) > Partt3.Position.X 
or a.Part4.Position.Y +(1.9) < Partt3.Position.Y 
or a.Part4.Position.Y -(1.9) > Partt3.Position.Y 
then
if a.Part4.Position.Z + 2.5 < Partt5.Position.Z
or a.Part4.Position.Z > Partt5.Position.Z
or a.Part4.Position.X +(1.9) < Partt5.Position.X 
or a.Part4.Position.X -(1.9) > Partt5.Position.X 
or a.Part4.Position.Y +(1.9) < Partt5.Position.Y 
or a.Part4.Position.Y -(1.9) > Partt5.Position.Y 
then
if a.Part4.Position.Z + 2.5 < Partt6.Position.Z
or a.Part4.Position.Z > Partt6.Position.Z
or a.Part4.Position.X +(1.9) < Partt6.Position.X 
or a.Part4.Position.X -(1.9) > Partt6.Position.X 
or a.Part4.Position.Y +(1.9) < Partt6.Position.Y 
or a.Part4.Position.Y -(1.9) > Partt6.Position.Y 
then
if a.Part4.Position.Z + 2.5 < Partt7.Position.Z
or a.Part4.Position.Z > Partt7.Position.Z
or a.Part4.Position.X +(1.9) < Partt7.Position.X 
or a.Part4.Position.X -(1.9) > Partt7.Position.X 
or a.Part4.Position.Y +(1.9) < Partt7.Position.Y 
or a.Part4.Position.Y -(1.9) > Partt7.Position.Y 
then
if a.Part4.Position.Z + 2.5 < Partt8.Position.Z
or a.Part4.Position.Z > Partt8.Position.Z
or a.Part4.Position.X +(1.9) < Partt8.Position.X 
or a.Part4.Position.X -(1.9) > Partt8.Position.X 
or a.Part4.Position.Y +(1.9) < Partt8.Position.Y 
or a.Part4.Position.Y -(1.9) > Partt8.Position.Y 
then
zpoPart4 = 1
else zpoPart4 = 0 
end
else zpoPart4 = 0
end
else zpoPart4 = 0
end
else zpoPart4 = 0
end
else zpoPart4 = 0
end
else zpoPart4 = 0
end
else zpoPart4 = 0
end

if a.Part4.Position.Z - 2.5 > Partt1.Position.Z -- P1 -Z Positions Library Reference
or a.Part4.Position.Z < Partt1.Position.Z
or a.Part4.Position.X +(1.9) < Partt1.Position.X 
or a.Part4.Position.X -(1.9) > Partt1.Position.X 
or a.Part4.Position.Y +(1.9) < Partt1.Position.Y 
or a.Part4.Position.Y -(1.9) > Partt1.Position.Y 
then
if a.Part4.Position.Z - 2.5 > Partt2.Position.Z
or a.Part4.Position.Z < Partt2.Position.Z
or a.Part4.Position.X +(1.9) < Partt2.Position.X 
or a.Part4.Position.X -(1.9) > Partt2.Position.X 
or a.Part4.Position.Y +(1.9) < Partt2.Position.Y 
or a.Part4.Position.Y -(1.9) > Partt2.Position.Y 
then
if a.Part4.Position.Z - 2.5 > Partt3.Position.Z
or a.Part4.Position.Z < Partt3.Position.Z
or a.Part4.Position.X +(1.9) < Partt3.Position.X 
or a.Part4.Position.X -(1.9) > Partt3.Position.X 
or a.Part4.Position.Y +(1.9) < Partt3.Position.Y 
or a.Part4.Position.Y -(1.9) > Partt3.Position.Y 
then
if a.Part4.Position.Z - 2.5 > Partt5.Position.Z
or a.Part4.Position.Z < Partt5.Position.Z
or a.Part4.Position.X +(1.9) < Partt5.Position.X 
or a.Part4.Position.X -(1.9) > Partt5.Position.X 
or a.Part4.Position.Y +(1.9) < Partt5.Position.Y 
or a.Part4.Position.Y -(1.9) > Partt5.Position.Y 
then
if a.Part4.Position.Z - 2.5 > Partt6.Position.Z
or a.Part4.Position.Z < Partt6.Position.Z
or a.Part4.Position.X +(1.9) < Partt6.Position.X 
or a.Part4.Position.X -(1.9) > Partt6.Position.X 
or a.Part4.Position.Y +(1.9) < Partt6.Position.Y 
or a.Part4.Position.Y -(1.9) > Partt6.Position.Y 
then
if a.Part4.Position.Z - 2.5 > Partt7.Position.Z
or a.Part4.Position.Z < Partt7.Position.Z
or a.Part4.Position.X +(1.9) < Partt7.Position.X 
or a.Part4.Position.X -(1.9) > Partt7.Position.X 
or a.Part4.Position.Y +(1.9) < Partt7.Position.Y 
or a.Part4.Position.Y -(1.9) > Partt7.Position.Y 
then
if a.Part4.Position.Z - 2.5 > Partt8.Position.Z
or a.Part4.Position.Z < Partt8.Position.Z
or a.Part4.Position.X +(1.9) < Partt8.Position.X 
or a.Part4.Position.X -(1.9) > Partt8.Position.X 
or a.Part4.Position.Y +(1.9) < Partt8.Position.Y 
or a.Part4.Position.Y -(1.9) > Partt8.Position.Y 
then
znePart4 = 1
else znePart4 = 0 
end
else znePart4 = 0
end
else znePart4 = 0
end
else znePart4 = 0
end
else znePart4 = 0
end
else znePart4 = 0
end
else znePart4 = 0
end

PriPart4 = 1 

if PriPart4 == 1
then	
if ynePart4 == 1
then
for i=1, 10 do
a.Part4.CFrame = a.Part4.CFrame +(Vector3.new(0,-.1,0))
wait(.01)
end
else PriPart4 = (PriPart4+1)
end
else end


if PriPart4 == 2
then	
if xpoPart4 == 1
then
for i=1, 10 do
a.Part4.CFrame = a.Part4.CFrame +(Vector3.new(.1,0,0))
wait(.01)
end
else PriPart4 = (PriPart4+1)
end
else end



if PriPart4 == 3
then	
if zpoPart4 == 1
then
for i=1, 10 do
a.Part4.CFrame = a.Part4.CFrame +(Vector3.new(0,0,.1))
wait(.01)
end
else PriPart4 = (PriPart4+1)
end
else end


if PriPart4 == 4
then	
if znePart4 == 1
then
for i=1, 10 do
a.Part4.CFrame = a.Part4.CFrame +(Vector3.new(0,0,-.1))
wait(.01)
end
else PriPart4 = (PriPart4+1)
end
else end

if PriPart4 == 5
then	
if xnePart4 == 1
then
for i=1, 10 do
a.Part4.CFrame = a.Part4.CFrame +(Vector3.new(-.1,0,0))
wait(.01)
end
else PriPart4 = (PriPart4+1)
end
else end
-- (PriPart4)

wait(.1)
TMPart4 = (TMPart4+1)
until 
math.abs(a.Part4.Position.Y - cPart4.Position.Y) > 5
or TMPart4 == 7
else end
else end
------------------------------------------------------------------------------

if sPart4==3
then sPart4 = 0
else end

wait(.1)
until
    a.Part4.Position.X < cPart4.Position.X +.7
and a.Part4.Position.X > cPart4.Position.X -.7
and a.Part4.Position.Y < cPart4.Position.Y +.7
and a.Part4.Position.Y > cPart4.Position.Y -.7
and a.Part4.Position.Z < cPart4.Position.Z +.7
and a.Part4.Position.Z > cPart4.Position.Z -.7
end --Couroutine





function core5()
wait(.2)
repeat

TMPart5 =  0

if cPart5.Position.X > a.Part5.Position.X then --Checking X Positions
XPart5 = 1
elseif cPart5.Position.X < a.Part5.Position.X then
XPart5 = -1
elseif cPart5.Position.X == a.Part5.Position.X then
XPart5 = 0
end

if cPart5.Position.Y > a.Part5.Position.Y then --Checking Y Positions
YPart5 = 1
elseif cPart5.Position.Y < a.Part5.Position.Y then
YPart5 = -1
elseif cPart5.Position.Y == a.Part5.Position.Y then
YPart5 = 0
end

if cPart5.Position.Z > a.Part5.Position.Z then --Checking Z Positions
ZPart5 = 1
elseif cPart5.Position.Z < a.Part5.Position.Z then
ZPart5 = -1
elseif cPart5.Position.Z == a.Part5.Position.Z then
ZPart5 = 0
end
-- ++-- 											
if  math.abs(a.Part5.Position.X - cPart5.Position.X) > math.abs(a.Part5.Position.Y - cPart5.Position.Y) --Priority Checks 1=X 2=Y 3=Z
and math.abs(a.Part5.Position.X - cPart5.Position.X) > math.abs(a.Part5.Position.Z - cPart5.Position.Z)
then PriPart5 = 1
else end 
if  math.abs(a.Part5.Position.Y - cPart5.Position.Y) > math.abs(a.Part5.Position.X - cPart5.Position.X) 
and math.abs(a.Part5.Position.Y - cPart5.Position.Y) > math.abs(a.Part5.Position.Z - cPart5.Position.Z)
then PriPart5 = 2
else end 
if  math.abs(a.Part5.Position.Z - cPart5.Position.Z) > math.abs(a.Part5.Position.Y - cPart5.Position.Y) 
and math.abs(a.Part5.Position.Z - cPart5.Position.Z) > math.abs(a.Part5.Position.X - cPart5.Position.X)
then PriPart5 = 3
else end 
if math.abs(a.Part5.Position.X - cPart5.Position.X) == math.abs(a.Part5.Position.Y - cPart5.Position.Y)  
or math.abs(a.Part5.Position.X - cPart5.Position.X) == math.abs(a.Part5.Position.Z - cPart5.Position.Z)
or math.abs(a.Part5.Position.Y - cPart5.Position.Y) == math.abs(a.Part5.Position.X - cPart5.Position.X)
then PriPart5 = 1
else end 

if a.Part5.Position.X + 2.5 < Partt1.Position.X -- P1 +X Positions Library Reference
or a.Part5.Position.X > Partt1.Position.X
or a.Part5.Position.Y +(1.9) < Partt1.Position.Y 
or a.Part5.Position.Y -(1.9) > Partt1.Position.Y 
or a.Part5.Position.Z +(1.9) < Partt1.Position.Z 
or a.Part5.Position.Z -(1.9) > Partt1.Position.Z 
then
if a.Part5.Position.X + 2.5 < Partt2.Position.X
or a.Part5.Position.X > Partt2.Position.X
or a.Part5.Position.Y +(1.9) < Partt2.Position.Y 
or a.Part5.Position.Y -(1.9) > Partt2.Position.Y 
or a.Part5.Position.Z +(1.9) < Partt2.Position.Z 
or a.Part5.Position.Z -(1.9) > Partt2.Position.Z 
then
if a.Part5.Position.X + 2.5 < Partt3.Position.X
or a.Part5.Position.X > Partt3.Position.X
or a.Part5.Position.Y +(1.9) < Partt3.Position.Y 
or a.Part5.Position.Y -(1.9) > Partt3.Position.Y 
or a.Part5.Position.Z +(1.9) < Partt3.Position.Z 
or a.Part5.Position.Z -(1.9) > Partt3.Position.Z 
then
if a.Part5.Position.X + 2.5 < Partt4.Position.X
or a.Part5.Position.X > Partt4.Position.X
or a.Part5.Position.Y +(1.9) < Partt4.Position.Y 
or a.Part5.Position.Y -(1.9) > Partt4.Position.Y 
or a.Part5.Position.Z +(1.9) < Partt4.Position.Z 
or a.Part5.Position.Z -(1.9) > Partt4.Position.Z 
then
if a.Part5.Position.X + 2.5 < Partt6.Position.X
or a.Part5.Position.X > Partt6.Position.X
or a.Part5.Position.Y +(1.9) < Partt6.Position.Y 
or a.Part5.Position.Y -(1.9) > Partt6.Position.Y 
or a.Part5.Position.Z +(1.9) < Partt6.Position.Z 
or a.Part5.Position.Z -(1.9) > Partt6.Position.Z 
then
if a.Part5.Position.X + 2.5 < Partt7.Position.X
or a.Part5.Position.X > Partt7.Position.X
or a.Part5.Position.Y +(1.9) < Partt7.Position.Y 
or a.Part5.Position.Y -(1.9) > Partt7.Position.Y 
or a.Part5.Position.Z +(1.9) < Partt7.Position.Z 
or a.Part5.Position.Z -(1.9) > Partt7.Position.Z 
then
if a.Part5.Position.X + 2.5 < Partt8.Position.X
or a.Part5.Position.X > Partt8.Position.X
or a.Part5.Position.Y +(1.9) < Partt8.Position.Y 
or a.Part5.Position.Y -(1.9) > Partt8.Position.Y 
or a.Part5.Position.Z +(1.9) < Partt8.Position.Z 
or a.Part5.Position.Z -(1.9) > Partt8.Position.Z 
then
xpoPart5 = 1
else xpoPart5 = 0 
end
else xpoPart5 = 0
end
else xpoPart5 = 0
end
else xpoPart5 = 0
end
else xpoPart5 = 0
end
else xpoPart5 = 0
end
else xpoPart5 = 0
end

if a.Part5.Position.X - 2.5 > Partt1.Position.X -- P1 -X Positions Library Reference
or a.Part5.Position.X < Partt1.Position.X
or a.Part5.Position.Y +(1.9) < Partt1.Position.Y 
or a.Part5.Position.Y -(1.9) > Partt1.Position.Y 
or a.Part5.Position.Z +(1.9) < Partt1.Position.Z 
or a.Part5.Position.Z -(1.9) > Partt1.Position.Z 
then
if a.Part5.Position.X - 2.5 > Partt2.Position.X
or a.Part5.Position.X < Partt2.Position.X
or a.Part5.Position.Y +(1.9) < Partt2.Position.Y 
or a.Part5.Position.Y -(1.9) > Partt2.Position.Y 
or a.Part5.Position.Z +(1.9) < Partt2.Position.Z 
or a.Part5.Position.Z -(1.9) > Partt2.Position.Z 
then
if a.Part5.Position.X - 2.5 > Partt3.Position.X
or a.Part5.Position.X < Partt3.Position.X
or a.Part5.Position.Y +(1.9) < Partt3.Position.Y 
or a.Part5.Position.Y -(1.9) > Partt3.Position.Y 
or a.Part5.Position.Z +(1.9) < Partt3.Position.Z 
or a.Part5.Position.Z -(1.9) > Partt3.Position.Z 
then
if a.Part5.Position.X - 2.5 > Partt4.Position.X
or a.Part5.Position.X < Partt4.Position.X
or a.Part5.Position.Y +(1.9) < Partt4.Position.Y 
or a.Part5.Position.Y -(1.9) > Partt4.Position.Y 
or a.Part5.Position.Z +(1.9) < Partt4.Position.Z 
or a.Part5.Position.Z -(1.9) > Partt4.Position.Z 
then
if a.Part5.Position.X - 2.5 > Partt6.Position.X
or a.Part5.Position.X < Partt6.Position.X
or a.Part5.Position.Y +(1.9) < Partt6.Position.Y 
or a.Part5.Position.Y -(1.9) > Partt6.Position.Y 
or a.Part5.Position.Z +(1.9) < Partt6.Position.Z 
or a.Part5.Position.Z -(1.9) > Partt6.Position.Z 
then
if a.Part5.Position.X - 2.5 > Partt7.Position.X
or a.Part5.Position.X < Partt7.Position.X
or a.Part5.Position.Y +(1.9) < Partt7.Position.Y 
or a.Part5.Position.Y -(1.9) > Partt7.Position.Y 
or a.Part5.Position.Z +(1.9) < Partt7.Position.Z 
or a.Part5.Position.Z -(1.9) > Partt7.Position.Z 
then
if a.Part5.Position.X - 2.5 > Partt8.Position.X
or a.Part5.Position.X < Partt8.Position.X
or a.Part5.Position.Y +(1.9) < Partt8.Position.Y 
or a.Part5.Position.Y -(1.9) > Partt8.Position.Y 
or a.Part5.Position.Z +(1.9) < Partt8.Position.Z 
or a.Part5.Position.Z -(1.9) > Partt8.Position.Z 
then
xnePart5 = 1
else xnePart5 = 0 
end
else xnePart5 = 0
end
else xnePart5 = 0
end
else xnePart5 = 0
end
else xnePart5 = 0
end
else xnePart5 = 0
end
else xnePart5 = 0
end

if a.Part5.Position.Y + 2.5 < Partt1.Position.Y -- P1 +Y Positions Library Reference
or a.Part5.Position.Y > Partt1.Position.Y
or a.Part5.Position.X +(1.9) < Partt1.Position.X 
or a.Part5.Position.X -(1.9) > Partt1.Position.X 
or a.Part5.Position.Z +(1.9) < Partt1.Position.Z 
or a.Part5.Position.Z -(1.9) > Partt1.Position.Z 
then
if a.Part5.Position.Y + 2.5 < Partt2.Position.Y
or a.Part5.Position.Y > Partt2.Position.Y
or a.Part5.Position.X +(1.9) < Partt2.Position.X 
or a.Part5.Position.X -(1.9) > Partt2.Position.X 
or a.Part5.Position.Z +(1.9) < Partt2.Position.Z 
or a.Part5.Position.Z -(1.9) > Partt2.Position.Z 
then
if a.Part5.Position.Y + 2.5 < Partt3.Position.Y
or a.Part5.Position.Y > Partt3.Position.Y
or a.Part5.Position.X +(1.9) < Partt3.Position.X 
or a.Part5.Position.X -(1.9) > Partt3.Position.X 
or a.Part5.Position.Z +(1.9) < Partt3.Position.Z 
or a.Part5.Position.Z -(1.9) > Partt3.Position.Z 
then
if a.Part5.Position.Y + 2.5 < Partt4.Position.Y
or a.Part5.Position.Y > Partt4.Position.Y
or a.Part5.Position.X +(1.9) < Partt4.Position.X 
or a.Part5.Position.X -(1.9) > Partt4.Position.X 
or a.Part5.Position.Z +(1.9) < Partt4.Position.Z 
or a.Part5.Position.Z -(1.9) > Partt4.Position.Z 
then
if a.Part5.Position.Y + 2.5 < Partt6.Position.Y
or a.Part5.Position.Y > Partt6.Position.Y
or a.Part5.Position.X +(1.9) < Partt6.Position.X 
or a.Part5.Position.X -(1.9) > Partt6.Position.X 
or a.Part5.Position.Z +(1.9) < Partt6.Position.Z 
or a.Part5.Position.Z -(1.9) > Partt6.Position.Z 
then
if a.Part5.Position.Y + 2.5 < Partt7.Position.Y
or a.Part5.Position.Y > Partt7.Position.Y
or a.Part5.Position.X +(1.9) < Partt7.Position.X 
or a.Part5.Position.X -(1.9) > Partt7.Position.X 
or a.Part5.Position.Z +(1.9) < Partt7.Position.Z 
or a.Part5.Position.Z -(1.9) > Partt7.Position.Z 
then
if a.Part5.Position.Y + 2.5 < Partt8.Position.Y
or a.Part5.Position.Y > Partt8.Position.Y
or a.Part5.Position.X +(1.9) < Partt8.Position.X 
or a.Part5.Position.X -(1.9) > Partt8.Position.X 
or a.Part5.Position.Z +(1.9) < Partt8.Position.Z 
or a.Part5.Position.Z -(1.9) > Partt8.Position.Z 
then
ypoPart5 = 1
else ypoPart5 = 0 
end
else ypoPart5 = 0
end
else ypoPart5 = 0
end
else ypoPart5 = 0
end
else ypoPart5 = 0
end
else ypoPart5 = 0
end
else ypoPart5 = 0
end

if a.Part5.Position.Y - 2.5 > Partt1.Position.Y -- P1 -Y Positions Library Reference
or a.Part5.Position.Y < Partt1.Position.Y
or a.Part5.Position.X +(1.9) < Partt1.Position.X 
or a.Part5.Position.X -(1.9) > Partt1.Position.X 
or a.Part5.Position.Z +(1.9) < Partt1.Position.Z 
or a.Part5.Position.Z -(1.9) > Partt1.Position.Z 
then
if a.Part5.Position.Y - 2.5 > Partt2.Position.Y
or a.Part5.Position.Y < Partt2.Position.Y
or a.Part5.Position.X +(1.9) < Partt2.Position.X 
or a.Part5.Position.X -(1.9) > Partt2.Position.X 
or a.Part5.Position.Z +(1.9) < Partt2.Position.Z 
or a.Part5.Position.Z -(1.9) > Partt2.Position.Z 
then
if a.Part5.Position.Y - 2.5 > Partt3.Position.Y
or a.Part5.Position.Y < Partt3.Position.Y
or a.Part5.Position.X +(1.9) < Partt3.Position.X 
or a.Part5.Position.X -(1.9) > Partt3.Position.X 
or a.Part5.Position.Z +(1.9) < Partt3.Position.Z 
or a.Part5.Position.Z -(1.9) > Partt3.Position.Z 
then
if a.Part5.Position.Y - 2.5 > Partt4.Position.Y
or a.Part5.Position.Y < Partt4.Position.Y
or a.Part5.Position.X +(1.9) < Partt4.Position.X 
or a.Part5.Position.X -(1.9) > Partt4.Position.X 
or a.Part5.Position.Z +(1.9) < Partt4.Position.Z 
or a.Part5.Position.Z -(1.9) > Partt4.Position.Z 
then
if a.Part5.Position.Y - 2.5 > Partt6.Position.Y
or a.Part5.Position.Y < Partt6.Position.Y
or a.Part5.Position.X +(1.9) < Partt6.Position.X 
or a.Part5.Position.X -(1.9) > Partt6.Position.X 
or a.Part5.Position.Z +(1.9) < Partt6.Position.Z 
or a.Part5.Position.Z -(1.9) > Partt6.Position.Z 
then
if a.Part5.Position.Y - 2.5 > Partt7.Position.Y
or a.Part5.Position.Y < Partt7.Position.Y
or a.Part5.Position.X +(1.9) < Partt7.Position.X 
or a.Part5.Position.X -(1.9) > Partt7.Position.X 
or a.Part5.Position.Z +(1.9) < Partt7.Position.Z 
or a.Part5.Position.Z -(1.9) > Partt7.Position.Z 
then
if a.Part5.Position.Y - 2.5 > Partt8.Position.Y
or a.Part5.Position.Y < Partt8.Position.Y
or a.Part5.Position.X +(1.9) < Partt8.Position.X 
or a.Part5.Position.X -(1.9) > Partt8.Position.X 
or a.Part5.Position.Z +(1.9) < Partt8.Position.Z 
or a.Part5.Position.Z -(1.9) > Partt8.Position.Z 
then
ynePart5 = 1
else ynePart5 = 0 
end
else ynePart5 = 0
end
else ynePart5 = 0
end
else ynePart5 = 0
end
else ynePart5 = 0
end
else ynePart5 = 0
end
else ynePart5 = 0
end

if a.Part5.Position.Z + 2.5 < Partt1.Position.Z -- P1 +Z Positions Library Reference
or a.Part5.Position.Z > Partt1.Position.Z
or a.Part5.Position.X +(1.9) < Partt1.Position.X 
or a.Part5.Position.X -(1.9) > Partt1.Position.X 
or a.Part5.Position.Y +(1.9) < Partt1.Position.Y 
or a.Part5.Position.Y -(1.9) > Partt1.Position.Y 
then
if a.Part5.Position.Z + 2.5 < Partt2.Position.Z
or a.Part5.Position.Z > Partt2.Position.Z
or a.Part5.Position.X +(1.9) < Partt2.Position.X 
or a.Part5.Position.X -(1.9) > Partt2.Position.X 
or a.Part5.Position.Y +(1.9) < Partt2.Position.Y 
or a.Part5.Position.Y -(1.9) > Partt2.Position.Y 
then
if a.Part5.Position.Z + 2.5 < Partt3.Position.Z
or a.Part5.Position.Z > Partt3.Position.Z
or a.Part5.Position.X +(1.9) < Partt3.Position.X 
or a.Part5.Position.X -(1.9) > Partt3.Position.X 
or a.Part5.Position.Y +(1.9) < Partt3.Position.Y 
or a.Part5.Position.Y -(1.9) > Partt3.Position.Y 
then
if a.Part5.Position.Z + 2.5 < Partt4.Position.Z
or a.Part5.Position.Z > Partt4.Position.Z
or a.Part5.Position.X +(1.9) < Partt4.Position.X 
or a.Part5.Position.X -(1.9) > Partt4.Position.X 
or a.Part5.Position.Y +(1.9) < Partt4.Position.Y 
or a.Part5.Position.Y -(1.9) > Partt4.Position.Y 
then
if a.Part5.Position.Z + 2.5 < Partt6.Position.Z
or a.Part5.Position.Z > Partt6.Position.Z
or a.Part5.Position.X +(1.9) < Partt6.Position.X 
or a.Part5.Position.X -(1.9) > Partt6.Position.X 
or a.Part5.Position.Y +(1.9) < Partt6.Position.Y 
or a.Part5.Position.Y -(1.9) > Partt6.Position.Y 
then
if a.Part5.Position.Z + 2.5 < Partt7.Position.Z
or a.Part5.Position.Z > Partt7.Position.Z
or a.Part5.Position.X +(1.9) < Partt7.Position.X 
or a.Part5.Position.X -(1.9) > Partt7.Position.X 
or a.Part5.Position.Y +(1.9) < Partt7.Position.Y 
or a.Part5.Position.Y -(1.9) > Partt7.Position.Y 
then
if a.Part5.Position.Z + 2.5 < Partt8.Position.Z
or a.Part5.Position.Z > Partt8.Position.Z
or a.Part5.Position.X +(1.9) < Partt8.Position.X 
or a.Part5.Position.X -(1.9) > Partt8.Position.X 
or a.Part5.Position.Y +(1.9) < Partt8.Position.Y 
or a.Part5.Position.Y -(1.9) > Partt8.Position.Y 
then
zpoPart5 = 1
else zpoPart5 = 0 
end
else zpoPart5 = 0
end
else zpoPart5 = 0
end
else zpoPart5 = 0
end
else zpoPart5 = 0
end
else zpoPart5 = 0
end
else zpoPart5 = 0
end

if a.Part5.Position.Z - 2.5 > Partt1.Position.Z -- P1 -Z Positions Library Reference
or a.Part5.Position.Z < Partt1.Position.Z
or a.Part5.Position.X +(1.9) < Partt1.Position.X 
or a.Part5.Position.X -(1.9) > Partt1.Position.X 
or a.Part5.Position.Y +(1.9) < Partt1.Position.Y 
or a.Part5.Position.Y -(1.9) > Partt1.Position.Y 
then
if a.Part5.Position.Z - 2.5 > Partt2.Position.Z
or a.Part5.Position.Z < Partt2.Position.Z
or a.Part5.Position.X +(1.9) < Partt2.Position.X 
or a.Part5.Position.X -(1.9) > Partt2.Position.X 
or a.Part5.Position.Y +(1.9) < Partt2.Position.Y 
or a.Part5.Position.Y -(1.9) > Partt2.Position.Y 
then
if a.Part5.Position.Z - 2.5 > Partt3.Position.Z
or a.Part5.Position.Z < Partt3.Position.Z
or a.Part5.Position.X +(1.9) < Partt3.Position.X 
or a.Part5.Position.X -(1.9) > Partt3.Position.X 
or a.Part5.Position.Y +(1.9) < Partt3.Position.Y 
or a.Part5.Position.Y -(1.9) > Partt3.Position.Y 
then
if a.Part5.Position.Z - 2.5 > Partt4.Position.Z
or a.Part5.Position.Z < Partt4.Position.Z
or a.Part5.Position.X +(1.9) < Partt4.Position.X 
or a.Part5.Position.X -(1.9) > Partt4.Position.X 
or a.Part5.Position.Y +(1.9) < Partt4.Position.Y 
or a.Part5.Position.Y -(1.9) > Partt4.Position.Y 
then
if a.Part5.Position.Z - 2.5 > Partt6.Position.Z
or a.Part5.Position.Z < Partt6.Position.Z
or a.Part5.Position.X +(1.9) < Partt6.Position.X 
or a.Part5.Position.X -(1.9) > Partt6.Position.X 
or a.Part5.Position.Y +(1.9) < Partt6.Position.Y 
or a.Part5.Position.Y -(1.9) > Partt6.Position.Y 
then
if a.Part5.Position.Z - 2.5 > Partt7.Position.Z
or a.Part5.Position.Z < Partt7.Position.Z
or a.Part5.Position.X +(1.9) < Partt7.Position.X 
or a.Part5.Position.X -(1.9) > Partt7.Position.X 
or a.Part5.Position.Y +(1.9) < Partt7.Position.Y 
or a.Part5.Position.Y -(1.9) > Partt7.Position.Y 
then
if a.Part5.Position.Z - 2.5 > Partt8.Position.Z
or a.Part5.Position.Z < Partt8.Position.Z
or a.Part5.Position.X +(1.9) < Partt8.Position.X 
or a.Part5.Position.X -(1.9) > Partt8.Position.X 
or a.Part5.Position.Y +(1.9) < Partt8.Position.Y 
or a.Part5.Position.Y -(1.9) > Partt8.Position.Y 
then
znePart5 = 1
else znePart5 = 0 
end
else znePart5 = 0
end
else znePart5 = 0
end
else znePart5 = 0
end
else znePart5 = 0
end
else znePart5 = 0
end
else znePart5 = 0
end

if PriPart5 == 1
and XPart5 == 1
then	
if xpoPart5 == 1
then
for i=1, 10 do
a.Part5.CFrame = a.Part5.CFrame +(Vector3.new(XPart5/10,0,0))
wait(.01)
end
else PriPart5 = (PriPart5+1)
end
else end

if PriPart5 == 1
and XPart5 == -1
then	
if xnePart5 == 1
then
for i=1, 10 do
a.Part5.CFrame = a.Part5.CFrame +(Vector3.new(XPart5/10,0,0))
wait(.01)
end
else PriPart5 = (PriPart5+1)
end
else end

if PriPart5 == 2
and YPart5 == 1
then	
if ypoPart5 == 1
then
for i=1, 10 do
a.Part5.CFrame = a.Part5.CFrame +(Vector3.new(0,YPart5/10,0))
wait(.01)
end
else PriPart5 = (PriPart5+1)
end
else end

if PriPart5 == 2
and YPart5 == -1
then	
if ynePart5 == 1
then
for i=1, 10 do
a.Part5.CFrame = a.Part5.CFrame +(Vector3.new(0,YPart5/10,0))
wait(.01)
end
else PriPart5 = (PriPart5+1)
end
else end

if PriPart5 == 3
and ZPart5 == 1
then	
if zpoPart5 == 1
then
for i=1, 10 do
a.Part5.CFrame = a.Part5.CFrame +(Vector3.new(0,0,ZPart5/10))
wait(.01)
end
else PriPart5 = (PriPart5+1)
end
else end

if PriPart5 == 3
and ZPart5 == -1
then	
if znePart5 == 1
then
for i=1, 10 do
a.Part5.CFrame = a.Part5.CFrame +(Vector3.new(0,0,ZPart5/10))
wait(.01)
end
else PriPart5 = (PriPart5+1)
end
else end




sPart5 =(sPart5+1) --Checking reconfiguring positions

if sPart5 == 1
then
XSPart5 = a.Part5.Position.X
YSPart5 = a.Part5.Position.Y
ZSPart5 = a.Part5.Position.Z
else end

if sPart5 == 3 --Checking if Part is Valid for Instant Fix
and XSPart5 == a.Part5.Position.X
and YSPart5 == a.Part5.Position.Y
and ZSPart5 == a.Part5.Position.Z
and a.Part5.Position.X < cPart5.Position.X +4
and a.Part5.Position.X > cPart5.Position.X -4
and a.Part5.Position.Y < cPart5.Position.Y +4
and a.Part5.Position.Y > cPart5.Position.Y -4
and a.Part5.Position.Z < cPart5.Position.Z +4
and a.Part5.Position.Z > cPart5.Position.Z -4
then
for i=1, 20 do
a.Part5.CFrame = a.Part5.CFrame +(Vector3.new((cPart5.Position.X-XSPart5)/20,(cPart5.Position.Y-YSPart5)/20,(cPart5.Position.Z-ZSPart5)/20))
wait(.01)
end
else end

if sPart5 == 3
and RPart5 == 1 --Checking +X Reconfiguration
then
if  XSPart5 == a.Part5.Position.X
and YSPart5 == a.Part5.Position.Y
and ZSPart5 == a.Part5.Position.Z
then
-- "Reconfiguring"
RPart5 = (RPart5+1)
repeat
if a.Part5.Position.X + 2.5 < Partt1.Position.X -- P1 +X Positions Library Reference
or a.Part5.Position.X > Partt1.Position.X
or a.Part5.Position.Y +(1.9) < Partt1.Position.Y 
or a.Part5.Position.Y -(1.9) > Partt1.Position.Y 
or a.Part5.Position.Z +(1.9) < Partt1.Position.Z 
or a.Part5.Position.Z -(1.9) > Partt1.Position.Z 
then
if a.Part5.Position.X + 2.5 < Partt2.Position.X
or a.Part5.Position.X > Partt2.Position.X
or a.Part5.Position.Y +(1.9) < Partt2.Position.Y 
or a.Part5.Position.Y -(1.9) > Partt2.Position.Y 
or a.Part5.Position.Z +(1.9) < Partt2.Position.Z 
or a.Part5.Position.Z -(1.9) > Partt2.Position.Z 
then
if a.Part5.Position.X + 2.5 < Partt3.Position.X
or a.Part5.Position.X > Partt3.Position.X
or a.Part5.Position.Y +(1.9) < Partt3.Position.Y 
or a.Part5.Position.Y -(1.9) > Partt3.Position.Y 
or a.Part5.Position.Z +(1.9) < Partt3.Position.Z 
or a.Part5.Position.Z -(1.9) > Partt3.Position.Z 
then
if a.Part5.Position.X + 2.5 < Partt4.Position.X
or a.Part5.Position.X > Partt4.Position.X
or a.Part5.Position.Y +(1.9) < Partt4.Position.Y 
or a.Part5.Position.Y -(1.9) > Partt4.Position.Y 
or a.Part5.Position.Z +(1.9) < Partt4.Position.Z 
or a.Part5.Position.Z -(1.9) > Partt4.Position.Z 
then
if a.Part5.Position.X + 2.5 < Partt6.Position.X
or a.Part5.Position.X > Partt6.Position.X
or a.Part5.Position.Y +(1.9) < Partt6.Position.Y 
or a.Part5.Position.Y -(1.9) > Partt6.Position.Y 
or a.Part5.Position.Z +(1.9) < Partt6.Position.Z 
or a.Part5.Position.Z -(1.9) > Partt6.Position.Z 
then
if a.Part5.Position.X + 2.5 < Partt7.Position.X
or a.Part5.Position.X > Partt7.Position.X
or a.Part5.Position.Y +(1.9) < Partt7.Position.Y 
or a.Part5.Position.Y -(1.9) > Partt7.Position.Y 
or a.Part5.Position.Z +(1.9) < Partt7.Position.Z 
or a.Part5.Position.Z -(1.9) > Partt7.Position.Z 
then
if a.Part5.Position.X + 2.5 < Partt8.Position.X
or a.Part5.Position.X > Partt8.Position.X
or a.Part5.Position.Y +(1.9) < Partt8.Position.Y 
or a.Part5.Position.Y -(1.9) > Partt8.Position.Y 
or a.Part5.Position.Z +(1.9) < Partt8.Position.Z 
or a.Part5.Position.Z -(1.9) > Partt8.Position.Z 
then
xpoPart5 = 1
else xpoPart5 = 0 
end
else xpoPart5 = 0
end
else xpoPart5 = 0
end
else xpoPart5 = 0
end
else xpoPart5 = 0
end
else xpoPart5 = 0
end
else xpoPart5 = 0
end

if a.Part5.Position.X - 2.5 > Partt1.Position.X -- P1 -X Positions Library Reference
or a.Part5.Position.X < Partt1.Position.X
or a.Part5.Position.Y +(1.9) < Partt1.Position.Y 
or a.Part5.Position.Y -(1.9) > Partt1.Position.Y 
or a.Part5.Position.Z +(1.9) < Partt1.Position.Z 
or a.Part5.Position.Z -(1.9) > Partt1.Position.Z 
then
if a.Part5.Position.X - 2.5 > Partt2.Position.X
or a.Part5.Position.X < Partt2.Position.X
or a.Part5.Position.Y +(1.9) < Partt2.Position.Y 
or a.Part5.Position.Y -(1.9) > Partt2.Position.Y 
or a.Part5.Position.Z +(1.9) < Partt2.Position.Z 
or a.Part5.Position.Z -(1.9) > Partt2.Position.Z 
then
if a.Part5.Position.X - 2.5 > Partt3.Position.X
or a.Part5.Position.X < Partt3.Position.X
or a.Part5.Position.Y +(1.9) < Partt3.Position.Y 
or a.Part5.Position.Y -(1.9) > Partt3.Position.Y 
or a.Part5.Position.Z +(1.9) < Partt3.Position.Z 
or a.Part5.Position.Z -(1.9) > Partt3.Position.Z 
then
if a.Part5.Position.X - 2.5 > Partt4.Position.X
or a.Part5.Position.X < Partt4.Position.X
or a.Part5.Position.Y +(1.9) < Partt4.Position.Y 
or a.Part5.Position.Y -(1.9) > Partt4.Position.Y 
or a.Part5.Position.Z +(1.9) < Partt4.Position.Z 
or a.Part5.Position.Z -(1.9) > Partt4.Position.Z 
then
if a.Part5.Position.X - 2.5 > Partt6.Position.X
or a.Part5.Position.X < Partt6.Position.X
or a.Part5.Position.Y +(1.9) < Partt6.Position.Y 
or a.Part5.Position.Y -(1.9) > Partt6.Position.Y 
or a.Part5.Position.Z +(1.9) < Partt6.Position.Z 
or a.Part5.Position.Z -(1.9) > Partt6.Position.Z 
then
if a.Part5.Position.X - 2.5 > Partt7.Position.X
or a.Part5.Position.X < Partt7.Position.X
or a.Part5.Position.Y +(1.9) < Partt7.Position.Y 
or a.Part5.Position.Y -(1.9) > Partt7.Position.Y 
or a.Part5.Position.Z +(1.9) < Partt7.Position.Z 
or a.Part5.Position.Z -(1.9) > Partt7.Position.Z 
then
if a.Part5.Position.X - 2.5 > Partt8.Position.X
or a.Part5.Position.X < Partt8.Position.X
or a.Part5.Position.Y +(1.9) < Partt8.Position.Y 
or a.Part5.Position.Y -(1.9) > Partt8.Position.Y 
or a.Part5.Position.Z +(1.9) < Partt8.Position.Z 
or a.Part5.Position.Z -(1.9) > Partt8.Position.Z 
then
xnePart5 = 1
else xnePart5 = 0 
end
else xnePart5 = 0
end
else xnePart5 = 0
end
else xnePart5 = 0
end
else xnePart5 = 0
end
else xnePart5 = 0
end
else xnePart5 = 0
end

if a.Part5.Position.Y + 2.5 < Partt1.Position.Y -- P1 +Y Positions Library Reference
or a.Part5.Position.Y > Partt1.Position.Y
or a.Part5.Position.X +(1.9) < Partt1.Position.X 
or a.Part5.Position.X -(1.9) > Partt1.Position.X 
or a.Part5.Position.Z +(1.9) < Partt1.Position.Z 
or a.Part5.Position.Z -(1.9) > Partt1.Position.Z 
then
if a.Part5.Position.Y + 2.5 < Partt2.Position.Y
or a.Part5.Position.Y > Partt2.Position.Y
or a.Part5.Position.X +(1.9) < Partt2.Position.X 
or a.Part5.Position.X -(1.9) > Partt2.Position.X 
or a.Part5.Position.Z +(1.9) < Partt2.Position.Z 
or a.Part5.Position.Z -(1.9) > Partt2.Position.Z 
then
if a.Part5.Position.Y + 2.5 < Partt3.Position.Y
or a.Part5.Position.Y > Partt3.Position.Y
or a.Part5.Position.X +(1.9) < Partt3.Position.X 
or a.Part5.Position.X -(1.9) > Partt3.Position.X 
or a.Part5.Position.Z +(1.9) < Partt3.Position.Z 
or a.Part5.Position.Z -(1.9) > Partt3.Position.Z 
then
if a.Part5.Position.Y + 2.5 < Partt4.Position.Y
or a.Part5.Position.Y > Partt4.Position.Y
or a.Part5.Position.X +(1.9) < Partt4.Position.X 
or a.Part5.Position.X -(1.9) > Partt4.Position.X 
or a.Part5.Position.Z +(1.9) < Partt4.Position.Z 
or a.Part5.Position.Z -(1.9) > Partt4.Position.Z 
then
if a.Part5.Position.Y + 2.5 < Partt6.Position.Y
or a.Part5.Position.Y > Partt6.Position.Y
or a.Part5.Position.X +(1.9) < Partt6.Position.X 
or a.Part5.Position.X -(1.9) > Partt6.Position.X 
or a.Part5.Position.Z +(1.9) < Partt6.Position.Z 
or a.Part5.Position.Z -(1.9) > Partt6.Position.Z 
then
if a.Part5.Position.Y + 2.5 < Partt7.Position.Y
or a.Part5.Position.Y > Partt7.Position.Y
or a.Part5.Position.X +(1.9) < Partt7.Position.X 
or a.Part5.Position.X -(1.9) > Partt7.Position.X 
or a.Part5.Position.Z +(1.9) < Partt7.Position.Z 
or a.Part5.Position.Z -(1.9) > Partt7.Position.Z 
then
if a.Part5.Position.Y + 2.5 < Partt8.Position.Y
or a.Part5.Position.Y > Partt8.Position.Y
or a.Part5.Position.X +(1.9) < Partt8.Position.X 
or a.Part5.Position.X -(1.9) > Partt8.Position.X 
or a.Part5.Position.Z +(1.9) < Partt8.Position.Z 
or a.Part5.Position.Z -(1.9) > Partt8.Position.Z 
then
ypoPart5 = 1
else ypoPart5 = 0 
end
else ypoPart5 = 0
end
else ypoPart5 = 0
end
else ypoPart5 = 0
end
else ypoPart5 = 0
end
else ypoPart5 = 0
end
else ypoPart5 = 0
end

if a.Part5.Position.Y - 2.5 > Partt1.Position.Y -- P1 -Y Positions Library Reference
or a.Part5.Position.Y < Partt1.Position.Y
or a.Part5.Position.X +(1.9) < Partt1.Position.X 
or a.Part5.Position.X -(1.9) > Partt1.Position.X 
or a.Part5.Position.Z +(1.9) < Partt1.Position.Z 
or a.Part5.Position.Z -(1.9) > Partt1.Position.Z 
then
if a.Part5.Position.Y - 2.5 > Partt2.Position.Y
or a.Part5.Position.Y < Partt2.Position.Y
or a.Part5.Position.X +(1.9) < Partt2.Position.X 
or a.Part5.Position.X -(1.9) > Partt2.Position.X 
or a.Part5.Position.Z +(1.9) < Partt2.Position.Z 
or a.Part5.Position.Z -(1.9) > Partt2.Position.Z 
then
if a.Part5.Position.Y - 2.5 > Partt3.Position.Y
or a.Part5.Position.Y < Partt3.Position.Y
or a.Part5.Position.X +(1.9) < Partt3.Position.X 
or a.Part5.Position.X -(1.9) > Partt3.Position.X 
or a.Part5.Position.Z +(1.9) < Partt3.Position.Z 
or a.Part5.Position.Z -(1.9) > Partt3.Position.Z 
then
if a.Part5.Position.Y - 2.5 > Partt4.Position.Y
or a.Part5.Position.Y < Partt4.Position.Y
or a.Part5.Position.X +(1.9) < Partt4.Position.X 
or a.Part5.Position.X -(1.9) > Partt4.Position.X 
or a.Part5.Position.Z +(1.9) < Partt4.Position.Z 
or a.Part5.Position.Z -(1.9) > Partt4.Position.Z 
then
if a.Part5.Position.Y - 2.5 > Partt6.Position.Y
or a.Part5.Position.Y < Partt6.Position.Y
or a.Part5.Position.X +(1.9) < Partt6.Position.X 
or a.Part5.Position.X -(1.9) > Partt6.Position.X 
or a.Part5.Position.Z +(1.9) < Partt6.Position.Z 
or a.Part5.Position.Z -(1.9) > Partt6.Position.Z 
then
if a.Part5.Position.Y - 2.5 > Partt7.Position.Y
or a.Part5.Position.Y < Partt7.Position.Y
or a.Part5.Position.X +(1.9) < Partt7.Position.X 
or a.Part5.Position.X -(1.9) > Partt7.Position.X 
or a.Part5.Position.Z +(1.9) < Partt7.Position.Z 
or a.Part5.Position.Z -(1.9) > Partt7.Position.Z 
then
if a.Part5.Position.Y - 2.5 > Partt8.Position.Y
or a.Part5.Position.Y < Partt8.Position.Y
or a.Part5.Position.X +(1.9) < Partt8.Position.X 
or a.Part5.Position.X -(1.9) > Partt8.Position.X 
or a.Part5.Position.Z +(1.9) < Partt8.Position.Z 
or a.Part5.Position.Z -(1.9) > Partt8.Position.Z 
then
ynePart5 = 1
else ynePart5 = 0 
end
else ynePart5 = 0
end
else ynePart5 = 0
end
else ynePart5 = 0
end
else ynePart5 = 0
end
else ynePart5 = 0
end
else ynePart5 = 0
end

if a.Part5.Position.Z + 2.5 < Partt1.Position.Z -- P1 +Z Positions Library Reference
or a.Part5.Position.Z > Partt1.Position.Z
or a.Part5.Position.X +(1.9) < Partt1.Position.X 
or a.Part5.Position.X -(1.9) > Partt1.Position.X 
or a.Part5.Position.Y +(1.9) < Partt1.Position.Y 
or a.Part5.Position.Y -(1.9) > Partt1.Position.Y 
then
if a.Part5.Position.Z + 2.5 < Partt2.Position.Z
or a.Part5.Position.Z > Partt2.Position.Z
or a.Part5.Position.X +(1.9) < Partt2.Position.X 
or a.Part5.Position.X -(1.9) > Partt2.Position.X 
or a.Part5.Position.Y +(1.9) < Partt2.Position.Y 
or a.Part5.Position.Y -(1.9) > Partt2.Position.Y 
then
if a.Part5.Position.Z + 2.5 < Partt3.Position.Z
or a.Part5.Position.Z > Partt3.Position.Z
or a.Part5.Position.X +(1.9) < Partt3.Position.X 
or a.Part5.Position.X -(1.9) > Partt3.Position.X 
or a.Part5.Position.Y +(1.9) < Partt3.Position.Y 
or a.Part5.Position.Y -(1.9) > Partt3.Position.Y 
then
if a.Part5.Position.Z + 2.5 < Partt4.Position.Z
or a.Part5.Position.Z > Partt4.Position.Z
or a.Part5.Position.X +(1.9) < Partt4.Position.X 
or a.Part5.Position.X -(1.9) > Partt4.Position.X 
or a.Part5.Position.Y +(1.9) < Partt4.Position.Y 
or a.Part5.Position.Y -(1.9) > Partt4.Position.Y 
then
if a.Part5.Position.Z + 2.5 < Partt6.Position.Z
or a.Part5.Position.Z > Partt6.Position.Z
or a.Part5.Position.X +(1.9) < Partt6.Position.X 
or a.Part5.Position.X -(1.9) > Partt6.Position.X 
or a.Part5.Position.Y +(1.9) < Partt6.Position.Y 
or a.Part5.Position.Y -(1.9) > Partt6.Position.Y 
then
if a.Part5.Position.Z + 2.5 < Partt7.Position.Z
or a.Part5.Position.Z > Partt7.Position.Z
or a.Part5.Position.X +(1.9) < Partt7.Position.X 
or a.Part5.Position.X -(1.9) > Partt7.Position.X 
or a.Part5.Position.Y +(1.9) < Partt7.Position.Y 
or a.Part5.Position.Y -(1.9) > Partt7.Position.Y 
then
if a.Part5.Position.Z + 2.5 < Partt8.Position.Z
or a.Part5.Position.Z > Partt8.Position.Z
or a.Part5.Position.X +(1.9) < Partt8.Position.X 
or a.Part5.Position.X -(1.9) > Partt8.Position.X 
or a.Part5.Position.Y +(1.9) < Partt8.Position.Y 
or a.Part5.Position.Y -(1.9) > Partt8.Position.Y 
then
zpoPart5 = 1
else zpoPart5 = 0 
end
else zpoPart5 = 0
end
else zpoPart5 = 0
end
else zpoPart5 = 0
end
else zpoPart5 = 0
end
else zpoPart5 = 0
end
else zpoPart5 = 0
end

if a.Part5.Position.Z - 2.5 > Partt1.Position.Z -- P1 -Z Positions Library Reference
or a.Part5.Position.Z < Partt1.Position.Z
or a.Part5.Position.X +(1.9) < Partt1.Position.X 
or a.Part5.Position.X -(1.9) > Partt1.Position.X 
or a.Part5.Position.Y +(1.9) < Partt1.Position.Y 
or a.Part5.Position.Y -(1.9) > Partt1.Position.Y 
then
if a.Part5.Position.Z - 2.5 > Partt2.Position.Z
or a.Part5.Position.Z < Partt2.Position.Z
or a.Part5.Position.X +(1.9) < Partt2.Position.X 
or a.Part5.Position.X -(1.9) > Partt2.Position.X 
or a.Part5.Position.Y +(1.9) < Partt2.Position.Y 
or a.Part5.Position.Y -(1.9) > Partt2.Position.Y 
then
if a.Part5.Position.Z - 2.5 > Partt3.Position.Z
or a.Part5.Position.Z < Partt3.Position.Z
or a.Part5.Position.X +(1.9) < Partt3.Position.X 
or a.Part5.Position.X -(1.9) > Partt3.Position.X 
or a.Part5.Position.Y +(1.9) < Partt3.Position.Y 
or a.Part5.Position.Y -(1.9) > Partt3.Position.Y 
then
if a.Part5.Position.Z - 2.5 > Partt4.Position.Z
or a.Part5.Position.Z < Partt4.Position.Z
or a.Part5.Position.X +(1.9) < Partt4.Position.X 
or a.Part5.Position.X -(1.9) > Partt4.Position.X 
or a.Part5.Position.Y +(1.9) < Partt4.Position.Y 
or a.Part5.Position.Y -(1.9) > Partt4.Position.Y 
then
if a.Part5.Position.Z - 2.5 > Partt6.Position.Z
or a.Part5.Position.Z < Partt6.Position.Z
or a.Part5.Position.X +(1.9) < Partt6.Position.X 
or a.Part5.Position.X -(1.9) > Partt6.Position.X 
or a.Part5.Position.Y +(1.9) < Partt6.Position.Y 
or a.Part5.Position.Y -(1.9) > Partt6.Position.Y 
then
if a.Part5.Position.Z - 2.5 > Partt7.Position.Z
or a.Part5.Position.Z < Partt7.Position.Z
or a.Part5.Position.X +(1.9) < Partt7.Position.X 
or a.Part5.Position.X -(1.9) > Partt7.Position.X 
or a.Part5.Position.Y +(1.9) < Partt7.Position.Y 
or a.Part5.Position.Y -(1.9) > Partt7.Position.Y 
then
if a.Part5.Position.Z - 2.5 > Partt8.Position.Z
or a.Part5.Position.Z < Partt8.Position.Z
or a.Part5.Position.X +(1.9) < Partt8.Position.X 
or a.Part5.Position.X -(1.9) > Partt8.Position.X 
or a.Part5.Position.Y +(1.9) < Partt8.Position.Y 
or a.Part5.Position.Y -(1.9) > Partt8.Position.Y 
then
znePart5 = 1
else znePart5 = 0 
end
else znePart5 = 0
end
else znePart5 = 0
end
else znePart5 = 0
end
else znePart5 = 0
end
else znePart5 = 0
end
else znePart5 = 0
end

PriPart5 = 1 
if PriPart5 == 1
then	
if xpoPart5 == 1
then
for i=1, 10 do
a.Part5.CFrame = a.Part5.CFrame +(Vector3.new(.1,0,0))
wait(.01)
end
else PriPart5 = (PriPart5+1)
end
else end

if PriPart5 == 2
then	
if ypoPart5 == 1
then
for i=1, 10 do
a.Part5.CFrame = a.Part5.CFrame +(Vector3.new(0,.1,0))
wait(.01)
end
else PriPart5 = (PriPart5+1)
end
else end

if PriPart5 == 3
then	
if zpoPart5 == 1
then
for i=1, 10 do
a.Part5.CFrame = a.Part5.CFrame +(Vector3.new(0,0,.1))
wait(.01)
end
else PriPart5 = (PriPart5+1)
end
else end

if PriPart5 == 4
then	
if ynePart5 == 1
then
for i=1, 10 do
a.Part5.CFrame = a.Part5.CFrame +(Vector3.new(0,-.1,0))
wait(.01)
end
else PriPart5 = (PriPart5+1)
end
else end

if PriPart5 == 5
then	
if znePart5 == 1
then
for i=1, 10 do
a.Part5.CFrame = a.Part5.CFrame +(Vector3.new(0,0,-.1))
wait(.01)
end
else PriPart5 = (PriPart5+1)
end
else end
-- (PriPart5)
------------------------------------------------------------------------------
for i=1, 10 do
a.Part5.CFrame = a.Part5.CFrame * CFrame.fromEulerAnglesXYZ(math.pi/20,0,0)
wait(.01)
end
TMPart5 = (TMPart5+1)
until 
math.abs(a.Part5.Position.X - cPart5.Position.X) > 5
or TMPart5 == 7
else end
else end

if sPart5 == 3
and RPart5 == 2 --Checking +X Reconfiguration
then
if  XSPart5 == a.Part5.Position.X
and YSPart5 == a.Part5.Position.Y
and ZSPart5 == a.Part5.Position.Z
then
-- "Reconfiguring"
RPart5 = (RPart5+1)
repeat
if a.Part5.Position.X + 2.5 < Partt1.Position.X -- P1 +X Positions Library Reference
or a.Part5.Position.X > Partt1.Position.X
or a.Part5.Position.Y +(1.9) < Partt1.Position.Y 
or a.Part5.Position.Y -(1.9) > Partt1.Position.Y 
or a.Part5.Position.Z +(1.9) < Partt1.Position.Z 
or a.Part5.Position.Z -(1.9) > Partt1.Position.Z 
then
if a.Part5.Position.X + 2.5 < Partt2.Position.X
or a.Part5.Position.X > Partt2.Position.X
or a.Part5.Position.Y +(1.9) < Partt2.Position.Y 
or a.Part5.Position.Y -(1.9) > Partt2.Position.Y 
or a.Part5.Position.Z +(1.9) < Partt2.Position.Z 
or a.Part5.Position.Z -(1.9) > Partt2.Position.Z 
then
if a.Part5.Position.X + 2.5 < Partt3.Position.X
or a.Part5.Position.X > Partt3.Position.X
or a.Part5.Position.Y +(1.9) < Partt3.Position.Y 
or a.Part5.Position.Y -(1.9) > Partt3.Position.Y 
or a.Part5.Position.Z +(1.9) < Partt3.Position.Z 
or a.Part5.Position.Z -(1.9) > Partt3.Position.Z 
then
if a.Part5.Position.X + 2.5 < Partt4.Position.X
or a.Part5.Position.X > Partt4.Position.X
or a.Part5.Position.Y +(1.9) < Partt4.Position.Y 
or a.Part5.Position.Y -(1.9) > Partt4.Position.Y 
or a.Part5.Position.Z +(1.9) < Partt4.Position.Z 
or a.Part5.Position.Z -(1.9) > Partt4.Position.Z 
then
if a.Part5.Position.X + 2.5 < Partt6.Position.X
or a.Part5.Position.X > Partt6.Position.X
or a.Part5.Position.Y +(1.9) < Partt6.Position.Y 
or a.Part5.Position.Y -(1.9) > Partt6.Position.Y 
or a.Part5.Position.Z +(1.9) < Partt6.Position.Z 
or a.Part5.Position.Z -(1.9) > Partt6.Position.Z 
then
if a.Part5.Position.X + 2.5 < Partt7.Position.X
or a.Part5.Position.X > Partt7.Position.X
or a.Part5.Position.Y +(1.9) < Partt7.Position.Y 
or a.Part5.Position.Y -(1.9) > Partt7.Position.Y 
or a.Part5.Position.Z +(1.9) < Partt7.Position.Z 
or a.Part5.Position.Z -(1.9) > Partt7.Position.Z 
then
if a.Part5.Position.X + 2.5 < Partt8.Position.X
or a.Part5.Position.X > Partt8.Position.X
or a.Part5.Position.Y +(1.9) < Partt8.Position.Y 
or a.Part5.Position.Y -(1.9) > Partt8.Position.Y 
or a.Part5.Position.Z +(1.9) < Partt8.Position.Z 
or a.Part5.Position.Z -(1.9) > Partt8.Position.Z 
then
xpoPart5 = 1
else xpoPart5 = 0 
end
else xpoPart5 = 0
end
else xpoPart5 = 0
end
else xpoPart5 = 0
end
else xpoPart5 = 0
end
else xpoPart5 = 0
end
else xpoPart5 = 0
end

if a.Part5.Position.X - 2.5 > Partt1.Position.X -- P1 -X Positions Library Reference
or a.Part5.Position.X < Partt1.Position.X
or a.Part5.Position.Y +(1.9) < Partt1.Position.Y 
or a.Part5.Position.Y -(1.9) > Partt1.Position.Y 
or a.Part5.Position.Z +(1.9) < Partt1.Position.Z 
or a.Part5.Position.Z -(1.9) > Partt1.Position.Z 
then
if a.Part5.Position.X - 2.5 > Partt2.Position.X
or a.Part5.Position.X < Partt2.Position.X
or a.Part5.Position.Y +(1.9) < Partt2.Position.Y 
or a.Part5.Position.Y -(1.9) > Partt2.Position.Y 
or a.Part5.Position.Z +(1.9) < Partt2.Position.Z 
or a.Part5.Position.Z -(1.9) > Partt2.Position.Z 
then
if a.Part5.Position.X - 2.5 > Partt3.Position.X
or a.Part5.Position.X < Partt3.Position.X
or a.Part5.Position.Y +(1.9) < Partt3.Position.Y 
or a.Part5.Position.Y -(1.9) > Partt3.Position.Y 
or a.Part5.Position.Z +(1.9) < Partt3.Position.Z 
or a.Part5.Position.Z -(1.9) > Partt3.Position.Z 
then
if a.Part5.Position.X - 2.5 > Partt4.Position.X
or a.Part5.Position.X < Partt4.Position.X
or a.Part5.Position.Y +(1.9) < Partt4.Position.Y 
or a.Part5.Position.Y -(1.9) > Partt4.Position.Y 
or a.Part5.Position.Z +(1.9) < Partt4.Position.Z 
or a.Part5.Position.Z -(1.9) > Partt4.Position.Z 
then
if a.Part5.Position.X - 2.5 > Partt6.Position.X
or a.Part5.Position.X < Partt6.Position.X
or a.Part5.Position.Y +(1.9) < Partt6.Position.Y 
or a.Part5.Position.Y -(1.9) > Partt6.Position.Y 
or a.Part5.Position.Z +(1.9) < Partt6.Position.Z 
or a.Part5.Position.Z -(1.9) > Partt6.Position.Z 
then
if a.Part5.Position.X - 2.5 > Partt7.Position.X
or a.Part5.Position.X < Partt7.Position.X
or a.Part5.Position.Y +(1.9) < Partt7.Position.Y 
or a.Part5.Position.Y -(1.9) > Partt7.Position.Y 
or a.Part5.Position.Z +(1.9) < Partt7.Position.Z 
or a.Part5.Position.Z -(1.9) > Partt7.Position.Z 
then
if a.Part5.Position.X - 2.5 > Partt8.Position.X
or a.Part5.Position.X < Partt8.Position.X
or a.Part5.Position.Y +(1.9) < Partt8.Position.Y 
or a.Part5.Position.Y -(1.9) > Partt8.Position.Y 
or a.Part5.Position.Z +(1.9) < Partt8.Position.Z 
or a.Part5.Position.Z -(1.9) > Partt8.Position.Z 
then
xnePart5 = 1
else xnePart5 = 0 
end
else xnePart5 = 0
end
else xnePart5 = 0
end
else xnePart5 = 0
end
else xnePart5 = 0
end
else xnePart5 = 0
end
else xnePart5 = 0
end

if a.Part5.Position.Y + 2.5 < Partt1.Position.Y -- P1 +Y Positions Library Reference
or a.Part5.Position.Y > Partt1.Position.Y
or a.Part5.Position.X +(1.9) < Partt1.Position.X 
or a.Part5.Position.X -(1.9) > Partt1.Position.X 
or a.Part5.Position.Z +(1.9) < Partt1.Position.Z 
or a.Part5.Position.Z -(1.9) > Partt1.Position.Z 
then
if a.Part5.Position.Y + 2.5 < Partt2.Position.Y
or a.Part5.Position.Y > Partt2.Position.Y
or a.Part5.Position.X +(1.9) < Partt2.Position.X 
or a.Part5.Position.X -(1.9) > Partt2.Position.X 
or a.Part5.Position.Z +(1.9) < Partt2.Position.Z 
or a.Part5.Position.Z -(1.9) > Partt2.Position.Z 
then
if a.Part5.Position.Y + 2.5 < Partt3.Position.Y
or a.Part5.Position.Y > Partt3.Position.Y
or a.Part5.Position.X +(1.9) < Partt3.Position.X 
or a.Part5.Position.X -(1.9) > Partt3.Position.X 
or a.Part5.Position.Z +(1.9) < Partt3.Position.Z 
or a.Part5.Position.Z -(1.9) > Partt3.Position.Z 
then
if a.Part5.Position.Y + 2.5 < Partt4.Position.Y
or a.Part5.Position.Y > Partt4.Position.Y
or a.Part5.Position.X +(1.9) < Partt4.Position.X 
or a.Part5.Position.X -(1.9) > Partt4.Position.X 
or a.Part5.Position.Z +(1.9) < Partt4.Position.Z 
or a.Part5.Position.Z -(1.9) > Partt4.Position.Z 
then
if a.Part5.Position.Y + 2.5 < Partt6.Position.Y
or a.Part5.Position.Y > Partt6.Position.Y
or a.Part5.Position.X +(1.9) < Partt6.Position.X 
or a.Part5.Position.X -(1.9) > Partt6.Position.X 
or a.Part5.Position.Z +(1.9) < Partt6.Position.Z 
or a.Part5.Position.Z -(1.9) > Partt6.Position.Z 
then
if a.Part5.Position.Y + 2.5 < Partt7.Position.Y
or a.Part5.Position.Y > Partt7.Position.Y
or a.Part5.Position.X +(1.9) < Partt7.Position.X 
or a.Part5.Position.X -(1.9) > Partt7.Position.X 
or a.Part5.Position.Z +(1.9) < Partt7.Position.Z 
or a.Part5.Position.Z -(1.9) > Partt7.Position.Z 
then
if a.Part5.Position.Y + 2.5 < Partt8.Position.Y
or a.Part5.Position.Y > Partt8.Position.Y
or a.Part5.Position.X +(1.9) < Partt8.Position.X 
or a.Part5.Position.X -(1.9) > Partt8.Position.X 
or a.Part5.Position.Z +(1.9) < Partt8.Position.Z 
or a.Part5.Position.Z -(1.9) > Partt8.Position.Z 
then
ypoPart5 = 1
else ypoPart5 = 0 
end
else ypoPart5 = 0
end
else ypoPart5 = 0
end
else ypoPart5 = 0
end
else ypoPart5 = 0
end
else ypoPart5 = 0
end
else ypoPart5 = 0
end

if a.Part5.Position.Y - 2.5 > Partt1.Position.Y -- P1 -Y Positions Library Reference
or a.Part5.Position.Y < Partt1.Position.Y
or a.Part5.Position.X +(1.9) < Partt1.Position.X 
or a.Part5.Position.X -(1.9) > Partt1.Position.X 
or a.Part5.Position.Z +(1.9) < Partt1.Position.Z 
or a.Part5.Position.Z -(1.9) > Partt1.Position.Z 
then
if a.Part5.Position.Y - 2.5 > Partt2.Position.Y
or a.Part5.Position.Y < Partt2.Position.Y
or a.Part5.Position.X +(1.9) < Partt2.Position.X 
or a.Part5.Position.X -(1.9) > Partt2.Position.X 
or a.Part5.Position.Z +(1.9) < Partt2.Position.Z 
or a.Part5.Position.Z -(1.9) > Partt2.Position.Z 
then
if a.Part5.Position.Y - 2.5 > Partt3.Position.Y
or a.Part5.Position.Y < Partt3.Position.Y
or a.Part5.Position.X +(1.9) < Partt3.Position.X 
or a.Part5.Position.X -(1.9) > Partt3.Position.X 
or a.Part5.Position.Z +(1.9) < Partt3.Position.Z 
or a.Part5.Position.Z -(1.9) > Partt3.Position.Z 
then
if a.Part5.Position.Y - 2.5 > Partt4.Position.Y
or a.Part5.Position.Y < Partt4.Position.Y
or a.Part5.Position.X +(1.9) < Partt4.Position.X 
or a.Part5.Position.X -(1.9) > Partt4.Position.X 
or a.Part5.Position.Z +(1.9) < Partt4.Position.Z 
or a.Part5.Position.Z -(1.9) > Partt4.Position.Z 
then
if a.Part5.Position.Y - 2.5 > Partt6.Position.Y
or a.Part5.Position.Y < Partt6.Position.Y
or a.Part5.Position.X +(1.9) < Partt6.Position.X 
or a.Part5.Position.X -(1.9) > Partt6.Position.X 
or a.Part5.Position.Z +(1.9) < Partt6.Position.Z 
or a.Part5.Position.Z -(1.9) > Partt6.Position.Z 
then
if a.Part5.Position.Y - 2.5 > Partt7.Position.Y
or a.Part5.Position.Y < Partt7.Position.Y
or a.Part5.Position.X +(1.9) < Partt7.Position.X 
or a.Part5.Position.X -(1.9) > Partt7.Position.X 
or a.Part5.Position.Z +(1.9) < Partt7.Position.Z 
or a.Part5.Position.Z -(1.9) > Partt7.Position.Z 
then
if a.Part5.Position.Y - 2.5 > Partt8.Position.Y
or a.Part5.Position.Y < Partt8.Position.Y
or a.Part5.Position.X +(1.9) < Partt8.Position.X 
or a.Part5.Position.X -(1.9) > Partt8.Position.X 
or a.Part5.Position.Z +(1.9) < Partt8.Position.Z 
or a.Part5.Position.Z -(1.9) > Partt8.Position.Z 
then
ynePart5 = 1
else ynePart5 = 0 
end
else ynePart5 = 0
end
else ynePart5 = 0
end
else ynePart5 = 0
end
else ynePart5 = 0
end
else ynePart5 = 0
end
else ynePart5 = 0
end

if a.Part5.Position.Z + 2.5 < Partt1.Position.Z -- P1 +Z Positions Library Reference
or a.Part5.Position.Z > Partt1.Position.Z
or a.Part5.Position.X +(1.9) < Partt1.Position.X 
or a.Part5.Position.X -(1.9) > Partt1.Position.X 
or a.Part5.Position.Y +(1.9) < Partt1.Position.Y 
or a.Part5.Position.Y -(1.9) > Partt1.Position.Y 
then
if a.Part5.Position.Z + 2.5 < Partt2.Position.Z
or a.Part5.Position.Z > Partt2.Position.Z
or a.Part5.Position.X +(1.9) < Partt2.Position.X 
or a.Part5.Position.X -(1.9) > Partt2.Position.X 
or a.Part5.Position.Y +(1.9) < Partt2.Position.Y 
or a.Part5.Position.Y -(1.9) > Partt2.Position.Y 
then
if a.Part5.Position.Z + 2.5 < Partt3.Position.Z
or a.Part5.Position.Z > Partt3.Position.Z
or a.Part5.Position.X +(1.9) < Partt3.Position.X 
or a.Part5.Position.X -(1.9) > Partt3.Position.X 
or a.Part5.Position.Y +(1.9) < Partt3.Position.Y 
or a.Part5.Position.Y -(1.9) > Partt3.Position.Y 
then
if a.Part5.Position.Z + 2.5 < Partt4.Position.Z
or a.Part5.Position.Z > Partt4.Position.Z
or a.Part5.Position.X +(1.9) < Partt4.Position.X 
or a.Part5.Position.X -(1.9) > Partt4.Position.X 
or a.Part5.Position.Y +(1.9) < Partt4.Position.Y 
or a.Part5.Position.Y -(1.9) > Partt4.Position.Y 
then
if a.Part5.Position.Z + 2.5 < Partt6.Position.Z
or a.Part5.Position.Z > Partt6.Position.Z
or a.Part5.Position.X +(1.9) < Partt6.Position.X 
or a.Part5.Position.X -(1.9) > Partt6.Position.X 
or a.Part5.Position.Y +(1.9) < Partt6.Position.Y 
or a.Part5.Position.Y -(1.9) > Partt6.Position.Y 
then
if a.Part5.Position.Z + 2.5 < Partt7.Position.Z
or a.Part5.Position.Z > Partt7.Position.Z
or a.Part5.Position.X +(1.9) < Partt7.Position.X 
or a.Part5.Position.X -(1.9) > Partt7.Position.X 
or a.Part5.Position.Y +(1.9) < Partt7.Position.Y 
or a.Part5.Position.Y -(1.9) > Partt7.Position.Y 
then
if a.Part5.Position.Z + 2.5 < Partt8.Position.Z
or a.Part5.Position.Z > Partt8.Position.Z
or a.Part5.Position.X +(1.9) < Partt8.Position.X 
or a.Part5.Position.X -(1.9) > Partt8.Position.X 
or a.Part5.Position.Y +(1.9) < Partt8.Position.Y 
or a.Part5.Position.Y -(1.9) > Partt8.Position.Y 
then
zpoPart5 = 1
else zpoPart5 = 0 
end
else zpoPart5 = 0
end
else zpoPart5 = 0
end
else zpoPart5 = 0
end
else zpoPart5 = 0
end
else zpoPart5 = 0
end
else zpoPart5 = 0
end

if a.Part5.Position.Z - 2.5 > Partt1.Position.Z -- P1 -Z Positions Library Reference
or a.Part5.Position.Z < Partt1.Position.Z
or a.Part5.Position.X +(1.9) < Partt1.Position.X 
or a.Part5.Position.X -(1.9) > Partt1.Position.X 
or a.Part5.Position.Y +(1.9) < Partt1.Position.Y 
or a.Part5.Position.Y -(1.9) > Partt1.Position.Y 
then
if a.Part5.Position.Z - 2.5 > Partt2.Position.Z
or a.Part5.Position.Z < Partt2.Position.Z
or a.Part5.Position.X +(1.9) < Partt2.Position.X 
or a.Part5.Position.X -(1.9) > Partt2.Position.X 
or a.Part5.Position.Y +(1.9) < Partt2.Position.Y 
or a.Part5.Position.Y -(1.9) > Partt2.Position.Y 
then
if a.Part5.Position.Z - 2.5 > Partt3.Position.Z
or a.Part5.Position.Z < Partt3.Position.Z
or a.Part5.Position.X +(1.9) < Partt3.Position.X 
or a.Part5.Position.X -(1.9) > Partt3.Position.X 
or a.Part5.Position.Y +(1.9) < Partt3.Position.Y 
or a.Part5.Position.Y -(1.9) > Partt3.Position.Y 
then
if a.Part5.Position.Z - 2.5 > Partt4.Position.Z
or a.Part5.Position.Z < Partt4.Position.Z
or a.Part5.Position.X +(1.9) < Partt4.Position.X 
or a.Part5.Position.X -(1.9) > Partt4.Position.X 
or a.Part5.Position.Y +(1.9) < Partt4.Position.Y 
or a.Part5.Position.Y -(1.9) > Partt4.Position.Y 
then
if a.Part5.Position.Z - 2.5 > Partt6.Position.Z
or a.Part5.Position.Z < Partt6.Position.Z
or a.Part5.Position.X +(1.9) < Partt6.Position.X 
or a.Part5.Position.X -(1.9) > Partt6.Position.X 
or a.Part5.Position.Y +(1.9) < Partt6.Position.Y 
or a.Part5.Position.Y -(1.9) > Partt6.Position.Y 
then
if a.Part5.Position.Z - 2.5 > Partt7.Position.Z
or a.Part5.Position.Z < Partt7.Position.Z
or a.Part5.Position.X +(1.9) < Partt7.Position.X 
or a.Part5.Position.X -(1.9) > Partt7.Position.X 
or a.Part5.Position.Y +(1.9) < Partt7.Position.Y 
or a.Part5.Position.Y -(1.9) > Partt7.Position.Y 
then
if a.Part5.Position.Z - 2.5 > Partt8.Position.Z
or a.Part5.Position.Z < Partt8.Position.Z
or a.Part5.Position.X +(1.9) < Partt8.Position.X 
or a.Part5.Position.X -(1.9) > Partt8.Position.X 
or a.Part5.Position.Y +(1.9) < Partt8.Position.Y 
or a.Part5.Position.Y -(1.9) > Partt8.Position.Y 
then
znePart5 = 1
else znePart5 = 0 
end
else znePart5 = 0
end
else znePart5 = 0
end
else znePart5 = 0
end
else znePart5 = 0
end
else znePart5 = 0
end
else znePart5 = 0
end

PriPart5 = 1 

if PriPart5 == 1
then	
if ypoPart5 == 1
then
for i=1, 10 do
a.Part5.CFrame = a.Part5.CFrame +(Vector3.new(0,.1,0))
wait(.01)
end
else PriPart5 = (PriPart5+1)
end
else end


if PriPart5 == 2
then	
if xpoPart5 == 1
then
for i=1, 10 do
a.Part5.CFrame = a.Part5.CFrame +(Vector3.new(.1,0,0))
wait(.01)
end
else PriPart5 = (PriPart5+1)
end
else end



if PriPart5 == 3
then	
if zpoPart5 == 1
then
for i=1, 10 do
a.Part5.CFrame = a.Part5.CFrame +(Vector3.new(0,0,.1))
wait(.01)
end
else PriPart5 = (PriPart5+1)
end
else end


if PriPart5 == 4
then	
if znePart5 == 1
then
for i=1, 10 do
a.Part5.CFrame = a.Part5.CFrame +(Vector3.new(0,0,-.1))
wait(.01)
end
else PriPart5 = (PriPart5+1)
end
else end

if PriPart5 == 5
then	
if xnePart5 == 1
then
for i=1, 10 do
a.Part5.CFrame = a.Part5.CFrame +(Vector3.new(-.1,0,0))
wait(.01)
end
else PriPart5 = (PriPart5+1)
end
else end
-- (PriPart5)

for i=1, 10 do
a.Part5.CFrame = a.Part5.CFrame * CFrame.fromEulerAnglesXYZ(0,math.pi/10,0)
wait(.01)
end
TMPart5 = (TMPart5+1)
until 
math.abs(a.Part5.Position.Y - cPart5.Position.Y) > 5
or TMPart5 == 7
else end
else end
------------------------------------------------------------------------------

if sPart5 == 3
and RPart5 == 3 --Checking +X Reconfiguration
then
if  XSPart5 == a.Part5.Position.X
and YSPart5 == a.Part5.Position.Y
and ZSPart5 == a.Part5.Position.Z
then
-- "Reconfiguring"
RPart5 = (RPart5+1)
repeat
if a.Part5.Position.X + 2.5 < Partt1.Position.X -- P1 +X Positions Library Reference
or a.Part5.Position.X > Partt1.Position.X
or a.Part5.Position.Y +(1.9) < Partt1.Position.Y 
or a.Part5.Position.Y -(1.9) > Partt1.Position.Y 
or a.Part5.Position.Z +(1.9) < Partt1.Position.Z 
or a.Part5.Position.Z -(1.9) > Partt1.Position.Z 
then
if a.Part5.Position.X + 2.5 < Partt2.Position.X
or a.Part5.Position.X > Partt2.Position.X
or a.Part5.Position.Y +(1.9) < Partt2.Position.Y 
or a.Part5.Position.Y -(1.9) > Partt2.Position.Y 
or a.Part5.Position.Z +(1.9) < Partt2.Position.Z 
or a.Part5.Position.Z -(1.9) > Partt2.Position.Z 
then
if a.Part5.Position.X + 2.5 < Partt3.Position.X
or a.Part5.Position.X > Partt3.Position.X
or a.Part5.Position.Y +(1.9) < Partt3.Position.Y 
or a.Part5.Position.Y -(1.9) > Partt3.Position.Y 
or a.Part5.Position.Z +(1.9) < Partt3.Position.Z 
or a.Part5.Position.Z -(1.9) > Partt3.Position.Z 
then
if a.Part5.Position.X + 2.5 < Partt4.Position.X
or a.Part5.Position.X > Partt4.Position.X
or a.Part5.Position.Y +(1.9) < Partt4.Position.Y 
or a.Part5.Position.Y -(1.9) > Partt4.Position.Y 
or a.Part5.Position.Z +(1.9) < Partt4.Position.Z 
or a.Part5.Position.Z -(1.9) > Partt4.Position.Z 
then
if a.Part5.Position.X + 2.5 < Partt6.Position.X
or a.Part5.Position.X > Partt6.Position.X
or a.Part5.Position.Y +(1.9) < Partt6.Position.Y 
or a.Part5.Position.Y -(1.9) > Partt6.Position.Y 
or a.Part5.Position.Z +(1.9) < Partt6.Position.Z 
or a.Part5.Position.Z -(1.9) > Partt6.Position.Z 
then
if a.Part5.Position.X + 2.5 < Partt7.Position.X
or a.Part5.Position.X > Partt7.Position.X
or a.Part5.Position.Y +(1.9) < Partt7.Position.Y 
or a.Part5.Position.Y -(1.9) > Partt7.Position.Y 
or a.Part5.Position.Z +(1.9) < Partt7.Position.Z 
or a.Part5.Position.Z -(1.9) > Partt7.Position.Z 
then
if a.Part5.Position.X + 2.5 < Partt8.Position.X
or a.Part5.Position.X > Partt8.Position.X
or a.Part5.Position.Y +(1.9) < Partt8.Position.Y 
or a.Part5.Position.Y -(1.9) > Partt8.Position.Y 
or a.Part5.Position.Z +(1.9) < Partt8.Position.Z 
or a.Part5.Position.Z -(1.9) > Partt8.Position.Z 
then
xpoPart5 = 1
else xpoPart5 = 0 
end
else xpoPart5 = 0
end
else xpoPart5 = 0
end
else xpoPart5 = 0
end
else xpoPart5 = 0
end
else xpoPart5 = 0
end
else xpoPart5 = 0
end

if a.Part5.Position.X - 2.5 > Partt1.Position.X -- P1 -X Positions Library Reference
or a.Part5.Position.X < Partt1.Position.X
or a.Part5.Position.Y +(1.9) < Partt1.Position.Y 
or a.Part5.Position.Y -(1.9) > Partt1.Position.Y 
or a.Part5.Position.Z +(1.9) < Partt1.Position.Z 
or a.Part5.Position.Z -(1.9) > Partt1.Position.Z 
then
if a.Part5.Position.X - 2.5 > Partt2.Position.X
or a.Part5.Position.X < Partt2.Position.X
or a.Part5.Position.Y +(1.9) < Partt2.Position.Y 
or a.Part5.Position.Y -(1.9) > Partt2.Position.Y 
or a.Part5.Position.Z +(1.9) < Partt2.Position.Z 
or a.Part5.Position.Z -(1.9) > Partt2.Position.Z 
then
if a.Part5.Position.X - 2.5 > Partt3.Position.X
or a.Part5.Position.X < Partt3.Position.X
or a.Part5.Position.Y +(1.9) < Partt3.Position.Y 
or a.Part5.Position.Y -(1.9) > Partt3.Position.Y 
or a.Part5.Position.Z +(1.9) < Partt3.Position.Z 
or a.Part5.Position.Z -(1.9) > Partt3.Position.Z 
then
if a.Part5.Position.X - 2.5 > Partt4.Position.X
or a.Part5.Position.X < Partt4.Position.X
or a.Part5.Position.Y +(1.9) < Partt4.Position.Y 
or a.Part5.Position.Y -(1.9) > Partt4.Position.Y 
or a.Part5.Position.Z +(1.9) < Partt4.Position.Z 
or a.Part5.Position.Z -(1.9) > Partt4.Position.Z 
then
if a.Part5.Position.X - 2.5 > Partt6.Position.X
or a.Part5.Position.X < Partt6.Position.X
or a.Part5.Position.Y +(1.9) < Partt6.Position.Y 
or a.Part5.Position.Y -(1.9) > Partt6.Position.Y 
or a.Part5.Position.Z +(1.9) < Partt6.Position.Z 
or a.Part5.Position.Z -(1.9) > Partt6.Position.Z 
then
if a.Part5.Position.X - 2.5 > Partt7.Position.X
or a.Part5.Position.X < Partt7.Position.X
or a.Part5.Position.Y +(1.9) < Partt7.Position.Y 
or a.Part5.Position.Y -(1.9) > Partt7.Position.Y 
or a.Part5.Position.Z +(1.9) < Partt7.Position.Z 
or a.Part5.Position.Z -(1.9) > Partt7.Position.Z 
then
if a.Part5.Position.X - 2.5 > Partt8.Position.X
or a.Part5.Position.X < Partt8.Position.X
or a.Part5.Position.Y +(1.9) < Partt8.Position.Y 
or a.Part5.Position.Y -(1.9) > Partt8.Position.Y 
or a.Part5.Position.Z +(1.9) < Partt8.Position.Z 
or a.Part5.Position.Z -(1.9) > Partt8.Position.Z 
then
xnePart5 = 1
else xnePart5 = 0 
end
else xnePart5 = 0
end
else xnePart5 = 0
end
else xnePart5 = 0
end
else xnePart5 = 0
end
else xnePart5 = 0
end
else xnePart5 = 0
end

if a.Part5.Position.Y + 2.5 < Partt1.Position.Y -- P1 +Y Positions Library Reference
or a.Part5.Position.Y > Partt1.Position.Y
or a.Part5.Position.X +(1.9) < Partt1.Position.X 
or a.Part5.Position.X -(1.9) > Partt1.Position.X 
or a.Part5.Position.Z +(1.9) < Partt1.Position.Z 
or a.Part5.Position.Z -(1.9) > Partt1.Position.Z 
then
if a.Part5.Position.Y + 2.5 < Partt2.Position.Y
or a.Part5.Position.Y > Partt2.Position.Y
or a.Part5.Position.X +(1.9) < Partt2.Position.X 
or a.Part5.Position.X -(1.9) > Partt2.Position.X 
or a.Part5.Position.Z +(1.9) < Partt2.Position.Z 
or a.Part5.Position.Z -(1.9) > Partt2.Position.Z 
then
if a.Part5.Position.Y + 2.5 < Partt3.Position.Y
or a.Part5.Position.Y > Partt3.Position.Y
or a.Part5.Position.X +(1.9) < Partt3.Position.X 
or a.Part5.Position.X -(1.9) > Partt3.Position.X 
or a.Part5.Position.Z +(1.9) < Partt3.Position.Z 
or a.Part5.Position.Z -(1.9) > Partt3.Position.Z 
then
if a.Part5.Position.Y + 2.5 < Partt4.Position.Y
or a.Part5.Position.Y > Partt4.Position.Y
or a.Part5.Position.X +(1.9) < Partt4.Position.X 
or a.Part5.Position.X -(1.9) > Partt4.Position.X 
or a.Part5.Position.Z +(1.9) < Partt4.Position.Z 
or a.Part5.Position.Z -(1.9) > Partt4.Position.Z 
then
if a.Part5.Position.Y + 2.5 < Partt6.Position.Y
or a.Part5.Position.Y > Partt6.Position.Y
or a.Part5.Position.X +(1.9) < Partt6.Position.X 
or a.Part5.Position.X -(1.9) > Partt6.Position.X 
or a.Part5.Position.Z +(1.9) < Partt6.Position.Z 
or a.Part5.Position.Z -(1.9) > Partt6.Position.Z 
then
if a.Part5.Position.Y + 2.5 < Partt7.Position.Y
or a.Part5.Position.Y > Partt7.Position.Y
or a.Part5.Position.X +(1.9) < Partt7.Position.X 
or a.Part5.Position.X -(1.9) > Partt7.Position.X 
or a.Part5.Position.Z +(1.9) < Partt7.Position.Z 
or a.Part5.Position.Z -(1.9) > Partt7.Position.Z 
then
if a.Part5.Position.Y + 2.5 < Partt8.Position.Y
or a.Part5.Position.Y > Partt8.Position.Y
or a.Part5.Position.X +(1.9) < Partt8.Position.X 
or a.Part5.Position.X -(1.9) > Partt8.Position.X 
or a.Part5.Position.Z +(1.9) < Partt8.Position.Z 
or a.Part5.Position.Z -(1.9) > Partt8.Position.Z 
then
ypoPart5 = 1
else ypoPart5 = 0 
end
else ypoPart5 = 0
end
else ypoPart5 = 0
end
else ypoPart5 = 0
end
else ypoPart5 = 0
end
else ypoPart5 = 0
end
else ypoPart5 = 0
end

if a.Part5.Position.Y - 2.5 > Partt1.Position.Y -- P1 -Y Positions Library Reference
or a.Part5.Position.Y < Partt1.Position.Y
or a.Part5.Position.X +(1.9) < Partt1.Position.X 
or a.Part5.Position.X -(1.9) > Partt1.Position.X 
or a.Part5.Position.Z +(1.9) < Partt1.Position.Z 
or a.Part5.Position.Z -(1.9) > Partt1.Position.Z 
then
if a.Part5.Position.Y - 2.5 > Partt2.Position.Y
or a.Part5.Position.Y < Partt2.Position.Y
or a.Part5.Position.X +(1.9) < Partt2.Position.X 
or a.Part5.Position.X -(1.9) > Partt2.Position.X 
or a.Part5.Position.Z +(1.9) < Partt2.Position.Z 
or a.Part5.Position.Z -(1.9) > Partt2.Position.Z 
then
if a.Part5.Position.Y - 2.5 > Partt3.Position.Y
or a.Part5.Position.Y < Partt3.Position.Y
or a.Part5.Position.X +(1.9) < Partt3.Position.X 
or a.Part5.Position.X -(1.9) > Partt3.Position.X 
or a.Part5.Position.Z +(1.9) < Partt3.Position.Z 
or a.Part5.Position.Z -(1.9) > Partt3.Position.Z 
then
if a.Part5.Position.Y - 2.5 > Partt4.Position.Y
or a.Part5.Position.Y < Partt4.Position.Y
or a.Part5.Position.X +(1.9) < Partt4.Position.X 
or a.Part5.Position.X -(1.9) > Partt4.Position.X 
or a.Part5.Position.Z +(1.9) < Partt4.Position.Z 
or a.Part5.Position.Z -(1.9) > Partt4.Position.Z 
then
if a.Part5.Position.Y - 2.5 > Partt6.Position.Y
or a.Part5.Position.Y < Partt6.Position.Y
or a.Part5.Position.X +(1.9) < Partt6.Position.X 
or a.Part5.Position.X -(1.9) > Partt6.Position.X 
or a.Part5.Position.Z +(1.9) < Partt6.Position.Z 
or a.Part5.Position.Z -(1.9) > Partt6.Position.Z 
then
if a.Part5.Position.Y - 2.5 > Partt7.Position.Y
or a.Part5.Position.Y < Partt7.Position.Y
or a.Part5.Position.X +(1.9) < Partt7.Position.X 
or a.Part5.Position.X -(1.9) > Partt7.Position.X 
or a.Part5.Position.Z +(1.9) < Partt7.Position.Z 
or a.Part5.Position.Z -(1.9) > Partt7.Position.Z 
then
if a.Part5.Position.Y - 2.5 > Partt8.Position.Y
or a.Part5.Position.Y < Partt8.Position.Y
or a.Part5.Position.X +(1.9) < Partt8.Position.X 
or a.Part5.Position.X -(1.9) > Partt8.Position.X 
or a.Part5.Position.Z +(1.9) < Partt8.Position.Z 
or a.Part5.Position.Z -(1.9) > Partt8.Position.Z 
then
ynePart5 = 1
else ynePart5 = 0 
end
else ynePart5 = 0
end
else ynePart5 = 0
end
else ynePart5 = 0
end
else ynePart5 = 0
end
else ynePart5 = 0
end
else ynePart5 = 0
end

if a.Part5.Position.Z + 2.5 < Partt1.Position.Z -- P1 +Z Positions Library Reference
or a.Part5.Position.Z > Partt1.Position.Z
or a.Part5.Position.X +(1.9) < Partt1.Position.X 
or a.Part5.Position.X -(1.9) > Partt1.Position.X 
or a.Part5.Position.Y +(1.9) < Partt1.Position.Y 
or a.Part5.Position.Y -(1.9) > Partt1.Position.Y 
then
if a.Part5.Position.Z + 2.5 < Partt2.Position.Z
or a.Part5.Position.Z > Partt2.Position.Z
or a.Part5.Position.X +(1.9) < Partt2.Position.X 
or a.Part5.Position.X -(1.9) > Partt2.Position.X 
or a.Part5.Position.Y +(1.9) < Partt2.Position.Y 
or a.Part5.Position.Y -(1.9) > Partt2.Position.Y 
then
if a.Part5.Position.Z + 2.5 < Partt3.Position.Z
or a.Part5.Position.Z > Partt3.Position.Z
or a.Part5.Position.X +(1.9) < Partt3.Position.X 
or a.Part5.Position.X -(1.9) > Partt3.Position.X 
or a.Part5.Position.Y +(1.9) < Partt3.Position.Y 
or a.Part5.Position.Y -(1.9) > Partt3.Position.Y 
then
if a.Part5.Position.Z + 2.5 < Partt4.Position.Z
or a.Part5.Position.Z > Partt4.Position.Z
or a.Part5.Position.X +(1.9) < Partt4.Position.X 
or a.Part5.Position.X -(1.9) > Partt4.Position.X 
or a.Part5.Position.Y +(1.9) < Partt4.Position.Y 
or a.Part5.Position.Y -(1.9) > Partt4.Position.Y 
then
if a.Part5.Position.Z + 2.5 < Partt6.Position.Z
or a.Part5.Position.Z > Partt6.Position.Z
or a.Part5.Position.X +(1.9) < Partt6.Position.X 
or a.Part5.Position.X -(1.9) > Partt6.Position.X 
or a.Part5.Position.Y +(1.9) < Partt6.Position.Y 
or a.Part5.Position.Y -(1.9) > Partt6.Position.Y 
then
if a.Part5.Position.Z + 2.5 < Partt7.Position.Z
or a.Part5.Position.Z > Partt7.Position.Z
or a.Part5.Position.X +(1.9) < Partt7.Position.X 
or a.Part5.Position.X -(1.9) > Partt7.Position.X 
or a.Part5.Position.Y +(1.9) < Partt7.Position.Y 
or a.Part5.Position.Y -(1.9) > Partt7.Position.Y 
then
if a.Part5.Position.Z + 2.5 < Partt8.Position.Z
or a.Part5.Position.Z > Partt8.Position.Z
or a.Part5.Position.X +(1.9) < Partt8.Position.X 
or a.Part5.Position.X -(1.9) > Partt8.Position.X 
or a.Part5.Position.Y +(1.9) < Partt8.Position.Y 
or a.Part5.Position.Y -(1.9) > Partt8.Position.Y 
then
zpoPart5 = 1
else zpoPart5 = 0 
end
else zpoPart5 = 0
end
else zpoPart5 = 0
end
else zpoPart5 = 0
end
else zpoPart5 = 0
end
else zpoPart5 = 0
end
else zpoPart5 = 0
end

if a.Part5.Position.Z - 2.5 > Partt1.Position.Z -- P1 -Z Positions Library Reference
or a.Part5.Position.Z < Partt1.Position.Z
or a.Part5.Position.X +(1.9) < Partt1.Position.X 
or a.Part5.Position.X -(1.9) > Partt1.Position.X 
or a.Part5.Position.Y +(1.9) < Partt1.Position.Y 
or a.Part5.Position.Y -(1.9) > Partt1.Position.Y 
then
if a.Part5.Position.Z - 2.5 > Partt2.Position.Z
or a.Part5.Position.Z < Partt2.Position.Z
or a.Part5.Position.X +(1.9) < Partt2.Position.X 
or a.Part5.Position.X -(1.9) > Partt2.Position.X 
or a.Part5.Position.Y +(1.9) < Partt2.Position.Y 
or a.Part5.Position.Y -(1.9) > Partt2.Position.Y 
then
if a.Part5.Position.Z - 2.5 > Partt3.Position.Z
or a.Part5.Position.Z < Partt3.Position.Z
or a.Part5.Position.X +(1.9) < Partt3.Position.X 
or a.Part5.Position.X -(1.9) > Partt3.Position.X 
or a.Part5.Position.Y +(1.9) < Partt3.Position.Y 
or a.Part5.Position.Y -(1.9) > Partt3.Position.Y 
then
if a.Part5.Position.Z - 2.5 > Partt4.Position.Z
or a.Part5.Position.Z < Partt4.Position.Z
or a.Part5.Position.X +(1.9) < Partt4.Position.X 
or a.Part5.Position.X -(1.9) > Partt4.Position.X 
or a.Part5.Position.Y +(1.9) < Partt4.Position.Y 
or a.Part5.Position.Y -(1.9) > Partt4.Position.Y 
then
if a.Part5.Position.Z - 2.5 > Partt6.Position.Z
or a.Part5.Position.Z < Partt6.Position.Z
or a.Part5.Position.X +(1.9) < Partt6.Position.X 
or a.Part5.Position.X -(1.9) > Partt6.Position.X 
or a.Part5.Position.Y +(1.9) < Partt6.Position.Y 
or a.Part5.Position.Y -(1.9) > Partt6.Position.Y 
then
if a.Part5.Position.Z - 2.5 > Partt7.Position.Z
or a.Part5.Position.Z < Partt7.Position.Z
or a.Part5.Position.X +(1.9) < Partt7.Position.X 
or a.Part5.Position.X -(1.9) > Partt7.Position.X 
or a.Part5.Position.Y +(1.9) < Partt7.Position.Y 
or a.Part5.Position.Y -(1.9) > Partt7.Position.Y 
then
if a.Part5.Position.Z - 2.5 > Partt8.Position.Z
or a.Part5.Position.Z < Partt8.Position.Z
or a.Part5.Position.X +(1.9) < Partt8.Position.X 
or a.Part5.Position.X -(1.9) > Partt8.Position.X 
or a.Part5.Position.Y +(1.9) < Partt8.Position.Y 
or a.Part5.Position.Y -(1.9) > Partt8.Position.Y 
then
znePart5 = 1
else znePart5 = 0 
end
else znePart5 = 0
end
else znePart5 = 0
end
else znePart5 = 0
end
else znePart5 = 0
end
else znePart5 = 0
end
else znePart5 = 0
end

PriPart5 = 1 
if PriPart5 == 1
then	
if xnePart5 == 1
then
for i=1, 10 do
a.Part5.CFrame = a.Part5.CFrame +(Vector3.new(-.1,0,0))
wait(.01)
end
else PriPart5 = (PriPart5+1)
end
else end

if PriPart5 == 2
then	
if ypoPart5 == 1
then
for i=1, 10 do
a.Part5.CFrame = a.Part5.CFrame +(Vector3.new(0,.1,0))
wait(.01)
end
else PriPart5 = (PriPart5+1)
end
else end

if PriPart5 == 3
then	
if zpoPart5 == 1
then
for i=1, 10 do
a.Part5.CFrame = a.Part5.CFrame +(Vector3.new(0,0,.1))
wait(.01)
end
else PriPart5 = (PriPart5+1)
end
else end

if PriPart5 == 4
then	
if ynePart5 == 1
then
for i=1, 10 do
a.Part5.CFrame = a.Part5.CFrame +(Vector3.new(0,-.1,0))
wait(.01)
end
else PriPart5 = (PriPart5+1)
end
else end

if PriPart5 == 5
then	
if znePart5 == 1
then
for i=1, 10 do
a.Part5.CFrame = a.Part5.CFrame +(Vector3.new(0,0,-.1))
wait(.01)
end
else PriPart5 = (PriPart5+1)
end
else end
------------------------------------------------------------------------------
-- (PriPart5)

wait(.1)
TMPart5 = (TMPart5+1)
until 
math.abs(a.Part5.Position.X - cPart5.Position.X) > 5
or TMPart5 == 7
else end
else end

if sPart5 == 3
and RPart5 == 4 --Checking +X Reconfiguration
then
if  XSPart5 == a.Part5.Position.X
and YSPart5 == a.Part5.Position.Y
and ZSPart5 == a.Part5.Position.Z
then
-- "Reconfiguring"
RPart5 = 1
repeat
if a.Part5.Position.X + 2.5 < Partt1.Position.X -- P1 +X Positions Library Reference
or a.Part5.Position.X > Partt1.Position.X
or a.Part5.Position.Y +(1.9) < Partt1.Position.Y 
or a.Part5.Position.Y -(1.9) > Partt1.Position.Y 
or a.Part5.Position.Z +(1.9) < Partt1.Position.Z 
or a.Part5.Position.Z -(1.9) > Partt1.Position.Z 
then
if a.Part5.Position.X + 2.5 < Partt2.Position.X
or a.Part5.Position.X > Partt2.Position.X
or a.Part5.Position.Y +(1.9) < Partt2.Position.Y 
or a.Part5.Position.Y -(1.9) > Partt2.Position.Y 
or a.Part5.Position.Z +(1.9) < Partt2.Position.Z 
or a.Part5.Position.Z -(1.9) > Partt2.Position.Z 
then
if a.Part5.Position.X + 2.5 < Partt3.Position.X
or a.Part5.Position.X > Partt3.Position.X
or a.Part5.Position.Y +(1.9) < Partt3.Position.Y 
or a.Part5.Position.Y -(1.9) > Partt3.Position.Y 
or a.Part5.Position.Z +(1.9) < Partt3.Position.Z 
or a.Part5.Position.Z -(1.9) > Partt3.Position.Z 
then
if a.Part5.Position.X + 2.5 < Partt4.Position.X
or a.Part5.Position.X > Partt4.Position.X
or a.Part5.Position.Y +(1.9) < Partt4.Position.Y 
or a.Part5.Position.Y -(1.9) > Partt4.Position.Y 
or a.Part5.Position.Z +(1.9) < Partt4.Position.Z 
or a.Part5.Position.Z -(1.9) > Partt4.Position.Z 
then
if a.Part5.Position.X + 2.5 < Partt6.Position.X
or a.Part5.Position.X > Partt6.Position.X
or a.Part5.Position.Y +(1.9) < Partt6.Position.Y 
or a.Part5.Position.Y -(1.9) > Partt6.Position.Y 
or a.Part5.Position.Z +(1.9) < Partt6.Position.Z 
or a.Part5.Position.Z -(1.9) > Partt6.Position.Z 
then
if a.Part5.Position.X + 2.5 < Partt7.Position.X
or a.Part5.Position.X > Partt7.Position.X
or a.Part5.Position.Y +(1.9) < Partt7.Position.Y 
or a.Part5.Position.Y -(1.9) > Partt7.Position.Y 
or a.Part5.Position.Z +(1.9) < Partt7.Position.Z 
or a.Part5.Position.Z -(1.9) > Partt7.Position.Z 
then
if a.Part5.Position.X + 2.5 < Partt8.Position.X
or a.Part5.Position.X > Partt8.Position.X
or a.Part5.Position.Y +(1.9) < Partt8.Position.Y 
or a.Part5.Position.Y -(1.9) > Partt8.Position.Y 
or a.Part5.Position.Z +(1.9) < Partt8.Position.Z 
or a.Part5.Position.Z -(1.9) > Partt8.Position.Z 
then
xpoPart5 = 1
else xpoPart5 = 0 
end
else xpoPart5 = 0
end
else xpoPart5 = 0
end
else xpoPart5 = 0
end
else xpoPart5 = 0
end
else xpoPart5 = 0
end
else xpoPart5 = 0
end

if a.Part5.Position.X - 2.5 > Partt1.Position.X -- P1 -X Positions Library Reference
or a.Part5.Position.X < Partt1.Position.X
or a.Part5.Position.Y +(1.9) < Partt1.Position.Y 
or a.Part5.Position.Y -(1.9) > Partt1.Position.Y 
or a.Part5.Position.Z +(1.9) < Partt1.Position.Z 
or a.Part5.Position.Z -(1.9) > Partt1.Position.Z 
then
if a.Part5.Position.X - 2.5 > Partt2.Position.X
or a.Part5.Position.X < Partt2.Position.X
or a.Part5.Position.Y +(1.9) < Partt2.Position.Y 
or a.Part5.Position.Y -(1.9) > Partt2.Position.Y 
or a.Part5.Position.Z +(1.9) < Partt2.Position.Z 
or a.Part5.Position.Z -(1.9) > Partt2.Position.Z 
then
if a.Part5.Position.X - 2.5 > Partt3.Position.X
or a.Part5.Position.X < Partt3.Position.X
or a.Part5.Position.Y +(1.9) < Partt3.Position.Y 
or a.Part5.Position.Y -(1.9) > Partt3.Position.Y 
or a.Part5.Position.Z +(1.9) < Partt3.Position.Z 
or a.Part5.Position.Z -(1.9) > Partt3.Position.Z 
then
if a.Part5.Position.X - 2.5 > Partt4.Position.X
or a.Part5.Position.X < Partt4.Position.X
or a.Part5.Position.Y +(1.9) < Partt4.Position.Y 
or a.Part5.Position.Y -(1.9) > Partt4.Position.Y 
or a.Part5.Position.Z +(1.9) < Partt4.Position.Z 
or a.Part5.Position.Z -(1.9) > Partt4.Position.Z 
then
if a.Part5.Position.X - 2.5 > Partt6.Position.X
or a.Part5.Position.X < Partt6.Position.X
or a.Part5.Position.Y +(1.9) < Partt6.Position.Y 
or a.Part5.Position.Y -(1.9) > Partt6.Position.Y 
or a.Part5.Position.Z +(1.9) < Partt6.Position.Z 
or a.Part5.Position.Z -(1.9) > Partt6.Position.Z 
then
if a.Part5.Position.X - 2.5 > Partt7.Position.X
or a.Part5.Position.X < Partt7.Position.X
or a.Part5.Position.Y +(1.9) < Partt7.Position.Y 
or a.Part5.Position.Y -(1.9) > Partt7.Position.Y 
or a.Part5.Position.Z +(1.9) < Partt7.Position.Z 
or a.Part5.Position.Z -(1.9) > Partt7.Position.Z 
then
if a.Part5.Position.X - 2.5 > Partt8.Position.X
or a.Part5.Position.X < Partt8.Position.X
or a.Part5.Position.Y +(1.9) < Partt8.Position.Y 
or a.Part5.Position.Y -(1.9) > Partt8.Position.Y 
or a.Part5.Position.Z +(1.9) < Partt8.Position.Z 
or a.Part5.Position.Z -(1.9) > Partt8.Position.Z 
then
xnePart5 = 1
else xnePart5 = 0 
end
else xnePart5 = 0
end
else xnePart5 = 0
end
else xnePart5 = 0
end
else xnePart5 = 0
end
else xnePart5 = 0
end
else xnePart5 = 0
end

if a.Part5.Position.Y + 2.5 < Partt1.Position.Y -- P1 +Y Positions Library Reference
or a.Part5.Position.Y > Partt1.Position.Y
or a.Part5.Position.X +(1.9) < Partt1.Position.X 
or a.Part5.Position.X -(1.9) > Partt1.Position.X 
or a.Part5.Position.Z +(1.9) < Partt1.Position.Z 
or a.Part5.Position.Z -(1.9) > Partt1.Position.Z 
then
if a.Part5.Position.Y + 2.5 < Partt2.Position.Y
or a.Part5.Position.Y > Partt2.Position.Y
or a.Part5.Position.X +(1.9) < Partt2.Position.X 
or a.Part5.Position.X -(1.9) > Partt2.Position.X 
or a.Part5.Position.Z +(1.9) < Partt2.Position.Z 
or a.Part5.Position.Z -(1.9) > Partt2.Position.Z 
then
if a.Part5.Position.Y + 2.5 < Partt3.Position.Y
or a.Part5.Position.Y > Partt3.Position.Y
or a.Part5.Position.X +(1.9) < Partt3.Position.X 
or a.Part5.Position.X -(1.9) > Partt3.Position.X 
or a.Part5.Position.Z +(1.9) < Partt3.Position.Z 
or a.Part5.Position.Z -(1.9) > Partt3.Position.Z 
then
if a.Part5.Position.Y + 2.5 < Partt4.Position.Y
or a.Part5.Position.Y > Partt4.Position.Y
or a.Part5.Position.X +(1.9) < Partt4.Position.X 
or a.Part5.Position.X -(1.9) > Partt4.Position.X 
or a.Part5.Position.Z +(1.9) < Partt4.Position.Z 
or a.Part5.Position.Z -(1.9) > Partt4.Position.Z 
then
if a.Part5.Position.Y + 2.5 < Partt6.Position.Y
or a.Part5.Position.Y > Partt6.Position.Y
or a.Part5.Position.X +(1.9) < Partt6.Position.X 
or a.Part5.Position.X -(1.9) > Partt6.Position.X 
or a.Part5.Position.Z +(1.9) < Partt6.Position.Z 
or a.Part5.Position.Z -(1.9) > Partt6.Position.Z 
then
if a.Part5.Position.Y + 2.5 < Partt7.Position.Y
or a.Part5.Position.Y > Partt7.Position.Y
or a.Part5.Position.X +(1.9) < Partt7.Position.X 
or a.Part5.Position.X -(1.9) > Partt7.Position.X 
or a.Part5.Position.Z +(1.9) < Partt7.Position.Z 
or a.Part5.Position.Z -(1.9) > Partt7.Position.Z 
then
if a.Part5.Position.Y + 2.5 < Partt8.Position.Y
or a.Part5.Position.Y > Partt8.Position.Y
or a.Part5.Position.X +(1.9) < Partt8.Position.X 
or a.Part5.Position.X -(1.9) > Partt8.Position.X 
or a.Part5.Position.Z +(1.9) < Partt8.Position.Z 
or a.Part5.Position.Z -(1.9) > Partt8.Position.Z 
then
ypoPart5 = 1
else ypoPart5 = 0 
end
else ypoPart5 = 0
end
else ypoPart5 = 0
end
else ypoPart5 = 0
end
else ypoPart5 = 0
end
else ypoPart5 = 0
end
else ypoPart5 = 0
end

if a.Part5.Position.Y - 2.5 > Partt1.Position.Y -- P1 -Y Positions Library Reference
or a.Part5.Position.Y < Partt1.Position.Y
or a.Part5.Position.X +(1.9) < Partt1.Position.X 
or a.Part5.Position.X -(1.9) > Partt1.Position.X 
or a.Part5.Position.Z +(1.9) < Partt1.Position.Z 
or a.Part5.Position.Z -(1.9) > Partt1.Position.Z 
then
if a.Part5.Position.Y - 2.5 > Partt2.Position.Y
or a.Part5.Position.Y < Partt2.Position.Y
or a.Part5.Position.X +(1.9) < Partt2.Position.X 
or a.Part5.Position.X -(1.9) > Partt2.Position.X 
or a.Part5.Position.Z +(1.9) < Partt2.Position.Z 
or a.Part5.Position.Z -(1.9) > Partt2.Position.Z 
then
if a.Part5.Position.Y - 2.5 > Partt3.Position.Y
or a.Part5.Position.Y < Partt3.Position.Y
or a.Part5.Position.X +(1.9) < Partt3.Position.X 
or a.Part5.Position.X -(1.9) > Partt3.Position.X 
or a.Part5.Position.Z +(1.9) < Partt3.Position.Z 
or a.Part5.Position.Z -(1.9) > Partt3.Position.Z 
then
if a.Part5.Position.Y - 2.5 > Partt4.Position.Y
or a.Part5.Position.Y < Partt4.Position.Y
or a.Part5.Position.X +(1.9) < Partt4.Position.X 
or a.Part5.Position.X -(1.9) > Partt4.Position.X 
or a.Part5.Position.Z +(1.9) < Partt4.Position.Z 
or a.Part5.Position.Z -(1.9) > Partt4.Position.Z 
then
if a.Part5.Position.Y - 2.5 > Partt6.Position.Y
or a.Part5.Position.Y < Partt6.Position.Y
or a.Part5.Position.X +(1.9) < Partt6.Position.X 
or a.Part5.Position.X -(1.9) > Partt6.Position.X 
or a.Part5.Position.Z +(1.9) < Partt6.Position.Z 
or a.Part5.Position.Z -(1.9) > Partt6.Position.Z 
then
if a.Part5.Position.Y - 2.5 > Partt7.Position.Y
or a.Part5.Position.Y < Partt7.Position.Y
or a.Part5.Position.X +(1.9) < Partt7.Position.X 
or a.Part5.Position.X -(1.9) > Partt7.Position.X 
or a.Part5.Position.Z +(1.9) < Partt7.Position.Z 
or a.Part5.Position.Z -(1.9) > Partt7.Position.Z 
then
if a.Part5.Position.Y - 2.5 > Partt8.Position.Y
or a.Part5.Position.Y < Partt8.Position.Y
or a.Part5.Position.X +(1.9) < Partt8.Position.X 
or a.Part5.Position.X -(1.9) > Partt8.Position.X 
or a.Part5.Position.Z +(1.9) < Partt8.Position.Z 
or a.Part5.Position.Z -(1.9) > Partt8.Position.Z 
then
ynePart5 = 1
else ynePart5 = 0 
end
else ynePart5 = 0
end
else ynePart5 = 0
end
else ynePart5 = 0
end
else ynePart5 = 0
end
else ynePart5 = 0
end
else ynePart5 = 0
end

if a.Part5.Position.Z + 2.5 < Partt1.Position.Z -- P1 +Z Positions Library Reference
or a.Part5.Position.Z > Partt1.Position.Z
or a.Part5.Position.X +(1.9) < Partt1.Position.X 
or a.Part5.Position.X -(1.9) > Partt1.Position.X 
or a.Part5.Position.Y +(1.9) < Partt1.Position.Y 
or a.Part5.Position.Y -(1.9) > Partt1.Position.Y 
then
if a.Part5.Position.Z + 2.5 < Partt2.Position.Z
or a.Part5.Position.Z > Partt2.Position.Z
or a.Part5.Position.X +(1.9) < Partt2.Position.X 
or a.Part5.Position.X -(1.9) > Partt2.Position.X 
or a.Part5.Position.Y +(1.9) < Partt2.Position.Y 
or a.Part5.Position.Y -(1.9) > Partt2.Position.Y 
then
if a.Part5.Position.Z + 2.5 < Partt3.Position.Z
or a.Part5.Position.Z > Partt3.Position.Z
or a.Part5.Position.X +(1.9) < Partt3.Position.X 
or a.Part5.Position.X -(1.9) > Partt3.Position.X 
or a.Part5.Position.Y +(1.9) < Partt3.Position.Y 
or a.Part5.Position.Y -(1.9) > Partt3.Position.Y 
then
if a.Part5.Position.Z + 2.5 < Partt4.Position.Z
or a.Part5.Position.Z > Partt4.Position.Z
or a.Part5.Position.X +(1.9) < Partt4.Position.X 
or a.Part5.Position.X -(1.9) > Partt4.Position.X 
or a.Part5.Position.Y +(1.9) < Partt4.Position.Y 
or a.Part5.Position.Y -(1.9) > Partt4.Position.Y 
then
if a.Part5.Position.Z + 2.5 < Partt6.Position.Z
or a.Part5.Position.Z > Partt6.Position.Z
or a.Part5.Position.X +(1.9) < Partt6.Position.X 
or a.Part5.Position.X -(1.9) > Partt6.Position.X 
or a.Part5.Position.Y +(1.9) < Partt6.Position.Y 
or a.Part5.Position.Y -(1.9) > Partt6.Position.Y 
then
if a.Part5.Position.Z + 2.5 < Partt7.Position.Z
or a.Part5.Position.Z > Partt7.Position.Z
or a.Part5.Position.X +(1.9) < Partt7.Position.X 
or a.Part5.Position.X -(1.9) > Partt7.Position.X 
or a.Part5.Position.Y +(1.9) < Partt7.Position.Y 
or a.Part5.Position.Y -(1.9) > Partt7.Position.Y 
then
if a.Part5.Position.Z + 2.5 < Partt8.Position.Z
or a.Part5.Position.Z > Partt8.Position.Z
or a.Part5.Position.X +(1.9) < Partt8.Position.X 
or a.Part5.Position.X -(1.9) > Partt8.Position.X 
or a.Part5.Position.Y +(1.9) < Partt8.Position.Y 
or a.Part5.Position.Y -(1.9) > Partt8.Position.Y 
then
zpoPart5 = 1
else zpoPart5 = 0 
end
else zpoPart5 = 0
end
else zpoPart5 = 0
end
else zpoPart5 = 0
end
else zpoPart5 = 0
end
else zpoPart5 = 0
end
else zpoPart5 = 0
end

if a.Part5.Position.Z - 2.5 > Partt1.Position.Z -- P1 -Z Positions Library Reference
or a.Part5.Position.Z < Partt1.Position.Z
or a.Part5.Position.X +(1.9) < Partt1.Position.X 
or a.Part5.Position.X -(1.9) > Partt1.Position.X 
or a.Part5.Position.Y +(1.9) < Partt1.Position.Y 
or a.Part5.Position.Y -(1.9) > Partt1.Position.Y 
then
if a.Part5.Position.Z - 2.5 > Partt2.Position.Z
or a.Part5.Position.Z < Partt2.Position.Z
or a.Part5.Position.X +(1.9) < Partt2.Position.X 
or a.Part5.Position.X -(1.9) > Partt2.Position.X 
or a.Part5.Position.Y +(1.9) < Partt2.Position.Y 
or a.Part5.Position.Y -(1.9) > Partt2.Position.Y 
then
if a.Part5.Position.Z - 2.5 > Partt3.Position.Z
or a.Part5.Position.Z < Partt3.Position.Z
or a.Part5.Position.X +(1.9) < Partt3.Position.X 
or a.Part5.Position.X -(1.9) > Partt3.Position.X 
or a.Part5.Position.Y +(1.9) < Partt3.Position.Y 
or a.Part5.Position.Y -(1.9) > Partt3.Position.Y 
then
if a.Part5.Position.Z - 2.5 > Partt4.Position.Z
or a.Part5.Position.Z < Partt4.Position.Z
or a.Part5.Position.X +(1.9) < Partt4.Position.X 
or a.Part5.Position.X -(1.9) > Partt4.Position.X 
or a.Part5.Position.Y +(1.9) < Partt4.Position.Y 
or a.Part5.Position.Y -(1.9) > Partt4.Position.Y 
then
if a.Part5.Position.Z - 2.5 > Partt6.Position.Z
or a.Part5.Position.Z < Partt6.Position.Z
or a.Part5.Position.X +(1.9) < Partt6.Position.X 
or a.Part5.Position.X -(1.9) > Partt6.Position.X 
or a.Part5.Position.Y +(1.9) < Partt6.Position.Y 
or a.Part5.Position.Y -(1.9) > Partt6.Position.Y 
then
if a.Part5.Position.Z - 2.5 > Partt7.Position.Z
or a.Part5.Position.Z < Partt7.Position.Z
or a.Part5.Position.X +(1.9) < Partt7.Position.X 
or a.Part5.Position.X -(1.9) > Partt7.Position.X 
or a.Part5.Position.Y +(1.9) < Partt7.Position.Y 
or a.Part5.Position.Y -(1.9) > Partt7.Position.Y 
then
if a.Part5.Position.Z - 2.5 > Partt8.Position.Z
or a.Part5.Position.Z < Partt8.Position.Z
or a.Part5.Position.X +(1.9) < Partt8.Position.X 
or a.Part5.Position.X -(1.9) > Partt8.Position.X 
or a.Part5.Position.Y +(1.9) < Partt8.Position.Y 
or a.Part5.Position.Y -(1.9) > Partt8.Position.Y 
then
znePart5 = 1
else znePart5 = 0 
end
else znePart5 = 0
end
else znePart5 = 0
end
else znePart5 = 0
end
else znePart5 = 0
end
else znePart5 = 0
end
else znePart5 = 0
end

PriPart5 = 1 

if PriPart5 == 1
then	
if ynePart5 == 1
then
for i=1, 10 do
a.Part5.CFrame = a.Part5.CFrame +(Vector3.new(0,-.1,0))
wait(.01)
end
else PriPart5 = (PriPart5+1)
end
else end


if PriPart5 == 2
then	
if xpoPart5 == 1
then
for i=1, 10 do
a.Part5.CFrame = a.Part5.CFrame +(Vector3.new(.1,0,0))
wait(.01)
end
else PriPart5 = (PriPart5+1)
end
else end



if PriPart5 == 3
then	
if zpoPart5 == 1
then
for i=1, 10 do
a.Part5.CFrame = a.Part5.CFrame +(Vector3.new(0,0,.1))
wait(.01)
end
else PriPart5 = (PriPart5+1)
end
else end


if PriPart5 == 4
then	
if znePart5 == 1
then
for i=1, 10 do
a.Part5.CFrame = a.Part5.CFrame +(Vector3.new(0,0,-.1))
wait(.01)
end
else PriPart5 = (PriPart5+1)
end
else end

if PriPart5 == 5
then	
if xnePart5 == 1
then
for i=1, 10 do
a.Part5.CFrame = a.Part5.CFrame +(Vector3.new(-.1,0,0))
wait(.01)
end
else PriPart5 = (PriPart5+1)
end
else end
-- (PriPart5)

wait(.1)
TMPart5 = (TMPart5+1)
until 
math.abs(a.Part5.Position.Y - cPart5.Position.Y) > 5
or TMPart5 == 7
else end
else end
------------------------------------------------------------------------------

if sPart5==3
then sPart5 = 0
else end

wait(.1)
until
    a.Part5.Position.X < cPart5.Position.X +.7
and a.Part5.Position.X > cPart5.Position.X -.7
and a.Part5.Position.Y < cPart5.Position.Y +.7
and a.Part5.Position.Y > cPart5.Position.Y -.7
and a.Part5.Position.Z < cPart5.Position.Z +.7
and a.Part5.Position.Z > cPart5.Position.Z -.7
end --Couroutine





function core6()
wait(.25)
repeat

TMPart6 =  0

if cPart6.Position.X > a.Part6.Position.X then --Checking X Positions
XPart6 = 1
elseif cPart6.Position.X < a.Part6.Position.X then
XPart6 = -1
elseif cPart6.Position.X == a.Part6.Position.X then
XPart6 = 0
end

if cPart6.Position.Y > a.Part6.Position.Y then --Checking Y Positions
YPart6 = 1
elseif cPart6.Position.Y < a.Part6.Position.Y then
YPart6 = -1
elseif cPart6.Position.Y == a.Part6.Position.Y then
YPart6 = 0
end

if cPart6.Position.Z > a.Part6.Position.Z then --Checking Z Positions
ZPart6 = 1
elseif cPart6.Position.Z < a.Part6.Position.Z then
ZPart6 = -1
elseif cPart6.Position.Z == a.Part6.Position.Z then
ZPart6 = 0
end
-- ++-- 											
if  math.abs(a.Part6.Position.X - cPart6.Position.X) > math.abs(a.Part6.Position.Y - cPart6.Position.Y) --Priority Checks 1=X 2=Y 3=Z
and math.abs(a.Part6.Position.X - cPart6.Position.X) > math.abs(a.Part6.Position.Z - cPart6.Position.Z)
then PriPart6 = 1
else end 
if  math.abs(a.Part6.Position.Y - cPart6.Position.Y) > math.abs(a.Part6.Position.X - cPart6.Position.X) 
and math.abs(a.Part6.Position.Y - cPart6.Position.Y) > math.abs(a.Part6.Position.Z - cPart6.Position.Z)
then PriPart6 = 2
else end 
if  math.abs(a.Part6.Position.Z - cPart6.Position.Z) > math.abs(a.Part6.Position.Y - cPart6.Position.Y) 
and math.abs(a.Part6.Position.Z - cPart6.Position.Z) > math.abs(a.Part6.Position.X - cPart6.Position.X)
then PriPart6 = 3
else end 
if math.abs(a.Part6.Position.X - cPart6.Position.X) == math.abs(a.Part6.Position.Y - cPart6.Position.Y)  
or math.abs(a.Part6.Position.X - cPart6.Position.X) == math.abs(a.Part6.Position.Z - cPart6.Position.Z)
or math.abs(a.Part6.Position.Y - cPart6.Position.Y) == math.abs(a.Part6.Position.X - cPart6.Position.X)
then PriPart6 = 1
else end 

if a.Part6.Position.X + 2.5 < Partt1.Position.X -- P1 +X Positions Library Reference
or a.Part6.Position.X > Partt1.Position.X
or a.Part6.Position.Y +(1.9) < Partt1.Position.Y 
or a.Part6.Position.Y -(1.9) > Partt1.Position.Y 
or a.Part6.Position.Z +(1.9) < Partt1.Position.Z 
or a.Part6.Position.Z -(1.9) > Partt1.Position.Z 
then
if a.Part6.Position.X + 2.5 < Partt2.Position.X
or a.Part6.Position.X > Partt2.Position.X
or a.Part6.Position.Y +(1.9) < Partt2.Position.Y 
or a.Part6.Position.Y -(1.9) > Partt2.Position.Y 
or a.Part6.Position.Z +(1.9) < Partt2.Position.Z 
or a.Part6.Position.Z -(1.9) > Partt2.Position.Z 
then
if a.Part6.Position.X + 2.5 < Partt3.Position.X
or a.Part6.Position.X > Partt3.Position.X
or a.Part6.Position.Y +(1.9) < Partt3.Position.Y 
or a.Part6.Position.Y -(1.9) > Partt3.Position.Y 
or a.Part6.Position.Z +(1.9) < Partt3.Position.Z 
or a.Part6.Position.Z -(1.9) > Partt3.Position.Z 
then
if a.Part6.Position.X + 2.5 < Partt4.Position.X
or a.Part6.Position.X > Partt4.Position.X
or a.Part6.Position.Y +(1.9) < Partt4.Position.Y 
or a.Part6.Position.Y -(1.9) > Partt4.Position.Y 
or a.Part6.Position.Z +(1.9) < Partt4.Position.Z 
or a.Part6.Position.Z -(1.9) > Partt4.Position.Z 
then
if a.Part6.Position.X + 2.5 < Partt5.Position.X
or a.Part6.Position.X > Partt5.Position.X
or a.Part6.Position.Y +(1.9) < Partt5.Position.Y 
or a.Part6.Position.Y -(1.9) > Partt5.Position.Y 
or a.Part6.Position.Z +(1.9) < Partt5.Position.Z 
or a.Part6.Position.Z -(1.9) > Partt5.Position.Z 
then
if a.Part6.Position.X + 2.5 < Partt7.Position.X
or a.Part6.Position.X > Partt7.Position.X
or a.Part6.Position.Y +(1.9) < Partt7.Position.Y 
or a.Part6.Position.Y -(1.9) > Partt7.Position.Y 
or a.Part6.Position.Z +(1.9) < Partt7.Position.Z 
or a.Part6.Position.Z -(1.9) > Partt7.Position.Z 
then
if a.Part6.Position.X + 2.5 < Partt8.Position.X
or a.Part6.Position.X > Partt8.Position.X
or a.Part6.Position.Y +(1.9) < Partt8.Position.Y 
or a.Part6.Position.Y -(1.9) > Partt8.Position.Y 
or a.Part6.Position.Z +(1.9) < Partt8.Position.Z 
or a.Part6.Position.Z -(1.9) > Partt8.Position.Z 
then
xpoPart6 = 1
else xpoPart6 = 0 
end
else xpoPart6 = 0
end
else xpoPart6 = 0
end
else xpoPart6 = 0
end
else xpoPart6 = 0
end
else xpoPart6 = 0
end
else xpoPart6 = 0
end

if a.Part6.Position.X - 2.5 > Partt1.Position.X -- P1 -X Positions Library Reference
or a.Part6.Position.X < Partt1.Position.X
or a.Part6.Position.Y +(1.9) < Partt1.Position.Y 
or a.Part6.Position.Y -(1.9) > Partt1.Position.Y 
or a.Part6.Position.Z +(1.9) < Partt1.Position.Z 
or a.Part6.Position.Z -(1.9) > Partt1.Position.Z 
then
if a.Part6.Position.X - 2.5 > Partt2.Position.X
or a.Part6.Position.X < Partt2.Position.X
or a.Part6.Position.Y +(1.9) < Partt2.Position.Y 
or a.Part6.Position.Y -(1.9) > Partt2.Position.Y 
or a.Part6.Position.Z +(1.9) < Partt2.Position.Z 
or a.Part6.Position.Z -(1.9) > Partt2.Position.Z 
then
if a.Part6.Position.X - 2.5 > Partt3.Position.X
or a.Part6.Position.X < Partt3.Position.X
or a.Part6.Position.Y +(1.9) < Partt3.Position.Y 
or a.Part6.Position.Y -(1.9) > Partt3.Position.Y 
or a.Part6.Position.Z +(1.9) < Partt3.Position.Z 
or a.Part6.Position.Z -(1.9) > Partt3.Position.Z 
then
if a.Part6.Position.X - 2.5 > Partt4.Position.X
or a.Part6.Position.X < Partt4.Position.X
or a.Part6.Position.Y +(1.9) < Partt4.Position.Y 
or a.Part6.Position.Y -(1.9) > Partt4.Position.Y 
or a.Part6.Position.Z +(1.9) < Partt4.Position.Z 
or a.Part6.Position.Z -(1.9) > Partt4.Position.Z 
then
if a.Part6.Position.X - 2.5 > Partt5.Position.X
or a.Part6.Position.X < Partt5.Position.X
or a.Part6.Position.Y +(1.9) < Partt5.Position.Y 
or a.Part6.Position.Y -(1.9) > Partt5.Position.Y 
or a.Part6.Position.Z +(1.9) < Partt5.Position.Z 
or a.Part6.Position.Z -(1.9) > Partt5.Position.Z 
then
if a.Part6.Position.X - 2.5 > Partt7.Position.X
or a.Part6.Position.X < Partt7.Position.X
or a.Part6.Position.Y +(1.9) < Partt7.Position.Y 
or a.Part6.Position.Y -(1.9) > Partt7.Position.Y 
or a.Part6.Position.Z +(1.9) < Partt7.Position.Z 
or a.Part6.Position.Z -(1.9) > Partt7.Position.Z 
then
if a.Part6.Position.X - 2.5 > Partt8.Position.X
or a.Part6.Position.X < Partt8.Position.X
or a.Part6.Position.Y +(1.9) < Partt8.Position.Y 
or a.Part6.Position.Y -(1.9) > Partt8.Position.Y 
or a.Part6.Position.Z +(1.9) < Partt8.Position.Z 
or a.Part6.Position.Z -(1.9) > Partt8.Position.Z 
then
xnePart6 = 1
else xnePart6 = 0 
end
else xnePart6 = 0
end
else xnePart6 = 0
end
else xnePart6 = 0
end
else xnePart6 = 0
end
else xnePart6 = 0
end
else xnePart6 = 0
end

if a.Part6.Position.Y + 2.5 < Partt1.Position.Y -- P1 +Y Positions Library Reference
or a.Part6.Position.Y > Partt1.Position.Y
or a.Part6.Position.X +(1.9) < Partt1.Position.X 
or a.Part6.Position.X -(1.9) > Partt1.Position.X 
or a.Part6.Position.Z +(1.9) < Partt1.Position.Z 
or a.Part6.Position.Z -(1.9) > Partt1.Position.Z 
then
if a.Part6.Position.Y + 2.5 < Partt2.Position.Y
or a.Part6.Position.Y > Partt2.Position.Y
or a.Part6.Position.X +(1.9) < Partt2.Position.X 
or a.Part6.Position.X -(1.9) > Partt2.Position.X 
or a.Part6.Position.Z +(1.9) < Partt2.Position.Z 
or a.Part6.Position.Z -(1.9) > Partt2.Position.Z 
then
if a.Part6.Position.Y + 2.5 < Partt3.Position.Y
or a.Part6.Position.Y > Partt3.Position.Y
or a.Part6.Position.X +(1.9) < Partt3.Position.X 
or a.Part6.Position.X -(1.9) > Partt3.Position.X 
or a.Part6.Position.Z +(1.9) < Partt3.Position.Z 
or a.Part6.Position.Z -(1.9) > Partt3.Position.Z 
then
if a.Part6.Position.Y + 2.5 < Partt4.Position.Y
or a.Part6.Position.Y > Partt4.Position.Y
or a.Part6.Position.X +(1.9) < Partt4.Position.X 
or a.Part6.Position.X -(1.9) > Partt4.Position.X 
or a.Part6.Position.Z +(1.9) < Partt4.Position.Z 
or a.Part6.Position.Z -(1.9) > Partt4.Position.Z 
then
if a.Part6.Position.Y + 2.5 < Partt5.Position.Y
or a.Part6.Position.Y > Partt5.Position.Y
or a.Part6.Position.X +(1.9) < Partt5.Position.X 
or a.Part6.Position.X -(1.9) > Partt5.Position.X 
or a.Part6.Position.Z +(1.9) < Partt5.Position.Z 
or a.Part6.Position.Z -(1.9) > Partt5.Position.Z 
then
if a.Part6.Position.Y + 2.5 < Partt7.Position.Y
or a.Part6.Position.Y > Partt7.Position.Y
or a.Part6.Position.X +(1.9) < Partt7.Position.X 
or a.Part6.Position.X -(1.9) > Partt7.Position.X 
or a.Part6.Position.Z +(1.9) < Partt7.Position.Z 
or a.Part6.Position.Z -(1.9) > Partt7.Position.Z 
then
if a.Part6.Position.Y + 2.5 < Partt8.Position.Y
or a.Part6.Position.Y > Partt8.Position.Y
or a.Part6.Position.X +(1.9) < Partt8.Position.X 
or a.Part6.Position.X -(1.9) > Partt8.Position.X 
or a.Part6.Position.Z +(1.9) < Partt8.Position.Z 
or a.Part6.Position.Z -(1.9) > Partt8.Position.Z 
then
ypoPart6 = 1
else ypoPart6 = 0 
end
else ypoPart6 = 0
end
else ypoPart6 = 0
end
else ypoPart6 = 0
end
else ypoPart6 = 0
end
else ypoPart6 = 0
end
else ypoPart6 = 0
end

if a.Part6.Position.Y - 2.5 > Partt1.Position.Y -- P1 -Y Positions Library Reference
or a.Part6.Position.Y < Partt1.Position.Y
or a.Part6.Position.X +(1.9) < Partt1.Position.X 
or a.Part6.Position.X -(1.9) > Partt1.Position.X 
or a.Part6.Position.Z +(1.9) < Partt1.Position.Z 
or a.Part6.Position.Z -(1.9) > Partt1.Position.Z 
then
if a.Part6.Position.Y - 2.5 > Partt2.Position.Y
or a.Part6.Position.Y < Partt2.Position.Y
or a.Part6.Position.X +(1.9) < Partt2.Position.X 
or a.Part6.Position.X -(1.9) > Partt2.Position.X 
or a.Part6.Position.Z +(1.9) < Partt2.Position.Z 
or a.Part6.Position.Z -(1.9) > Partt2.Position.Z 
then
if a.Part6.Position.Y - 2.5 > Partt3.Position.Y
or a.Part6.Position.Y < Partt3.Position.Y
or a.Part6.Position.X +(1.9) < Partt3.Position.X 
or a.Part6.Position.X -(1.9) > Partt3.Position.X 
or a.Part6.Position.Z +(1.9) < Partt3.Position.Z 
or a.Part6.Position.Z -(1.9) > Partt3.Position.Z 
then
if a.Part6.Position.Y - 2.5 > Partt4.Position.Y
or a.Part6.Position.Y < Partt4.Position.Y
or a.Part6.Position.X +(1.9) < Partt4.Position.X 
or a.Part6.Position.X -(1.9) > Partt4.Position.X 
or a.Part6.Position.Z +(1.9) < Partt4.Position.Z 
or a.Part6.Position.Z -(1.9) > Partt4.Position.Z 
then
if a.Part6.Position.Y - 2.5 > Partt5.Position.Y
or a.Part6.Position.Y < Partt5.Position.Y
or a.Part6.Position.X +(1.9) < Partt5.Position.X 
or a.Part6.Position.X -(1.9) > Partt5.Position.X 
or a.Part6.Position.Z +(1.9) < Partt5.Position.Z 
or a.Part6.Position.Z -(1.9) > Partt5.Position.Z 
then
if a.Part6.Position.Y - 2.5 > Partt7.Position.Y
or a.Part6.Position.Y < Partt7.Position.Y
or a.Part6.Position.X +(1.9) < Partt7.Position.X 
or a.Part6.Position.X -(1.9) > Partt7.Position.X 
or a.Part6.Position.Z +(1.9) < Partt7.Position.Z 
or a.Part6.Position.Z -(1.9) > Partt7.Position.Z 
then
if a.Part6.Position.Y - 2.5 > Partt8.Position.Y
or a.Part6.Position.Y < Partt8.Position.Y
or a.Part6.Position.X +(1.9) < Partt8.Position.X 
or a.Part6.Position.X -(1.9) > Partt8.Position.X 
or a.Part6.Position.Z +(1.9) < Partt8.Position.Z 
or a.Part6.Position.Z -(1.9) > Partt8.Position.Z 
then
ynePart6 = 1
else ynePart6 = 0 
end
else ynePart6 = 0
end
else ynePart6 = 0
end
else ynePart6 = 0
end
else ynePart6 = 0
end
else ynePart6 = 0
end
else ynePart6 = 0
end

if a.Part6.Position.Z + 2.5 < Partt1.Position.Z -- P1 +Z Positions Library Reference
or a.Part6.Position.Z > Partt1.Position.Z
or a.Part6.Position.X +(1.9) < Partt1.Position.X 
or a.Part6.Position.X -(1.9) > Partt1.Position.X 
or a.Part6.Position.Y +(1.9) < Partt1.Position.Y 
or a.Part6.Position.Y -(1.9) > Partt1.Position.Y 
then
if a.Part6.Position.Z + 2.5 < Partt2.Position.Z
or a.Part6.Position.Z > Partt2.Position.Z
or a.Part6.Position.X +(1.9) < Partt2.Position.X 
or a.Part6.Position.X -(1.9) > Partt2.Position.X 
or a.Part6.Position.Y +(1.9) < Partt2.Position.Y 
or a.Part6.Position.Y -(1.9) > Partt2.Position.Y 
then
if a.Part6.Position.Z + 2.5 < Partt3.Position.Z
or a.Part6.Position.Z > Partt3.Position.Z
or a.Part6.Position.X +(1.9) < Partt3.Position.X 
or a.Part6.Position.X -(1.9) > Partt3.Position.X 
or a.Part6.Position.Y +(1.9) < Partt3.Position.Y 
or a.Part6.Position.Y -(1.9) > Partt3.Position.Y 
then
if a.Part6.Position.Z + 2.5 < Partt4.Position.Z
or a.Part6.Position.Z > Partt4.Position.Z
or a.Part6.Position.X +(1.9) < Partt4.Position.X 
or a.Part6.Position.X -(1.9) > Partt4.Position.X 
or a.Part6.Position.Y +(1.9) < Partt4.Position.Y 
or a.Part6.Position.Y -(1.9) > Partt4.Position.Y 
then
if a.Part6.Position.Z + 2.5 < Partt5.Position.Z
or a.Part6.Position.Z > Partt5.Position.Z
or a.Part6.Position.X +(1.9) < Partt5.Position.X 
or a.Part6.Position.X -(1.9) > Partt5.Position.X 
or a.Part6.Position.Y +(1.9) < Partt5.Position.Y 
or a.Part6.Position.Y -(1.9) > Partt5.Position.Y 
then
if a.Part6.Position.Z + 2.5 < Partt7.Position.Z
or a.Part6.Position.Z > Partt7.Position.Z
or a.Part6.Position.X +(1.9) < Partt7.Position.X 
or a.Part6.Position.X -(1.9) > Partt7.Position.X 
or a.Part6.Position.Y +(1.9) < Partt7.Position.Y 
or a.Part6.Position.Y -(1.9) > Partt7.Position.Y 
then
if a.Part6.Position.Z + 2.5 < Partt8.Position.Z
or a.Part6.Position.Z > Partt8.Position.Z
or a.Part6.Position.X +(1.9) < Partt8.Position.X 
or a.Part6.Position.X -(1.9) > Partt8.Position.X 
or a.Part6.Position.Y +(1.9) < Partt8.Position.Y 
or a.Part6.Position.Y -(1.9) > Partt8.Position.Y 
then
zpoPart6 = 1
else zpoPart6 = 0 
end
else zpoPart6 = 0
end
else zpoPart6 = 0
end
else zpoPart6 = 0
end
else zpoPart6 = 0
end
else zpoPart6 = 0
end
else zpoPart6 = 0
end

if a.Part6.Position.Z - 2.5 > Partt1.Position.Z -- P1 -Z Positions Library Reference
or a.Part6.Position.Z < Partt1.Position.Z
or a.Part6.Position.X +(1.9) < Partt1.Position.X 
or a.Part6.Position.X -(1.9) > Partt1.Position.X 
or a.Part6.Position.Y +(1.9) < Partt1.Position.Y 
or a.Part6.Position.Y -(1.9) > Partt1.Position.Y 
then
if a.Part6.Position.Z - 2.5 > Partt2.Position.Z
or a.Part6.Position.Z < Partt2.Position.Z
or a.Part6.Position.X +(1.9) < Partt2.Position.X 
or a.Part6.Position.X -(1.9) > Partt2.Position.X 
or a.Part6.Position.Y +(1.9) < Partt2.Position.Y 
or a.Part6.Position.Y -(1.9) > Partt2.Position.Y 
then
if a.Part6.Position.Z - 2.5 > Partt3.Position.Z
or a.Part6.Position.Z < Partt3.Position.Z
or a.Part6.Position.X +(1.9) < Partt3.Position.X 
or a.Part6.Position.X -(1.9) > Partt3.Position.X 
or a.Part6.Position.Y +(1.9) < Partt3.Position.Y 
or a.Part6.Position.Y -(1.9) > Partt3.Position.Y 
then
if a.Part6.Position.Z - 2.5 > Partt4.Position.Z
or a.Part6.Position.Z < Partt4.Position.Z
or a.Part6.Position.X +(1.9) < Partt4.Position.X 
or a.Part6.Position.X -(1.9) > Partt4.Position.X 
or a.Part6.Position.Y +(1.9) < Partt4.Position.Y 
or a.Part6.Position.Y -(1.9) > Partt4.Position.Y 
then
if a.Part6.Position.Z - 2.5 > Partt5.Position.Z
or a.Part6.Position.Z < Partt5.Position.Z
or a.Part6.Position.X +(1.9) < Partt5.Position.X 
or a.Part6.Position.X -(1.9) > Partt5.Position.X 
or a.Part6.Position.Y +(1.9) < Partt5.Position.Y 
or a.Part6.Position.Y -(1.9) > Partt5.Position.Y 
then
if a.Part6.Position.Z - 2.5 > Partt7.Position.Z
or a.Part6.Position.Z < Partt7.Position.Z
or a.Part6.Position.X +(1.9) < Partt7.Position.X 
or a.Part6.Position.X -(1.9) > Partt7.Position.X 
or a.Part6.Position.Y +(1.9) < Partt7.Position.Y 
or a.Part6.Position.Y -(1.9) > Partt7.Position.Y 
then
if a.Part6.Position.Z - 2.5 > Partt8.Position.Z
or a.Part6.Position.Z < Partt8.Position.Z
or a.Part6.Position.X +(1.9) < Partt8.Position.X 
or a.Part6.Position.X -(1.9) > Partt8.Position.X 
or a.Part6.Position.Y +(1.9) < Partt8.Position.Y 
or a.Part6.Position.Y -(1.9) > Partt8.Position.Y 
then
znePart6 = 1
else znePart6 = 0 
end
else znePart6 = 0
end
else znePart6 = 0
end
else znePart6 = 0
end
else znePart6 = 0
end
else znePart6 = 0
end
else znePart6 = 0
end

if PriPart6 == 1
and XPart6 == 1
then	
if xpoPart6 == 1
then
for i=1, 10 do
a.Part6.CFrame = a.Part6.CFrame +(Vector3.new(XPart6/10,0,0))
wait(.01)
end
else PriPart6 = (PriPart6+1)
end
else end

if PriPart6 == 1
and XPart6 == -1
then	
if xnePart6 == 1
then
for i=1, 10 do
a.Part6.CFrame = a.Part6.CFrame +(Vector3.new(XPart6/10,0,0))
wait(.01)
end
else PriPart6 = (PriPart6+1)
end
else end

if PriPart6 == 2
and YPart6 == 1
then	
if ypoPart6 == 1
then
for i=1, 10 do
a.Part6.CFrame = a.Part6.CFrame +(Vector3.new(0,YPart6/10,0))
wait(.01)
end
else PriPart6 = (PriPart6+1)
end
else end

if PriPart6 == 2
and YPart6 == -1
then	
if ynePart6 == 1
then
for i=1, 10 do
a.Part6.CFrame = a.Part6.CFrame +(Vector3.new(0,YPart6/10,0))
wait(.01)
end
else PriPart6 = (PriPart6+1)
end
else end

if PriPart6 == 3
and ZPart6 == 1
then	
if zpoPart6 == 1
then
for i=1, 10 do
a.Part6.CFrame = a.Part6.CFrame +(Vector3.new(0,0,ZPart6/10))
wait(.01)
end
else PriPart6 = (PriPart6+1)
end
else end

if PriPart6 == 3
and ZPart6 == -1
then	
if znePart6 == 1
then
for i=1, 10 do
a.Part6.CFrame = a.Part6.CFrame +(Vector3.new(0,0,ZPart6/10))
wait(.01)
end
else PriPart6 = (PriPart6+1)
end
else end




sPart6 =(sPart6+1) --Checking reconfiguring positions

if sPart6 == 1
then
XSPart6 = a.Part6.Position.X
YSPart6 = a.Part6.Position.Y
ZSPart6 = a.Part6.Position.Z
else end

if sPart6 == 3 --Checking if Part is Valid for Instant Fix
and XSPart6 == a.Part6.Position.X
and YSPart6 == a.Part6.Position.Y
and ZSPart6 == a.Part6.Position.Z
and a.Part6.Position.X < cPart6.Position.X +4
and a.Part6.Position.X > cPart6.Position.X -4
and a.Part6.Position.Y < cPart6.Position.Y +4
and a.Part6.Position.Y > cPart6.Position.Y -4
and a.Part6.Position.Z < cPart6.Position.Z +4
and a.Part6.Position.Z > cPart6.Position.Z -4
then
for i=1, 20 do
a.Part6.CFrame = a.Part6.CFrame +(Vector3.new((cPart6.Position.X-XSPart6)/20,(cPart6.Position.Y-YSPart6)/20,(cPart6.Position.Z-ZSPart6)/20))
wait(.01)
end
else end

if sPart6 == 3
and RPart6 == 1 --Checking +X Reconfiguration
then
if  XSPart6 == a.Part6.Position.X
and YSPart6 == a.Part6.Position.Y
and ZSPart6 == a.Part6.Position.Z
then
-- "Reconfiguring"
RPart6 = (RPart6+1)
repeat
if a.Part6.Position.X + 2.5 < Partt1.Position.X -- P1 +X Positions Library Reference
or a.Part6.Position.X > Partt1.Position.X
or a.Part6.Position.Y +(1.9) < Partt1.Position.Y 
or a.Part6.Position.Y -(1.9) > Partt1.Position.Y 
or a.Part6.Position.Z +(1.9) < Partt1.Position.Z 
or a.Part6.Position.Z -(1.9) > Partt1.Position.Z 
then
if a.Part6.Position.X + 2.5 < Partt2.Position.X
or a.Part6.Position.X > Partt2.Position.X
or a.Part6.Position.Y +(1.9) < Partt2.Position.Y 
or a.Part6.Position.Y -(1.9) > Partt2.Position.Y 
or a.Part6.Position.Z +(1.9) < Partt2.Position.Z 
or a.Part6.Position.Z -(1.9) > Partt2.Position.Z 
then
if a.Part6.Position.X + 2.5 < Partt3.Position.X
or a.Part6.Position.X > Partt3.Position.X
or a.Part6.Position.Y +(1.9) < Partt3.Position.Y 
or a.Part6.Position.Y -(1.9) > Partt3.Position.Y 
or a.Part6.Position.Z +(1.9) < Partt3.Position.Z 
or a.Part6.Position.Z -(1.9) > Partt3.Position.Z 
then
if a.Part6.Position.X + 2.5 < Partt4.Position.X
or a.Part6.Position.X > Partt4.Position.X
or a.Part6.Position.Y +(1.9) < Partt4.Position.Y 
or a.Part6.Position.Y -(1.9) > Partt4.Position.Y 
or a.Part6.Position.Z +(1.9) < Partt4.Position.Z 
or a.Part6.Position.Z -(1.9) > Partt4.Position.Z 
then
if a.Part6.Position.X + 2.5 < Partt5.Position.X
or a.Part6.Position.X > Partt5.Position.X
or a.Part6.Position.Y +(1.9) < Partt5.Position.Y 
or a.Part6.Position.Y -(1.9) > Partt5.Position.Y 
or a.Part6.Position.Z +(1.9) < Partt5.Position.Z 
or a.Part6.Position.Z -(1.9) > Partt5.Position.Z 
then
if a.Part6.Position.X + 2.5 < Partt7.Position.X
or a.Part6.Position.X > Partt7.Position.X
or a.Part6.Position.Y +(1.9) < Partt7.Position.Y 
or a.Part6.Position.Y -(1.9) > Partt7.Position.Y 
or a.Part6.Position.Z +(1.9) < Partt7.Position.Z 
or a.Part6.Position.Z -(1.9) > Partt7.Position.Z 
then
if a.Part6.Position.X + 2.5 < Partt8.Position.X
or a.Part6.Position.X > Partt8.Position.X
or a.Part6.Position.Y +(1.9) < Partt8.Position.Y 
or a.Part6.Position.Y -(1.9) > Partt8.Position.Y 
or a.Part6.Position.Z +(1.9) < Partt8.Position.Z 
or a.Part6.Position.Z -(1.9) > Partt8.Position.Z 
then
xpoPart6 = 1
else xpoPart6 = 0 
end
else xpoPart6 = 0
end
else xpoPart6 = 0
end
else xpoPart6 = 0
end
else xpoPart6 = 0
end
else xpoPart6 = 0
end
else xpoPart6 = 0
end

if a.Part6.Position.X - 2.5 > Partt1.Position.X -- P1 -X Positions Library Reference
or a.Part6.Position.X < Partt1.Position.X
or a.Part6.Position.Y +(1.9) < Partt1.Position.Y 
or a.Part6.Position.Y -(1.9) > Partt1.Position.Y 
or a.Part6.Position.Z +(1.9) < Partt1.Position.Z 
or a.Part6.Position.Z -(1.9) > Partt1.Position.Z 
then
if a.Part6.Position.X - 2.5 > Partt2.Position.X
or a.Part6.Position.X < Partt2.Position.X
or a.Part6.Position.Y +(1.9) < Partt2.Position.Y 
or a.Part6.Position.Y -(1.9) > Partt2.Position.Y 
or a.Part6.Position.Z +(1.9) < Partt2.Position.Z 
or a.Part6.Position.Z -(1.9) > Partt2.Position.Z 
then
if a.Part6.Position.X - 2.5 > Partt3.Position.X
or a.Part6.Position.X < Partt3.Position.X
or a.Part6.Position.Y +(1.9) < Partt3.Position.Y 
or a.Part6.Position.Y -(1.9) > Partt3.Position.Y 
or a.Part6.Position.Z +(1.9) < Partt3.Position.Z 
or a.Part6.Position.Z -(1.9) > Partt3.Position.Z 
then
if a.Part6.Position.X - 2.5 > Partt4.Position.X
or a.Part6.Position.X < Partt4.Position.X
or a.Part6.Position.Y +(1.9) < Partt4.Position.Y 
or a.Part6.Position.Y -(1.9) > Partt4.Position.Y 
or a.Part6.Position.Z +(1.9) < Partt4.Position.Z 
or a.Part6.Position.Z -(1.9) > Partt4.Position.Z 
then
if a.Part6.Position.X - 2.5 > Partt5.Position.X
or a.Part6.Position.X < Partt5.Position.X
or a.Part6.Position.Y +(1.9) < Partt5.Position.Y 
or a.Part6.Position.Y -(1.9) > Partt5.Position.Y 
or a.Part6.Position.Z +(1.9) < Partt5.Position.Z 
or a.Part6.Position.Z -(1.9) > Partt5.Position.Z 
then
if a.Part6.Position.X - 2.5 > Partt7.Position.X
or a.Part6.Position.X < Partt7.Position.X
or a.Part6.Position.Y +(1.9) < Partt7.Position.Y 
or a.Part6.Position.Y -(1.9) > Partt7.Position.Y 
or a.Part6.Position.Z +(1.9) < Partt7.Position.Z 
or a.Part6.Position.Z -(1.9) > Partt7.Position.Z 
then
if a.Part6.Position.X - 2.5 > Partt8.Position.X
or a.Part6.Position.X < Partt8.Position.X
or a.Part6.Position.Y +(1.9) < Partt8.Position.Y 
or a.Part6.Position.Y -(1.9) > Partt8.Position.Y 
or a.Part6.Position.Z +(1.9) < Partt8.Position.Z 
or a.Part6.Position.Z -(1.9) > Partt8.Position.Z 
then
xnePart6 = 1
else xnePart6 = 0 
end
else xnePart6 = 0
end
else xnePart6 = 0
end
else xnePart6 = 0
end
else xnePart6 = 0
end
else xnePart6 = 0
end
else xnePart6 = 0
end

if a.Part6.Position.Y + 2.5 < Partt1.Position.Y -- P1 +Y Positions Library Reference
or a.Part6.Position.Y > Partt1.Position.Y
or a.Part6.Position.X +(1.9) < Partt1.Position.X 
or a.Part6.Position.X -(1.9) > Partt1.Position.X 
or a.Part6.Position.Z +(1.9) < Partt1.Position.Z 
or a.Part6.Position.Z -(1.9) > Partt1.Position.Z 
then
if a.Part6.Position.Y + 2.5 < Partt2.Position.Y
or a.Part6.Position.Y > Partt2.Position.Y
or a.Part6.Position.X +(1.9) < Partt2.Position.X 
or a.Part6.Position.X -(1.9) > Partt2.Position.X 
or a.Part6.Position.Z +(1.9) < Partt2.Position.Z 
or a.Part6.Position.Z -(1.9) > Partt2.Position.Z 
then
if a.Part6.Position.Y + 2.5 < Partt3.Position.Y
or a.Part6.Position.Y > Partt3.Position.Y
or a.Part6.Position.X +(1.9) < Partt3.Position.X 
or a.Part6.Position.X -(1.9) > Partt3.Position.X 
or a.Part6.Position.Z +(1.9) < Partt3.Position.Z 
or a.Part6.Position.Z -(1.9) > Partt3.Position.Z 
then
if a.Part6.Position.Y + 2.5 < Partt4.Position.Y
or a.Part6.Position.Y > Partt4.Position.Y
or a.Part6.Position.X +(1.9) < Partt4.Position.X 
or a.Part6.Position.X -(1.9) > Partt4.Position.X 
or a.Part6.Position.Z +(1.9) < Partt4.Position.Z 
or a.Part6.Position.Z -(1.9) > Partt4.Position.Z 
then
if a.Part6.Position.Y + 2.5 < Partt5.Position.Y
or a.Part6.Position.Y > Partt5.Position.Y
or a.Part6.Position.X +(1.9) < Partt5.Position.X 
or a.Part6.Position.X -(1.9) > Partt5.Position.X 
or a.Part6.Position.Z +(1.9) < Partt5.Position.Z 
or a.Part6.Position.Z -(1.9) > Partt5.Position.Z 
then
if a.Part6.Position.Y + 2.5 < Partt7.Position.Y
or a.Part6.Position.Y > Partt7.Position.Y
or a.Part6.Position.X +(1.9) < Partt7.Position.X 
or a.Part6.Position.X -(1.9) > Partt7.Position.X 
or a.Part6.Position.Z +(1.9) < Partt7.Position.Z 
or a.Part6.Position.Z -(1.9) > Partt7.Position.Z 
then
if a.Part6.Position.Y + 2.5 < Partt8.Position.Y
or a.Part6.Position.Y > Partt8.Position.Y
or a.Part6.Position.X +(1.9) < Partt8.Position.X 
or a.Part6.Position.X -(1.9) > Partt8.Position.X 
or a.Part6.Position.Z +(1.9) < Partt8.Position.Z 
or a.Part6.Position.Z -(1.9) > Partt8.Position.Z 
then
ypoPart6 = 1
else ypoPart6 = 0 
end
else ypoPart6 = 0
end
else ypoPart6 = 0
end
else ypoPart6 = 0
end
else ypoPart6 = 0
end
else ypoPart6 = 0
end
else ypoPart6 = 0
end

if a.Part6.Position.Y - 2.5 > Partt1.Position.Y -- P1 -Y Positions Library Reference
or a.Part6.Position.Y < Partt1.Position.Y
or a.Part6.Position.X +(1.9) < Partt1.Position.X 
or a.Part6.Position.X -(1.9) > Partt1.Position.X 
or a.Part6.Position.Z +(1.9) < Partt1.Position.Z 
or a.Part6.Position.Z -(1.9) > Partt1.Position.Z 
then
if a.Part6.Position.Y - 2.5 > Partt2.Position.Y
or a.Part6.Position.Y < Partt2.Position.Y
or a.Part6.Position.X +(1.9) < Partt2.Position.X 
or a.Part6.Position.X -(1.9) > Partt2.Position.X 
or a.Part6.Position.Z +(1.9) < Partt2.Position.Z 
or a.Part6.Position.Z -(1.9) > Partt2.Position.Z 
then
if a.Part6.Position.Y - 2.5 > Partt3.Position.Y
or a.Part6.Position.Y < Partt3.Position.Y
or a.Part6.Position.X +(1.9) < Partt3.Position.X 
or a.Part6.Position.X -(1.9) > Partt3.Position.X 
or a.Part6.Position.Z +(1.9) < Partt3.Position.Z 
or a.Part6.Position.Z -(1.9) > Partt3.Position.Z 
then
if a.Part6.Position.Y - 2.5 > Partt4.Position.Y
or a.Part6.Position.Y < Partt4.Position.Y
or a.Part6.Position.X +(1.9) < Partt4.Position.X 
or a.Part6.Position.X -(1.9) > Partt4.Position.X 
or a.Part6.Position.Z +(1.9) < Partt4.Position.Z 
or a.Part6.Position.Z -(1.9) > Partt4.Position.Z 
then
if a.Part6.Position.Y - 2.5 > Partt5.Position.Y
or a.Part6.Position.Y < Partt5.Position.Y
or a.Part6.Position.X +(1.9) < Partt5.Position.X 
or a.Part6.Position.X -(1.9) > Partt5.Position.X 
or a.Part6.Position.Z +(1.9) < Partt5.Position.Z 
or a.Part6.Position.Z -(1.9) > Partt5.Position.Z 
then
if a.Part6.Position.Y - 2.5 > Partt7.Position.Y
or a.Part6.Position.Y < Partt7.Position.Y
or a.Part6.Position.X +(1.9) < Partt7.Position.X 
or a.Part6.Position.X -(1.9) > Partt7.Position.X 
or a.Part6.Position.Z +(1.9) < Partt7.Position.Z 
or a.Part6.Position.Z -(1.9) > Partt7.Position.Z 
then
if a.Part6.Position.Y - 2.5 > Partt8.Position.Y
or a.Part6.Position.Y < Partt8.Position.Y
or a.Part6.Position.X +(1.9) < Partt8.Position.X 
or a.Part6.Position.X -(1.9) > Partt8.Position.X 
or a.Part6.Position.Z +(1.9) < Partt8.Position.Z 
or a.Part6.Position.Z -(1.9) > Partt8.Position.Z 
then
ynePart6 = 1
else ynePart6 = 0 
end
else ynePart6 = 0
end
else ynePart6 = 0
end
else ynePart6 = 0
end
else ynePart6 = 0
end
else ynePart6 = 0
end
else ynePart6 = 0
end

if a.Part6.Position.Z + 2.5 < Partt1.Position.Z -- P1 +Z Positions Library Reference
or a.Part6.Position.Z > Partt1.Position.Z
or a.Part6.Position.X +(1.9) < Partt1.Position.X 
or a.Part6.Position.X -(1.9) > Partt1.Position.X 
or a.Part6.Position.Y +(1.9) < Partt1.Position.Y 
or a.Part6.Position.Y -(1.9) > Partt1.Position.Y 
then
if a.Part6.Position.Z + 2.5 < Partt2.Position.Z
or a.Part6.Position.Z > Partt2.Position.Z
or a.Part6.Position.X +(1.9) < Partt2.Position.X 
or a.Part6.Position.X -(1.9) > Partt2.Position.X 
or a.Part6.Position.Y +(1.9) < Partt2.Position.Y 
or a.Part6.Position.Y -(1.9) > Partt2.Position.Y 
then
if a.Part6.Position.Z + 2.5 < Partt3.Position.Z
or a.Part6.Position.Z > Partt3.Position.Z
or a.Part6.Position.X +(1.9) < Partt3.Position.X 
or a.Part6.Position.X -(1.9) > Partt3.Position.X 
or a.Part6.Position.Y +(1.9) < Partt3.Position.Y 
or a.Part6.Position.Y -(1.9) > Partt3.Position.Y 
then
if a.Part6.Position.Z + 2.5 < Partt4.Position.Z
or a.Part6.Position.Z > Partt4.Position.Z
or a.Part6.Position.X +(1.9) < Partt4.Position.X 
or a.Part6.Position.X -(1.9) > Partt4.Position.X 
or a.Part6.Position.Y +(1.9) < Partt4.Position.Y 
or a.Part6.Position.Y -(1.9) > Partt4.Position.Y 
then
if a.Part6.Position.Z + 2.5 < Partt5.Position.Z
or a.Part6.Position.Z > Partt5.Position.Z
or a.Part6.Position.X +(1.9) < Partt5.Position.X 
or a.Part6.Position.X -(1.9) > Partt5.Position.X 
or a.Part6.Position.Y +(1.9) < Partt5.Position.Y 
or a.Part6.Position.Y -(1.9) > Partt5.Position.Y 
then
if a.Part6.Position.Z + 2.5 < Partt7.Position.Z
or a.Part6.Position.Z > Partt7.Position.Z
or a.Part6.Position.X +(1.9) < Partt7.Position.X 
or a.Part6.Position.X -(1.9) > Partt7.Position.X 
or a.Part6.Position.Y +(1.9) < Partt7.Position.Y 
or a.Part6.Position.Y -(1.9) > Partt7.Position.Y 
then
if a.Part6.Position.Z + 2.5 < Partt8.Position.Z
or a.Part6.Position.Z > Partt8.Position.Z
or a.Part6.Position.X +(1.9) < Partt8.Position.X 
or a.Part6.Position.X -(1.9) > Partt8.Position.X 
or a.Part6.Position.Y +(1.9) < Partt8.Position.Y 
or a.Part6.Position.Y -(1.9) > Partt8.Position.Y 
then
zpoPart6 = 1
else zpoPart6 = 0 
end
else zpoPart6 = 0
end
else zpoPart6 = 0
end
else zpoPart6 = 0
end
else zpoPart6 = 0
end
else zpoPart6 = 0
end
else zpoPart6 = 0
end

if a.Part6.Position.Z - 2.5 > Partt1.Position.Z -- P1 -Z Positions Library Reference
or a.Part6.Position.Z < Partt1.Position.Z
or a.Part6.Position.X +(1.9) < Partt1.Position.X 
or a.Part6.Position.X -(1.9) > Partt1.Position.X 
or a.Part6.Position.Y +(1.9) < Partt1.Position.Y 
or a.Part6.Position.Y -(1.9) > Partt1.Position.Y 
then
if a.Part6.Position.Z - 2.5 > Partt2.Position.Z
or a.Part6.Position.Z < Partt2.Position.Z
or a.Part6.Position.X +(1.9) < Partt2.Position.X 
or a.Part6.Position.X -(1.9) > Partt2.Position.X 
or a.Part6.Position.Y +(1.9) < Partt2.Position.Y 
or a.Part6.Position.Y -(1.9) > Partt2.Position.Y 
then
if a.Part6.Position.Z - 2.5 > Partt3.Position.Z
or a.Part6.Position.Z < Partt3.Position.Z
or a.Part6.Position.X +(1.9) < Partt3.Position.X 
or a.Part6.Position.X -(1.9) > Partt3.Position.X 
or a.Part6.Position.Y +(1.9) < Partt3.Position.Y 
or a.Part6.Position.Y -(1.9) > Partt3.Position.Y 
then
if a.Part6.Position.Z - 2.5 > Partt4.Position.Z
or a.Part6.Position.Z < Partt4.Position.Z
or a.Part6.Position.X +(1.9) < Partt4.Position.X 
or a.Part6.Position.X -(1.9) > Partt4.Position.X 
or a.Part6.Position.Y +(1.9) < Partt4.Position.Y 
or a.Part6.Position.Y -(1.9) > Partt4.Position.Y 
then
if a.Part6.Position.Z - 2.5 > Partt5.Position.Z
or a.Part6.Position.Z < Partt5.Position.Z
or a.Part6.Position.X +(1.9) < Partt5.Position.X 
or a.Part6.Position.X -(1.9) > Partt5.Position.X 
or a.Part6.Position.Y +(1.9) < Partt5.Position.Y 
or a.Part6.Position.Y -(1.9) > Partt5.Position.Y 
then
if a.Part6.Position.Z - 2.5 > Partt7.Position.Z
or a.Part6.Position.Z < Partt7.Position.Z
or a.Part6.Position.X +(1.9) < Partt7.Position.X 
or a.Part6.Position.X -(1.9) > Partt7.Position.X 
or a.Part6.Position.Y +(1.9) < Partt7.Position.Y 
or a.Part6.Position.Y -(1.9) > Partt7.Position.Y 
then
if a.Part6.Position.Z - 2.5 > Partt8.Position.Z
or a.Part6.Position.Z < Partt8.Position.Z
or a.Part6.Position.X +(1.9) < Partt8.Position.X 
or a.Part6.Position.X -(1.9) > Partt8.Position.X 
or a.Part6.Position.Y +(1.9) < Partt8.Position.Y 
or a.Part6.Position.Y -(1.9) > Partt8.Position.Y 
then
znePart6 = 1
else znePart6 = 0 
end
else znePart6 = 0
end
else znePart6 = 0
end
else znePart6 = 0
end
else znePart6 = 0
end
else znePart6 = 0
end
else znePart6 = 0
end

PriPart6 = 1 
if PriPart6 == 1
then	
if xpoPart6 == 1
then
for i=1, 10 do
a.Part6.CFrame = a.Part6.CFrame +(Vector3.new(.1,0,0))
wait(.01)
end
else PriPart6 = (PriPart6+1)
end
else end

if PriPart6 == 2
then	
if ypoPart6 == 1
then
for i=1, 10 do
a.Part6.CFrame = a.Part6.CFrame +(Vector3.new(0,.1,0))
wait(.01)
end
else PriPart6 = (PriPart6+1)
end
else end

if PriPart6 == 3
then	
if zpoPart6 == 1
then
for i=1, 10 do
a.Part6.CFrame = a.Part6.CFrame +(Vector3.new(0,0,.1))
wait(.01)
end
else PriPart6 = (PriPart6+1)
end
else end

if PriPart6 == 4
then	
if ynePart6 == 1
then
for i=1, 10 do
a.Part6.CFrame = a.Part6.CFrame +(Vector3.new(0,-.1,0))
wait(.01)
end
else PriPart6 = (PriPart6+1)
end
else end

if PriPart6 == 5
then	
if znePart6 == 1
then
for i=1, 10 do
a.Part6.CFrame = a.Part6.CFrame +(Vector3.new(0,0,-.1))
wait(.01)
end
else PriPart6 = (PriPart6+1)
end
else end
-- (PriPart6)
------------------------------------------------------------------------------
for i=1, 10 do
a.Part6.CFrame = a.Part6.CFrame * CFrame.fromEulerAnglesXYZ(math.pi/20,0,0)
wait(.01)
end
TMPart6 = (TMPart6+1)
until 
math.abs(a.Part6.Position.X - cPart6.Position.X) > 5
or TMPart6 == 7
else end
else end

if sPart6 == 3
and RPart6 == 2 --Checking +X Reconfiguration
then
if  XSPart6 == a.Part6.Position.X
and YSPart6 == a.Part6.Position.Y
and ZSPart6 == a.Part6.Position.Z
then
-- "Reconfiguring"
RPart6 = (RPart6+1)
repeat
if a.Part6.Position.X + 2.5 < Partt1.Position.X -- P1 +X Positions Library Reference
or a.Part6.Position.X > Partt1.Position.X
or a.Part6.Position.Y +(1.9) < Partt1.Position.Y 
or a.Part6.Position.Y -(1.9) > Partt1.Position.Y 
or a.Part6.Position.Z +(1.9) < Partt1.Position.Z 
or a.Part6.Position.Z -(1.9) > Partt1.Position.Z 
then
if a.Part6.Position.X + 2.5 < Partt2.Position.X
or a.Part6.Position.X > Partt2.Position.X
or a.Part6.Position.Y +(1.9) < Partt2.Position.Y 
or a.Part6.Position.Y -(1.9) > Partt2.Position.Y 
or a.Part6.Position.Z +(1.9) < Partt2.Position.Z 
or a.Part6.Position.Z -(1.9) > Partt2.Position.Z 
then
if a.Part6.Position.X + 2.5 < Partt3.Position.X
or a.Part6.Position.X > Partt3.Position.X
or a.Part6.Position.Y +(1.9) < Partt3.Position.Y 
or a.Part6.Position.Y -(1.9) > Partt3.Position.Y 
or a.Part6.Position.Z +(1.9) < Partt3.Position.Z 
or a.Part6.Position.Z -(1.9) > Partt3.Position.Z 
then
if a.Part6.Position.X + 2.5 < Partt4.Position.X
or a.Part6.Position.X > Partt4.Position.X
or a.Part6.Position.Y +(1.9) < Partt4.Position.Y 
or a.Part6.Position.Y -(1.9) > Partt4.Position.Y 
or a.Part6.Position.Z +(1.9) < Partt4.Position.Z 
or a.Part6.Position.Z -(1.9) > Partt4.Position.Z 
then
if a.Part6.Position.X + 2.5 < Partt5.Position.X
or a.Part6.Position.X > Partt5.Position.X
or a.Part6.Position.Y +(1.9) < Partt5.Position.Y 
or a.Part6.Position.Y -(1.9) > Partt5.Position.Y 
or a.Part6.Position.Z +(1.9) < Partt5.Position.Z 
or a.Part6.Position.Z -(1.9) > Partt5.Position.Z 
then
if a.Part6.Position.X + 2.5 < Partt7.Position.X
or a.Part6.Position.X > Partt7.Position.X
or a.Part6.Position.Y +(1.9) < Partt7.Position.Y 
or a.Part6.Position.Y -(1.9) > Partt7.Position.Y 
or a.Part6.Position.Z +(1.9) < Partt7.Position.Z 
or a.Part6.Position.Z -(1.9) > Partt7.Position.Z 
then
if a.Part6.Position.X + 2.5 < Partt8.Position.X
or a.Part6.Position.X > Partt8.Position.X
or a.Part6.Position.Y +(1.9) < Partt8.Position.Y 
or a.Part6.Position.Y -(1.9) > Partt8.Position.Y 
or a.Part6.Position.Z +(1.9) < Partt8.Position.Z 
or a.Part6.Position.Z -(1.9) > Partt8.Position.Z 
then
xpoPart6 = 1
else xpoPart6 = 0 
end
else xpoPart6 = 0
end
else xpoPart6 = 0
end
else xpoPart6 = 0
end
else xpoPart6 = 0
end
else xpoPart6 = 0
end
else xpoPart6 = 0
end

if a.Part6.Position.X - 2.5 > Partt1.Position.X -- P1 -X Positions Library Reference
or a.Part6.Position.X < Partt1.Position.X
or a.Part6.Position.Y +(1.9) < Partt1.Position.Y 
or a.Part6.Position.Y -(1.9) > Partt1.Position.Y 
or a.Part6.Position.Z +(1.9) < Partt1.Position.Z 
or a.Part6.Position.Z -(1.9) > Partt1.Position.Z 
then
if a.Part6.Position.X - 2.5 > Partt2.Position.X
or a.Part6.Position.X < Partt2.Position.X
or a.Part6.Position.Y +(1.9) < Partt2.Position.Y 
or a.Part6.Position.Y -(1.9) > Partt2.Position.Y 
or a.Part6.Position.Z +(1.9) < Partt2.Position.Z 
or a.Part6.Position.Z -(1.9) > Partt2.Position.Z 
then
if a.Part6.Position.X - 2.5 > Partt3.Position.X
or a.Part6.Position.X < Partt3.Position.X
or a.Part6.Position.Y +(1.9) < Partt3.Position.Y 
or a.Part6.Position.Y -(1.9) > Partt3.Position.Y 
or a.Part6.Position.Z +(1.9) < Partt3.Position.Z 
or a.Part6.Position.Z -(1.9) > Partt3.Position.Z 
then
if a.Part6.Position.X - 2.5 > Partt4.Position.X
or a.Part6.Position.X < Partt4.Position.X
or a.Part6.Position.Y +(1.9) < Partt4.Position.Y 
or a.Part6.Position.Y -(1.9) > Partt4.Position.Y 
or a.Part6.Position.Z +(1.9) < Partt4.Position.Z 
or a.Part6.Position.Z -(1.9) > Partt4.Position.Z 
then
if a.Part6.Position.X - 2.5 > Partt5.Position.X
or a.Part6.Position.X < Partt5.Position.X
or a.Part6.Position.Y +(1.9) < Partt5.Position.Y 
or a.Part6.Position.Y -(1.9) > Partt5.Position.Y 
or a.Part6.Position.Z +(1.9) < Partt5.Position.Z 
or a.Part6.Position.Z -(1.9) > Partt5.Position.Z 
then
if a.Part6.Position.X - 2.5 > Partt7.Position.X
or a.Part6.Position.X < Partt7.Position.X
or a.Part6.Position.Y +(1.9) < Partt7.Position.Y 
or a.Part6.Position.Y -(1.9) > Partt7.Position.Y 
or a.Part6.Position.Z +(1.9) < Partt7.Position.Z 
or a.Part6.Position.Z -(1.9) > Partt7.Position.Z 
then
if a.Part6.Position.X - 2.5 > Partt8.Position.X
or a.Part6.Position.X < Partt8.Position.X
or a.Part6.Position.Y +(1.9) < Partt8.Position.Y 
or a.Part6.Position.Y -(1.9) > Partt8.Position.Y 
or a.Part6.Position.Z +(1.9) < Partt8.Position.Z 
or a.Part6.Position.Z -(1.9) > Partt8.Position.Z 
then
xnePart6 = 1
else xnePart6 = 0 
end
else xnePart6 = 0
end
else xnePart6 = 0
end
else xnePart6 = 0
end
else xnePart6 = 0
end
else xnePart6 = 0
end
else xnePart6 = 0
end

if a.Part6.Position.Y + 2.5 < Partt1.Position.Y -- P1 +Y Positions Library Reference
or a.Part6.Position.Y > Partt1.Position.Y
or a.Part6.Position.X +(1.9) < Partt1.Position.X 
or a.Part6.Position.X -(1.9) > Partt1.Position.X 
or a.Part6.Position.Z +(1.9) < Partt1.Position.Z 
or a.Part6.Position.Z -(1.9) > Partt1.Position.Z 
then
if a.Part6.Position.Y + 2.5 < Partt2.Position.Y
or a.Part6.Position.Y > Partt2.Position.Y
or a.Part6.Position.X +(1.9) < Partt2.Position.X 
or a.Part6.Position.X -(1.9) > Partt2.Position.X 
or a.Part6.Position.Z +(1.9) < Partt2.Position.Z 
or a.Part6.Position.Z -(1.9) > Partt2.Position.Z 
then
if a.Part6.Position.Y + 2.5 < Partt3.Position.Y
or a.Part6.Position.Y > Partt3.Position.Y
or a.Part6.Position.X +(1.9) < Partt3.Position.X 
or a.Part6.Position.X -(1.9) > Partt3.Position.X 
or a.Part6.Position.Z +(1.9) < Partt3.Position.Z 
or a.Part6.Position.Z -(1.9) > Partt3.Position.Z 
then
if a.Part6.Position.Y + 2.5 < Partt4.Position.Y
or a.Part6.Position.Y > Partt4.Position.Y
or a.Part6.Position.X +(1.9) < Partt4.Position.X 
or a.Part6.Position.X -(1.9) > Partt4.Position.X 
or a.Part6.Position.Z +(1.9) < Partt4.Position.Z 
or a.Part6.Position.Z -(1.9) > Partt4.Position.Z 
then
if a.Part6.Position.Y + 2.5 < Partt5.Position.Y
or a.Part6.Position.Y > Partt5.Position.Y
or a.Part6.Position.X +(1.9) < Partt5.Position.X 
or a.Part6.Position.X -(1.9) > Partt5.Position.X 
or a.Part6.Position.Z +(1.9) < Partt5.Position.Z 
or a.Part6.Position.Z -(1.9) > Partt5.Position.Z 
then
if a.Part6.Position.Y + 2.5 < Partt7.Position.Y
or a.Part6.Position.Y > Partt7.Position.Y
or a.Part6.Position.X +(1.9) < Partt7.Position.X 
or a.Part6.Position.X -(1.9) > Partt7.Position.X 
or a.Part6.Position.Z +(1.9) < Partt7.Position.Z 
or a.Part6.Position.Z -(1.9) > Partt7.Position.Z 
then
if a.Part6.Position.Y + 2.5 < Partt8.Position.Y
or a.Part6.Position.Y > Partt8.Position.Y
or a.Part6.Position.X +(1.9) < Partt8.Position.X 
or a.Part6.Position.X -(1.9) > Partt8.Position.X 
or a.Part6.Position.Z +(1.9) < Partt8.Position.Z 
or a.Part6.Position.Z -(1.9) > Partt8.Position.Z 
then
ypoPart6 = 1
else ypoPart6 = 0 
end
else ypoPart6 = 0
end
else ypoPart6 = 0
end
else ypoPart6 = 0
end
else ypoPart6 = 0
end
else ypoPart6 = 0
end
else ypoPart6 = 0
end

if a.Part6.Position.Y - 2.5 > Partt1.Position.Y -- P1 -Y Positions Library Reference
or a.Part6.Position.Y < Partt1.Position.Y
or a.Part6.Position.X +(1.9) < Partt1.Position.X 
or a.Part6.Position.X -(1.9) > Partt1.Position.X 
or a.Part6.Position.Z +(1.9) < Partt1.Position.Z 
or a.Part6.Position.Z -(1.9) > Partt1.Position.Z 
then
if a.Part6.Position.Y - 2.5 > Partt2.Position.Y
or a.Part6.Position.Y < Partt2.Position.Y
or a.Part6.Position.X +(1.9) < Partt2.Position.X 
or a.Part6.Position.X -(1.9) > Partt2.Position.X 
or a.Part6.Position.Z +(1.9) < Partt2.Position.Z 
or a.Part6.Position.Z -(1.9) > Partt2.Position.Z 
then
if a.Part6.Position.Y - 2.5 > Partt3.Position.Y
or a.Part6.Position.Y < Partt3.Position.Y
or a.Part6.Position.X +(1.9) < Partt3.Position.X 
or a.Part6.Position.X -(1.9) > Partt3.Position.X 
or a.Part6.Position.Z +(1.9) < Partt3.Position.Z 
or a.Part6.Position.Z -(1.9) > Partt3.Position.Z 
then
if a.Part6.Position.Y - 2.5 > Partt4.Position.Y
or a.Part6.Position.Y < Partt4.Position.Y
or a.Part6.Position.X +(1.9) < Partt4.Position.X 
or a.Part6.Position.X -(1.9) > Partt4.Position.X 
or a.Part6.Position.Z +(1.9) < Partt4.Position.Z 
or a.Part6.Position.Z -(1.9) > Partt4.Position.Z 
then
if a.Part6.Position.Y - 2.5 > Partt5.Position.Y
or a.Part6.Position.Y < Partt5.Position.Y
or a.Part6.Position.X +(1.9) < Partt5.Position.X 
or a.Part6.Position.X -(1.9) > Partt5.Position.X 
or a.Part6.Position.Z +(1.9) < Partt5.Position.Z 
or a.Part6.Position.Z -(1.9) > Partt5.Position.Z 
then
if a.Part6.Position.Y - 2.5 > Partt7.Position.Y
or a.Part6.Position.Y < Partt7.Position.Y
or a.Part6.Position.X +(1.9) < Partt7.Position.X 
or a.Part6.Position.X -(1.9) > Partt7.Position.X 
or a.Part6.Position.Z +(1.9) < Partt7.Position.Z 
or a.Part6.Position.Z -(1.9) > Partt7.Position.Z 
then
if a.Part6.Position.Y - 2.5 > Partt8.Position.Y
or a.Part6.Position.Y < Partt8.Position.Y
or a.Part6.Position.X +(1.9) < Partt8.Position.X 
or a.Part6.Position.X -(1.9) > Partt8.Position.X 
or a.Part6.Position.Z +(1.9) < Partt8.Position.Z 
or a.Part6.Position.Z -(1.9) > Partt8.Position.Z 
then
ynePart6 = 1
else ynePart6 = 0 
end
else ynePart6 = 0
end
else ynePart6 = 0
end
else ynePart6 = 0
end
else ynePart6 = 0
end
else ynePart6 = 0
end
else ynePart6 = 0
end

if a.Part6.Position.Z + 2.5 < Partt1.Position.Z -- P1 +Z Positions Library Reference
or a.Part6.Position.Z > Partt1.Position.Z
or a.Part6.Position.X +(1.9) < Partt1.Position.X 
or a.Part6.Position.X -(1.9) > Partt1.Position.X 
or a.Part6.Position.Y +(1.9) < Partt1.Position.Y 
or a.Part6.Position.Y -(1.9) > Partt1.Position.Y 
then
if a.Part6.Position.Z + 2.5 < Partt2.Position.Z
or a.Part6.Position.Z > Partt2.Position.Z
or a.Part6.Position.X +(1.9) < Partt2.Position.X 
or a.Part6.Position.X -(1.9) > Partt2.Position.X 
or a.Part6.Position.Y +(1.9) < Partt2.Position.Y 
or a.Part6.Position.Y -(1.9) > Partt2.Position.Y 
then
if a.Part6.Position.Z + 2.5 < Partt3.Position.Z
or a.Part6.Position.Z > Partt3.Position.Z
or a.Part6.Position.X +(1.9) < Partt3.Position.X 
or a.Part6.Position.X -(1.9) > Partt3.Position.X 
or a.Part6.Position.Y +(1.9) < Partt3.Position.Y 
or a.Part6.Position.Y -(1.9) > Partt3.Position.Y 
then
if a.Part6.Position.Z + 2.5 < Partt4.Position.Z
or a.Part6.Position.Z > Partt4.Position.Z
or a.Part6.Position.X +(1.9) < Partt4.Position.X 
or a.Part6.Position.X -(1.9) > Partt4.Position.X 
or a.Part6.Position.Y +(1.9) < Partt4.Position.Y 
or a.Part6.Position.Y -(1.9) > Partt4.Position.Y 
then
if a.Part6.Position.Z + 2.5 < Partt5.Position.Z
or a.Part6.Position.Z > Partt5.Position.Z
or a.Part6.Position.X +(1.9) < Partt5.Position.X 
or a.Part6.Position.X -(1.9) > Partt5.Position.X 
or a.Part6.Position.Y +(1.9) < Partt5.Position.Y 
or a.Part6.Position.Y -(1.9) > Partt5.Position.Y 
then
if a.Part6.Position.Z + 2.5 < Partt7.Position.Z
or a.Part6.Position.Z > Partt7.Position.Z
or a.Part6.Position.X +(1.9) < Partt7.Position.X 
or a.Part6.Position.X -(1.9) > Partt7.Position.X 
or a.Part6.Position.Y +(1.9) < Partt7.Position.Y 
or a.Part6.Position.Y -(1.9) > Partt7.Position.Y 
then
if a.Part6.Position.Z + 2.5 < Partt8.Position.Z
or a.Part6.Position.Z > Partt8.Position.Z
or a.Part6.Position.X +(1.9) < Partt8.Position.X 
or a.Part6.Position.X -(1.9) > Partt8.Position.X 
or a.Part6.Position.Y +(1.9) < Partt8.Position.Y 
or a.Part6.Position.Y -(1.9) > Partt8.Position.Y 
then
zpoPart6 = 1
else zpoPart6 = 0 
end
else zpoPart6 = 0
end
else zpoPart6 = 0
end
else zpoPart6 = 0
end
else zpoPart6 = 0
end
else zpoPart6 = 0
end
else zpoPart6 = 0
end

if a.Part6.Position.Z - 2.5 > Partt1.Position.Z -- P1 -Z Positions Library Reference
or a.Part6.Position.Z < Partt1.Position.Z
or a.Part6.Position.X +(1.9) < Partt1.Position.X 
or a.Part6.Position.X -(1.9) > Partt1.Position.X 
or a.Part6.Position.Y +(1.9) < Partt1.Position.Y 
or a.Part6.Position.Y -(1.9) > Partt1.Position.Y 
then
if a.Part6.Position.Z - 2.5 > Partt2.Position.Z
or a.Part6.Position.Z < Partt2.Position.Z
or a.Part6.Position.X +(1.9) < Partt2.Position.X 
or a.Part6.Position.X -(1.9) > Partt2.Position.X 
or a.Part6.Position.Y +(1.9) < Partt2.Position.Y 
or a.Part6.Position.Y -(1.9) > Partt2.Position.Y 
then
if a.Part6.Position.Z - 2.5 > Partt3.Position.Z
or a.Part6.Position.Z < Partt3.Position.Z
or a.Part6.Position.X +(1.9) < Partt3.Position.X 
or a.Part6.Position.X -(1.9) > Partt3.Position.X 
or a.Part6.Position.Y +(1.9) < Partt3.Position.Y 
or a.Part6.Position.Y -(1.9) > Partt3.Position.Y 
then
if a.Part6.Position.Z - 2.5 > Partt4.Position.Z
or a.Part6.Position.Z < Partt4.Position.Z
or a.Part6.Position.X +(1.9) < Partt4.Position.X 
or a.Part6.Position.X -(1.9) > Partt4.Position.X 
or a.Part6.Position.Y +(1.9) < Partt4.Position.Y 
or a.Part6.Position.Y -(1.9) > Partt4.Position.Y 
then
if a.Part6.Position.Z - 2.5 > Partt5.Position.Z
or a.Part6.Position.Z < Partt5.Position.Z
or a.Part6.Position.X +(1.9) < Partt5.Position.X 
or a.Part6.Position.X -(1.9) > Partt5.Position.X 
or a.Part6.Position.Y +(1.9) < Partt5.Position.Y 
or a.Part6.Position.Y -(1.9) > Partt5.Position.Y 
then
if a.Part6.Position.Z - 2.5 > Partt7.Position.Z
or a.Part6.Position.Z < Partt7.Position.Z
or a.Part6.Position.X +(1.9) < Partt7.Position.X 
or a.Part6.Position.X -(1.9) > Partt7.Position.X 
or a.Part6.Position.Y +(1.9) < Partt7.Position.Y 
or a.Part6.Position.Y -(1.9) > Partt7.Position.Y 
then
if a.Part6.Position.Z - 2.5 > Partt8.Position.Z
or a.Part6.Position.Z < Partt8.Position.Z
or a.Part6.Position.X +(1.9) < Partt8.Position.X 
or a.Part6.Position.X -(1.9) > Partt8.Position.X 
or a.Part6.Position.Y +(1.9) < Partt8.Position.Y 
or a.Part6.Position.Y -(1.9) > Partt8.Position.Y 
then
znePart6 = 1
else znePart6 = 0 
end
else znePart6 = 0
end
else znePart6 = 0
end
else znePart6 = 0
end
else znePart6 = 0
end
else znePart6 = 0
end
else znePart6 = 0
end

PriPart6 = 1 

if PriPart6 == 1
then	
if ypoPart6 == 1
then
for i=1, 10 do
a.Part6.CFrame = a.Part6.CFrame +(Vector3.new(0,.1,0))
wait(.01)
end
else PriPart6 = (PriPart6+1)
end
else end


if PriPart6 == 2
then	
if xpoPart6 == 1
then
for i=1, 10 do
a.Part6.CFrame = a.Part6.CFrame +(Vector3.new(.1,0,0))
wait(.01)
end
else PriPart6 = (PriPart6+1)
end
else end



if PriPart6 == 3
then	
if zpoPart6 == 1
then
for i=1, 10 do
a.Part6.CFrame = a.Part6.CFrame +(Vector3.new(0,0,.1))
wait(.01)
end
else PriPart6 = (PriPart6+1)
end
else end


if PriPart6 == 4
then	
if znePart6 == 1
then
for i=1, 10 do
a.Part6.CFrame = a.Part6.CFrame +(Vector3.new(0,0,-.1))
wait(.01)
end
else PriPart6 = (PriPart6+1)
end
else end

if PriPart6 == 5
then	
if xnePart6 == 1
then
for i=1, 10 do
a.Part6.CFrame = a.Part6.CFrame +(Vector3.new(-.1,0,0))
wait(.01)
end
else PriPart6 = (PriPart6+1)
end
else end
-- (PriPart6)

for i=1, 10 do
a.Part6.CFrame = a.Part6.CFrame * CFrame.fromEulerAnglesXYZ(0,math.pi/10,0)
wait(.01)
end
TMPart6 = (TMPart6+1)
until 
math.abs(a.Part6.Position.Y - cPart6.Position.Y) > 5
or TMPart6 == 7
else end
else end
------------------------------------------------------------------------------

if sPart6 == 3
and RPart6 == 3 --Checking +X Reconfiguration
then
if  XSPart6 == a.Part6.Position.X
and YSPart6 == a.Part6.Position.Y
and ZSPart6 == a.Part6.Position.Z
then
-- "Reconfiguring"
RPart6 = (RPart6+1)
repeat
if a.Part6.Position.X + 2.5 < Partt1.Position.X -- P1 +X Positions Library Reference
or a.Part6.Position.X > Partt1.Position.X
or a.Part6.Position.Y +(1.9) < Partt1.Position.Y 
or a.Part6.Position.Y -(1.9) > Partt1.Position.Y 
or a.Part6.Position.Z +(1.9) < Partt1.Position.Z 
or a.Part6.Position.Z -(1.9) > Partt1.Position.Z 
then
if a.Part6.Position.X + 2.5 < Partt2.Position.X
or a.Part6.Position.X > Partt2.Position.X
or a.Part6.Position.Y +(1.9) < Partt2.Position.Y 
or a.Part6.Position.Y -(1.9) > Partt2.Position.Y 
or a.Part6.Position.Z +(1.9) < Partt2.Position.Z 
or a.Part6.Position.Z -(1.9) > Partt2.Position.Z 
then
if a.Part6.Position.X + 2.5 < Partt3.Position.X
or a.Part6.Position.X > Partt3.Position.X
or a.Part6.Position.Y +(1.9) < Partt3.Position.Y 
or a.Part6.Position.Y -(1.9) > Partt3.Position.Y 
or a.Part6.Position.Z +(1.9) < Partt3.Position.Z 
or a.Part6.Position.Z -(1.9) > Partt3.Position.Z 
then
if a.Part6.Position.X + 2.5 < Partt4.Position.X
or a.Part6.Position.X > Partt4.Position.X
or a.Part6.Position.Y +(1.9) < Partt4.Position.Y 
or a.Part6.Position.Y -(1.9) > Partt4.Position.Y 
or a.Part6.Position.Z +(1.9) < Partt4.Position.Z 
or a.Part6.Position.Z -(1.9) > Partt4.Position.Z 
then
if a.Part6.Position.X + 2.5 < Partt5.Position.X
or a.Part6.Position.X > Partt5.Position.X
or a.Part6.Position.Y +(1.9) < Partt5.Position.Y 
or a.Part6.Position.Y -(1.9) > Partt5.Position.Y 
or a.Part6.Position.Z +(1.9) < Partt5.Position.Z 
or a.Part6.Position.Z -(1.9) > Partt5.Position.Z 
then
if a.Part6.Position.X + 2.5 < Partt7.Position.X
or a.Part6.Position.X > Partt7.Position.X
or a.Part6.Position.Y +(1.9) < Partt7.Position.Y 
or a.Part6.Position.Y -(1.9) > Partt7.Position.Y 
or a.Part6.Position.Z +(1.9) < Partt7.Position.Z 
or a.Part6.Position.Z -(1.9) > Partt7.Position.Z 
then
if a.Part6.Position.X + 2.5 < Partt8.Position.X
or a.Part6.Position.X > Partt8.Position.X
or a.Part6.Position.Y +(1.9) < Partt8.Position.Y 
or a.Part6.Position.Y -(1.9) > Partt8.Position.Y 
or a.Part6.Position.Z +(1.9) < Partt8.Position.Z 
or a.Part6.Position.Z -(1.9) > Partt8.Position.Z 
then
xpoPart6 = 1
else xpoPart6 = 0 
end
else xpoPart6 = 0
end
else xpoPart6 = 0
end
else xpoPart6 = 0
end
else xpoPart6 = 0
end
else xpoPart6 = 0
end
else xpoPart6 = 0
end

if a.Part6.Position.X - 2.5 > Partt1.Position.X -- P1 -X Positions Library Reference
or a.Part6.Position.X < Partt1.Position.X
or a.Part6.Position.Y +(1.9) < Partt1.Position.Y 
or a.Part6.Position.Y -(1.9) > Partt1.Position.Y 
or a.Part6.Position.Z +(1.9) < Partt1.Position.Z 
or a.Part6.Position.Z -(1.9) > Partt1.Position.Z 
then
if a.Part6.Position.X - 2.5 > Partt2.Position.X
or a.Part6.Position.X < Partt2.Position.X
or a.Part6.Position.Y +(1.9) < Partt2.Position.Y 
or a.Part6.Position.Y -(1.9) > Partt2.Position.Y 
or a.Part6.Position.Z +(1.9) < Partt2.Position.Z 
or a.Part6.Position.Z -(1.9) > Partt2.Position.Z 
then
if a.Part6.Position.X - 2.5 > Partt3.Position.X
or a.Part6.Position.X < Partt3.Position.X
or a.Part6.Position.Y +(1.9) < Partt3.Position.Y 
or a.Part6.Position.Y -(1.9) > Partt3.Position.Y 
or a.Part6.Position.Z +(1.9) < Partt3.Position.Z 
or a.Part6.Position.Z -(1.9) > Partt3.Position.Z 
then
if a.Part6.Position.X - 2.5 > Partt4.Position.X
or a.Part6.Position.X < Partt4.Position.X
or a.Part6.Position.Y +(1.9) < Partt4.Position.Y 
or a.Part6.Position.Y -(1.9) > Partt4.Position.Y 
or a.Part6.Position.Z +(1.9) < Partt4.Position.Z 
or a.Part6.Position.Z -(1.9) > Partt4.Position.Z 
then
if a.Part6.Position.X - 2.5 > Partt5.Position.X
or a.Part6.Position.X < Partt5.Position.X
or a.Part6.Position.Y +(1.9) < Partt5.Position.Y 
or a.Part6.Position.Y -(1.9) > Partt5.Position.Y 
or a.Part6.Position.Z +(1.9) < Partt5.Position.Z 
or a.Part6.Position.Z -(1.9) > Partt5.Position.Z 
then
if a.Part6.Position.X - 2.5 > Partt7.Position.X
or a.Part6.Position.X < Partt7.Position.X
or a.Part6.Position.Y +(1.9) < Partt7.Position.Y 
or a.Part6.Position.Y -(1.9) > Partt7.Position.Y 
or a.Part6.Position.Z +(1.9) < Partt7.Position.Z 
or a.Part6.Position.Z -(1.9) > Partt7.Position.Z 
then
if a.Part6.Position.X - 2.5 > Partt8.Position.X
or a.Part6.Position.X < Partt8.Position.X
or a.Part6.Position.Y +(1.9) < Partt8.Position.Y 
or a.Part6.Position.Y -(1.9) > Partt8.Position.Y 
or a.Part6.Position.Z +(1.9) < Partt8.Position.Z 
or a.Part6.Position.Z -(1.9) > Partt8.Position.Z 
then
xnePart6 = 1
else xnePart6 = 0 
end
else xnePart6 = 0
end
else xnePart6 = 0
end
else xnePart6 = 0
end
else xnePart6 = 0
end
else xnePart6 = 0
end
else xnePart6 = 0
end

if a.Part6.Position.Y + 2.5 < Partt1.Position.Y -- P1 +Y Positions Library Reference
or a.Part6.Position.Y > Partt1.Position.Y
or a.Part6.Position.X +(1.9) < Partt1.Position.X 
or a.Part6.Position.X -(1.9) > Partt1.Position.X 
or a.Part6.Position.Z +(1.9) < Partt1.Position.Z 
or a.Part6.Position.Z -(1.9) > Partt1.Position.Z 
then
if a.Part6.Position.Y + 2.5 < Partt2.Position.Y
or a.Part6.Position.Y > Partt2.Position.Y
or a.Part6.Position.X +(1.9) < Partt2.Position.X 
or a.Part6.Position.X -(1.9) > Partt2.Position.X 
or a.Part6.Position.Z +(1.9) < Partt2.Position.Z 
or a.Part6.Position.Z -(1.9) > Partt2.Position.Z 
then
if a.Part6.Position.Y + 2.5 < Partt3.Position.Y
or a.Part6.Position.Y > Partt3.Position.Y
or a.Part6.Position.X +(1.9) < Partt3.Position.X 
or a.Part6.Position.X -(1.9) > Partt3.Position.X 
or a.Part6.Position.Z +(1.9) < Partt3.Position.Z 
or a.Part6.Position.Z -(1.9) > Partt3.Position.Z 
then
if a.Part6.Position.Y + 2.5 < Partt4.Position.Y
or a.Part6.Position.Y > Partt4.Position.Y
or a.Part6.Position.X +(1.9) < Partt4.Position.X 
or a.Part6.Position.X -(1.9) > Partt4.Position.X 
or a.Part6.Position.Z +(1.9) < Partt4.Position.Z 
or a.Part6.Position.Z -(1.9) > Partt4.Position.Z 
then
if a.Part6.Position.Y + 2.5 < Partt5.Position.Y
or a.Part6.Position.Y > Partt5.Position.Y
or a.Part6.Position.X +(1.9) < Partt5.Position.X 
or a.Part6.Position.X -(1.9) > Partt5.Position.X 
or a.Part6.Position.Z +(1.9) < Partt5.Position.Z 
or a.Part6.Position.Z -(1.9) > Partt5.Position.Z 
then
if a.Part6.Position.Y + 2.5 < Partt7.Position.Y
or a.Part6.Position.Y > Partt7.Position.Y
or a.Part6.Position.X +(1.9) < Partt7.Position.X 
or a.Part6.Position.X -(1.9) > Partt7.Position.X 
or a.Part6.Position.Z +(1.9) < Partt7.Position.Z 
or a.Part6.Position.Z -(1.9) > Partt7.Position.Z 
then
if a.Part6.Position.Y + 2.5 < Partt8.Position.Y
or a.Part6.Position.Y > Partt8.Position.Y
or a.Part6.Position.X +(1.9) < Partt8.Position.X 
or a.Part6.Position.X -(1.9) > Partt8.Position.X 
or a.Part6.Position.Z +(1.9) < Partt8.Position.Z 
or a.Part6.Position.Z -(1.9) > Partt8.Position.Z 
then
ypoPart6 = 1
else ypoPart6 = 0 
end
else ypoPart6 = 0
end
else ypoPart6 = 0
end
else ypoPart6 = 0
end
else ypoPart6 = 0
end
else ypoPart6 = 0
end
else ypoPart6 = 0
end

if a.Part6.Position.Y - 2.5 > Partt1.Position.Y -- P1 -Y Positions Library Reference
or a.Part6.Position.Y < Partt1.Position.Y
or a.Part6.Position.X +(1.9) < Partt1.Position.X 
or a.Part6.Position.X -(1.9) > Partt1.Position.X 
or a.Part6.Position.Z +(1.9) < Partt1.Position.Z 
or a.Part6.Position.Z -(1.9) > Partt1.Position.Z 
then
if a.Part6.Position.Y - 2.5 > Partt2.Position.Y
or a.Part6.Position.Y < Partt2.Position.Y
or a.Part6.Position.X +(1.9) < Partt2.Position.X 
or a.Part6.Position.X -(1.9) > Partt2.Position.X 
or a.Part6.Position.Z +(1.9) < Partt2.Position.Z 
or a.Part6.Position.Z -(1.9) > Partt2.Position.Z 
then
if a.Part6.Position.Y - 2.5 > Partt3.Position.Y
or a.Part6.Position.Y < Partt3.Position.Y
or a.Part6.Position.X +(1.9) < Partt3.Position.X 
or a.Part6.Position.X -(1.9) > Partt3.Position.X 
or a.Part6.Position.Z +(1.9) < Partt3.Position.Z 
or a.Part6.Position.Z -(1.9) > Partt3.Position.Z 
then
if a.Part6.Position.Y - 2.5 > Partt4.Position.Y
or a.Part6.Position.Y < Partt4.Position.Y
or a.Part6.Position.X +(1.9) < Partt4.Position.X 
or a.Part6.Position.X -(1.9) > Partt4.Position.X 
or a.Part6.Position.Z +(1.9) < Partt4.Position.Z 
or a.Part6.Position.Z -(1.9) > Partt4.Position.Z 
then
if a.Part6.Position.Y - 2.5 > Partt5.Position.Y
or a.Part6.Position.Y < Partt5.Position.Y
or a.Part6.Position.X +(1.9) < Partt5.Position.X 
or a.Part6.Position.X -(1.9) > Partt5.Position.X 
or a.Part6.Position.Z +(1.9) < Partt5.Position.Z 
or a.Part6.Position.Z -(1.9) > Partt5.Position.Z 
then
if a.Part6.Position.Y - 2.5 > Partt7.Position.Y
or a.Part6.Position.Y < Partt7.Position.Y
or a.Part6.Position.X +(1.9) < Partt7.Position.X 
or a.Part6.Position.X -(1.9) > Partt7.Position.X 
or a.Part6.Position.Z +(1.9) < Partt7.Position.Z 
or a.Part6.Position.Z -(1.9) > Partt7.Position.Z 
then
if a.Part6.Position.Y - 2.5 > Partt8.Position.Y
or a.Part6.Position.Y < Partt8.Position.Y
or a.Part6.Position.X +(1.9) < Partt8.Position.X 
or a.Part6.Position.X -(1.9) > Partt8.Position.X 
or a.Part6.Position.Z +(1.9) < Partt8.Position.Z 
or a.Part6.Position.Z -(1.9) > Partt8.Position.Z 
then
ynePart6 = 1
else ynePart6 = 0 
end
else ynePart6 = 0
end
else ynePart6 = 0
end
else ynePart6 = 0
end
else ynePart6 = 0
end
else ynePart6 = 0
end
else ynePart6 = 0
end

if a.Part6.Position.Z + 2.5 < Partt1.Position.Z -- P1 +Z Positions Library Reference
or a.Part6.Position.Z > Partt1.Position.Z
or a.Part6.Position.X +(1.9) < Partt1.Position.X 
or a.Part6.Position.X -(1.9) > Partt1.Position.X 
or a.Part6.Position.Y +(1.9) < Partt1.Position.Y 
or a.Part6.Position.Y -(1.9) > Partt1.Position.Y 
then
if a.Part6.Position.Z + 2.5 < Partt2.Position.Z
or a.Part6.Position.Z > Partt2.Position.Z
or a.Part6.Position.X +(1.9) < Partt2.Position.X 
or a.Part6.Position.X -(1.9) > Partt2.Position.X 
or a.Part6.Position.Y +(1.9) < Partt2.Position.Y 
or a.Part6.Position.Y -(1.9) > Partt2.Position.Y 
then
if a.Part6.Position.Z + 2.5 < Partt3.Position.Z
or a.Part6.Position.Z > Partt3.Position.Z
or a.Part6.Position.X +(1.9) < Partt3.Position.X 
or a.Part6.Position.X -(1.9) > Partt3.Position.X 
or a.Part6.Position.Y +(1.9) < Partt3.Position.Y 
or a.Part6.Position.Y -(1.9) > Partt3.Position.Y 
then
if a.Part6.Position.Z + 2.5 < Partt4.Position.Z
or a.Part6.Position.Z > Partt4.Position.Z
or a.Part6.Position.X +(1.9) < Partt4.Position.X 
or a.Part6.Position.X -(1.9) > Partt4.Position.X 
or a.Part6.Position.Y +(1.9) < Partt4.Position.Y 
or a.Part6.Position.Y -(1.9) > Partt4.Position.Y 
then
if a.Part6.Position.Z + 2.5 < Partt5.Position.Z
or a.Part6.Position.Z > Partt5.Position.Z
or a.Part6.Position.X +(1.9) < Partt5.Position.X 
or a.Part6.Position.X -(1.9) > Partt5.Position.X 
or a.Part6.Position.Y +(1.9) < Partt5.Position.Y 
or a.Part6.Position.Y -(1.9) > Partt5.Position.Y 
then
if a.Part6.Position.Z + 2.5 < Partt7.Position.Z
or a.Part6.Position.Z > Partt7.Position.Z
or a.Part6.Position.X +(1.9) < Partt7.Position.X 
or a.Part6.Position.X -(1.9) > Partt7.Position.X 
or a.Part6.Position.Y +(1.9) < Partt7.Position.Y 
or a.Part6.Position.Y -(1.9) > Partt7.Position.Y 
then
if a.Part6.Position.Z + 2.5 < Partt8.Position.Z
or a.Part6.Position.Z > Partt8.Position.Z
or a.Part6.Position.X +(1.9) < Partt8.Position.X 
or a.Part6.Position.X -(1.9) > Partt8.Position.X 
or a.Part6.Position.Y +(1.9) < Partt8.Position.Y 
or a.Part6.Position.Y -(1.9) > Partt8.Position.Y 
then
zpoPart6 = 1
else zpoPart6 = 0 
end
else zpoPart6 = 0
end
else zpoPart6 = 0
end
else zpoPart6 = 0
end
else zpoPart6 = 0
end
else zpoPart6 = 0
end
else zpoPart6 = 0
end

if a.Part6.Position.Z - 2.5 > Partt1.Position.Z -- P1 -Z Positions Library Reference
or a.Part6.Position.Z < Partt1.Position.Z
or a.Part6.Position.X +(1.9) < Partt1.Position.X 
or a.Part6.Position.X -(1.9) > Partt1.Position.X 
or a.Part6.Position.Y +(1.9) < Partt1.Position.Y 
or a.Part6.Position.Y -(1.9) > Partt1.Position.Y 
then
if a.Part6.Position.Z - 2.5 > Partt2.Position.Z
or a.Part6.Position.Z < Partt2.Position.Z
or a.Part6.Position.X +(1.9) < Partt2.Position.X 
or a.Part6.Position.X -(1.9) > Partt2.Position.X 
or a.Part6.Position.Y +(1.9) < Partt2.Position.Y 
or a.Part6.Position.Y -(1.9) > Partt2.Position.Y 
then
if a.Part6.Position.Z - 2.5 > Partt3.Position.Z
or a.Part6.Position.Z < Partt3.Position.Z
or a.Part6.Position.X +(1.9) < Partt3.Position.X 
or a.Part6.Position.X -(1.9) > Partt3.Position.X 
or a.Part6.Position.Y +(1.9) < Partt3.Position.Y 
or a.Part6.Position.Y -(1.9) > Partt3.Position.Y 
then
if a.Part6.Position.Z - 2.5 > Partt4.Position.Z
or a.Part6.Position.Z < Partt4.Position.Z
or a.Part6.Position.X +(1.9) < Partt4.Position.X 
or a.Part6.Position.X -(1.9) > Partt4.Position.X 
or a.Part6.Position.Y +(1.9) < Partt4.Position.Y 
or a.Part6.Position.Y -(1.9) > Partt4.Position.Y 
then
if a.Part6.Position.Z - 2.5 > Partt5.Position.Z
or a.Part6.Position.Z < Partt5.Position.Z
or a.Part6.Position.X +(1.9) < Partt5.Position.X 
or a.Part6.Position.X -(1.9) > Partt5.Position.X 
or a.Part6.Position.Y +(1.9) < Partt5.Position.Y 
or a.Part6.Position.Y -(1.9) > Partt5.Position.Y 
then
if a.Part6.Position.Z - 2.5 > Partt7.Position.Z
or a.Part6.Position.Z < Partt7.Position.Z
or a.Part6.Position.X +(1.9) < Partt7.Position.X 
or a.Part6.Position.X -(1.9) > Partt7.Position.X 
or a.Part6.Position.Y +(1.9) < Partt7.Position.Y 
or a.Part6.Position.Y -(1.9) > Partt7.Position.Y 
then
if a.Part6.Position.Z - 2.5 > Partt8.Position.Z
or a.Part6.Position.Z < Partt8.Position.Z
or a.Part6.Position.X +(1.9) < Partt8.Position.X 
or a.Part6.Position.X -(1.9) > Partt8.Position.X 
or a.Part6.Position.Y +(1.9) < Partt8.Position.Y 
or a.Part6.Position.Y -(1.9) > Partt8.Position.Y 
then
znePart6 = 1
else znePart6 = 0 
end
else znePart6 = 0
end
else znePart6 = 0
end
else znePart6 = 0
end
else znePart6 = 0
end
else znePart6 = 0
end
else znePart6 = 0
end

PriPart6 = 1 
if PriPart6 == 1
then	
if xnePart6 == 1
then
for i=1, 10 do
a.Part6.CFrame = a.Part6.CFrame +(Vector3.new(-.1,0,0))
wait(.01)
end
else PriPart6 = (PriPart6+1)
end
else end

if PriPart6 == 2
then	
if ypoPart6 == 1
then
for i=1, 10 do
a.Part6.CFrame = a.Part6.CFrame +(Vector3.new(0,.1,0))
wait(.01)
end
else PriPart6 = (PriPart6+1)
end
else end

if PriPart6 == 3
then	
if zpoPart6 == 1
then
for i=1, 10 do
a.Part6.CFrame = a.Part6.CFrame +(Vector3.new(0,0,.1))
wait(.01)
end
else PriPart6 = (PriPart6+1)
end
else end

if PriPart6 == 4
then	
if ynePart6 == 1
then
for i=1, 10 do
a.Part6.CFrame = a.Part6.CFrame +(Vector3.new(0,-.1,0))
wait(.01)
end
else PriPart6 = (PriPart6+1)
end
else end

if PriPart6 == 5
then	
if znePart6 == 1
then
for i=1, 10 do
a.Part6.CFrame = a.Part6.CFrame +(Vector3.new(0,0,-.1))
wait(.01)
end
else PriPart6 = (PriPart6+1)
end
else end
------------------------------------------------------------------------------
-- (PriPart6)

wait(.1)
TMPart6 = (TMPart6+1)
until 
math.abs(a.Part6.Position.X - cPart6.Position.X) > 5
or TMPart6 == 7
else end
else end

if sPart6 == 3
and RPart6 == 4 --Checking +X Reconfiguration
then
if  XSPart6 == a.Part6.Position.X
and YSPart6 == a.Part6.Position.Y
and ZSPart6 == a.Part6.Position.Z
then
-- "Reconfiguring"
RPart6 = 1
repeat
if a.Part6.Position.X + 2.5 < Partt1.Position.X -- P1 +X Positions Library Reference
or a.Part6.Position.X > Partt1.Position.X
or a.Part6.Position.Y +(1.9) < Partt1.Position.Y 
or a.Part6.Position.Y -(1.9) > Partt1.Position.Y 
or a.Part6.Position.Z +(1.9) < Partt1.Position.Z 
or a.Part6.Position.Z -(1.9) > Partt1.Position.Z 
then
if a.Part6.Position.X + 2.5 < Partt2.Position.X
or a.Part6.Position.X > Partt2.Position.X
or a.Part6.Position.Y +(1.9) < Partt2.Position.Y 
or a.Part6.Position.Y -(1.9) > Partt2.Position.Y 
or a.Part6.Position.Z +(1.9) < Partt2.Position.Z 
or a.Part6.Position.Z -(1.9) > Partt2.Position.Z 
then
if a.Part6.Position.X + 2.5 < Partt3.Position.X
or a.Part6.Position.X > Partt3.Position.X
or a.Part6.Position.Y +(1.9) < Partt3.Position.Y 
or a.Part6.Position.Y -(1.9) > Partt3.Position.Y 
or a.Part6.Position.Z +(1.9) < Partt3.Position.Z 
or a.Part6.Position.Z -(1.9) > Partt3.Position.Z 
then
if a.Part6.Position.X + 2.5 < Partt4.Position.X
or a.Part6.Position.X > Partt4.Position.X
or a.Part6.Position.Y +(1.9) < Partt4.Position.Y 
or a.Part6.Position.Y -(1.9) > Partt4.Position.Y 
or a.Part6.Position.Z +(1.9) < Partt4.Position.Z 
or a.Part6.Position.Z -(1.9) > Partt4.Position.Z 
then
if a.Part6.Position.X + 2.5 < Partt5.Position.X
or a.Part6.Position.X > Partt5.Position.X
or a.Part6.Position.Y +(1.9) < Partt5.Position.Y 
or a.Part6.Position.Y -(1.9) > Partt5.Position.Y 
or a.Part6.Position.Z +(1.9) < Partt5.Position.Z 
or a.Part6.Position.Z -(1.9) > Partt5.Position.Z 
then
if a.Part6.Position.X + 2.5 < Partt7.Position.X
or a.Part6.Position.X > Partt7.Position.X
or a.Part6.Position.Y +(1.9) < Partt7.Position.Y 
or a.Part6.Position.Y -(1.9) > Partt7.Position.Y 
or a.Part6.Position.Z +(1.9) < Partt7.Position.Z 
or a.Part6.Position.Z -(1.9) > Partt7.Position.Z 
then
if a.Part6.Position.X + 2.5 < Partt8.Position.X
or a.Part6.Position.X > Partt8.Position.X
or a.Part6.Position.Y +(1.9) < Partt8.Position.Y 
or a.Part6.Position.Y -(1.9) > Partt8.Position.Y 
or a.Part6.Position.Z +(1.9) < Partt8.Position.Z 
or a.Part6.Position.Z -(1.9) > Partt8.Position.Z 
then
xpoPart6 = 1
else xpoPart6 = 0 
end
else xpoPart6 = 0
end
else xpoPart6 = 0
end
else xpoPart6 = 0
end
else xpoPart6 = 0
end
else xpoPart6 = 0
end
else xpoPart6 = 0
end

if a.Part6.Position.X - 2.5 > Partt1.Position.X -- P1 -X Positions Library Reference
or a.Part6.Position.X < Partt1.Position.X
or a.Part6.Position.Y +(1.9) < Partt1.Position.Y 
or a.Part6.Position.Y -(1.9) > Partt1.Position.Y 
or a.Part6.Position.Z +(1.9) < Partt1.Position.Z 
or a.Part6.Position.Z -(1.9) > Partt1.Position.Z 
then
if a.Part6.Position.X - 2.5 > Partt2.Position.X
or a.Part6.Position.X < Partt2.Position.X
or a.Part6.Position.Y +(1.9) < Partt2.Position.Y 
or a.Part6.Position.Y -(1.9) > Partt2.Position.Y 
or a.Part6.Position.Z +(1.9) < Partt2.Position.Z 
or a.Part6.Position.Z -(1.9) > Partt2.Position.Z 
then
if a.Part6.Position.X - 2.5 > Partt3.Position.X
or a.Part6.Position.X < Partt3.Position.X
or a.Part6.Position.Y +(1.9) < Partt3.Position.Y 
or a.Part6.Position.Y -(1.9) > Partt3.Position.Y 
or a.Part6.Position.Z +(1.9) < Partt3.Position.Z 
or a.Part6.Position.Z -(1.9) > Partt3.Position.Z 
then
if a.Part6.Position.X - 2.5 > Partt4.Position.X
or a.Part6.Position.X < Partt4.Position.X
or a.Part6.Position.Y +(1.9) < Partt4.Position.Y 
or a.Part6.Position.Y -(1.9) > Partt4.Position.Y 
or a.Part6.Position.Z +(1.9) < Partt4.Position.Z 
or a.Part6.Position.Z -(1.9) > Partt4.Position.Z 
then
if a.Part6.Position.X - 2.5 > Partt5.Position.X
or a.Part6.Position.X < Partt5.Position.X
or a.Part6.Position.Y +(1.9) < Partt5.Position.Y 
or a.Part6.Position.Y -(1.9) > Partt5.Position.Y 
or a.Part6.Position.Z +(1.9) < Partt5.Position.Z 
or a.Part6.Position.Z -(1.9) > Partt5.Position.Z 
then
if a.Part6.Position.X - 2.5 > Partt7.Position.X
or a.Part6.Position.X < Partt7.Position.X
or a.Part6.Position.Y +(1.9) < Partt7.Position.Y 
or a.Part6.Position.Y -(1.9) > Partt7.Position.Y 
or a.Part6.Position.Z +(1.9) < Partt7.Position.Z 
or a.Part6.Position.Z -(1.9) > Partt7.Position.Z 
then
if a.Part6.Position.X - 2.5 > Partt8.Position.X
or a.Part6.Position.X < Partt8.Position.X
or a.Part6.Position.Y +(1.9) < Partt8.Position.Y 
or a.Part6.Position.Y -(1.9) > Partt8.Position.Y 
or a.Part6.Position.Z +(1.9) < Partt8.Position.Z 
or a.Part6.Position.Z -(1.9) > Partt8.Position.Z 
then
xnePart6 = 1
else xnePart6 = 0 
end
else xnePart6 = 0
end
else xnePart6 = 0
end
else xnePart6 = 0
end
else xnePart6 = 0
end
else xnePart6 = 0
end
else xnePart6 = 0
end

if a.Part6.Position.Y + 2.5 < Partt1.Position.Y -- P1 +Y Positions Library Reference
or a.Part6.Position.Y > Partt1.Position.Y
or a.Part6.Position.X +(1.9) < Partt1.Position.X 
or a.Part6.Position.X -(1.9) > Partt1.Position.X 
or a.Part6.Position.Z +(1.9) < Partt1.Position.Z 
or a.Part6.Position.Z -(1.9) > Partt1.Position.Z 
then
if a.Part6.Position.Y + 2.5 < Partt2.Position.Y
or a.Part6.Position.Y > Partt2.Position.Y
or a.Part6.Position.X +(1.9) < Partt2.Position.X 
or a.Part6.Position.X -(1.9) > Partt2.Position.X 
or a.Part6.Position.Z +(1.9) < Partt2.Position.Z 
or a.Part6.Position.Z -(1.9) > Partt2.Position.Z 
then
if a.Part6.Position.Y + 2.5 < Partt3.Position.Y
or a.Part6.Position.Y > Partt3.Position.Y
or a.Part6.Position.X +(1.9) < Partt3.Position.X 
or a.Part6.Position.X -(1.9) > Partt3.Position.X 
or a.Part6.Position.Z +(1.9) < Partt3.Position.Z 
or a.Part6.Position.Z -(1.9) > Partt3.Position.Z 
then
if a.Part6.Position.Y + 2.5 < Partt4.Position.Y
or a.Part6.Position.Y > Partt4.Position.Y
or a.Part6.Position.X +(1.9) < Partt4.Position.X 
or a.Part6.Position.X -(1.9) > Partt4.Position.X 
or a.Part6.Position.Z +(1.9) < Partt4.Position.Z 
or a.Part6.Position.Z -(1.9) > Partt4.Position.Z 
then
if a.Part6.Position.Y + 2.5 < Partt5.Position.Y
or a.Part6.Position.Y > Partt5.Position.Y
or a.Part6.Position.X +(1.9) < Partt5.Position.X 
or a.Part6.Position.X -(1.9) > Partt5.Position.X 
or a.Part6.Position.Z +(1.9) < Partt5.Position.Z 
or a.Part6.Position.Z -(1.9) > Partt5.Position.Z 
then
if a.Part6.Position.Y + 2.5 < Partt7.Position.Y
or a.Part6.Position.Y > Partt7.Position.Y
or a.Part6.Position.X +(1.9) < Partt7.Position.X 
or a.Part6.Position.X -(1.9) > Partt7.Position.X 
or a.Part6.Position.Z +(1.9) < Partt7.Position.Z 
or a.Part6.Position.Z -(1.9) > Partt7.Position.Z 
then
if a.Part6.Position.Y + 2.5 < Partt8.Position.Y
or a.Part6.Position.Y > Partt8.Position.Y
or a.Part6.Position.X +(1.9) < Partt8.Position.X 
or a.Part6.Position.X -(1.9) > Partt8.Position.X 
or a.Part6.Position.Z +(1.9) < Partt8.Position.Z 
or a.Part6.Position.Z -(1.9) > Partt8.Position.Z 
then
ypoPart6 = 1
else ypoPart6 = 0 
end
else ypoPart6 = 0
end
else ypoPart6 = 0
end
else ypoPart6 = 0
end
else ypoPart6 = 0
end
else ypoPart6 = 0
end
else ypoPart6 = 0
end

if a.Part6.Position.Y - 2.5 > Partt1.Position.Y -- P1 -Y Positions Library Reference
or a.Part6.Position.Y < Partt1.Position.Y
or a.Part6.Position.X +(1.9) < Partt1.Position.X 
or a.Part6.Position.X -(1.9) > Partt1.Position.X 
or a.Part6.Position.Z +(1.9) < Partt1.Position.Z 
or a.Part6.Position.Z -(1.9) > Partt1.Position.Z 
then
if a.Part6.Position.Y - 2.5 > Partt2.Position.Y
or a.Part6.Position.Y < Partt2.Position.Y
or a.Part6.Position.X +(1.9) < Partt2.Position.X 
or a.Part6.Position.X -(1.9) > Partt2.Position.X 
or a.Part6.Position.Z +(1.9) < Partt2.Position.Z 
or a.Part6.Position.Z -(1.9) > Partt2.Position.Z 
then
if a.Part6.Position.Y - 2.5 > Partt3.Position.Y
or a.Part6.Position.Y < Partt3.Position.Y
or a.Part6.Position.X +(1.9) < Partt3.Position.X 
or a.Part6.Position.X -(1.9) > Partt3.Position.X 
or a.Part6.Position.Z +(1.9) < Partt3.Position.Z 
or a.Part6.Position.Z -(1.9) > Partt3.Position.Z 
then
if a.Part6.Position.Y - 2.5 > Partt4.Position.Y
or a.Part6.Position.Y < Partt4.Position.Y
or a.Part6.Position.X +(1.9) < Partt4.Position.X 
or a.Part6.Position.X -(1.9) > Partt4.Position.X 
or a.Part6.Position.Z +(1.9) < Partt4.Position.Z 
or a.Part6.Position.Z -(1.9) > Partt4.Position.Z 
then
if a.Part6.Position.Y - 2.5 > Partt5.Position.Y
or a.Part6.Position.Y < Partt5.Position.Y
or a.Part6.Position.X +(1.9) < Partt5.Position.X 
or a.Part6.Position.X -(1.9) > Partt5.Position.X 
or a.Part6.Position.Z +(1.9) < Partt5.Position.Z 
or a.Part6.Position.Z -(1.9) > Partt5.Position.Z 
then
if a.Part6.Position.Y - 2.5 > Partt7.Position.Y
or a.Part6.Position.Y < Partt7.Position.Y
or a.Part6.Position.X +(1.9) < Partt7.Position.X 
or a.Part6.Position.X -(1.9) > Partt7.Position.X 
or a.Part6.Position.Z +(1.9) < Partt7.Position.Z 
or a.Part6.Position.Z -(1.9) > Partt7.Position.Z 
then
if a.Part6.Position.Y - 2.5 > Partt8.Position.Y
or a.Part6.Position.Y < Partt8.Position.Y
or a.Part6.Position.X +(1.9) < Partt8.Position.X 
or a.Part6.Position.X -(1.9) > Partt8.Position.X 
or a.Part6.Position.Z +(1.9) < Partt8.Position.Z 
or a.Part6.Position.Z -(1.9) > Partt8.Position.Z 
then
ynePart6 = 1
else ynePart6 = 0 
end
else ynePart6 = 0
end
else ynePart6 = 0
end
else ynePart6 = 0
end
else ynePart6 = 0
end
else ynePart6 = 0
end
else ynePart6 = 0
end

if a.Part6.Position.Z + 2.5 < Partt1.Position.Z -- P1 +Z Positions Library Reference
or a.Part6.Position.Z > Partt1.Position.Z
or a.Part6.Position.X +(1.9) < Partt1.Position.X 
or a.Part6.Position.X -(1.9) > Partt1.Position.X 
or a.Part6.Position.Y +(1.9) < Partt1.Position.Y 
or a.Part6.Position.Y -(1.9) > Partt1.Position.Y 
then
if a.Part6.Position.Z + 2.5 < Partt2.Position.Z
or a.Part6.Position.Z > Partt2.Position.Z
or a.Part6.Position.X +(1.9) < Partt2.Position.X 
or a.Part6.Position.X -(1.9) > Partt2.Position.X 
or a.Part6.Position.Y +(1.9) < Partt2.Position.Y 
or a.Part6.Position.Y -(1.9) > Partt2.Position.Y 
then
if a.Part6.Position.Z + 2.5 < Partt3.Position.Z
or a.Part6.Position.Z > Partt3.Position.Z
or a.Part6.Position.X +(1.9) < Partt3.Position.X 
or a.Part6.Position.X -(1.9) > Partt3.Position.X 
or a.Part6.Position.Y +(1.9) < Partt3.Position.Y 
or a.Part6.Position.Y -(1.9) > Partt3.Position.Y 
then
if a.Part6.Position.Z + 2.5 < Partt4.Position.Z
or a.Part6.Position.Z > Partt4.Position.Z
or a.Part6.Position.X +(1.9) < Partt4.Position.X 
or a.Part6.Position.X -(1.9) > Partt4.Position.X 
or a.Part6.Position.Y +(1.9) < Partt4.Position.Y 
or a.Part6.Position.Y -(1.9) > Partt4.Position.Y 
then
if a.Part6.Position.Z + 2.5 < Partt5.Position.Z
or a.Part6.Position.Z > Partt5.Position.Z
or a.Part6.Position.X +(1.9) < Partt5.Position.X 
or a.Part6.Position.X -(1.9) > Partt5.Position.X 
or a.Part6.Position.Y +(1.9) < Partt5.Position.Y 
or a.Part6.Position.Y -(1.9) > Partt5.Position.Y 
then
if a.Part6.Position.Z + 2.5 < Partt7.Position.Z
or a.Part6.Position.Z > Partt7.Position.Z
or a.Part6.Position.X +(1.9) < Partt7.Position.X 
or a.Part6.Position.X -(1.9) > Partt7.Position.X 
or a.Part6.Position.Y +(1.9) < Partt7.Position.Y 
or a.Part6.Position.Y -(1.9) > Partt7.Position.Y 
then
if a.Part6.Position.Z + 2.5 < Partt8.Position.Z
or a.Part6.Position.Z > Partt8.Position.Z
or a.Part6.Position.X +(1.9) < Partt8.Position.X 
or a.Part6.Position.X -(1.9) > Partt8.Position.X 
or a.Part6.Position.Y +(1.9) < Partt8.Position.Y 
or a.Part6.Position.Y -(1.9) > Partt8.Position.Y 
then
zpoPart6 = 1
else zpoPart6 = 0 
end
else zpoPart6 = 0
end
else zpoPart6 = 0
end
else zpoPart6 = 0
end
else zpoPart6 = 0
end
else zpoPart6 = 0
end
else zpoPart6 = 0
end

if a.Part6.Position.Z - 2.5 > Partt1.Position.Z -- P1 -Z Positions Library Reference
or a.Part6.Position.Z < Partt1.Position.Z
or a.Part6.Position.X +(1.9) < Partt1.Position.X 
or a.Part6.Position.X -(1.9) > Partt1.Position.X 
or a.Part6.Position.Y +(1.9) < Partt1.Position.Y 
or a.Part6.Position.Y -(1.9) > Partt1.Position.Y 
then
if a.Part6.Position.Z - 2.5 > Partt2.Position.Z
or a.Part6.Position.Z < Partt2.Position.Z
or a.Part6.Position.X +(1.9) < Partt2.Position.X 
or a.Part6.Position.X -(1.9) > Partt2.Position.X 
or a.Part6.Position.Y +(1.9) < Partt2.Position.Y 
or a.Part6.Position.Y -(1.9) > Partt2.Position.Y 
then
if a.Part6.Position.Z - 2.5 > Partt3.Position.Z
or a.Part6.Position.Z < Partt3.Position.Z
or a.Part6.Position.X +(1.9) < Partt3.Position.X 
or a.Part6.Position.X -(1.9) > Partt3.Position.X 
or a.Part6.Position.Y +(1.9) < Partt3.Position.Y 
or a.Part6.Position.Y -(1.9) > Partt3.Position.Y 
then
if a.Part6.Position.Z - 2.5 > Partt4.Position.Z
or a.Part6.Position.Z < Partt4.Position.Z
or a.Part6.Position.X +(1.9) < Partt4.Position.X 
or a.Part6.Position.X -(1.9) > Partt4.Position.X 
or a.Part6.Position.Y +(1.9) < Partt4.Position.Y 
or a.Part6.Position.Y -(1.9) > Partt4.Position.Y 
then
if a.Part6.Position.Z - 2.5 > Partt5.Position.Z
or a.Part6.Position.Z < Partt5.Position.Z
or a.Part6.Position.X +(1.9) < Partt5.Position.X 
or a.Part6.Position.X -(1.9) > Partt5.Position.X 
or a.Part6.Position.Y +(1.9) < Partt5.Position.Y 
or a.Part6.Position.Y -(1.9) > Partt5.Position.Y 
then
if a.Part6.Position.Z - 2.5 > Partt7.Position.Z
or a.Part6.Position.Z < Partt7.Position.Z
or a.Part6.Position.X +(1.9) < Partt7.Position.X 
or a.Part6.Position.X -(1.9) > Partt7.Position.X 
or a.Part6.Position.Y +(1.9) < Partt7.Position.Y 
or a.Part6.Position.Y -(1.9) > Partt7.Position.Y 
then
if a.Part6.Position.Z - 2.5 > Partt8.Position.Z
or a.Part6.Position.Z < Partt8.Position.Z
or a.Part6.Position.X +(1.9) < Partt8.Position.X 
or a.Part6.Position.X -(1.9) > Partt8.Position.X 
or a.Part6.Position.Y +(1.9) < Partt8.Position.Y 
or a.Part6.Position.Y -(1.9) > Partt8.Position.Y 
then
znePart6 = 1
else znePart6 = 0 
end
else znePart6 = 0
end
else znePart6 = 0
end
else znePart6 = 0
end
else znePart6 = 0
end
else znePart6 = 0
end
else znePart6 = 0
end

PriPart6 = 1 

if PriPart6 == 1
then	
if ynePart6 == 1
then
for i=1, 10 do
a.Part6.CFrame = a.Part6.CFrame +(Vector3.new(0,-.1,0))
wait(.01)
end
else PriPart6 = (PriPart6+1)
end
else end


if PriPart6 == 2
then	
if xpoPart6 == 1
then
for i=1, 10 do
a.Part6.CFrame = a.Part6.CFrame +(Vector3.new(.1,0,0))
wait(.01)
end
else PriPart6 = (PriPart6+1)
end
else end



if PriPart6 == 3
then	
if zpoPart6 == 1
then
for i=1, 10 do
a.Part6.CFrame = a.Part6.CFrame +(Vector3.new(0,0,.1))
wait(.01)
end
else PriPart6 = (PriPart6+1)
end
else end


if PriPart6 == 4
then	
if znePart6 == 1
then
for i=1, 10 do
a.Part6.CFrame = a.Part6.CFrame +(Vector3.new(0,0,-.1))
wait(.01)
end
else PriPart6 = (PriPart6+1)
end
else end

if PriPart6 == 5
then	
if xnePart6 == 1
then
for i=1, 10 do
a.Part6.CFrame = a.Part6.CFrame +(Vector3.new(-.1,0,0))
wait(.01)
end
else PriPart6 = (PriPart6+1)
end
else end
-- (PriPart6)

wait(.1)
TMPart6 = (TMPart6+1)
until 
math.abs(a.Part6.Position.Y - cPart6.Position.Y) > 5
or TMPart6 == 7
else end
else end
------------------------------------------------------------------------------

if sPart6==3
then sPart6 = 0
else end

wait(.1)
until
    a.Part6.Position.X < cPart6.Position.X +.7
and a.Part6.Position.X > cPart6.Position.X -.7
and a.Part6.Position.Y < cPart6.Position.Y +.7
and a.Part6.Position.Y > cPart6.Position.Y -.7
and a.Part6.Position.Z < cPart6.Position.Z +.7
and a.Part6.Position.Z > cPart6.Position.Z -.7
end --Couroutine



function core7()
wait(.3)
repeat

TMPart7 =  0

if cPart7.Position.X > a.Part7.Position.X then --Checking X Positions
XPart7 = 1
elseif cPart7.Position.X < a.Part7.Position.X then
XPart7 = -1
elseif cPart7.Position.X == a.Part7.Position.X then
XPart7 = 0
end

if cPart7.Position.Y > a.Part7.Position.Y then --Checking Y Positions
YPart7 = 1
elseif cPart7.Position.Y < a.Part7.Position.Y then
YPart7 = -1
elseif cPart7.Position.Y == a.Part7.Position.Y then
YPart7 = 0
end

if cPart7.Position.Z > a.Part7.Position.Z then --Checking Z Positions
ZPart7 = 1
elseif cPart7.Position.Z < a.Part7.Position.Z then
ZPart7 = -1
elseif cPart7.Position.Z == a.Part7.Position.Z then
ZPart7 = 0
end
-- ++-- 											
if  math.abs(a.Part7.Position.X - cPart7.Position.X) > math.abs(a.Part7.Position.Y - cPart7.Position.Y) --Priority Checks 1=X 2=Y 3=Z
and math.abs(a.Part7.Position.X - cPart7.Position.X) > math.abs(a.Part7.Position.Z - cPart7.Position.Z)
then PriPart7 = 1
else end 
if  math.abs(a.Part7.Position.Y - cPart7.Position.Y) > math.abs(a.Part7.Position.X - cPart7.Position.X) 
and math.abs(a.Part7.Position.Y - cPart7.Position.Y) > math.abs(a.Part7.Position.Z - cPart7.Position.Z)
then PriPart7 = 2
else end 
if  math.abs(a.Part7.Position.Z - cPart7.Position.Z) > math.abs(a.Part7.Position.Y - cPart7.Position.Y) 
and math.abs(a.Part7.Position.Z - cPart7.Position.Z) > math.abs(a.Part7.Position.X - cPart7.Position.X)
then PriPart7 = 3
else end 
if math.abs(a.Part7.Position.X - cPart7.Position.X) == math.abs(a.Part7.Position.Y - cPart7.Position.Y)  
or math.abs(a.Part7.Position.X - cPart7.Position.X) == math.abs(a.Part7.Position.Z - cPart7.Position.Z)
or math.abs(a.Part7.Position.Y - cPart7.Position.Y) == math.abs(a.Part7.Position.X - cPart7.Position.X)
then PriPart7 = 1
else end 

if a.Part7.Position.X + 2.5 < Partt1.Position.X -- P1 +X Positions Library Reference
or a.Part7.Position.X > Partt1.Position.X
or a.Part7.Position.Y +(1.9) < Partt1.Position.Y 
or a.Part7.Position.Y -(1.9) > Partt1.Position.Y 
or a.Part7.Position.Z +(1.9) < Partt1.Position.Z 
or a.Part7.Position.Z -(1.9) > Partt1.Position.Z 
then
if a.Part7.Position.X + 2.5 < Partt2.Position.X
or a.Part7.Position.X > Partt2.Position.X
or a.Part7.Position.Y +(1.9) < Partt2.Position.Y 
or a.Part7.Position.Y -(1.9) > Partt2.Position.Y 
or a.Part7.Position.Z +(1.9) < Partt2.Position.Z 
or a.Part7.Position.Z -(1.9) > Partt2.Position.Z 
then
if a.Part7.Position.X + 2.5 < Partt3.Position.X
or a.Part7.Position.X > Partt3.Position.X
or a.Part7.Position.Y +(1.9) < Partt3.Position.Y 
or a.Part7.Position.Y -(1.9) > Partt3.Position.Y 
or a.Part7.Position.Z +(1.9) < Partt3.Position.Z 
or a.Part7.Position.Z -(1.9) > Partt3.Position.Z 
then
if a.Part7.Position.X + 2.5 < Partt4.Position.X
or a.Part7.Position.X > Partt4.Position.X
or a.Part7.Position.Y +(1.9) < Partt4.Position.Y 
or a.Part7.Position.Y -(1.9) > Partt4.Position.Y 
or a.Part7.Position.Z +(1.9) < Partt4.Position.Z 
or a.Part7.Position.Z -(1.9) > Partt4.Position.Z 
then
if a.Part7.Position.X + 2.5 < Partt5.Position.X
or a.Part7.Position.X > Partt5.Position.X
or a.Part7.Position.Y +(1.9) < Partt5.Position.Y 
or a.Part7.Position.Y -(1.9) > Partt5.Position.Y 
or a.Part7.Position.Z +(1.9) < Partt5.Position.Z 
or a.Part7.Position.Z -(1.9) > Partt5.Position.Z 
then
if a.Part7.Position.X + 2.5 < Partt6.Position.X
or a.Part7.Position.X > Partt6.Position.X
or a.Part7.Position.Y +(1.9) < Partt6.Position.Y 
or a.Part7.Position.Y -(1.9) > Partt6.Position.Y 
or a.Part7.Position.Z +(1.9) < Partt6.Position.Z 
or a.Part7.Position.Z -(1.9) > Partt6.Position.Z 
then
if a.Part7.Position.X + 2.5 < Partt8.Position.X
or a.Part7.Position.X > Partt8.Position.X
or a.Part7.Position.Y +(1.9) < Partt8.Position.Y 
or a.Part7.Position.Y -(1.9) > Partt8.Position.Y 
or a.Part7.Position.Z +(1.9) < Partt8.Position.Z 
or a.Part7.Position.Z -(1.9) > Partt8.Position.Z 
then
xpoPart7 = 1
else xpoPart7 = 0 
end
else xpoPart7 = 0
end
else xpoPart7 = 0
end
else xpoPart7 = 0
end
else xpoPart7 = 0
end
else xpoPart7 = 0
end
else xpoPart7 = 0
end

if a.Part7.Position.X - 2.5 > Partt1.Position.X -- P1 -X Positions Library Reference
or a.Part7.Position.X < Partt1.Position.X
or a.Part7.Position.Y +(1.9) < Partt1.Position.Y 
or a.Part7.Position.Y -(1.9) > Partt1.Position.Y 
or a.Part7.Position.Z +(1.9) < Partt1.Position.Z 
or a.Part7.Position.Z -(1.9) > Partt1.Position.Z 
then
if a.Part7.Position.X - 2.5 > Partt2.Position.X
or a.Part7.Position.X < Partt2.Position.X
or a.Part7.Position.Y +(1.9) < Partt2.Position.Y 
or a.Part7.Position.Y -(1.9) > Partt2.Position.Y 
or a.Part7.Position.Z +(1.9) < Partt2.Position.Z 
or a.Part7.Position.Z -(1.9) > Partt2.Position.Z 
then
if a.Part7.Position.X - 2.5 > Partt3.Position.X
or a.Part7.Position.X < Partt3.Position.X
or a.Part7.Position.Y +(1.9) < Partt3.Position.Y 
or a.Part7.Position.Y -(1.9) > Partt3.Position.Y 
or a.Part7.Position.Z +(1.9) < Partt3.Position.Z 
or a.Part7.Position.Z -(1.9) > Partt3.Position.Z 
then
if a.Part7.Position.X - 2.5 > Partt4.Position.X
or a.Part7.Position.X < Partt4.Position.X
or a.Part7.Position.Y +(1.9) < Partt4.Position.Y 
or a.Part7.Position.Y -(1.9) > Partt4.Position.Y 
or a.Part7.Position.Z +(1.9) < Partt4.Position.Z 
or a.Part7.Position.Z -(1.9) > Partt4.Position.Z 
then
if a.Part7.Position.X - 2.5 > Partt5.Position.X
or a.Part7.Position.X < Partt5.Position.X
or a.Part7.Position.Y +(1.9) < Partt5.Position.Y 
or a.Part7.Position.Y -(1.9) > Partt5.Position.Y 
or a.Part7.Position.Z +(1.9) < Partt5.Position.Z 
or a.Part7.Position.Z -(1.9) > Partt5.Position.Z 
then
if a.Part7.Position.X - 2.5 > Partt6.Position.X
or a.Part7.Position.X < Partt6.Position.X
or a.Part7.Position.Y +(1.9) < Partt6.Position.Y 
or a.Part7.Position.Y -(1.9) > Partt6.Position.Y 
or a.Part7.Position.Z +(1.9) < Partt6.Position.Z 
or a.Part7.Position.Z -(1.9) > Partt6.Position.Z 
then
if a.Part7.Position.X - 2.5 > Partt8.Position.X
or a.Part7.Position.X < Partt8.Position.X
or a.Part7.Position.Y +(1.9) < Partt8.Position.Y 
or a.Part7.Position.Y -(1.9) > Partt8.Position.Y 
or a.Part7.Position.Z +(1.9) < Partt8.Position.Z 
or a.Part7.Position.Z -(1.9) > Partt8.Position.Z 
then
xnePart7 = 1
else xnePart7 = 0 
end
else xnePart7 = 0
end
else xnePart7 = 0
end
else xnePart7 = 0
end
else xnePart7 = 0
end
else xnePart7 = 0
end
else xnePart7 = 0
end

if a.Part7.Position.Y + 2.5 < Partt1.Position.Y -- P1 +Y Positions Library Reference
or a.Part7.Position.Y > Partt1.Position.Y
or a.Part7.Position.X +(1.9) < Partt1.Position.X 
or a.Part7.Position.X -(1.9) > Partt1.Position.X 
or a.Part7.Position.Z +(1.9) < Partt1.Position.Z 
or a.Part7.Position.Z -(1.9) > Partt1.Position.Z 
then
if a.Part7.Position.Y + 2.5 < Partt2.Position.Y
or a.Part7.Position.Y > Partt2.Position.Y
or a.Part7.Position.X +(1.9) < Partt2.Position.X 
or a.Part7.Position.X -(1.9) > Partt2.Position.X 
or a.Part7.Position.Z +(1.9) < Partt2.Position.Z 
or a.Part7.Position.Z -(1.9) > Partt2.Position.Z 
then
if a.Part7.Position.Y + 2.5 < Partt3.Position.Y
or a.Part7.Position.Y > Partt3.Position.Y
or a.Part7.Position.X +(1.9) < Partt3.Position.X 
or a.Part7.Position.X -(1.9) > Partt3.Position.X 
or a.Part7.Position.Z +(1.9) < Partt3.Position.Z 
or a.Part7.Position.Z -(1.9) > Partt3.Position.Z 
then
if a.Part7.Position.Y + 2.5 < Partt4.Position.Y
or a.Part7.Position.Y > Partt4.Position.Y
or a.Part7.Position.X +(1.9) < Partt4.Position.X 
or a.Part7.Position.X -(1.9) > Partt4.Position.X 
or a.Part7.Position.Z +(1.9) < Partt4.Position.Z 
or a.Part7.Position.Z -(1.9) > Partt4.Position.Z 
then
if a.Part7.Position.Y + 2.5 < Partt5.Position.Y
or a.Part7.Position.Y > Partt5.Position.Y
or a.Part7.Position.X +(1.9) < Partt5.Position.X 
or a.Part7.Position.X -(1.9) > Partt5.Position.X 
or a.Part7.Position.Z +(1.9) < Partt5.Position.Z 
or a.Part7.Position.Z -(1.9) > Partt5.Position.Z 
then
if a.Part7.Position.Y + 2.5 < Partt6.Position.Y
or a.Part7.Position.Y > Partt6.Position.Y
or a.Part7.Position.X +(1.9) < Partt6.Position.X 
or a.Part7.Position.X -(1.9) > Partt6.Position.X 
or a.Part7.Position.Z +(1.9) < Partt6.Position.Z 
or a.Part7.Position.Z -(1.9) > Partt6.Position.Z 
then
if a.Part7.Position.Y + 2.5 < Partt8.Position.Y
or a.Part7.Position.Y > Partt8.Position.Y
or a.Part7.Position.X +(1.9) < Partt8.Position.X 
or a.Part7.Position.X -(1.9) > Partt8.Position.X 
or a.Part7.Position.Z +(1.9) < Partt8.Position.Z 
or a.Part7.Position.Z -(1.9) > Partt8.Position.Z 
then
ypoPart7 = 1
else ypoPart7 = 0 
end
else ypoPart7 = 0
end
else ypoPart7 = 0
end
else ypoPart7 = 0
end
else ypoPart7 = 0
end
else ypoPart7 = 0
end
else ypoPart7 = 0
end

if a.Part7.Position.Y - 2.5 > Partt1.Position.Y -- P1 -Y Positions Library Reference
or a.Part7.Position.Y < Partt1.Position.Y
or a.Part7.Position.X +(1.9) < Partt1.Position.X 
or a.Part7.Position.X -(1.9) > Partt1.Position.X 
or a.Part7.Position.Z +(1.9) < Partt1.Position.Z 
or a.Part7.Position.Z -(1.9) > Partt1.Position.Z 
then
if a.Part7.Position.Y - 2.5 > Partt2.Position.Y
or a.Part7.Position.Y < Partt2.Position.Y
or a.Part7.Position.X +(1.9) < Partt2.Position.X 
or a.Part7.Position.X -(1.9) > Partt2.Position.X 
or a.Part7.Position.Z +(1.9) < Partt2.Position.Z 
or a.Part7.Position.Z -(1.9) > Partt2.Position.Z 
then
if a.Part7.Position.Y - 2.5 > Partt3.Position.Y
or a.Part7.Position.Y < Partt3.Position.Y
or a.Part7.Position.X +(1.9) < Partt3.Position.X 
or a.Part7.Position.X -(1.9) > Partt3.Position.X 
or a.Part7.Position.Z +(1.9) < Partt3.Position.Z 
or a.Part7.Position.Z -(1.9) > Partt3.Position.Z 
then
if a.Part7.Position.Y - 2.5 > Partt4.Position.Y
or a.Part7.Position.Y < Partt4.Position.Y
or a.Part7.Position.X +(1.9) < Partt4.Position.X 
or a.Part7.Position.X -(1.9) > Partt4.Position.X 
or a.Part7.Position.Z +(1.9) < Partt4.Position.Z 
or a.Part7.Position.Z -(1.9) > Partt4.Position.Z 
then
if a.Part7.Position.Y - 2.5 > Partt5.Position.Y
or a.Part7.Position.Y < Partt5.Position.Y
or a.Part7.Position.X +(1.9) < Partt5.Position.X 
or a.Part7.Position.X -(1.9) > Partt5.Position.X 
or a.Part7.Position.Z +(1.9) < Partt5.Position.Z 
or a.Part7.Position.Z -(1.9) > Partt5.Position.Z 
then
if a.Part7.Position.Y - 2.5 > Partt6.Position.Y
or a.Part7.Position.Y < Partt6.Position.Y
or a.Part7.Position.X +(1.9) < Partt6.Position.X 
or a.Part7.Position.X -(1.9) > Partt6.Position.X 
or a.Part7.Position.Z +(1.9) < Partt6.Position.Z 
or a.Part7.Position.Z -(1.9) > Partt6.Position.Z 
then
if a.Part7.Position.Y - 2.5 > Partt8.Position.Y
or a.Part7.Position.Y < Partt8.Position.Y
or a.Part7.Position.X +(1.9) < Partt8.Position.X 
or a.Part7.Position.X -(1.9) > Partt8.Position.X 
or a.Part7.Position.Z +(1.9) < Partt8.Position.Z 
or a.Part7.Position.Z -(1.9) > Partt8.Position.Z 
then
ynePart7 = 1
else ynePart7 = 0 
end
else ynePart7 = 0
end
else ynePart7 = 0
end
else ynePart7 = 0
end
else ynePart7 = 0
end
else ynePart7 = 0
end
else ynePart7 = 0
end

if a.Part7.Position.Z + 2.5 < Partt1.Position.Z -- P1 +Z Positions Library Reference
or a.Part7.Position.Z > Partt1.Position.Z
or a.Part7.Position.X +(1.9) < Partt1.Position.X 
or a.Part7.Position.X -(1.9) > Partt1.Position.X 
or a.Part7.Position.Y +(1.9) < Partt1.Position.Y 
or a.Part7.Position.Y -(1.9) > Partt1.Position.Y 
then
if a.Part7.Position.Z + 2.5 < Partt2.Position.Z
or a.Part7.Position.Z > Partt2.Position.Z
or a.Part7.Position.X +(1.9) < Partt2.Position.X 
or a.Part7.Position.X -(1.9) > Partt2.Position.X 
or a.Part7.Position.Y +(1.9) < Partt2.Position.Y 
or a.Part7.Position.Y -(1.9) > Partt2.Position.Y 
then
if a.Part7.Position.Z + 2.5 < Partt3.Position.Z
or a.Part7.Position.Z > Partt3.Position.Z
or a.Part7.Position.X +(1.9) < Partt3.Position.X 
or a.Part7.Position.X -(1.9) > Partt3.Position.X 
or a.Part7.Position.Y +(1.9) < Partt3.Position.Y 
or a.Part7.Position.Y -(1.9) > Partt3.Position.Y 
then
if a.Part7.Position.Z + 2.5 < Partt4.Position.Z
or a.Part7.Position.Z > Partt4.Position.Z
or a.Part7.Position.X +(1.9) < Partt4.Position.X 
or a.Part7.Position.X -(1.9) > Partt4.Position.X 
or a.Part7.Position.Y +(1.9) < Partt4.Position.Y 
or a.Part7.Position.Y -(1.9) > Partt4.Position.Y 
then
if a.Part7.Position.Z + 2.5 < Partt5.Position.Z
or a.Part7.Position.Z > Partt5.Position.Z
or a.Part7.Position.X +(1.9) < Partt5.Position.X 
or a.Part7.Position.X -(1.9) > Partt5.Position.X 
or a.Part7.Position.Y +(1.9) < Partt5.Position.Y 
or a.Part7.Position.Y -(1.9) > Partt5.Position.Y 
then
if a.Part7.Position.Z + 2.5 < Partt6.Position.Z
or a.Part7.Position.Z > Partt6.Position.Z
or a.Part7.Position.X +(1.9) < Partt6.Position.X 
or a.Part7.Position.X -(1.9) > Partt6.Position.X 
or a.Part7.Position.Y +(1.9) < Partt6.Position.Y 
or a.Part7.Position.Y -(1.9) > Partt6.Position.Y 
then
if a.Part7.Position.Z + 2.5 < Partt8.Position.Z
or a.Part7.Position.Z > Partt8.Position.Z
or a.Part7.Position.X +(1.9) < Partt8.Position.X 
or a.Part7.Position.X -(1.9) > Partt8.Position.X 
or a.Part7.Position.Y +(1.9) < Partt8.Position.Y 
or a.Part7.Position.Y -(1.9) > Partt8.Position.Y 
then
zpoPart7 = 1
else zpoPart7 = 0 
end
else zpoPart7 = 0
end
else zpoPart7 = 0
end
else zpoPart7 = 0
end
else zpoPart7 = 0
end
else zpoPart7 = 0
end
else zpoPart7 = 0
end

if a.Part7.Position.Z - 2.5 > Partt1.Position.Z -- P1 -Z Positions Library Reference
or a.Part7.Position.Z < Partt1.Position.Z
or a.Part7.Position.X +(1.9) < Partt1.Position.X 
or a.Part7.Position.X -(1.9) > Partt1.Position.X 
or a.Part7.Position.Y +(1.9) < Partt1.Position.Y 
or a.Part7.Position.Y -(1.9) > Partt1.Position.Y 
then
if a.Part7.Position.Z - 2.5 > Partt2.Position.Z
or a.Part7.Position.Z < Partt2.Position.Z
or a.Part7.Position.X +(1.9) < Partt2.Position.X 
or a.Part7.Position.X -(1.9) > Partt2.Position.X 
or a.Part7.Position.Y +(1.9) < Partt2.Position.Y 
or a.Part7.Position.Y -(1.9) > Partt2.Position.Y 
then
if a.Part7.Position.Z - 2.5 > Partt3.Position.Z
or a.Part7.Position.Z < Partt3.Position.Z
or a.Part7.Position.X +(1.9) < Partt3.Position.X 
or a.Part7.Position.X -(1.9) > Partt3.Position.X 
or a.Part7.Position.Y +(1.9) < Partt3.Position.Y 
or a.Part7.Position.Y -(1.9) > Partt3.Position.Y 
then
if a.Part7.Position.Z - 2.5 > Partt4.Position.Z
or a.Part7.Position.Z < Partt4.Position.Z
or a.Part7.Position.X +(1.9) < Partt4.Position.X 
or a.Part7.Position.X -(1.9) > Partt4.Position.X 
or a.Part7.Position.Y +(1.9) < Partt4.Position.Y 
or a.Part7.Position.Y -(1.9) > Partt4.Position.Y 
then
if a.Part7.Position.Z - 2.5 > Partt5.Position.Z
or a.Part7.Position.Z < Partt5.Position.Z
or a.Part7.Position.X +(1.9) < Partt5.Position.X 
or a.Part7.Position.X -(1.9) > Partt5.Position.X 
or a.Part7.Position.Y +(1.9) < Partt5.Position.Y 
or a.Part7.Position.Y -(1.9) > Partt5.Position.Y 
then
if a.Part7.Position.Z - 2.5 > Partt6.Position.Z
or a.Part7.Position.Z < Partt6.Position.Z
or a.Part7.Position.X +(1.9) < Partt6.Position.X 
or a.Part7.Position.X -(1.9) > Partt6.Position.X 
or a.Part7.Position.Y +(1.9) < Partt6.Position.Y 
or a.Part7.Position.Y -(1.9) > Partt6.Position.Y 
then
if a.Part7.Position.Z - 2.5 > Partt8.Position.Z
or a.Part7.Position.Z < Partt8.Position.Z
or a.Part7.Position.X +(1.9) < Partt8.Position.X 
or a.Part7.Position.X -(1.9) > Partt8.Position.X 
or a.Part7.Position.Y +(1.9) < Partt8.Position.Y 
or a.Part7.Position.Y -(1.9) > Partt8.Position.Y 
then
znePart7 = 1
else znePart7 = 0 
end
else znePart7 = 0
end
else znePart7 = 0
end
else znePart7 = 0
end
else znePart7 = 0
end
else znePart7 = 0
end
else znePart7 = 0
end

if PriPart7 == 1
and XPart7 == 1
then	
if xpoPart7 == 1
then
for i=1, 10 do
a.Part7.CFrame = a.Part7.CFrame +(Vector3.new(XPart7/10,0,0))
wait(.01)
end
else PriPart7 = (PriPart7+1)
end
else end

if PriPart7 == 1
and XPart7 == -1
then	
if xnePart7 == 1
then
for i=1, 10 do
a.Part7.CFrame = a.Part7.CFrame +(Vector3.new(XPart7/10,0,0))
wait(.01)
end
else PriPart7 = (PriPart7+1)
end
else end

if PriPart7 == 2
and YPart7 == 1
then	
if ypoPart7 == 1
then
for i=1, 10 do
a.Part7.CFrame = a.Part7.CFrame +(Vector3.new(0,YPart7/10,0))
wait(.01)
end
else PriPart7 = (PriPart7+1)
end
else end

if PriPart7 == 2
and YPart7 == -1
then	
if ynePart7 == 1
then
for i=1, 10 do
a.Part7.CFrame = a.Part7.CFrame +(Vector3.new(0,YPart7/10,0))
wait(.01)
end
else PriPart7 = (PriPart7+1)
end
else end

if PriPart7 == 3
and ZPart7 == 1
then	
if zpoPart7 == 1
then
for i=1, 10 do
a.Part7.CFrame = a.Part7.CFrame +(Vector3.new(0,0,ZPart7/10))
wait(.01)
end
else PriPart7 = (PriPart7+1)
end
else end

if PriPart7 == 3
and ZPart7 == -1
then	
if znePart7 == 1
then
for i=1, 10 do
a.Part7.CFrame = a.Part7.CFrame +(Vector3.new(0,0,ZPart7/10))
wait(.01)
end
else PriPart7 = (PriPart7+1)
end
else end




sPart7 =(sPart7+1) --Checking reconfiguring positions

if sPart7 == 1
then
XSPart7 = a.Part7.Position.X
YSPart7 = a.Part7.Position.Y
ZSPart7 = a.Part7.Position.Z
else end

if sPart7 == 3 --Checking if Part is Valid for Instant Fix
and XSPart7 == a.Part7.Position.X
and YSPart7 == a.Part7.Position.Y
and ZSPart7 == a.Part7.Position.Z
and a.Part7.Position.X < cPart7.Position.X +4
and a.Part7.Position.X > cPart7.Position.X -4
and a.Part7.Position.Y < cPart7.Position.Y +4
and a.Part7.Position.Y > cPart7.Position.Y -4
and a.Part7.Position.Z < cPart7.Position.Z +4
and a.Part7.Position.Z > cPart7.Position.Z -4
then
for i=1, 20 do
a.Part7.CFrame = a.Part7.CFrame +(Vector3.new((cPart7.Position.X-XSPart7)/20,(cPart7.Position.Y-YSPart7)/20,(cPart7.Position.Z-ZSPart7)/20))
wait(.01)
end
else end

if sPart7 == 3
and RPart7 == 1 --Checking +X Reconfiguration
then
if  XSPart7 == a.Part7.Position.X
and YSPart7 == a.Part7.Position.Y
and ZSPart7 == a.Part7.Position.Z
then
-- "Reconfiguring"
RPart7 = (RPart7+1)
repeat
if a.Part7.Position.X + 2.5 < Partt1.Position.X -- P1 +X Positions Library Reference
or a.Part7.Position.X > Partt1.Position.X
or a.Part7.Position.Y +(1.9) < Partt1.Position.Y 
or a.Part7.Position.Y -(1.9) > Partt1.Position.Y 
or a.Part7.Position.Z +(1.9) < Partt1.Position.Z 
or a.Part7.Position.Z -(1.9) > Partt1.Position.Z 
then
if a.Part7.Position.X + 2.5 < Partt2.Position.X
or a.Part7.Position.X > Partt2.Position.X
or a.Part7.Position.Y +(1.9) < Partt2.Position.Y 
or a.Part7.Position.Y -(1.9) > Partt2.Position.Y 
or a.Part7.Position.Z +(1.9) < Partt2.Position.Z 
or a.Part7.Position.Z -(1.9) > Partt2.Position.Z 
then
if a.Part7.Position.X + 2.5 < Partt3.Position.X
or a.Part7.Position.X > Partt3.Position.X
or a.Part7.Position.Y +(1.9) < Partt3.Position.Y 
or a.Part7.Position.Y -(1.9) > Partt3.Position.Y 
or a.Part7.Position.Z +(1.9) < Partt3.Position.Z 
or a.Part7.Position.Z -(1.9) > Partt3.Position.Z 
then
if a.Part7.Position.X + 2.5 < Partt4.Position.X
or a.Part7.Position.X > Partt4.Position.X
or a.Part7.Position.Y +(1.9) < Partt4.Position.Y 
or a.Part7.Position.Y -(1.9) > Partt4.Position.Y 
or a.Part7.Position.Z +(1.9) < Partt4.Position.Z 
or a.Part7.Position.Z -(1.9) > Partt4.Position.Z 
then
if a.Part7.Position.X + 2.5 < Partt5.Position.X
or a.Part7.Position.X > Partt5.Position.X
or a.Part7.Position.Y +(1.9) < Partt5.Position.Y 
or a.Part7.Position.Y -(1.9) > Partt5.Position.Y 
or a.Part7.Position.Z +(1.9) < Partt5.Position.Z 
or a.Part7.Position.Z -(1.9) > Partt5.Position.Z 
then
if a.Part7.Position.X + 2.5 < Partt6.Position.X
or a.Part7.Position.X > Partt6.Position.X
or a.Part7.Position.Y +(1.9) < Partt6.Position.Y 
or a.Part7.Position.Y -(1.9) > Partt6.Position.Y 
or a.Part7.Position.Z +(1.9) < Partt6.Position.Z 
or a.Part7.Position.Z -(1.9) > Partt6.Position.Z 
then
if a.Part7.Position.X + 2.5 < Partt8.Position.X
or a.Part7.Position.X > Partt8.Position.X
or a.Part7.Position.Y +(1.9) < Partt8.Position.Y 
or a.Part7.Position.Y -(1.9) > Partt8.Position.Y 
or a.Part7.Position.Z +(1.9) < Partt8.Position.Z 
or a.Part7.Position.Z -(1.9) > Partt8.Position.Z 
then
xpoPart7 = 1
else xpoPart7 = 0 
end
else xpoPart7 = 0
end
else xpoPart7 = 0
end
else xpoPart7 = 0
end
else xpoPart7 = 0
end
else xpoPart7 = 0
end
else xpoPart7 = 0
end

if a.Part7.Position.X - 2.5 > Partt1.Position.X -- P1 -X Positions Library Reference
or a.Part7.Position.X < Partt1.Position.X
or a.Part7.Position.Y +(1.9) < Partt1.Position.Y 
or a.Part7.Position.Y -(1.9) > Partt1.Position.Y 
or a.Part7.Position.Z +(1.9) < Partt1.Position.Z 
or a.Part7.Position.Z -(1.9) > Partt1.Position.Z 
then
if a.Part7.Position.X - 2.5 > Partt2.Position.X
or a.Part7.Position.X < Partt2.Position.X
or a.Part7.Position.Y +(1.9) < Partt2.Position.Y 
or a.Part7.Position.Y -(1.9) > Partt2.Position.Y 
or a.Part7.Position.Z +(1.9) < Partt2.Position.Z 
or a.Part7.Position.Z -(1.9) > Partt2.Position.Z 
then
if a.Part7.Position.X - 2.5 > Partt3.Position.X
or a.Part7.Position.X < Partt3.Position.X
or a.Part7.Position.Y +(1.9) < Partt3.Position.Y 
or a.Part7.Position.Y -(1.9) > Partt3.Position.Y 
or a.Part7.Position.Z +(1.9) < Partt3.Position.Z 
or a.Part7.Position.Z -(1.9) > Partt3.Position.Z 
then
if a.Part7.Position.X - 2.5 > Partt4.Position.X
or a.Part7.Position.X < Partt4.Position.X
or a.Part7.Position.Y +(1.9) < Partt4.Position.Y 
or a.Part7.Position.Y -(1.9) > Partt4.Position.Y 
or a.Part7.Position.Z +(1.9) < Partt4.Position.Z 
or a.Part7.Position.Z -(1.9) > Partt4.Position.Z 
then
if a.Part7.Position.X - 2.5 > Partt5.Position.X
or a.Part7.Position.X < Partt5.Position.X
or a.Part7.Position.Y +(1.9) < Partt5.Position.Y 
or a.Part7.Position.Y -(1.9) > Partt5.Position.Y 
or a.Part7.Position.Z +(1.9) < Partt5.Position.Z 
or a.Part7.Position.Z -(1.9) > Partt5.Position.Z 
then
if a.Part7.Position.X - 2.5 > Partt6.Position.X
or a.Part7.Position.X < Partt6.Position.X
or a.Part7.Position.Y +(1.9) < Partt6.Position.Y 
or a.Part7.Position.Y -(1.9) > Partt6.Position.Y 
or a.Part7.Position.Z +(1.9) < Partt6.Position.Z 
or a.Part7.Position.Z -(1.9) > Partt6.Position.Z 
then
if a.Part7.Position.X - 2.5 > Partt8.Position.X
or a.Part7.Position.X < Partt8.Position.X
or a.Part7.Position.Y +(1.9) < Partt8.Position.Y 
or a.Part7.Position.Y -(1.9) > Partt8.Position.Y 
or a.Part7.Position.Z +(1.9) < Partt8.Position.Z 
or a.Part7.Position.Z -(1.9) > Partt8.Position.Z 
then
xnePart7 = 1
else xnePart7 = 0 
end
else xnePart7 = 0
end
else xnePart7 = 0
end
else xnePart7 = 0
end
else xnePart7 = 0
end
else xnePart7 = 0
end
else xnePart7 = 0
end

if a.Part7.Position.Y + 2.5 < Partt1.Position.Y -- P1 +Y Positions Library Reference
or a.Part7.Position.Y > Partt1.Position.Y
or a.Part7.Position.X +(1.9) < Partt1.Position.X 
or a.Part7.Position.X -(1.9) > Partt1.Position.X 
or a.Part7.Position.Z +(1.9) < Partt1.Position.Z 
or a.Part7.Position.Z -(1.9) > Partt1.Position.Z 
then
if a.Part7.Position.Y + 2.5 < Partt2.Position.Y
or a.Part7.Position.Y > Partt2.Position.Y
or a.Part7.Position.X +(1.9) < Partt2.Position.X 
or a.Part7.Position.X -(1.9) > Partt2.Position.X 
or a.Part7.Position.Z +(1.9) < Partt2.Position.Z 
or a.Part7.Position.Z -(1.9) > Partt2.Position.Z 
then
if a.Part7.Position.Y + 2.5 < Partt3.Position.Y
or a.Part7.Position.Y > Partt3.Position.Y
or a.Part7.Position.X +(1.9) < Partt3.Position.X 
or a.Part7.Position.X -(1.9) > Partt3.Position.X 
or a.Part7.Position.Z +(1.9) < Partt3.Position.Z 
or a.Part7.Position.Z -(1.9) > Partt3.Position.Z 
then
if a.Part7.Position.Y + 2.5 < Partt4.Position.Y
or a.Part7.Position.Y > Partt4.Position.Y
or a.Part7.Position.X +(1.9) < Partt4.Position.X 
or a.Part7.Position.X -(1.9) > Partt4.Position.X 
or a.Part7.Position.Z +(1.9) < Partt4.Position.Z 
or a.Part7.Position.Z -(1.9) > Partt4.Position.Z 
then
if a.Part7.Position.Y + 2.5 < Partt5.Position.Y
or a.Part7.Position.Y > Partt5.Position.Y
or a.Part7.Position.X +(1.9) < Partt5.Position.X 
or a.Part7.Position.X -(1.9) > Partt5.Position.X 
or a.Part7.Position.Z +(1.9) < Partt5.Position.Z 
or a.Part7.Position.Z -(1.9) > Partt5.Position.Z 
then
if a.Part7.Position.Y + 2.5 < Partt6.Position.Y
or a.Part7.Position.Y > Partt6.Position.Y
or a.Part7.Position.X +(1.9) < Partt6.Position.X 
or a.Part7.Position.X -(1.9) > Partt6.Position.X 
or a.Part7.Position.Z +(1.9) < Partt6.Position.Z 
or a.Part7.Position.Z -(1.9) > Partt6.Position.Z 
then
if a.Part7.Position.Y + 2.5 < Partt8.Position.Y
or a.Part7.Position.Y > Partt8.Position.Y
or a.Part7.Position.X +(1.9) < Partt8.Position.X 
or a.Part7.Position.X -(1.9) > Partt8.Position.X 
or a.Part7.Position.Z +(1.9) < Partt8.Position.Z 
or a.Part7.Position.Z -(1.9) > Partt8.Position.Z 
then
ypoPart7 = 1
else ypoPart7 = 0 
end
else ypoPart7 = 0
end
else ypoPart7 = 0
end
else ypoPart7 = 0
end
else ypoPart7 = 0
end
else ypoPart7 = 0
end
else ypoPart7 = 0
end

if a.Part7.Position.Y - 2.5 > Partt1.Position.Y -- P1 -Y Positions Library Reference
or a.Part7.Position.Y < Partt1.Position.Y
or a.Part7.Position.X +(1.9) < Partt1.Position.X 
or a.Part7.Position.X -(1.9) > Partt1.Position.X 
or a.Part7.Position.Z +(1.9) < Partt1.Position.Z 
or a.Part7.Position.Z -(1.9) > Partt1.Position.Z 
then
if a.Part7.Position.Y - 2.5 > Partt2.Position.Y
or a.Part7.Position.Y < Partt2.Position.Y
or a.Part7.Position.X +(1.9) < Partt2.Position.X 
or a.Part7.Position.X -(1.9) > Partt2.Position.X 
or a.Part7.Position.Z +(1.9) < Partt2.Position.Z 
or a.Part7.Position.Z -(1.9) > Partt2.Position.Z 
then
if a.Part7.Position.Y - 2.5 > Partt3.Position.Y
or a.Part7.Position.Y < Partt3.Position.Y
or a.Part7.Position.X +(1.9) < Partt3.Position.X 
or a.Part7.Position.X -(1.9) > Partt3.Position.X 
or a.Part7.Position.Z +(1.9) < Partt3.Position.Z 
or a.Part7.Position.Z -(1.9) > Partt3.Position.Z 
then
if a.Part7.Position.Y - 2.5 > Partt4.Position.Y
or a.Part7.Position.Y < Partt4.Position.Y
or a.Part7.Position.X +(1.9) < Partt4.Position.X 
or a.Part7.Position.X -(1.9) > Partt4.Position.X 
or a.Part7.Position.Z +(1.9) < Partt4.Position.Z 
or a.Part7.Position.Z -(1.9) > Partt4.Position.Z 
then
if a.Part7.Position.Y - 2.5 > Partt5.Position.Y
or a.Part7.Position.Y < Partt5.Position.Y
or a.Part7.Position.X +(1.9) < Partt5.Position.X 
or a.Part7.Position.X -(1.9) > Partt5.Position.X 
or a.Part7.Position.Z +(1.9) < Partt5.Position.Z 
or a.Part7.Position.Z -(1.9) > Partt5.Position.Z 
then
if a.Part7.Position.Y - 2.5 > Partt6.Position.Y
or a.Part7.Position.Y < Partt6.Position.Y
or a.Part7.Position.X +(1.9) < Partt6.Position.X 
or a.Part7.Position.X -(1.9) > Partt6.Position.X 
or a.Part7.Position.Z +(1.9) < Partt6.Position.Z 
or a.Part7.Position.Z -(1.9) > Partt6.Position.Z 
then
if a.Part7.Position.Y - 2.5 > Partt8.Position.Y
or a.Part7.Position.Y < Partt8.Position.Y
or a.Part7.Position.X +(1.9) < Partt8.Position.X 
or a.Part7.Position.X -(1.9) > Partt8.Position.X 
or a.Part7.Position.Z +(1.9) < Partt8.Position.Z 
or a.Part7.Position.Z -(1.9) > Partt8.Position.Z 
then
ynePart7 = 1
else ynePart7 = 0 
end
else ynePart7 = 0
end
else ynePart7 = 0
end
else ynePart7 = 0
end
else ynePart7 = 0
end
else ynePart7 = 0
end
else ynePart7 = 0
end

if a.Part7.Position.Z + 2.5 < Partt1.Position.Z -- P1 +Z Positions Library Reference
or a.Part7.Position.Z > Partt1.Position.Z
or a.Part7.Position.X +(1.9) < Partt1.Position.X 
or a.Part7.Position.X -(1.9) > Partt1.Position.X 
or a.Part7.Position.Y +(1.9) < Partt1.Position.Y 
or a.Part7.Position.Y -(1.9) > Partt1.Position.Y 
then
if a.Part7.Position.Z + 2.5 < Partt2.Position.Z
or a.Part7.Position.Z > Partt2.Position.Z
or a.Part7.Position.X +(1.9) < Partt2.Position.X 
or a.Part7.Position.X -(1.9) > Partt2.Position.X 
or a.Part7.Position.Y +(1.9) < Partt2.Position.Y 
or a.Part7.Position.Y -(1.9) > Partt2.Position.Y 
then
if a.Part7.Position.Z + 2.5 < Partt3.Position.Z
or a.Part7.Position.Z > Partt3.Position.Z
or a.Part7.Position.X +(1.9) < Partt3.Position.X 
or a.Part7.Position.X -(1.9) > Partt3.Position.X 
or a.Part7.Position.Y +(1.9) < Partt3.Position.Y 
or a.Part7.Position.Y -(1.9) > Partt3.Position.Y 
then
if a.Part7.Position.Z + 2.5 < Partt4.Position.Z
or a.Part7.Position.Z > Partt4.Position.Z
or a.Part7.Position.X +(1.9) < Partt4.Position.X 
or a.Part7.Position.X -(1.9) > Partt4.Position.X 
or a.Part7.Position.Y +(1.9) < Partt4.Position.Y 
or a.Part7.Position.Y -(1.9) > Partt4.Position.Y 
then
if a.Part7.Position.Z + 2.5 < Partt5.Position.Z
or a.Part7.Position.Z > Partt5.Position.Z
or a.Part7.Position.X +(1.9) < Partt5.Position.X 
or a.Part7.Position.X -(1.9) > Partt5.Position.X 
or a.Part7.Position.Y +(1.9) < Partt5.Position.Y 
or a.Part7.Position.Y -(1.9) > Partt5.Position.Y 
then
if a.Part7.Position.Z + 2.5 < Partt6.Position.Z
or a.Part7.Position.Z > Partt6.Position.Z
or a.Part7.Position.X +(1.9) < Partt6.Position.X 
or a.Part7.Position.X -(1.9) > Partt6.Position.X 
or a.Part7.Position.Y +(1.9) < Partt6.Position.Y 
or a.Part7.Position.Y -(1.9) > Partt6.Position.Y 
then
if a.Part7.Position.Z + 2.5 < Partt8.Position.Z
or a.Part7.Position.Z > Partt8.Position.Z
or a.Part7.Position.X +(1.9) < Partt8.Position.X 
or a.Part7.Position.X -(1.9) > Partt8.Position.X 
or a.Part7.Position.Y +(1.9) < Partt8.Position.Y 
or a.Part7.Position.Y -(1.9) > Partt8.Position.Y 
then
zpoPart7 = 1
else zpoPart7 = 0 
end
else zpoPart7 = 0
end
else zpoPart7 = 0
end
else zpoPart7 = 0
end
else zpoPart7 = 0
end
else zpoPart7 = 0
end
else zpoPart7 = 0
end

if a.Part7.Position.Z - 2.5 > Partt1.Position.Z -- P1 -Z Positions Library Reference
or a.Part7.Position.Z < Partt1.Position.Z
or a.Part7.Position.X +(1.9) < Partt1.Position.X 
or a.Part7.Position.X -(1.9) > Partt1.Position.X 
or a.Part7.Position.Y +(1.9) < Partt1.Position.Y 
or a.Part7.Position.Y -(1.9) > Partt1.Position.Y 
then
if a.Part7.Position.Z - 2.5 > Partt2.Position.Z
or a.Part7.Position.Z < Partt2.Position.Z
or a.Part7.Position.X +(1.9) < Partt2.Position.X 
or a.Part7.Position.X -(1.9) > Partt2.Position.X 
or a.Part7.Position.Y +(1.9) < Partt2.Position.Y 
or a.Part7.Position.Y -(1.9) > Partt2.Position.Y 
then
if a.Part7.Position.Z - 2.5 > Partt3.Position.Z
or a.Part7.Position.Z < Partt3.Position.Z
or a.Part7.Position.X +(1.9) < Partt3.Position.X 
or a.Part7.Position.X -(1.9) > Partt3.Position.X 
or a.Part7.Position.Y +(1.9) < Partt3.Position.Y 
or a.Part7.Position.Y -(1.9) > Partt3.Position.Y 
then
if a.Part7.Position.Z - 2.5 > Partt4.Position.Z
or a.Part7.Position.Z < Partt4.Position.Z
or a.Part7.Position.X +(1.9) < Partt4.Position.X 
or a.Part7.Position.X -(1.9) > Partt4.Position.X 
or a.Part7.Position.Y +(1.9) < Partt4.Position.Y 
or a.Part7.Position.Y -(1.9) > Partt4.Position.Y 
then
if a.Part7.Position.Z - 2.5 > Partt5.Position.Z
or a.Part7.Position.Z < Partt5.Position.Z
or a.Part7.Position.X +(1.9) < Partt5.Position.X 
or a.Part7.Position.X -(1.9) > Partt5.Position.X 
or a.Part7.Position.Y +(1.9) < Partt5.Position.Y 
or a.Part7.Position.Y -(1.9) > Partt5.Position.Y 
then
if a.Part7.Position.Z - 2.5 > Partt6.Position.Z
or a.Part7.Position.Z < Partt6.Position.Z
or a.Part7.Position.X +(1.9) < Partt6.Position.X 
or a.Part7.Position.X -(1.9) > Partt6.Position.X 
or a.Part7.Position.Y +(1.9) < Partt6.Position.Y 
or a.Part7.Position.Y -(1.9) > Partt6.Position.Y 
then
if a.Part7.Position.Z - 2.5 > Partt8.Position.Z
or a.Part7.Position.Z < Partt8.Position.Z
or a.Part7.Position.X +(1.9) < Partt8.Position.X 
or a.Part7.Position.X -(1.9) > Partt8.Position.X 
or a.Part7.Position.Y +(1.9) < Partt8.Position.Y 
or a.Part7.Position.Y -(1.9) > Partt8.Position.Y 
then
znePart7 = 1
else znePart7 = 0 
end
else znePart7 = 0
end
else znePart7 = 0
end
else znePart7 = 0
end
else znePart7 = 0
end
else znePart7 = 0
end
else znePart7 = 0
end

PriPart7 = 1 
if PriPart7 == 1
then	
if xpoPart7 == 1
then
for i=1, 10 do
a.Part7.CFrame = a.Part7.CFrame +(Vector3.new(.1,0,0))
wait(.01)
end
else PriPart7 = (PriPart7+1)
end
else end

if PriPart7 == 2
then	
if ypoPart7 == 1
then
for i=1, 10 do
a.Part7.CFrame = a.Part7.CFrame +(Vector3.new(0,.1,0))
wait(.01)
end
else PriPart7 = (PriPart7+1)
end
else end

if PriPart7 == 3
then	
if zpoPart7 == 1
then
for i=1, 10 do
a.Part7.CFrame = a.Part7.CFrame +(Vector3.new(0,0,.1))
wait(.01)
end
else PriPart7 = (PriPart7+1)
end
else end

if PriPart7 == 4
then	
if ynePart7 == 1
then
for i=1, 10 do
a.Part7.CFrame = a.Part7.CFrame +(Vector3.new(0,-.1,0))
wait(.01)
end
else PriPart7 = (PriPart7+1)
end
else end

if PriPart7 == 5
then	
if znePart7 == 1
then
for i=1, 10 do
a.Part7.CFrame = a.Part7.CFrame +(Vector3.new(0,0,-.1))
wait(.01)
end
else PriPart7 = (PriPart7+1)
end
else end
-- (PriPart7)
------------------------------------------------------------------------------
for i=1, 10 do
a.Part7.CFrame = a.Part7.CFrame * CFrame.fromEulerAnglesXYZ(math.pi/20,0,0)
wait(.01)
end
TMPart7 = (TMPart7+1)
until 
math.abs(a.Part7.Position.X - cPart7.Position.X) > 5
or TMPart7 == 7
else end
else end

if sPart7 == 3
and RPart7 == 2 --Checking +X Reconfiguration
then
if  XSPart7 == a.Part7.Position.X
and YSPart7 == a.Part7.Position.Y
and ZSPart7 == a.Part7.Position.Z
then
-- "Reconfiguring"
RPart7 = (RPart7+1)
repeat
if a.Part7.Position.X + 2.5 < Partt1.Position.X -- P1 +X Positions Library Reference
or a.Part7.Position.X > Partt1.Position.X
or a.Part7.Position.Y +(1.9) < Partt1.Position.Y 
or a.Part7.Position.Y -(1.9) > Partt1.Position.Y 
or a.Part7.Position.Z +(1.9) < Partt1.Position.Z 
or a.Part7.Position.Z -(1.9) > Partt1.Position.Z 
then
if a.Part7.Position.X + 2.5 < Partt2.Position.X
or a.Part7.Position.X > Partt2.Position.X
or a.Part7.Position.Y +(1.9) < Partt2.Position.Y 
or a.Part7.Position.Y -(1.9) > Partt2.Position.Y 
or a.Part7.Position.Z +(1.9) < Partt2.Position.Z 
or a.Part7.Position.Z -(1.9) > Partt2.Position.Z 
then
if a.Part7.Position.X + 2.5 < Partt3.Position.X
or a.Part7.Position.X > Partt3.Position.X
or a.Part7.Position.Y +(1.9) < Partt3.Position.Y 
or a.Part7.Position.Y -(1.9) > Partt3.Position.Y 
or a.Part7.Position.Z +(1.9) < Partt3.Position.Z 
or a.Part7.Position.Z -(1.9) > Partt3.Position.Z 
then
if a.Part7.Position.X + 2.5 < Partt4.Position.X
or a.Part7.Position.X > Partt4.Position.X
or a.Part7.Position.Y +(1.9) < Partt4.Position.Y 
or a.Part7.Position.Y -(1.9) > Partt4.Position.Y 
or a.Part7.Position.Z +(1.9) < Partt4.Position.Z 
or a.Part7.Position.Z -(1.9) > Partt4.Position.Z 
then
if a.Part7.Position.X + 2.5 < Partt5.Position.X
or a.Part7.Position.X > Partt5.Position.X
or a.Part7.Position.Y +(1.9) < Partt5.Position.Y 
or a.Part7.Position.Y -(1.9) > Partt5.Position.Y 
or a.Part7.Position.Z +(1.9) < Partt5.Position.Z 
or a.Part7.Position.Z -(1.9) > Partt5.Position.Z 
then
if a.Part7.Position.X + 2.5 < Partt6.Position.X
or a.Part7.Position.X > Partt6.Position.X
or a.Part7.Position.Y +(1.9) < Partt6.Position.Y 
or a.Part7.Position.Y -(1.9) > Partt6.Position.Y 
or a.Part7.Position.Z +(1.9) < Partt6.Position.Z 
or a.Part7.Position.Z -(1.9) > Partt6.Position.Z 
then
if a.Part7.Position.X + 2.5 < Partt8.Position.X
or a.Part7.Position.X > Partt8.Position.X
or a.Part7.Position.Y +(1.9) < Partt8.Position.Y 
or a.Part7.Position.Y -(1.9) > Partt8.Position.Y 
or a.Part7.Position.Z +(1.9) < Partt8.Position.Z 
or a.Part7.Position.Z -(1.9) > Partt8.Position.Z 
then
xpoPart7 = 1
else xpoPart7 = 0 
end
else xpoPart7 = 0
end
else xpoPart7 = 0
end
else xpoPart7 = 0
end
else xpoPart7 = 0
end
else xpoPart7 = 0
end
else xpoPart7 = 0
end

if a.Part7.Position.X - 2.5 > Partt1.Position.X -- P1 -X Positions Library Reference
or a.Part7.Position.X < Partt1.Position.X
or a.Part7.Position.Y +(1.9) < Partt1.Position.Y 
or a.Part7.Position.Y -(1.9) > Partt1.Position.Y 
or a.Part7.Position.Z +(1.9) < Partt1.Position.Z 
or a.Part7.Position.Z -(1.9) > Partt1.Position.Z 
then
if a.Part7.Position.X - 2.5 > Partt2.Position.X
or a.Part7.Position.X < Partt2.Position.X
or a.Part7.Position.Y +(1.9) < Partt2.Position.Y 
or a.Part7.Position.Y -(1.9) > Partt2.Position.Y 
or a.Part7.Position.Z +(1.9) < Partt2.Position.Z 
or a.Part7.Position.Z -(1.9) > Partt2.Position.Z 
then
if a.Part7.Position.X - 2.5 > Partt3.Position.X
or a.Part7.Position.X < Partt3.Position.X
or a.Part7.Position.Y +(1.9) < Partt3.Position.Y 
or a.Part7.Position.Y -(1.9) > Partt3.Position.Y 
or a.Part7.Position.Z +(1.9) < Partt3.Position.Z 
or a.Part7.Position.Z -(1.9) > Partt3.Position.Z 
then
if a.Part7.Position.X - 2.5 > Partt4.Position.X
or a.Part7.Position.X < Partt4.Position.X
or a.Part7.Position.Y +(1.9) < Partt4.Position.Y 
or a.Part7.Position.Y -(1.9) > Partt4.Position.Y 
or a.Part7.Position.Z +(1.9) < Partt4.Position.Z 
or a.Part7.Position.Z -(1.9) > Partt4.Position.Z 
then
if a.Part7.Position.X - 2.5 > Partt5.Position.X
or a.Part7.Position.X < Partt5.Position.X
or a.Part7.Position.Y +(1.9) < Partt5.Position.Y 
or a.Part7.Position.Y -(1.9) > Partt5.Position.Y 
or a.Part7.Position.Z +(1.9) < Partt5.Position.Z 
or a.Part7.Position.Z -(1.9) > Partt5.Position.Z 
then
if a.Part7.Position.X - 2.5 > Partt6.Position.X
or a.Part7.Position.X < Partt6.Position.X
or a.Part7.Position.Y +(1.9) < Partt6.Position.Y 
or a.Part7.Position.Y -(1.9) > Partt6.Position.Y 
or a.Part7.Position.Z +(1.9) < Partt6.Position.Z 
or a.Part7.Position.Z -(1.9) > Partt6.Position.Z 
then
if a.Part7.Position.X - 2.5 > Partt8.Position.X
or a.Part7.Position.X < Partt8.Position.X
or a.Part7.Position.Y +(1.9) < Partt8.Position.Y 
or a.Part7.Position.Y -(1.9) > Partt8.Position.Y 
or a.Part7.Position.Z +(1.9) < Partt8.Position.Z 
or a.Part7.Position.Z -(1.9) > Partt8.Position.Z 
then
xnePart7 = 1
else xnePart7 = 0 
end
else xnePart7 = 0
end
else xnePart7 = 0
end
else xnePart7 = 0
end
else xnePart7 = 0
end
else xnePart7 = 0
end
else xnePart7 = 0
end

if a.Part7.Position.Y + 2.5 < Partt1.Position.Y -- P1 +Y Positions Library Reference
or a.Part7.Position.Y > Partt1.Position.Y
or a.Part7.Position.X +(1.9) < Partt1.Position.X 
or a.Part7.Position.X -(1.9) > Partt1.Position.X 
or a.Part7.Position.Z +(1.9) < Partt1.Position.Z 
or a.Part7.Position.Z -(1.9) > Partt1.Position.Z 
then
if a.Part7.Position.Y + 2.5 < Partt2.Position.Y
or a.Part7.Position.Y > Partt2.Position.Y
or a.Part7.Position.X +(1.9) < Partt2.Position.X 
or a.Part7.Position.X -(1.9) > Partt2.Position.X 
or a.Part7.Position.Z +(1.9) < Partt2.Position.Z 
or a.Part7.Position.Z -(1.9) > Partt2.Position.Z 
then
if a.Part7.Position.Y + 2.5 < Partt3.Position.Y
or a.Part7.Position.Y > Partt3.Position.Y
or a.Part7.Position.X +(1.9) < Partt3.Position.X 
or a.Part7.Position.X -(1.9) > Partt3.Position.X 
or a.Part7.Position.Z +(1.9) < Partt3.Position.Z 
or a.Part7.Position.Z -(1.9) > Partt3.Position.Z 
then
if a.Part7.Position.Y + 2.5 < Partt4.Position.Y
or a.Part7.Position.Y > Partt4.Position.Y
or a.Part7.Position.X +(1.9) < Partt4.Position.X 
or a.Part7.Position.X -(1.9) > Partt4.Position.X 
or a.Part7.Position.Z +(1.9) < Partt4.Position.Z 
or a.Part7.Position.Z -(1.9) > Partt4.Position.Z 
then
if a.Part7.Position.Y + 2.5 < Partt5.Position.Y
or a.Part7.Position.Y > Partt5.Position.Y
or a.Part7.Position.X +(1.9) < Partt5.Position.X 
or a.Part7.Position.X -(1.9) > Partt5.Position.X 
or a.Part7.Position.Z +(1.9) < Partt5.Position.Z 
or a.Part7.Position.Z -(1.9) > Partt5.Position.Z 
then
if a.Part7.Position.Y + 2.5 < Partt6.Position.Y
or a.Part7.Position.Y > Partt6.Position.Y
or a.Part7.Position.X +(1.9) < Partt6.Position.X 
or a.Part7.Position.X -(1.9) > Partt6.Position.X 
or a.Part7.Position.Z +(1.9) < Partt6.Position.Z 
or a.Part7.Position.Z -(1.9) > Partt6.Position.Z 
then
if a.Part7.Position.Y + 2.5 < Partt8.Position.Y
or a.Part7.Position.Y > Partt8.Position.Y
or a.Part7.Position.X +(1.9) < Partt8.Position.X 
or a.Part7.Position.X -(1.9) > Partt8.Position.X 
or a.Part7.Position.Z +(1.9) < Partt8.Position.Z 
or a.Part7.Position.Z -(1.9) > Partt8.Position.Z 
then
ypoPart7 = 1
else ypoPart7 = 0 
end
else ypoPart7 = 0
end
else ypoPart7 = 0
end
else ypoPart7 = 0
end
else ypoPart7 = 0
end
else ypoPart7 = 0
end
else ypoPart7 = 0
end

if a.Part7.Position.Y - 2.5 > Partt1.Position.Y -- P1 -Y Positions Library Reference
or a.Part7.Position.Y < Partt1.Position.Y
or a.Part7.Position.X +(1.9) < Partt1.Position.X 
or a.Part7.Position.X -(1.9) > Partt1.Position.X 
or a.Part7.Position.Z +(1.9) < Partt1.Position.Z 
or a.Part7.Position.Z -(1.9) > Partt1.Position.Z 
then
if a.Part7.Position.Y - 2.5 > Partt2.Position.Y
or a.Part7.Position.Y < Partt2.Position.Y
or a.Part7.Position.X +(1.9) < Partt2.Position.X 
or a.Part7.Position.X -(1.9) > Partt2.Position.X 
or a.Part7.Position.Z +(1.9) < Partt2.Position.Z 
or a.Part7.Position.Z -(1.9) > Partt2.Position.Z 
then
if a.Part7.Position.Y - 2.5 > Partt3.Position.Y
or a.Part7.Position.Y < Partt3.Position.Y
or a.Part7.Position.X +(1.9) < Partt3.Position.X 
or a.Part7.Position.X -(1.9) > Partt3.Position.X 
or a.Part7.Position.Z +(1.9) < Partt3.Position.Z 
or a.Part7.Position.Z -(1.9) > Partt3.Position.Z 
then
if a.Part7.Position.Y - 2.5 > Partt4.Position.Y
or a.Part7.Position.Y < Partt4.Position.Y
or a.Part7.Position.X +(1.9) < Partt4.Position.X 
or a.Part7.Position.X -(1.9) > Partt4.Position.X 
or a.Part7.Position.Z +(1.9) < Partt4.Position.Z 
or a.Part7.Position.Z -(1.9) > Partt4.Position.Z 
then
if a.Part7.Position.Y - 2.5 > Partt5.Position.Y
or a.Part7.Position.Y < Partt5.Position.Y
or a.Part7.Position.X +(1.9) < Partt5.Position.X 
or a.Part7.Position.X -(1.9) > Partt5.Position.X 
or a.Part7.Position.Z +(1.9) < Partt5.Position.Z 
or a.Part7.Position.Z -(1.9) > Partt5.Position.Z 
then
if a.Part7.Position.Y - 2.5 > Partt6.Position.Y
or a.Part7.Position.Y < Partt6.Position.Y
or a.Part7.Position.X +(1.9) < Partt6.Position.X 
or a.Part7.Position.X -(1.9) > Partt6.Position.X 
or a.Part7.Position.Z +(1.9) < Partt6.Position.Z 
or a.Part7.Position.Z -(1.9) > Partt6.Position.Z 
then
if a.Part7.Position.Y - 2.5 > Partt8.Position.Y
or a.Part7.Position.Y < Partt8.Position.Y
or a.Part7.Position.X +(1.9) < Partt8.Position.X 
or a.Part7.Position.X -(1.9) > Partt8.Position.X 
or a.Part7.Position.Z +(1.9) < Partt8.Position.Z 
or a.Part7.Position.Z -(1.9) > Partt8.Position.Z 
then
ynePart7 = 1
else ynePart7 = 0 
end
else ynePart7 = 0
end
else ynePart7 = 0
end
else ynePart7 = 0
end
else ynePart7 = 0
end
else ynePart7 = 0
end
else ynePart7 = 0
end

if a.Part7.Position.Z + 2.5 < Partt1.Position.Z -- P1 +Z Positions Library Reference
or a.Part7.Position.Z > Partt1.Position.Z
or a.Part7.Position.X +(1.9) < Partt1.Position.X 
or a.Part7.Position.X -(1.9) > Partt1.Position.X 
or a.Part7.Position.Y +(1.9) < Partt1.Position.Y 
or a.Part7.Position.Y -(1.9) > Partt1.Position.Y 
then
if a.Part7.Position.Z + 2.5 < Partt2.Position.Z
or a.Part7.Position.Z > Partt2.Position.Z
or a.Part7.Position.X +(1.9) < Partt2.Position.X 
or a.Part7.Position.X -(1.9) > Partt2.Position.X 
or a.Part7.Position.Y +(1.9) < Partt2.Position.Y 
or a.Part7.Position.Y -(1.9) > Partt2.Position.Y 
then
if a.Part7.Position.Z + 2.5 < Partt3.Position.Z
or a.Part7.Position.Z > Partt3.Position.Z
or a.Part7.Position.X +(1.9) < Partt3.Position.X 
or a.Part7.Position.X -(1.9) > Partt3.Position.X 
or a.Part7.Position.Y +(1.9) < Partt3.Position.Y 
or a.Part7.Position.Y -(1.9) > Partt3.Position.Y 
then
if a.Part7.Position.Z + 2.5 < Partt4.Position.Z
or a.Part7.Position.Z > Partt4.Position.Z
or a.Part7.Position.X +(1.9) < Partt4.Position.X 
or a.Part7.Position.X -(1.9) > Partt4.Position.X 
or a.Part7.Position.Y +(1.9) < Partt4.Position.Y 
or a.Part7.Position.Y -(1.9) > Partt4.Position.Y 
then
if a.Part7.Position.Z + 2.5 < Partt5.Position.Z
or a.Part7.Position.Z > Partt5.Position.Z
or a.Part7.Position.X +(1.9) < Partt5.Position.X 
or a.Part7.Position.X -(1.9) > Partt5.Position.X 
or a.Part7.Position.Y +(1.9) < Partt5.Position.Y 
or a.Part7.Position.Y -(1.9) > Partt5.Position.Y 
then
if a.Part7.Position.Z + 2.5 < Partt6.Position.Z
or a.Part7.Position.Z > Partt6.Position.Z
or a.Part7.Position.X +(1.9) < Partt6.Position.X 
or a.Part7.Position.X -(1.9) > Partt6.Position.X 
or a.Part7.Position.Y +(1.9) < Partt6.Position.Y 
or a.Part7.Position.Y -(1.9) > Partt6.Position.Y 
then
if a.Part7.Position.Z + 2.5 < Partt8.Position.Z
or a.Part7.Position.Z > Partt8.Position.Z
or a.Part7.Position.X +(1.9) < Partt8.Position.X 
or a.Part7.Position.X -(1.9) > Partt8.Position.X 
or a.Part7.Position.Y +(1.9) < Partt8.Position.Y 
or a.Part7.Position.Y -(1.9) > Partt8.Position.Y 
then
zpoPart7 = 1
else zpoPart7 = 0 
end
else zpoPart7 = 0
end
else zpoPart7 = 0
end
else zpoPart7 = 0
end
else zpoPart7 = 0
end
else zpoPart7 = 0
end
else zpoPart7 = 0
end

if a.Part7.Position.Z - 2.5 > Partt1.Position.Z -- P1 -Z Positions Library Reference
or a.Part7.Position.Z < Partt1.Position.Z
or a.Part7.Position.X +(1.9) < Partt1.Position.X 
or a.Part7.Position.X -(1.9) > Partt1.Position.X 
or a.Part7.Position.Y +(1.9) < Partt1.Position.Y 
or a.Part7.Position.Y -(1.9) > Partt1.Position.Y 
then
if a.Part7.Position.Z - 2.5 > Partt2.Position.Z
or a.Part7.Position.Z < Partt2.Position.Z
or a.Part7.Position.X +(1.9) < Partt2.Position.X 
or a.Part7.Position.X -(1.9) > Partt2.Position.X 
or a.Part7.Position.Y +(1.9) < Partt2.Position.Y 
or a.Part7.Position.Y -(1.9) > Partt2.Position.Y 
then
if a.Part7.Position.Z - 2.5 > Partt3.Position.Z
or a.Part7.Position.Z < Partt3.Position.Z
or a.Part7.Position.X +(1.9) < Partt3.Position.X 
or a.Part7.Position.X -(1.9) > Partt3.Position.X 
or a.Part7.Position.Y +(1.9) < Partt3.Position.Y 
or a.Part7.Position.Y -(1.9) > Partt3.Position.Y 
then
if a.Part7.Position.Z - 2.5 > Partt4.Position.Z
or a.Part7.Position.Z < Partt4.Position.Z
or a.Part7.Position.X +(1.9) < Partt4.Position.X 
or a.Part7.Position.X -(1.9) > Partt4.Position.X 
or a.Part7.Position.Y +(1.9) < Partt4.Position.Y 
or a.Part7.Position.Y -(1.9) > Partt4.Position.Y 
then
if a.Part7.Position.Z - 2.5 > Partt5.Position.Z
or a.Part7.Position.Z < Partt5.Position.Z
or a.Part7.Position.X +(1.9) < Partt5.Position.X 
or a.Part7.Position.X -(1.9) > Partt5.Position.X 
or a.Part7.Position.Y +(1.9) < Partt5.Position.Y 
or a.Part7.Position.Y -(1.9) > Partt5.Position.Y 
then
if a.Part7.Position.Z - 2.5 > Partt6.Position.Z
or a.Part7.Position.Z < Partt6.Position.Z
or a.Part7.Position.X +(1.9) < Partt6.Position.X 
or a.Part7.Position.X -(1.9) > Partt6.Position.X 
or a.Part7.Position.Y +(1.9) < Partt6.Position.Y 
or a.Part7.Position.Y -(1.9) > Partt6.Position.Y 
then
if a.Part7.Position.Z - 2.5 > Partt8.Position.Z
or a.Part7.Position.Z < Partt8.Position.Z
or a.Part7.Position.X +(1.9) < Partt8.Position.X 
or a.Part7.Position.X -(1.9) > Partt8.Position.X 
or a.Part7.Position.Y +(1.9) < Partt8.Position.Y 
or a.Part7.Position.Y -(1.9) > Partt8.Position.Y 
then
znePart7 = 1
else znePart7 = 0 
end
else znePart7 = 0
end
else znePart7 = 0
end
else znePart7 = 0
end
else znePart7 = 0
end
else znePart7 = 0
end
else znePart7 = 0
end

PriPart7 = 1 

if PriPart7 == 1
then	
if ypoPart7 == 1
then
for i=1, 10 do
a.Part7.CFrame = a.Part7.CFrame +(Vector3.new(0,.1,0))
wait(.01)
end
else PriPart7 = (PriPart7+1)
end
else end


if PriPart7 == 2
then	
if xpoPart7 == 1
then
for i=1, 10 do
a.Part7.CFrame = a.Part7.CFrame +(Vector3.new(.1,0,0))
wait(.01)
end
else PriPart7 = (PriPart7+1)
end
else end



if PriPart7 == 3
then	
if zpoPart7 == 1
then
for i=1, 10 do
a.Part7.CFrame = a.Part7.CFrame +(Vector3.new(0,0,.1))
wait(.01)
end
else PriPart7 = (PriPart7+1)
end
else end


if PriPart7 == 4
then	
if znePart7 == 1
then
for i=1, 10 do
a.Part7.CFrame = a.Part7.CFrame +(Vector3.new(0,0,-.1))
wait(.01)
end
else PriPart7 = (PriPart7+1)
end
else end

if PriPart7 == 5
then	
if xnePart7 == 1
then
for i=1, 10 do
a.Part7.CFrame = a.Part7.CFrame +(Vector3.new(-.1,0,0))
wait(.01)
end
else PriPart7 = (PriPart7+1)
end
else end
-- (PriPart7)

for i=1, 10 do
a.Part7.CFrame = a.Part7.CFrame * CFrame.fromEulerAnglesXYZ(0,math.pi/10,0)
wait(.01)
end
TMPart7 = (TMPart7+1)
until 
math.abs(a.Part7.Position.Y - cPart7.Position.Y) > 5
or TMPart7 == 7
else end
else end
------------------------------------------------------------------------------

if sPart7 == 3
and RPart7 == 3 --Checking +X Reconfiguration
then
if  XSPart7 == a.Part7.Position.X
and YSPart7 == a.Part7.Position.Y
and ZSPart7 == a.Part7.Position.Z
then
-- "Reconfiguring"
RPart7 = (RPart7+1)
repeat
if a.Part7.Position.X + 2.5 < Partt1.Position.X -- P1 +X Positions Library Reference
or a.Part7.Position.X > Partt1.Position.X
or a.Part7.Position.Y +(1.9) < Partt1.Position.Y 
or a.Part7.Position.Y -(1.9) > Partt1.Position.Y 
or a.Part7.Position.Z +(1.9) < Partt1.Position.Z 
or a.Part7.Position.Z -(1.9) > Partt1.Position.Z 
then
if a.Part7.Position.X + 2.5 < Partt2.Position.X
or a.Part7.Position.X > Partt2.Position.X
or a.Part7.Position.Y +(1.9) < Partt2.Position.Y 
or a.Part7.Position.Y -(1.9) > Partt2.Position.Y 
or a.Part7.Position.Z +(1.9) < Partt2.Position.Z 
or a.Part7.Position.Z -(1.9) > Partt2.Position.Z 
then
if a.Part7.Position.X + 2.5 < Partt3.Position.X
or a.Part7.Position.X > Partt3.Position.X
or a.Part7.Position.Y +(1.9) < Partt3.Position.Y 
or a.Part7.Position.Y -(1.9) > Partt3.Position.Y 
or a.Part7.Position.Z +(1.9) < Partt3.Position.Z 
or a.Part7.Position.Z -(1.9) > Partt3.Position.Z 
then
if a.Part7.Position.X + 2.5 < Partt4.Position.X
or a.Part7.Position.X > Partt4.Position.X
or a.Part7.Position.Y +(1.9) < Partt4.Position.Y 
or a.Part7.Position.Y -(1.9) > Partt4.Position.Y 
or a.Part7.Position.Z +(1.9) < Partt4.Position.Z 
or a.Part7.Position.Z -(1.9) > Partt4.Position.Z 
then
if a.Part7.Position.X + 2.5 < Partt5.Position.X
or a.Part7.Position.X > Partt5.Position.X
or a.Part7.Position.Y +(1.9) < Partt5.Position.Y 
or a.Part7.Position.Y -(1.9) > Partt5.Position.Y 
or a.Part7.Position.Z +(1.9) < Partt5.Position.Z 
or a.Part7.Position.Z -(1.9) > Partt5.Position.Z 
then
if a.Part7.Position.X + 2.5 < Partt6.Position.X
or a.Part7.Position.X > Partt6.Position.X
or a.Part7.Position.Y +(1.9) < Partt6.Position.Y 
or a.Part7.Position.Y -(1.9) > Partt6.Position.Y 
or a.Part7.Position.Z +(1.9) < Partt6.Position.Z 
or a.Part7.Position.Z -(1.9) > Partt6.Position.Z 
then
if a.Part7.Position.X + 2.5 < Partt8.Position.X
or a.Part7.Position.X > Partt8.Position.X
or a.Part7.Position.Y +(1.9) < Partt8.Position.Y 
or a.Part7.Position.Y -(1.9) > Partt8.Position.Y 
or a.Part7.Position.Z +(1.9) < Partt8.Position.Z 
or a.Part7.Position.Z -(1.9) > Partt8.Position.Z 
then
xpoPart7 = 1
else xpoPart7 = 0 
end
else xpoPart7 = 0
end
else xpoPart7 = 0
end
else xpoPart7 = 0
end
else xpoPart7 = 0
end
else xpoPart7 = 0
end
else xpoPart7 = 0
end

if a.Part7.Position.X - 2.5 > Partt1.Position.X -- P1 -X Positions Library Reference
or a.Part7.Position.X < Partt1.Position.X
or a.Part7.Position.Y +(1.9) < Partt1.Position.Y 
or a.Part7.Position.Y -(1.9) > Partt1.Position.Y 
or a.Part7.Position.Z +(1.9) < Partt1.Position.Z 
or a.Part7.Position.Z -(1.9) > Partt1.Position.Z 
then
if a.Part7.Position.X - 2.5 > Partt2.Position.X
or a.Part7.Position.X < Partt2.Position.X
or a.Part7.Position.Y +(1.9) < Partt2.Position.Y 
or a.Part7.Position.Y -(1.9) > Partt2.Position.Y 
or a.Part7.Position.Z +(1.9) < Partt2.Position.Z 
or a.Part7.Position.Z -(1.9) > Partt2.Position.Z 
then
if a.Part7.Position.X - 2.5 > Partt3.Position.X
or a.Part7.Position.X < Partt3.Position.X
or a.Part7.Position.Y +(1.9) < Partt3.Position.Y 
or a.Part7.Position.Y -(1.9) > Partt3.Position.Y 
or a.Part7.Position.Z +(1.9) < Partt3.Position.Z 
or a.Part7.Position.Z -(1.9) > Partt3.Position.Z 
then
if a.Part7.Position.X - 2.5 > Partt4.Position.X
or a.Part7.Position.X < Partt4.Position.X
or a.Part7.Position.Y +(1.9) < Partt4.Position.Y 
or a.Part7.Position.Y -(1.9) > Partt4.Position.Y 
or a.Part7.Position.Z +(1.9) < Partt4.Position.Z 
or a.Part7.Position.Z -(1.9) > Partt4.Position.Z 
then
if a.Part7.Position.X - 2.5 > Partt5.Position.X
or a.Part7.Position.X < Partt5.Position.X
or a.Part7.Position.Y +(1.9) < Partt5.Position.Y 
or a.Part7.Position.Y -(1.9) > Partt5.Position.Y 
or a.Part7.Position.Z +(1.9) < Partt5.Position.Z 
or a.Part7.Position.Z -(1.9) > Partt5.Position.Z 
then
if a.Part7.Position.X - 2.5 > Partt6.Position.X
or a.Part7.Position.X < Partt6.Position.X
or a.Part7.Position.Y +(1.9) < Partt6.Position.Y 
or a.Part7.Position.Y -(1.9) > Partt6.Position.Y 
or a.Part7.Position.Z +(1.9) < Partt6.Position.Z 
or a.Part7.Position.Z -(1.9) > Partt6.Position.Z 
then
if a.Part7.Position.X - 2.5 > Partt8.Position.X
or a.Part7.Position.X < Partt8.Position.X
or a.Part7.Position.Y +(1.9) < Partt8.Position.Y 
or a.Part7.Position.Y -(1.9) > Partt8.Position.Y 
or a.Part7.Position.Z +(1.9) < Partt8.Position.Z 
or a.Part7.Position.Z -(1.9) > Partt8.Position.Z 
then
xnePart7 = 1
else xnePart7 = 0 
end
else xnePart7 = 0
end
else xnePart7 = 0
end
else xnePart7 = 0
end
else xnePart7 = 0
end
else xnePart7 = 0
end
else xnePart7 = 0
end

if a.Part7.Position.Y + 2.5 < Partt1.Position.Y -- P1 +Y Positions Library Reference
or a.Part7.Position.Y > Partt1.Position.Y
or a.Part7.Position.X +(1.9) < Partt1.Position.X 
or a.Part7.Position.X -(1.9) > Partt1.Position.X 
or a.Part7.Position.Z +(1.9) < Partt1.Position.Z 
or a.Part7.Position.Z -(1.9) > Partt1.Position.Z 
then
if a.Part7.Position.Y + 2.5 < Partt2.Position.Y
or a.Part7.Position.Y > Partt2.Position.Y
or a.Part7.Position.X +(1.9) < Partt2.Position.X 
or a.Part7.Position.X -(1.9) > Partt2.Position.X 
or a.Part7.Position.Z +(1.9) < Partt2.Position.Z 
or a.Part7.Position.Z -(1.9) > Partt2.Position.Z 
then
if a.Part7.Position.Y + 2.5 < Partt3.Position.Y
or a.Part7.Position.Y > Partt3.Position.Y
or a.Part7.Position.X +(1.9) < Partt3.Position.X 
or a.Part7.Position.X -(1.9) > Partt3.Position.X 
or a.Part7.Position.Z +(1.9) < Partt3.Position.Z 
or a.Part7.Position.Z -(1.9) > Partt3.Position.Z 
then
if a.Part7.Position.Y + 2.5 < Partt4.Position.Y
or a.Part7.Position.Y > Partt4.Position.Y
or a.Part7.Position.X +(1.9) < Partt4.Position.X 
or a.Part7.Position.X -(1.9) > Partt4.Position.X 
or a.Part7.Position.Z +(1.9) < Partt4.Position.Z 
or a.Part7.Position.Z -(1.9) > Partt4.Position.Z 
then
if a.Part7.Position.Y + 2.5 < Partt5.Position.Y
or a.Part7.Position.Y > Partt5.Position.Y
or a.Part7.Position.X +(1.9) < Partt5.Position.X 
or a.Part7.Position.X -(1.9) > Partt5.Position.X 
or a.Part7.Position.Z +(1.9) < Partt5.Position.Z 
or a.Part7.Position.Z -(1.9) > Partt5.Position.Z 
then
if a.Part7.Position.Y + 2.5 < Partt6.Position.Y
or a.Part7.Position.Y > Partt6.Position.Y
or a.Part7.Position.X +(1.9) < Partt6.Position.X 
or a.Part7.Position.X -(1.9) > Partt6.Position.X 
or a.Part7.Position.Z +(1.9) < Partt6.Position.Z 
or a.Part7.Position.Z -(1.9) > Partt6.Position.Z 
then
if a.Part7.Position.Y + 2.5 < Partt8.Position.Y
or a.Part7.Position.Y > Partt8.Position.Y
or a.Part7.Position.X +(1.9) < Partt8.Position.X 
or a.Part7.Position.X -(1.9) > Partt8.Position.X 
or a.Part7.Position.Z +(1.9) < Partt8.Position.Z 
or a.Part7.Position.Z -(1.9) > Partt8.Position.Z 
then
ypoPart7 = 1
else ypoPart7 = 0 
end
else ypoPart7 = 0
end
else ypoPart7 = 0
end
else ypoPart7 = 0
end
else ypoPart7 = 0
end
else ypoPart7 = 0
end
else ypoPart7 = 0
end

if a.Part7.Position.Y - 2.5 > Partt1.Position.Y -- P1 -Y Positions Library Reference
or a.Part7.Position.Y < Partt1.Position.Y
or a.Part7.Position.X +(1.9) < Partt1.Position.X 
or a.Part7.Position.X -(1.9) > Partt1.Position.X 
or a.Part7.Position.Z +(1.9) < Partt1.Position.Z 
or a.Part7.Position.Z -(1.9) > Partt1.Position.Z 
then
if a.Part7.Position.Y - 2.5 > Partt2.Position.Y
or a.Part7.Position.Y < Partt2.Position.Y
or a.Part7.Position.X +(1.9) < Partt2.Position.X 
or a.Part7.Position.X -(1.9) > Partt2.Position.X 
or a.Part7.Position.Z +(1.9) < Partt2.Position.Z 
or a.Part7.Position.Z -(1.9) > Partt2.Position.Z 
then
if a.Part7.Position.Y - 2.5 > Partt3.Position.Y
or a.Part7.Position.Y < Partt3.Position.Y
or a.Part7.Position.X +(1.9) < Partt3.Position.X 
or a.Part7.Position.X -(1.9) > Partt3.Position.X 
or a.Part7.Position.Z +(1.9) < Partt3.Position.Z 
or a.Part7.Position.Z -(1.9) > Partt3.Position.Z 
then
if a.Part7.Position.Y - 2.5 > Partt4.Position.Y
or a.Part7.Position.Y < Partt4.Position.Y
or a.Part7.Position.X +(1.9) < Partt4.Position.X 
or a.Part7.Position.X -(1.9) > Partt4.Position.X 
or a.Part7.Position.Z +(1.9) < Partt4.Position.Z 
or a.Part7.Position.Z -(1.9) > Partt4.Position.Z 
then
if a.Part7.Position.Y - 2.5 > Partt5.Position.Y
or a.Part7.Position.Y < Partt5.Position.Y
or a.Part7.Position.X +(1.9) < Partt5.Position.X 
or a.Part7.Position.X -(1.9) > Partt5.Position.X 
or a.Part7.Position.Z +(1.9) < Partt5.Position.Z 
or a.Part7.Position.Z -(1.9) > Partt5.Position.Z 
then
if a.Part7.Position.Y - 2.5 > Partt6.Position.Y
or a.Part7.Position.Y < Partt6.Position.Y
or a.Part7.Position.X +(1.9) < Partt6.Position.X 
or a.Part7.Position.X -(1.9) > Partt6.Position.X 
or a.Part7.Position.Z +(1.9) < Partt6.Position.Z 
or a.Part7.Position.Z -(1.9) > Partt6.Position.Z 
then
if a.Part7.Position.Y - 2.5 > Partt8.Position.Y
or a.Part7.Position.Y < Partt8.Position.Y
or a.Part7.Position.X +(1.9) < Partt8.Position.X 
or a.Part7.Position.X -(1.9) > Partt8.Position.X 
or a.Part7.Position.Z +(1.9) < Partt8.Position.Z 
or a.Part7.Position.Z -(1.9) > Partt8.Position.Z 
then
ynePart7 = 1
else ynePart7 = 0 
end
else ynePart7 = 0
end
else ynePart7 = 0
end
else ynePart7 = 0
end
else ynePart7 = 0
end
else ynePart7 = 0
end
else ynePart7 = 0
end

if a.Part7.Position.Z + 2.5 < Partt1.Position.Z -- P1 +Z Positions Library Reference
or a.Part7.Position.Z > Partt1.Position.Z
or a.Part7.Position.X +(1.9) < Partt1.Position.X 
or a.Part7.Position.X -(1.9) > Partt1.Position.X 
or a.Part7.Position.Y +(1.9) < Partt1.Position.Y 
or a.Part7.Position.Y -(1.9) > Partt1.Position.Y 
then
if a.Part7.Position.Z + 2.5 < Partt2.Position.Z
or a.Part7.Position.Z > Partt2.Position.Z
or a.Part7.Position.X +(1.9) < Partt2.Position.X 
or a.Part7.Position.X -(1.9) > Partt2.Position.X 
or a.Part7.Position.Y +(1.9) < Partt2.Position.Y 
or a.Part7.Position.Y -(1.9) > Partt2.Position.Y 
then
if a.Part7.Position.Z + 2.5 < Partt3.Position.Z
or a.Part7.Position.Z > Partt3.Position.Z
or a.Part7.Position.X +(1.9) < Partt3.Position.X 
or a.Part7.Position.X -(1.9) > Partt3.Position.X 
or a.Part7.Position.Y +(1.9) < Partt3.Position.Y 
or a.Part7.Position.Y -(1.9) > Partt3.Position.Y 
then
if a.Part7.Position.Z + 2.5 < Partt4.Position.Z
or a.Part7.Position.Z > Partt4.Position.Z
or a.Part7.Position.X +(1.9) < Partt4.Position.X 
or a.Part7.Position.X -(1.9) > Partt4.Position.X 
or a.Part7.Position.Y +(1.9) < Partt4.Position.Y 
or a.Part7.Position.Y -(1.9) > Partt4.Position.Y 
then
if a.Part7.Position.Z + 2.5 < Partt5.Position.Z
or a.Part7.Position.Z > Partt5.Position.Z
or a.Part7.Position.X +(1.9) < Partt5.Position.X 
or a.Part7.Position.X -(1.9) > Partt5.Position.X 
or a.Part7.Position.Y +(1.9) < Partt5.Position.Y 
or a.Part7.Position.Y -(1.9) > Partt5.Position.Y 
then
if a.Part7.Position.Z + 2.5 < Partt6.Position.Z
or a.Part7.Position.Z > Partt6.Position.Z
or a.Part7.Position.X +(1.9) < Partt6.Position.X 
or a.Part7.Position.X -(1.9) > Partt6.Position.X 
or a.Part7.Position.Y +(1.9) < Partt6.Position.Y 
or a.Part7.Position.Y -(1.9) > Partt6.Position.Y 
then
if a.Part7.Position.Z + 2.5 < Partt8.Position.Z
or a.Part7.Position.Z > Partt8.Position.Z
or a.Part7.Position.X +(1.9) < Partt8.Position.X 
or a.Part7.Position.X -(1.9) > Partt8.Position.X 
or a.Part7.Position.Y +(1.9) < Partt8.Position.Y 
or a.Part7.Position.Y -(1.9) > Partt8.Position.Y 
then
zpoPart7 = 1
else zpoPart7 = 0 
end
else zpoPart7 = 0
end
else zpoPart7 = 0
end
else zpoPart7 = 0
end
else zpoPart7 = 0
end
else zpoPart7 = 0
end
else zpoPart7 = 0
end

if a.Part7.Position.Z - 2.5 > Partt1.Position.Z -- P1 -Z Positions Library Reference
or a.Part7.Position.Z < Partt1.Position.Z
or a.Part7.Position.X +(1.9) < Partt1.Position.X 
or a.Part7.Position.X -(1.9) > Partt1.Position.X 
or a.Part7.Position.Y +(1.9) < Partt1.Position.Y 
or a.Part7.Position.Y -(1.9) > Partt1.Position.Y 
then
if a.Part7.Position.Z - 2.5 > Partt2.Position.Z
or a.Part7.Position.Z < Partt2.Position.Z
or a.Part7.Position.X +(1.9) < Partt2.Position.X 
or a.Part7.Position.X -(1.9) > Partt2.Position.X 
or a.Part7.Position.Y +(1.9) < Partt2.Position.Y 
or a.Part7.Position.Y -(1.9) > Partt2.Position.Y 
then
if a.Part7.Position.Z - 2.5 > Partt3.Position.Z
or a.Part7.Position.Z < Partt3.Position.Z
or a.Part7.Position.X +(1.9) < Partt3.Position.X 
or a.Part7.Position.X -(1.9) > Partt3.Position.X 
or a.Part7.Position.Y +(1.9) < Partt3.Position.Y 
or a.Part7.Position.Y -(1.9) > Partt3.Position.Y 
then
if a.Part7.Position.Z - 2.5 > Partt4.Position.Z
or a.Part7.Position.Z < Partt4.Position.Z
or a.Part7.Position.X +(1.9) < Partt4.Position.X 
or a.Part7.Position.X -(1.9) > Partt4.Position.X 
or a.Part7.Position.Y +(1.9) < Partt4.Position.Y 
or a.Part7.Position.Y -(1.9) > Partt4.Position.Y 
then
if a.Part7.Position.Z - 2.5 > Partt5.Position.Z
or a.Part7.Position.Z < Partt5.Position.Z
or a.Part7.Position.X +(1.9) < Partt5.Position.X 
or a.Part7.Position.X -(1.9) > Partt5.Position.X 
or a.Part7.Position.Y +(1.9) < Partt5.Position.Y 
or a.Part7.Position.Y -(1.9) > Partt5.Position.Y 
then
if a.Part7.Position.Z - 2.5 > Partt6.Position.Z
or a.Part7.Position.Z < Partt6.Position.Z
or a.Part7.Position.X +(1.9) < Partt6.Position.X 
or a.Part7.Position.X -(1.9) > Partt6.Position.X 
or a.Part7.Position.Y +(1.9) < Partt6.Position.Y 
or a.Part7.Position.Y -(1.9) > Partt6.Position.Y 
then
if a.Part7.Position.Z - 2.5 > Partt8.Position.Z
or a.Part7.Position.Z < Partt8.Position.Z
or a.Part7.Position.X +(1.9) < Partt8.Position.X 
or a.Part7.Position.X -(1.9) > Partt8.Position.X 
or a.Part7.Position.Y +(1.9) < Partt8.Position.Y 
or a.Part7.Position.Y -(1.9) > Partt8.Position.Y 
then
znePart7 = 1
else znePart7 = 0 
end
else znePart7 = 0
end
else znePart7 = 0
end
else znePart7 = 0
end
else znePart7 = 0
end
else znePart7 = 0
end
else znePart7 = 0
end

PriPart7 = 1 
if PriPart7 == 1
then	
if xnePart7 == 1
then
for i=1, 10 do
a.Part7.CFrame = a.Part7.CFrame +(Vector3.new(-.1,0,0))
wait(.01)
end
else PriPart7 = (PriPart7+1)
end
else end

if PriPart7 == 2
then	
if ypoPart7 == 1
then
for i=1, 10 do
a.Part7.CFrame = a.Part7.CFrame +(Vector3.new(0,.1,0))
wait(.01)
end
else PriPart7 = (PriPart7+1)
end
else end

if PriPart7 == 3
then	
if zpoPart7 == 1
then
for i=1, 10 do
a.Part7.CFrame = a.Part7.CFrame +(Vector3.new(0,0,.1))
wait(.01)
end
else PriPart7 = (PriPart7+1)
end
else end

if PriPart7 == 4
then	
if ynePart7 == 1
then
for i=1, 10 do
a.Part7.CFrame = a.Part7.CFrame +(Vector3.new(0,-.1,0))
wait(.01)
end
else PriPart7 = (PriPart7+1)
end
else end

if PriPart7 == 5
then	
if znePart7 == 1
then
for i=1, 10 do
a.Part7.CFrame = a.Part7.CFrame +(Vector3.new(0,0,-.1))
wait(.01)
end
else PriPart7 = (PriPart7+1)
end
else end
------------------------------------------------------------------------------
-- (PriPart7)

wait(.1)
TMPart7 = (TMPart7+1)
until 
math.abs(a.Part7.Position.X - cPart7.Position.X) > 5
or TMPart7 == 7
else end
else end

if sPart7 == 3
and RPart7 == 4 --Checking +X Reconfiguration
then
if  XSPart7 == a.Part7.Position.X
and YSPart7 == a.Part7.Position.Y
and ZSPart7 == a.Part7.Position.Z
then
-- "Reconfiguring"
RPart7 = 1
repeat
if a.Part7.Position.X + 2.5 < Partt1.Position.X -- P1 +X Positions Library Reference
or a.Part7.Position.X > Partt1.Position.X
or a.Part7.Position.Y +(1.9) < Partt1.Position.Y 
or a.Part7.Position.Y -(1.9) > Partt1.Position.Y 
or a.Part7.Position.Z +(1.9) < Partt1.Position.Z 
or a.Part7.Position.Z -(1.9) > Partt1.Position.Z 
then
if a.Part7.Position.X + 2.5 < Partt2.Position.X
or a.Part7.Position.X > Partt2.Position.X
or a.Part7.Position.Y +(1.9) < Partt2.Position.Y 
or a.Part7.Position.Y -(1.9) > Partt2.Position.Y 
or a.Part7.Position.Z +(1.9) < Partt2.Position.Z 
or a.Part7.Position.Z -(1.9) > Partt2.Position.Z 
then
if a.Part7.Position.X + 2.5 < Partt3.Position.X
or a.Part7.Position.X > Partt3.Position.X
or a.Part7.Position.Y +(1.9) < Partt3.Position.Y 
or a.Part7.Position.Y -(1.9) > Partt3.Position.Y 
or a.Part7.Position.Z +(1.9) < Partt3.Position.Z 
or a.Part7.Position.Z -(1.9) > Partt3.Position.Z 
then
if a.Part7.Position.X + 2.5 < Partt4.Position.X
or a.Part7.Position.X > Partt4.Position.X
or a.Part7.Position.Y +(1.9) < Partt4.Position.Y 
or a.Part7.Position.Y -(1.9) > Partt4.Position.Y 
or a.Part7.Position.Z +(1.9) < Partt4.Position.Z 
or a.Part7.Position.Z -(1.9) > Partt4.Position.Z 
then
if a.Part7.Position.X + 2.5 < Partt5.Position.X
or a.Part7.Position.X > Partt5.Position.X
or a.Part7.Position.Y +(1.9) < Partt5.Position.Y 
or a.Part7.Position.Y -(1.9) > Partt5.Position.Y 
or a.Part7.Position.Z +(1.9) < Partt5.Position.Z 
or a.Part7.Position.Z -(1.9) > Partt5.Position.Z 
then
if a.Part7.Position.X + 2.5 < Partt6.Position.X
or a.Part7.Position.X > Partt6.Position.X
or a.Part7.Position.Y +(1.9) < Partt6.Position.Y 
or a.Part7.Position.Y -(1.9) > Partt6.Position.Y 
or a.Part7.Position.Z +(1.9) < Partt6.Position.Z 
or a.Part7.Position.Z -(1.9) > Partt6.Position.Z 
then
if a.Part7.Position.X + 2.5 < Partt8.Position.X
or a.Part7.Position.X > Partt8.Position.X
or a.Part7.Position.Y +(1.9) < Partt8.Position.Y 
or a.Part7.Position.Y -(1.9) > Partt8.Position.Y 
or a.Part7.Position.Z +(1.9) < Partt8.Position.Z 
or a.Part7.Position.Z -(1.9) > Partt8.Position.Z 
then
xpoPart7 = 1
else xpoPart7 = 0 
end
else xpoPart7 = 0
end
else xpoPart7 = 0
end
else xpoPart7 = 0
end
else xpoPart7 = 0
end
else xpoPart7 = 0
end
else xpoPart7 = 0
end

if a.Part7.Position.X - 2.5 > Partt1.Position.X -- P1 -X Positions Library Reference
or a.Part7.Position.X < Partt1.Position.X
or a.Part7.Position.Y +(1.9) < Partt1.Position.Y 
or a.Part7.Position.Y -(1.9) > Partt1.Position.Y 
or a.Part7.Position.Z +(1.9) < Partt1.Position.Z 
or a.Part7.Position.Z -(1.9) > Partt1.Position.Z 
then
if a.Part7.Position.X - 2.5 > Partt2.Position.X
or a.Part7.Position.X < Partt2.Position.X
or a.Part7.Position.Y +(1.9) < Partt2.Position.Y 
or a.Part7.Position.Y -(1.9) > Partt2.Position.Y 
or a.Part7.Position.Z +(1.9) < Partt2.Position.Z 
or a.Part7.Position.Z -(1.9) > Partt2.Position.Z 
then
if a.Part7.Position.X - 2.5 > Partt3.Position.X
or a.Part7.Position.X < Partt3.Position.X
or a.Part7.Position.Y +(1.9) < Partt3.Position.Y 
or a.Part7.Position.Y -(1.9) > Partt3.Position.Y 
or a.Part7.Position.Z +(1.9) < Partt3.Position.Z 
or a.Part7.Position.Z -(1.9) > Partt3.Position.Z 
then
if a.Part7.Position.X - 2.5 > Partt4.Position.X
or a.Part7.Position.X < Partt4.Position.X
or a.Part7.Position.Y +(1.9) < Partt4.Position.Y 
or a.Part7.Position.Y -(1.9) > Partt4.Position.Y 
or a.Part7.Position.Z +(1.9) < Partt4.Position.Z 
or a.Part7.Position.Z -(1.9) > Partt4.Position.Z 
then
if a.Part7.Position.X - 2.5 > Partt5.Position.X
or a.Part7.Position.X < Partt5.Position.X
or a.Part7.Position.Y +(1.9) < Partt5.Position.Y 
or a.Part7.Position.Y -(1.9) > Partt5.Position.Y 
or a.Part7.Position.Z +(1.9) < Partt5.Position.Z 
or a.Part7.Position.Z -(1.9) > Partt5.Position.Z 
then
if a.Part7.Position.X - 2.5 > Partt6.Position.X
or a.Part7.Position.X < Partt6.Position.X
or a.Part7.Position.Y +(1.9) < Partt6.Position.Y 
or a.Part7.Position.Y -(1.9) > Partt6.Position.Y 
or a.Part7.Position.Z +(1.9) < Partt6.Position.Z 
or a.Part7.Position.Z -(1.9) > Partt6.Position.Z 
then
if a.Part7.Position.X - 2.5 > Partt8.Position.X
or a.Part7.Position.X < Partt8.Position.X
or a.Part7.Position.Y +(1.9) < Partt8.Position.Y 
or a.Part7.Position.Y -(1.9) > Partt8.Position.Y 
or a.Part7.Position.Z +(1.9) < Partt8.Position.Z 
or a.Part7.Position.Z -(1.9) > Partt8.Position.Z 
then
xnePart7 = 1
else xnePart7 = 0 
end
else xnePart7 = 0
end
else xnePart7 = 0
end
else xnePart7 = 0
end
else xnePart7 = 0
end
else xnePart7 = 0
end
else xnePart7 = 0
end

if a.Part7.Position.Y + 2.5 < Partt1.Position.Y -- P1 +Y Positions Library Reference
or a.Part7.Position.Y > Partt1.Position.Y
or a.Part7.Position.X +(1.9) < Partt1.Position.X 
or a.Part7.Position.X -(1.9) > Partt1.Position.X 
or a.Part7.Position.Z +(1.9) < Partt1.Position.Z 
or a.Part7.Position.Z -(1.9) > Partt1.Position.Z 
then
if a.Part7.Position.Y + 2.5 < Partt2.Position.Y
or a.Part7.Position.Y > Partt2.Position.Y
or a.Part7.Position.X +(1.9) < Partt2.Position.X 
or a.Part7.Position.X -(1.9) > Partt2.Position.X 
or a.Part7.Position.Z +(1.9) < Partt2.Position.Z 
or a.Part7.Position.Z -(1.9) > Partt2.Position.Z 
then
if a.Part7.Position.Y + 2.5 < Partt3.Position.Y
or a.Part7.Position.Y > Partt3.Position.Y
or a.Part7.Position.X +(1.9) < Partt3.Position.X 
or a.Part7.Position.X -(1.9) > Partt3.Position.X 
or a.Part7.Position.Z +(1.9) < Partt3.Position.Z 
or a.Part7.Position.Z -(1.9) > Partt3.Position.Z 
then
if a.Part7.Position.Y + 2.5 < Partt4.Position.Y
or a.Part7.Position.Y > Partt4.Position.Y
or a.Part7.Position.X +(1.9) < Partt4.Position.X 
or a.Part7.Position.X -(1.9) > Partt4.Position.X 
or a.Part7.Position.Z +(1.9) < Partt4.Position.Z 
or a.Part7.Position.Z -(1.9) > Partt4.Position.Z 
then
if a.Part7.Position.Y + 2.5 < Partt5.Position.Y
or a.Part7.Position.Y > Partt5.Position.Y
or a.Part7.Position.X +(1.9) < Partt5.Position.X 
or a.Part7.Position.X -(1.9) > Partt5.Position.X 
or a.Part7.Position.Z +(1.9) < Partt5.Position.Z 
or a.Part7.Position.Z -(1.9) > Partt5.Position.Z 
then
if a.Part7.Position.Y + 2.5 < Partt6.Position.Y
or a.Part7.Position.Y > Partt6.Position.Y
or a.Part7.Position.X +(1.9) < Partt6.Position.X 
or a.Part7.Position.X -(1.9) > Partt6.Position.X 
or a.Part7.Position.Z +(1.9) < Partt6.Position.Z 
or a.Part7.Position.Z -(1.9) > Partt6.Position.Z 
then
if a.Part7.Position.Y + 2.5 < Partt8.Position.Y
or a.Part7.Position.Y > Partt8.Position.Y
or a.Part7.Position.X +(1.9) < Partt8.Position.X 
or a.Part7.Position.X -(1.9) > Partt8.Position.X 
or a.Part7.Position.Z +(1.9) < Partt8.Position.Z 
or a.Part7.Position.Z -(1.9) > Partt8.Position.Z 
then
ypoPart7 = 1
else ypoPart7 = 0 
end
else ypoPart7 = 0
end
else ypoPart7 = 0
end
else ypoPart7 = 0
end
else ypoPart7 = 0
end
else ypoPart7 = 0
end
else ypoPart7 = 0
end

if a.Part7.Position.Y - 2.5 > Partt1.Position.Y -- P1 -Y Positions Library Reference
or a.Part7.Position.Y < Partt1.Position.Y
or a.Part7.Position.X +(1.9) < Partt1.Position.X 
or a.Part7.Position.X -(1.9) > Partt1.Position.X 
or a.Part7.Position.Z +(1.9) < Partt1.Position.Z 
or a.Part7.Position.Z -(1.9) > Partt1.Position.Z 
then
if a.Part7.Position.Y - 2.5 > Partt2.Position.Y
or a.Part7.Position.Y < Partt2.Position.Y
or a.Part7.Position.X +(1.9) < Partt2.Position.X 
or a.Part7.Position.X -(1.9) > Partt2.Position.X 
or a.Part7.Position.Z +(1.9) < Partt2.Position.Z 
or a.Part7.Position.Z -(1.9) > Partt2.Position.Z 
then
if a.Part7.Position.Y - 2.5 > Partt3.Position.Y
or a.Part7.Position.Y < Partt3.Position.Y
or a.Part7.Position.X +(1.9) < Partt3.Position.X 
or a.Part7.Position.X -(1.9) > Partt3.Position.X 
or a.Part7.Position.Z +(1.9) < Partt3.Position.Z 
or a.Part7.Position.Z -(1.9) > Partt3.Position.Z 
then
if a.Part7.Position.Y - 2.5 > Partt4.Position.Y
or a.Part7.Position.Y < Partt4.Position.Y
or a.Part7.Position.X +(1.9) < Partt4.Position.X 
or a.Part7.Position.X -(1.9) > Partt4.Position.X 
or a.Part7.Position.Z +(1.9) < Partt4.Position.Z 
or a.Part7.Position.Z -(1.9) > Partt4.Position.Z 
then
if a.Part7.Position.Y - 2.5 > Partt5.Position.Y
or a.Part7.Position.Y < Partt5.Position.Y
or a.Part7.Position.X +(1.9) < Partt5.Position.X 
or a.Part7.Position.X -(1.9) > Partt5.Position.X 
or a.Part7.Position.Z +(1.9) < Partt5.Position.Z 
or a.Part7.Position.Z -(1.9) > Partt5.Position.Z 
then
if a.Part7.Position.Y - 2.5 > Partt6.Position.Y
or a.Part7.Position.Y < Partt6.Position.Y
or a.Part7.Position.X +(1.9) < Partt6.Position.X 
or a.Part7.Position.X -(1.9) > Partt6.Position.X 
or a.Part7.Position.Z +(1.9) < Partt6.Position.Z 
or a.Part7.Position.Z -(1.9) > Partt6.Position.Z 
then
if a.Part7.Position.Y - 2.5 > Partt8.Position.Y
or a.Part7.Position.Y < Partt8.Position.Y
or a.Part7.Position.X +(1.9) < Partt8.Position.X 
or a.Part7.Position.X -(1.9) > Partt8.Position.X 
or a.Part7.Position.Z +(1.9) < Partt8.Position.Z 
or a.Part7.Position.Z -(1.9) > Partt8.Position.Z 
then
ynePart7 = 1
else ynePart7 = 0 
end
else ynePart7 = 0
end
else ynePart7 = 0
end
else ynePart7 = 0
end
else ynePart7 = 0
end
else ynePart7 = 0
end
else ynePart7 = 0
end

if a.Part7.Position.Z + 2.5 < Partt1.Position.Z -- P1 +Z Positions Library Reference
or a.Part7.Position.Z > Partt1.Position.Z
or a.Part7.Position.X +(1.9) < Partt1.Position.X 
or a.Part7.Position.X -(1.9) > Partt1.Position.X 
or a.Part7.Position.Y +(1.9) < Partt1.Position.Y 
or a.Part7.Position.Y -(1.9) > Partt1.Position.Y 
then
if a.Part7.Position.Z + 2.5 < Partt2.Position.Z
or a.Part7.Position.Z > Partt2.Position.Z
or a.Part7.Position.X +(1.9) < Partt2.Position.X 
or a.Part7.Position.X -(1.9) > Partt2.Position.X 
or a.Part7.Position.Y +(1.9) < Partt2.Position.Y 
or a.Part7.Position.Y -(1.9) > Partt2.Position.Y 
then
if a.Part7.Position.Z + 2.5 < Partt3.Position.Z
or a.Part7.Position.Z > Partt3.Position.Z
or a.Part7.Position.X +(1.9) < Partt3.Position.X 
or a.Part7.Position.X -(1.9) > Partt3.Position.X 
or a.Part7.Position.Y +(1.9) < Partt3.Position.Y 
or a.Part7.Position.Y -(1.9) > Partt3.Position.Y 
then
if a.Part7.Position.Z + 2.5 < Partt4.Position.Z
or a.Part7.Position.Z > Partt4.Position.Z
or a.Part7.Position.X +(1.9) < Partt4.Position.X 
or a.Part7.Position.X -(1.9) > Partt4.Position.X 
or a.Part7.Position.Y +(1.9) < Partt4.Position.Y 
or a.Part7.Position.Y -(1.9) > Partt4.Position.Y 
then
if a.Part7.Position.Z + 2.5 < Partt5.Position.Z
or a.Part7.Position.Z > Partt5.Position.Z
or a.Part7.Position.X +(1.9) < Partt5.Position.X 
or a.Part7.Position.X -(1.9) > Partt5.Position.X 
or a.Part7.Position.Y +(1.9) < Partt5.Position.Y 
or a.Part7.Position.Y -(1.9) > Partt5.Position.Y 
then
if a.Part7.Position.Z + 2.5 < Partt6.Position.Z
or a.Part7.Position.Z > Partt6.Position.Z
or a.Part7.Position.X +(1.9) < Partt6.Position.X 
or a.Part7.Position.X -(1.9) > Partt6.Position.X 
or a.Part7.Position.Y +(1.9) < Partt6.Position.Y 
or a.Part7.Position.Y -(1.9) > Partt6.Position.Y 
then
if a.Part7.Position.Z + 2.5 < Partt8.Position.Z
or a.Part7.Position.Z > Partt8.Position.Z
or a.Part7.Position.X +(1.9) < Partt8.Position.X 
or a.Part7.Position.X -(1.9) > Partt8.Position.X 
or a.Part7.Position.Y +(1.9) < Partt8.Position.Y 
or a.Part7.Position.Y -(1.9) > Partt8.Position.Y 
then
zpoPart7 = 1
else zpoPart7 = 0 
end
else zpoPart7 = 0
end
else zpoPart7 = 0
end
else zpoPart7 = 0
end
else zpoPart7 = 0
end
else zpoPart7 = 0
end
else zpoPart7 = 0
end

if a.Part7.Position.Z - 2.5 > Partt1.Position.Z -- P1 -Z Positions Library Reference
or a.Part7.Position.Z < Partt1.Position.Z
or a.Part7.Position.X +(1.9) < Partt1.Position.X 
or a.Part7.Position.X -(1.9) > Partt1.Position.X 
or a.Part7.Position.Y +(1.9) < Partt1.Position.Y 
or a.Part7.Position.Y -(1.9) > Partt1.Position.Y 
then
if a.Part7.Position.Z - 2.5 > Partt2.Position.Z
or a.Part7.Position.Z < Partt2.Position.Z
or a.Part7.Position.X +(1.9) < Partt2.Position.X 
or a.Part7.Position.X -(1.9) > Partt2.Position.X 
or a.Part7.Position.Y +(1.9) < Partt2.Position.Y 
or a.Part7.Position.Y -(1.9) > Partt2.Position.Y 
then
if a.Part7.Position.Z - 2.5 > Partt3.Position.Z
or a.Part7.Position.Z < Partt3.Position.Z
or a.Part7.Position.X +(1.9) < Partt3.Position.X 
or a.Part7.Position.X -(1.9) > Partt3.Position.X 
or a.Part7.Position.Y +(1.9) < Partt3.Position.Y 
or a.Part7.Position.Y -(1.9) > Partt3.Position.Y 
then
if a.Part7.Position.Z - 2.5 > Partt4.Position.Z
or a.Part7.Position.Z < Partt4.Position.Z
or a.Part7.Position.X +(1.9) < Partt4.Position.X 
or a.Part7.Position.X -(1.9) > Partt4.Position.X 
or a.Part7.Position.Y +(1.9) < Partt4.Position.Y 
or a.Part7.Position.Y -(1.9) > Partt4.Position.Y 
then
if a.Part7.Position.Z - 2.5 > Partt5.Position.Z
or a.Part7.Position.Z < Partt5.Position.Z
or a.Part7.Position.X +(1.9) < Partt5.Position.X 
or a.Part7.Position.X -(1.9) > Partt5.Position.X 
or a.Part7.Position.Y +(1.9) < Partt5.Position.Y 
or a.Part7.Position.Y -(1.9) > Partt5.Position.Y 
then
if a.Part7.Position.Z - 2.5 > Partt6.Position.Z
or a.Part7.Position.Z < Partt6.Position.Z
or a.Part7.Position.X +(1.9) < Partt6.Position.X 
or a.Part7.Position.X -(1.9) > Partt6.Position.X 
or a.Part7.Position.Y +(1.9) < Partt6.Position.Y 
or a.Part7.Position.Y -(1.9) > Partt6.Position.Y 
then
if a.Part7.Position.Z - 2.5 > Partt8.Position.Z
or a.Part7.Position.Z < Partt8.Position.Z
or a.Part7.Position.X +(1.9) < Partt8.Position.X 
or a.Part7.Position.X -(1.9) > Partt8.Position.X 
or a.Part7.Position.Y +(1.9) < Partt8.Position.Y 
or a.Part7.Position.Y -(1.9) > Partt8.Position.Y 
then
znePart7 = 1
else znePart7 = 0 
end
else znePart7 = 0
end
else znePart7 = 0
end
else znePart7 = 0
end
else znePart7 = 0
end
else znePart7 = 0
end
else znePart7 = 0
end

PriPart7 = 1 

if PriPart7 == 1
then	
if ynePart7 == 1
then
for i=1, 10 do
a.Part7.CFrame = a.Part7.CFrame +(Vector3.new(0,-.1,0))
wait(.01)
end
else PriPart7 = (PriPart7+1)
end
else end


if PriPart7 == 2
then	
if xpoPart7 == 1
then
for i=1, 10 do
a.Part7.CFrame = a.Part7.CFrame +(Vector3.new(.1,0,0))
wait(.01)
end
else PriPart7 = (PriPart7+1)
end
else end



if PriPart7 == 3
then	
if zpoPart7 == 1
then
for i=1, 10 do
a.Part7.CFrame = a.Part7.CFrame +(Vector3.new(0,0,.1))
wait(.01)
end
else PriPart7 = (PriPart7+1)
end
else end


if PriPart7 == 4
then	
if znePart7 == 1
then
for i=1, 10 do
a.Part7.CFrame = a.Part7.CFrame +(Vector3.new(0,0,-.1))
wait(.01)
end
else PriPart7 = (PriPart7+1)
end
else end

if PriPart7 == 5
then	
if xnePart7 == 1
then
for i=1, 10 do
a.Part7.CFrame = a.Part7.CFrame +(Vector3.new(-.1,0,0))
wait(.01)
end
else PriPart7 = (PriPart7+1)
end
else end
-- (PriPart7)

wait(.1)
TMPart7 = (TMPart7+1)
until 
math.abs(a.Part7.Position.Y - cPart7.Position.Y) > 5
or TMPart7 == 7
else end
else end
------------------------------------------------------------------------------

if sPart7==3
then sPart7 = 0
else end

wait(.1)
until
    a.Part7.Position.X < cPart7.Position.X +.7
and a.Part7.Position.X > cPart7.Position.X -.7
and a.Part7.Position.Y < cPart7.Position.Y +.7
and a.Part7.Position.Y > cPart7.Position.Y -.7
and a.Part7.Position.Z < cPart7.Position.Z +.7
and a.Part7.Position.Z > cPart7.Position.Z -.7
end --Couroutine


function core8()
wait(.35)
repeat

TMPart8 =  0

if cPart8.Position.X > a.Part8.Position.X then --Checking X Positions
XPart8 = 1
elseif cPart8.Position.X < a.Part8.Position.X then
XPart8 = -1
elseif cPart8.Position.X == a.Part8.Position.X then
XPart8 = 0
end

if cPart8.Position.Y > a.Part8.Position.Y then --Checking Y Positions
YPart8 = 1
elseif cPart8.Position.Y < a.Part8.Position.Y then
YPart8 = -1
elseif cPart8.Position.Y == a.Part8.Position.Y then
YPart8 = 0
end

if cPart8.Position.Z > a.Part8.Position.Z then --Checking Z Positions
ZPart8 = 1
elseif cPart8.Position.Z < a.Part8.Position.Z then
ZPart8 = -1
elseif cPart8.Position.Z == a.Part8.Position.Z then
ZPart8 = 0
end
-- ++-- 											
if  math.abs(a.Part8.Position.X - cPart8.Position.X) > math.abs(a.Part8.Position.Y - cPart8.Position.Y) --Priority Checks 1=X 2=Y 3=Z
and math.abs(a.Part8.Position.X - cPart8.Position.X) > math.abs(a.Part8.Position.Z - cPart8.Position.Z)
then PriPart8 = 1
else end 
if  math.abs(a.Part8.Position.Y - cPart8.Position.Y) > math.abs(a.Part8.Position.X - cPart8.Position.X) 
and math.abs(a.Part8.Position.Y - cPart8.Position.Y) > math.abs(a.Part8.Position.Z - cPart8.Position.Z)
then PriPart8 = 2
else end 
if  math.abs(a.Part8.Position.Z - cPart8.Position.Z) > math.abs(a.Part8.Position.Y - cPart8.Position.Y) 
and math.abs(a.Part8.Position.Z - cPart8.Position.Z) > math.abs(a.Part8.Position.X - cPart8.Position.X)
then PriPart8 = 3
else end 
if math.abs(a.Part8.Position.X - cPart8.Position.X) == math.abs(a.Part8.Position.Y - cPart8.Position.Y)  
or math.abs(a.Part8.Position.X - cPart8.Position.X) == math.abs(a.Part8.Position.Z - cPart8.Position.Z)
or math.abs(a.Part8.Position.Y - cPart8.Position.Y) == math.abs(a.Part8.Position.X - cPart8.Position.X)
then PriPart8 = 1
else end 

if a.Part8.Position.X + 2.5 < Partt1.Position.X -- P1 +X Positions Library Reference
or a.Part8.Position.X > Partt1.Position.X
or a.Part8.Position.Y +(1.9) < Partt1.Position.Y 
or a.Part8.Position.Y -(1.9) > Partt1.Position.Y 
or a.Part8.Position.Z +(1.9) < Partt1.Position.Z 
or a.Part8.Position.Z -(1.9) > Partt1.Position.Z 
then
if a.Part8.Position.X + 2.5 < Partt2.Position.X
or a.Part8.Position.X > Partt2.Position.X
or a.Part8.Position.Y +(1.9) < Partt2.Position.Y 
or a.Part8.Position.Y -(1.9) > Partt2.Position.Y 
or a.Part8.Position.Z +(1.9) < Partt2.Position.Z 
or a.Part8.Position.Z -(1.9) > Partt2.Position.Z 
then
if a.Part8.Position.X + 2.5 < Partt3.Position.X
or a.Part8.Position.X > Partt3.Position.X
or a.Part8.Position.Y +(1.9) < Partt3.Position.Y 
or a.Part8.Position.Y -(1.9) > Partt3.Position.Y 
or a.Part8.Position.Z +(1.9) < Partt3.Position.Z 
or a.Part8.Position.Z -(1.9) > Partt3.Position.Z 
then
if a.Part8.Position.X + 2.5 < Partt4.Position.X
or a.Part8.Position.X > Partt4.Position.X
or a.Part8.Position.Y +(1.9) < Partt4.Position.Y 
or a.Part8.Position.Y -(1.9) > Partt4.Position.Y 
or a.Part8.Position.Z +(1.9) < Partt4.Position.Z 
or a.Part8.Position.Z -(1.9) > Partt4.Position.Z 
then
if a.Part8.Position.X + 2.5 < Partt5.Position.X
or a.Part8.Position.X > Partt5.Position.X
or a.Part8.Position.Y +(1.9) < Partt5.Position.Y 
or a.Part8.Position.Y -(1.9) > Partt5.Position.Y 
or a.Part8.Position.Z +(1.9) < Partt5.Position.Z 
or a.Part8.Position.Z -(1.9) > Partt5.Position.Z 
then
if a.Part8.Position.X + 2.5 < Partt6.Position.X
or a.Part8.Position.X > Partt6.Position.X
or a.Part8.Position.Y +(1.9) < Partt6.Position.Y 
or a.Part8.Position.Y -(1.9) > Partt6.Position.Y 
or a.Part8.Position.Z +(1.9) < Partt6.Position.Z 
or a.Part8.Position.Z -(1.9) > Partt6.Position.Z 
then
if a.Part8.Position.X + 2.5 < Partt7.Position.X
or a.Part8.Position.X > Partt7.Position.X
or a.Part8.Position.Y +(1.9) < Partt7.Position.Y 
or a.Part8.Position.Y -(1.9) > Partt7.Position.Y 
or a.Part8.Position.Z +(1.9) < Partt7.Position.Z 
or a.Part8.Position.Z -(1.9) > Partt7.Position.Z 
then
xpoPart8 = 1
else xpoPart8 = 0 
end
else xpoPart8 = 0
end
else xpoPart8 = 0
end
else xpoPart8 = 0
end
else xpoPart8 = 0
end
else xpoPart8 = 0
end
else xpoPart8 = 0
end

if a.Part8.Position.X - 2.5 > Partt1.Position.X -- P1 -X Positions Library Reference
or a.Part8.Position.X < Partt1.Position.X
or a.Part8.Position.Y +(1.9) < Partt1.Position.Y 
or a.Part8.Position.Y -(1.9) > Partt1.Position.Y 
or a.Part8.Position.Z +(1.9) < Partt1.Position.Z 
or a.Part8.Position.Z -(1.9) > Partt1.Position.Z 
then
if a.Part8.Position.X - 2.5 > Partt2.Position.X
or a.Part8.Position.X < Partt2.Position.X
or a.Part8.Position.Y +(1.9) < Partt2.Position.Y 
or a.Part8.Position.Y -(1.9) > Partt2.Position.Y 
or a.Part8.Position.Z +(1.9) < Partt2.Position.Z 
or a.Part8.Position.Z -(1.9) > Partt2.Position.Z 
then
if a.Part8.Position.X - 2.5 > Partt3.Position.X
or a.Part8.Position.X < Partt3.Position.X
or a.Part8.Position.Y +(1.9) < Partt3.Position.Y 
or a.Part8.Position.Y -(1.9) > Partt3.Position.Y 
or a.Part8.Position.Z +(1.9) < Partt3.Position.Z 
or a.Part8.Position.Z -(1.9) > Partt3.Position.Z 
then
if a.Part8.Position.X - 2.5 > Partt4.Position.X
or a.Part8.Position.X < Partt4.Position.X
or a.Part8.Position.Y +(1.9) < Partt4.Position.Y 
or a.Part8.Position.Y -(1.9) > Partt4.Position.Y 
or a.Part8.Position.Z +(1.9) < Partt4.Position.Z 
or a.Part8.Position.Z -(1.9) > Partt4.Position.Z 
then
if a.Part8.Position.X - 2.5 > Partt5.Position.X
or a.Part8.Position.X < Partt5.Position.X
or a.Part8.Position.Y +(1.9) < Partt5.Position.Y 
or a.Part8.Position.Y -(1.9) > Partt5.Position.Y 
or a.Part8.Position.Z +(1.9) < Partt5.Position.Z 
or a.Part8.Position.Z -(1.9) > Partt5.Position.Z 
then
if a.Part8.Position.X - 2.5 > Partt6.Position.X
or a.Part8.Position.X < Partt6.Position.X
or a.Part8.Position.Y +(1.9) < Partt6.Position.Y 
or a.Part8.Position.Y -(1.9) > Partt6.Position.Y 
or a.Part8.Position.Z +(1.9) < Partt6.Position.Z 
or a.Part8.Position.Z -(1.9) > Partt6.Position.Z 
then
if a.Part8.Position.X - 2.5 > Partt7.Position.X
or a.Part8.Position.X < Partt7.Position.X
or a.Part8.Position.Y +(1.9) < Partt7.Position.Y 
or a.Part8.Position.Y -(1.9) > Partt7.Position.Y 
or a.Part8.Position.Z +(1.9) < Partt7.Position.Z 
or a.Part8.Position.Z -(1.9) > Partt7.Position.Z 
then
xnePart8 = 1
else xnePart8 = 0 
end
else xnePart8 = 0
end
else xnePart8 = 0
end
else xnePart8 = 0
end
else xnePart8 = 0
end
else xnePart8 = 0
end
else xnePart8 = 0
end

if a.Part8.Position.Y + 2.5 < Partt1.Position.Y -- P1 +Y Positions Library Reference
or a.Part8.Position.Y > Partt1.Position.Y
or a.Part8.Position.X +(1.9) < Partt1.Position.X 
or a.Part8.Position.X -(1.9) > Partt1.Position.X 
or a.Part8.Position.Z +(1.9) < Partt1.Position.Z 
or a.Part8.Position.Z -(1.9) > Partt1.Position.Z 
then
if a.Part8.Position.Y + 2.5 < Partt2.Position.Y
or a.Part8.Position.Y > Partt2.Position.Y
or a.Part8.Position.X +(1.9) < Partt2.Position.X 
or a.Part8.Position.X -(1.9) > Partt2.Position.X 
or a.Part8.Position.Z +(1.9) < Partt2.Position.Z 
or a.Part8.Position.Z -(1.9) > Partt2.Position.Z 
then
if a.Part8.Position.Y + 2.5 < Partt3.Position.Y
or a.Part8.Position.Y > Partt3.Position.Y
or a.Part8.Position.X +(1.9) < Partt3.Position.X 
or a.Part8.Position.X -(1.9) > Partt3.Position.X 
or a.Part8.Position.Z +(1.9) < Partt3.Position.Z 
or a.Part8.Position.Z -(1.9) > Partt3.Position.Z 
then
if a.Part8.Position.Y + 2.5 < Partt4.Position.Y
or a.Part8.Position.Y > Partt4.Position.Y
or a.Part8.Position.X +(1.9) < Partt4.Position.X 
or a.Part8.Position.X -(1.9) > Partt4.Position.X 
or a.Part8.Position.Z +(1.9) < Partt4.Position.Z 
or a.Part8.Position.Z -(1.9) > Partt4.Position.Z 
then
if a.Part8.Position.Y + 2.5 < Partt5.Position.Y
or a.Part8.Position.Y > Partt5.Position.Y
or a.Part8.Position.X +(1.9) < Partt5.Position.X 
or a.Part8.Position.X -(1.9) > Partt5.Position.X 
or a.Part8.Position.Z +(1.9) < Partt5.Position.Z 
or a.Part8.Position.Z -(1.9) > Partt5.Position.Z 
then
if a.Part8.Position.Y + 2.5 < Partt6.Position.Y
or a.Part8.Position.Y > Partt6.Position.Y
or a.Part8.Position.X +(1.9) < Partt6.Position.X 
or a.Part8.Position.X -(1.9) > Partt6.Position.X 
or a.Part8.Position.Z +(1.9) < Partt6.Position.Z 
or a.Part8.Position.Z -(1.9) > Partt6.Position.Z 
then
if a.Part8.Position.Y + 2.5 < Partt7.Position.Y
or a.Part8.Position.Y > Partt7.Position.Y
or a.Part8.Position.X +(1.9) < Partt7.Position.X 
or a.Part8.Position.X -(1.9) > Partt7.Position.X 
or a.Part8.Position.Z +(1.9) < Partt7.Position.Z 
or a.Part8.Position.Z -(1.9) > Partt7.Position.Z 
then
ypoPart8 = 1
else ypoPart8 = 0 
end
else ypoPart8 = 0
end
else ypoPart8 = 0
end
else ypoPart8 = 0
end
else ypoPart8 = 0
end
else ypoPart8 = 0
end
else ypoPart8 = 0
end

if a.Part8.Position.Y - 2.5 > Partt1.Position.Y -- P1 -Y Positions Library Reference
or a.Part8.Position.Y < Partt1.Position.Y
or a.Part8.Position.X +(1.9) < Partt1.Position.X 
or a.Part8.Position.X -(1.9) > Partt1.Position.X 
or a.Part8.Position.Z +(1.9) < Partt1.Position.Z 
or a.Part8.Position.Z -(1.9) > Partt1.Position.Z 
then
if a.Part8.Position.Y - 2.5 > Partt2.Position.Y
or a.Part8.Position.Y < Partt2.Position.Y
or a.Part8.Position.X +(1.9) < Partt2.Position.X 
or a.Part8.Position.X -(1.9) > Partt2.Position.X 
or a.Part8.Position.Z +(1.9) < Partt2.Position.Z 
or a.Part8.Position.Z -(1.9) > Partt2.Position.Z 
then
if a.Part8.Position.Y - 2.5 > Partt3.Position.Y
or a.Part8.Position.Y < Partt3.Position.Y
or a.Part8.Position.X +(1.9) < Partt3.Position.X 
or a.Part8.Position.X -(1.9) > Partt3.Position.X 
or a.Part8.Position.Z +(1.9) < Partt3.Position.Z 
or a.Part8.Position.Z -(1.9) > Partt3.Position.Z 
then
if a.Part8.Position.Y - 2.5 > Partt4.Position.Y
or a.Part8.Position.Y < Partt4.Position.Y
or a.Part8.Position.X +(1.9) < Partt4.Position.X 
or a.Part8.Position.X -(1.9) > Partt4.Position.X 
or a.Part8.Position.Z +(1.9) < Partt4.Position.Z 
or a.Part8.Position.Z -(1.9) > Partt4.Position.Z 
then
if a.Part8.Position.Y - 2.5 > Partt5.Position.Y
or a.Part8.Position.Y < Partt5.Position.Y
or a.Part8.Position.X +(1.9) < Partt5.Position.X 
or a.Part8.Position.X -(1.9) > Partt5.Position.X 
or a.Part8.Position.Z +(1.9) < Partt5.Position.Z 
or a.Part8.Position.Z -(1.9) > Partt5.Position.Z 
then
if a.Part8.Position.Y - 2.5 > Partt6.Position.Y
or a.Part8.Position.Y < Partt6.Position.Y
or a.Part8.Position.X +(1.9) < Partt6.Position.X 
or a.Part8.Position.X -(1.9) > Partt6.Position.X 
or a.Part8.Position.Z +(1.9) < Partt6.Position.Z 
or a.Part8.Position.Z -(1.9) > Partt6.Position.Z 
then
if a.Part8.Position.Y - 2.5 > Partt7.Position.Y
or a.Part8.Position.Y < Partt7.Position.Y
or a.Part8.Position.X +(1.9) < Partt7.Position.X 
or a.Part8.Position.X -(1.9) > Partt7.Position.X 
or a.Part8.Position.Z +(1.9) < Partt7.Position.Z 
or a.Part8.Position.Z -(1.9) > Partt7.Position.Z 
then
ynePart8 = 1
else ynePart8 = 0 
end
else ynePart8 = 0
end
else ynePart8 = 0
end
else ynePart8 = 0
end
else ynePart8 = 0
end
else ynePart8 = 0
end
else ynePart8 = 0
end

if a.Part8.Position.Z + 2.5 < Partt1.Position.Z -- P1 +Z Positions Library Reference
or a.Part8.Position.Z > Partt1.Position.Z
or a.Part8.Position.X +(1.9) < Partt1.Position.X 
or a.Part8.Position.X -(1.9) > Partt1.Position.X 
or a.Part8.Position.Y +(1.9) < Partt1.Position.Y 
or a.Part8.Position.Y -(1.9) > Partt1.Position.Y 
then
if a.Part8.Position.Z + 2.5 < Partt2.Position.Z
or a.Part8.Position.Z > Partt2.Position.Z
or a.Part8.Position.X +(1.9) < Partt2.Position.X 
or a.Part8.Position.X -(1.9) > Partt2.Position.X 
or a.Part8.Position.Y +(1.9) < Partt2.Position.Y 
or a.Part8.Position.Y -(1.9) > Partt2.Position.Y 
then
if a.Part8.Position.Z + 2.5 < Partt3.Position.Z
or a.Part8.Position.Z > Partt3.Position.Z
or a.Part8.Position.X +(1.9) < Partt3.Position.X 
or a.Part8.Position.X -(1.9) > Partt3.Position.X 
or a.Part8.Position.Y +(1.9) < Partt3.Position.Y 
or a.Part8.Position.Y -(1.9) > Partt3.Position.Y 
then
if a.Part8.Position.Z + 2.5 < Partt4.Position.Z
or a.Part8.Position.Z > Partt4.Position.Z
or a.Part8.Position.X +(1.9) < Partt4.Position.X 
or a.Part8.Position.X -(1.9) > Partt4.Position.X 
or a.Part8.Position.Y +(1.9) < Partt4.Position.Y 
or a.Part8.Position.Y -(1.9) > Partt4.Position.Y 
then
if a.Part8.Position.Z + 2.5 < Partt5.Position.Z
or a.Part8.Position.Z > Partt5.Position.Z
or a.Part8.Position.X +(1.9) < Partt5.Position.X 
or a.Part8.Position.X -(1.9) > Partt5.Position.X 
or a.Part8.Position.Y +(1.9) < Partt5.Position.Y 
or a.Part8.Position.Y -(1.9) > Partt5.Position.Y 
then
if a.Part8.Position.Z + 2.5 < Partt6.Position.Z
or a.Part8.Position.Z > Partt6.Position.Z
or a.Part8.Position.X +(1.9) < Partt6.Position.X 
or a.Part8.Position.X -(1.9) > Partt6.Position.X 
or a.Part8.Position.Y +(1.9) < Partt6.Position.Y 
or a.Part8.Position.Y -(1.9) > Partt6.Position.Y 
then
if a.Part8.Position.Z + 2.5 < Partt7.Position.Z
or a.Part8.Position.Z > Partt7.Position.Z
or a.Part8.Position.X +(1.9) < Partt7.Position.X 
or a.Part8.Position.X -(1.9) > Partt7.Position.X 
or a.Part8.Position.Y +(1.9) < Partt7.Position.Y 
or a.Part8.Position.Y -(1.9) > Partt7.Position.Y 
then
zpoPart8 = 1
else zpoPart8 = 0 
end
else zpoPart8 = 0
end
else zpoPart8 = 0
end
else zpoPart8 = 0
end
else zpoPart8 = 0
end
else zpoPart8 = 0
end
else zpoPart8 = 0
end

if a.Part8.Position.Z - 2.5 > Partt1.Position.Z -- P1 -Z Positions Library Reference
or a.Part8.Position.Z < Partt1.Position.Z
or a.Part8.Position.X +(1.9) < Partt1.Position.X 
or a.Part8.Position.X -(1.9) > Partt1.Position.X 
or a.Part8.Position.Y +(1.9) < Partt1.Position.Y 
or a.Part8.Position.Y -(1.9) > Partt1.Position.Y 
then
if a.Part8.Position.Z - 2.5 > Partt2.Position.Z
or a.Part8.Position.Z < Partt2.Position.Z
or a.Part8.Position.X +(1.9) < Partt2.Position.X 
or a.Part8.Position.X -(1.9) > Partt2.Position.X 
or a.Part8.Position.Y +(1.9) < Partt2.Position.Y 
or a.Part8.Position.Y -(1.9) > Partt2.Position.Y 
then
if a.Part8.Position.Z - 2.5 > Partt3.Position.Z
or a.Part8.Position.Z < Partt3.Position.Z
or a.Part8.Position.X +(1.9) < Partt3.Position.X 
or a.Part8.Position.X -(1.9) > Partt3.Position.X 
or a.Part8.Position.Y +(1.9) < Partt3.Position.Y 
or a.Part8.Position.Y -(1.9) > Partt3.Position.Y 
then
if a.Part8.Position.Z - 2.5 > Partt4.Position.Z
or a.Part8.Position.Z < Partt4.Position.Z
or a.Part8.Position.X +(1.9) < Partt4.Position.X 
or a.Part8.Position.X -(1.9) > Partt4.Position.X 
or a.Part8.Position.Y +(1.9) < Partt4.Position.Y 
or a.Part8.Position.Y -(1.9) > Partt4.Position.Y 
then
if a.Part8.Position.Z - 2.5 > Partt5.Position.Z
or a.Part8.Position.Z < Partt5.Position.Z
or a.Part8.Position.X +(1.9) < Partt5.Position.X 
or a.Part8.Position.X -(1.9) > Partt5.Position.X 
or a.Part8.Position.Y +(1.9) < Partt5.Position.Y 
or a.Part8.Position.Y -(1.9) > Partt5.Position.Y 
then
if a.Part8.Position.Z - 2.5 > Partt6.Position.Z
or a.Part8.Position.Z < Partt6.Position.Z
or a.Part8.Position.X +(1.9) < Partt6.Position.X 
or a.Part8.Position.X -(1.9) > Partt6.Position.X 
or a.Part8.Position.Y +(1.9) < Partt6.Position.Y 
or a.Part8.Position.Y -(1.9) > Partt6.Position.Y 
then
if a.Part8.Position.Z - 2.5 > Partt7.Position.Z
or a.Part8.Position.Z < Partt7.Position.Z
or a.Part8.Position.X +(1.9) < Partt7.Position.X 
or a.Part8.Position.X -(1.9) > Partt7.Position.X 
or a.Part8.Position.Y +(1.9) < Partt7.Position.Y 
or a.Part8.Position.Y -(1.9) > Partt7.Position.Y 
then
znePart8 = 1
else znePart8 = 0 
end
else znePart8 = 0
end
else znePart8 = 0
end
else znePart8 = 0
end
else znePart8 = 0
end
else znePart8 = 0
end
else znePart8 = 0
end

if PriPart8 == 1
and XPart8 == 1
then	
if xpoPart8 == 1
then
for i=1, 10 do
a.Part8.CFrame = a.Part8.CFrame +(Vector3.new(XPart8/10,0,0))
wait(.01)
end
else PriPart8 = (PriPart8+1)
end
else end

if PriPart8 == 1
and XPart8 == -1
then	
if xnePart8 == 1
then
for i=1, 10 do
a.Part8.CFrame = a.Part8.CFrame +(Vector3.new(XPart8/10,0,0))
wait(.01)
end
else PriPart8 = (PriPart8+1)
end
else end

if PriPart8 == 2
and YPart8 == 1
then	
if ypoPart8 == 1
then
for i=1, 10 do
a.Part8.CFrame = a.Part8.CFrame +(Vector3.new(0,YPart8/10,0))
wait(.01)
end
else PriPart8 = (PriPart8+1)
end
else end

if PriPart8 == 2
and YPart8 == -1
then	
if ynePart8 == 1
then
for i=1, 10 do
a.Part8.CFrame = a.Part8.CFrame +(Vector3.new(0,YPart8/10,0))
wait(.01)
end
else PriPart8 = (PriPart8+1)
end
else end

if PriPart8 == 3
and ZPart8 == 1
then	
if zpoPart8 == 1
then
for i=1, 10 do
a.Part8.CFrame = a.Part8.CFrame +(Vector3.new(0,0,ZPart8/10))
wait(.01)
end
else PriPart8 = (PriPart8+1)
end
else end

if PriPart8 == 3
and ZPart8 == -1
then	
if znePart8 == 1
then
for i=1, 10 do
a.Part8.CFrame = a.Part8.CFrame +(Vector3.new(0,0,ZPart8/10))
wait(.01)
end
else PriPart8 = (PriPart8+1)
end
else end




sPart8 =(sPart8+1) --Checking reconfiguring positions

if sPart8 == 1
then
XSPart8 = a.Part8.Position.X
YSPart8 = a.Part8.Position.Y
ZSPart8 = a.Part8.Position.Z
else end

if sPart8 == 3 --Checking if Part is Valid for Instant Fix
and XSPart8 == a.Part8.Position.X
and YSPart8 == a.Part8.Position.Y
and ZSPart8 == a.Part8.Position.Z
and a.Part8.Position.X < cPart8.Position.X +4
and a.Part8.Position.X > cPart8.Position.X -4
and a.Part8.Position.Y < cPart8.Position.Y +4
and a.Part8.Position.Y > cPart8.Position.Y -4
and a.Part8.Position.Z < cPart8.Position.Z +4
and a.Part8.Position.Z > cPart8.Position.Z -4
then
for i=1, 20 do
a.Part8.CFrame = a.Part8.CFrame +(Vector3.new((cPart8.Position.X-XSPart8)/20,(cPart8.Position.Y-YSPart8)/20,(cPart8.Position.Z-ZSPart8)/20))
wait(.01)
end
else end

if sPart8 == 3
and RPart8 == 1 --Checking +X Reconfiguration
then
if  XSPart8 == a.Part8.Position.X
and YSPart8 == a.Part8.Position.Y
and ZSPart8 == a.Part8.Position.Z
then
-- "Reconfiguring"
RPart8 = (RPart8+1)
repeat
if a.Part8.Position.X + 2.5 < Partt1.Position.X -- P1 +X Positions Library Reference
or a.Part8.Position.X > Partt1.Position.X
or a.Part8.Position.Y +(1.9) < Partt1.Position.Y 
or a.Part8.Position.Y -(1.9) > Partt1.Position.Y 
or a.Part8.Position.Z +(1.9) < Partt1.Position.Z 
or a.Part8.Position.Z -(1.9) > Partt1.Position.Z 
then
if a.Part8.Position.X + 2.5 < Partt2.Position.X
or a.Part8.Position.X > Partt2.Position.X
or a.Part8.Position.Y +(1.9) < Partt2.Position.Y 
or a.Part8.Position.Y -(1.9) > Partt2.Position.Y 
or a.Part8.Position.Z +(1.9) < Partt2.Position.Z 
or a.Part8.Position.Z -(1.9) > Partt2.Position.Z 
then
if a.Part8.Position.X + 2.5 < Partt3.Position.X
or a.Part8.Position.X > Partt3.Position.X
or a.Part8.Position.Y +(1.9) < Partt3.Position.Y 
or a.Part8.Position.Y -(1.9) > Partt3.Position.Y 
or a.Part8.Position.Z +(1.9) < Partt3.Position.Z 
or a.Part8.Position.Z -(1.9) > Partt3.Position.Z 
then
if a.Part8.Position.X + 2.5 < Partt4.Position.X
or a.Part8.Position.X > Partt4.Position.X
or a.Part8.Position.Y +(1.9) < Partt4.Position.Y 
or a.Part8.Position.Y -(1.9) > Partt4.Position.Y 
or a.Part8.Position.Z +(1.9) < Partt4.Position.Z 
or a.Part8.Position.Z -(1.9) > Partt4.Position.Z 
then
if a.Part8.Position.X + 2.5 < Partt5.Position.X
or a.Part8.Position.X > Partt5.Position.X
or a.Part8.Position.Y +(1.9) < Partt5.Position.Y 
or a.Part8.Position.Y -(1.9) > Partt5.Position.Y 
or a.Part8.Position.Z +(1.9) < Partt5.Position.Z 
or a.Part8.Position.Z -(1.9) > Partt5.Position.Z 
then
if a.Part8.Position.X + 2.5 < Partt6.Position.X
or a.Part8.Position.X > Partt6.Position.X
or a.Part8.Position.Y +(1.9) < Partt6.Position.Y 
or a.Part8.Position.Y -(1.9) > Partt6.Position.Y 
or a.Part8.Position.Z +(1.9) < Partt6.Position.Z 
or a.Part8.Position.Z -(1.9) > Partt6.Position.Z 
then
if a.Part8.Position.X + 2.5 < Partt7.Position.X
or a.Part8.Position.X > Partt7.Position.X
or a.Part8.Position.Y +(1.9) < Partt7.Position.Y 
or a.Part8.Position.Y -(1.9) > Partt7.Position.Y 
or a.Part8.Position.Z +(1.9) < Partt7.Position.Z 
or a.Part8.Position.Z -(1.9) > Partt7.Position.Z 
then
xpoPart8 = 1
else xpoPart8 = 0 
end
else xpoPart8 = 0
end
else xpoPart8 = 0
end
else xpoPart8 = 0
end
else xpoPart8 = 0
end
else xpoPart8 = 0
end
else xpoPart8 = 0
end

if a.Part8.Position.X - 2.5 > Partt1.Position.X -- P1 -X Positions Library Reference
or a.Part8.Position.X < Partt1.Position.X
or a.Part8.Position.Y +(1.9) < Partt1.Position.Y 
or a.Part8.Position.Y -(1.9) > Partt1.Position.Y 
or a.Part8.Position.Z +(1.9) < Partt1.Position.Z 
or a.Part8.Position.Z -(1.9) > Partt1.Position.Z 
then
if a.Part8.Position.X - 2.5 > Partt2.Position.X
or a.Part8.Position.X < Partt2.Position.X
or a.Part8.Position.Y +(1.9) < Partt2.Position.Y 
or a.Part8.Position.Y -(1.9) > Partt2.Position.Y 
or a.Part8.Position.Z +(1.9) < Partt2.Position.Z 
or a.Part8.Position.Z -(1.9) > Partt2.Position.Z 
then
if a.Part8.Position.X - 2.5 > Partt3.Position.X
or a.Part8.Position.X < Partt3.Position.X
or a.Part8.Position.Y +(1.9) < Partt3.Position.Y 
or a.Part8.Position.Y -(1.9) > Partt3.Position.Y 
or a.Part8.Position.Z +(1.9) < Partt3.Position.Z 
or a.Part8.Position.Z -(1.9) > Partt3.Position.Z 
then
if a.Part8.Position.X - 2.5 > Partt4.Position.X
or a.Part8.Position.X < Partt4.Position.X
or a.Part8.Position.Y +(1.9) < Partt4.Position.Y 
or a.Part8.Position.Y -(1.9) > Partt4.Position.Y 
or a.Part8.Position.Z +(1.9) < Partt4.Position.Z 
or a.Part8.Position.Z -(1.9) > Partt4.Position.Z 
then
if a.Part8.Position.X - 2.5 > Partt5.Position.X
or a.Part8.Position.X < Partt5.Position.X
or a.Part8.Position.Y +(1.9) < Partt5.Position.Y 
or a.Part8.Position.Y -(1.9) > Partt5.Position.Y 
or a.Part8.Position.Z +(1.9) < Partt5.Position.Z 
or a.Part8.Position.Z -(1.9) > Partt5.Position.Z 
then
if a.Part8.Position.X - 2.5 > Partt6.Position.X
or a.Part8.Position.X < Partt6.Position.X
or a.Part8.Position.Y +(1.9) < Partt6.Position.Y 
or a.Part8.Position.Y -(1.9) > Partt6.Position.Y 
or a.Part8.Position.Z +(1.9) < Partt6.Position.Z 
or a.Part8.Position.Z -(1.9) > Partt6.Position.Z 
then
if a.Part8.Position.X - 2.5 > Partt7.Position.X
or a.Part8.Position.X < Partt7.Position.X
or a.Part8.Position.Y +(1.9) < Partt7.Position.Y 
or a.Part8.Position.Y -(1.9) > Partt7.Position.Y 
or a.Part8.Position.Z +(1.9) < Partt7.Position.Z 
or a.Part8.Position.Z -(1.9) > Partt7.Position.Z 
then
xnePart8 = 1
else xnePart8 = 0 
end
else xnePart8 = 0
end
else xnePart8 = 0
end
else xnePart8 = 0
end
else xnePart8 = 0
end
else xnePart8 = 0
end
else xnePart8 = 0
end

if a.Part8.Position.Y + 2.5 < Partt1.Position.Y -- P1 +Y Positions Library Reference
or a.Part8.Position.Y > Partt1.Position.Y
or a.Part8.Position.X +(1.9) < Partt1.Position.X 
or a.Part8.Position.X -(1.9) > Partt1.Position.X 
or a.Part8.Position.Z +(1.9) < Partt1.Position.Z 
or a.Part8.Position.Z -(1.9) > Partt1.Position.Z 
then
if a.Part8.Position.Y + 2.5 < Partt2.Position.Y
or a.Part8.Position.Y > Partt2.Position.Y
or a.Part8.Position.X +(1.9) < Partt2.Position.X 
or a.Part8.Position.X -(1.9) > Partt2.Position.X 
or a.Part8.Position.Z +(1.9) < Partt2.Position.Z 
or a.Part8.Position.Z -(1.9) > Partt2.Position.Z 
then
if a.Part8.Position.Y + 2.5 < Partt3.Position.Y
or a.Part8.Position.Y > Partt3.Position.Y
or a.Part8.Position.X +(1.9) < Partt3.Position.X 
or a.Part8.Position.X -(1.9) > Partt3.Position.X 
or a.Part8.Position.Z +(1.9) < Partt3.Position.Z 
or a.Part8.Position.Z -(1.9) > Partt3.Position.Z 
then
if a.Part8.Position.Y + 2.5 < Partt4.Position.Y
or a.Part8.Position.Y > Partt4.Position.Y
or a.Part8.Position.X +(1.9) < Partt4.Position.X 
or a.Part8.Position.X -(1.9) > Partt4.Position.X 
or a.Part8.Position.Z +(1.9) < Partt4.Position.Z 
or a.Part8.Position.Z -(1.9) > Partt4.Position.Z 
then
if a.Part8.Position.Y + 2.5 < Partt5.Position.Y
or a.Part8.Position.Y > Partt5.Position.Y
or a.Part8.Position.X +(1.9) < Partt5.Position.X 
or a.Part8.Position.X -(1.9) > Partt5.Position.X 
or a.Part8.Position.Z +(1.9) < Partt5.Position.Z 
or a.Part8.Position.Z -(1.9) > Partt5.Position.Z 
then
if a.Part8.Position.Y + 2.5 < Partt6.Position.Y
or a.Part8.Position.Y > Partt6.Position.Y
or a.Part8.Position.X +(1.9) < Partt6.Position.X 
or a.Part8.Position.X -(1.9) > Partt6.Position.X 
or a.Part8.Position.Z +(1.9) < Partt6.Position.Z 
or a.Part8.Position.Z -(1.9) > Partt6.Position.Z 
then
if a.Part8.Position.Y + 2.5 < Partt7.Position.Y
or a.Part8.Position.Y > Partt7.Position.Y
or a.Part8.Position.X +(1.9) < Partt7.Position.X 
or a.Part8.Position.X -(1.9) > Partt7.Position.X 
or a.Part8.Position.Z +(1.9) < Partt7.Position.Z 
or a.Part8.Position.Z -(1.9) > Partt7.Position.Z 
then
ypoPart8 = 1
else ypoPart8 = 0 
end
else ypoPart8 = 0
end
else ypoPart8 = 0
end
else ypoPart8 = 0
end
else ypoPart8 = 0
end
else ypoPart8 = 0
end
else ypoPart8 = 0
end

if a.Part8.Position.Y - 2.5 > Partt1.Position.Y -- P1 -Y Positions Library Reference
or a.Part8.Position.Y < Partt1.Position.Y
or a.Part8.Position.X +(1.9) < Partt1.Position.X 
or a.Part8.Position.X -(1.9) > Partt1.Position.X 
or a.Part8.Position.Z +(1.9) < Partt1.Position.Z 
or a.Part8.Position.Z -(1.9) > Partt1.Position.Z 
then
if a.Part8.Position.Y - 2.5 > Partt2.Position.Y
or a.Part8.Position.Y < Partt2.Position.Y
or a.Part8.Position.X +(1.9) < Partt2.Position.X 
or a.Part8.Position.X -(1.9) > Partt2.Position.X 
or a.Part8.Position.Z +(1.9) < Partt2.Position.Z 
or a.Part8.Position.Z -(1.9) > Partt2.Position.Z 
then
if a.Part8.Position.Y - 2.5 > Partt3.Position.Y
or a.Part8.Position.Y < Partt3.Position.Y
or a.Part8.Position.X +(1.9) < Partt3.Position.X 
or a.Part8.Position.X -(1.9) > Partt3.Position.X 
or a.Part8.Position.Z +(1.9) < Partt3.Position.Z 
or a.Part8.Position.Z -(1.9) > Partt3.Position.Z 
then
if a.Part8.Position.Y - 2.5 > Partt4.Position.Y
or a.Part8.Position.Y < Partt4.Position.Y
or a.Part8.Position.X +(1.9) < Partt4.Position.X 
or a.Part8.Position.X -(1.9) > Partt4.Position.X 
or a.Part8.Position.Z +(1.9) < Partt4.Position.Z 
or a.Part8.Position.Z -(1.9) > Partt4.Position.Z 
then
if a.Part8.Position.Y - 2.5 > Partt5.Position.Y
or a.Part8.Position.Y < Partt5.Position.Y
or a.Part8.Position.X +(1.9) < Partt5.Position.X 
or a.Part8.Position.X -(1.9) > Partt5.Position.X 
or a.Part8.Position.Z +(1.9) < Partt5.Position.Z 
or a.Part8.Position.Z -(1.9) > Partt5.Position.Z 
then
if a.Part8.Position.Y - 2.5 > Partt6.Position.Y
or a.Part8.Position.Y < Partt6.Position.Y
or a.Part8.Position.X +(1.9) < Partt6.Position.X 
or a.Part8.Position.X -(1.9) > Partt6.Position.X 
or a.Part8.Position.Z +(1.9) < Partt6.Position.Z 
or a.Part8.Position.Z -(1.9) > Partt6.Position.Z 
then
if a.Part8.Position.Y - 2.5 > Partt7.Position.Y
or a.Part8.Position.Y < Partt7.Position.Y
or a.Part8.Position.X +(1.9) < Partt7.Position.X 
or a.Part8.Position.X -(1.9) > Partt7.Position.X 
or a.Part8.Position.Z +(1.9) < Partt7.Position.Z 
or a.Part8.Position.Z -(1.9) > Partt7.Position.Z 
then
ynePart8 = 1
else ynePart8 = 0 
end
else ynePart8 = 0
end
else ynePart8 = 0
end
else ynePart8 = 0
end
else ynePart8 = 0
end
else ynePart8 = 0
end
else ynePart8 = 0
end

if a.Part8.Position.Z + 2.5 < Partt1.Position.Z -- P1 +Z Positions Library Reference
or a.Part8.Position.Z > Partt1.Position.Z
or a.Part8.Position.X +(1.9) < Partt1.Position.X 
or a.Part8.Position.X -(1.9) > Partt1.Position.X 
or a.Part8.Position.Y +(1.9) < Partt1.Position.Y 
or a.Part8.Position.Y -(1.9) > Partt1.Position.Y 
then
if a.Part8.Position.Z + 2.5 < Partt2.Position.Z
or a.Part8.Position.Z > Partt2.Position.Z
or a.Part8.Position.X +(1.9) < Partt2.Position.X 
or a.Part8.Position.X -(1.9) > Partt2.Position.X 
or a.Part8.Position.Y +(1.9) < Partt2.Position.Y 
or a.Part8.Position.Y -(1.9) > Partt2.Position.Y 
then
if a.Part8.Position.Z + 2.5 < Partt3.Position.Z
or a.Part8.Position.Z > Partt3.Position.Z
or a.Part8.Position.X +(1.9) < Partt3.Position.X 
or a.Part8.Position.X -(1.9) > Partt3.Position.X 
or a.Part8.Position.Y +(1.9) < Partt3.Position.Y 
or a.Part8.Position.Y -(1.9) > Partt3.Position.Y 
then
if a.Part8.Position.Z + 2.5 < Partt4.Position.Z
or a.Part8.Position.Z > Partt4.Position.Z
or a.Part8.Position.X +(1.9) < Partt4.Position.X 
or a.Part8.Position.X -(1.9) > Partt4.Position.X 
or a.Part8.Position.Y +(1.9) < Partt4.Position.Y 
or a.Part8.Position.Y -(1.9) > Partt4.Position.Y 
then
if a.Part8.Position.Z + 2.5 < Partt5.Position.Z
or a.Part8.Position.Z > Partt5.Position.Z
or a.Part8.Position.X +(1.9) < Partt5.Position.X 
or a.Part8.Position.X -(1.9) > Partt5.Position.X 
or a.Part8.Position.Y +(1.9) < Partt5.Position.Y 
or a.Part8.Position.Y -(1.9) > Partt5.Position.Y 
then
if a.Part8.Position.Z + 2.5 < Partt6.Position.Z
or a.Part8.Position.Z > Partt6.Position.Z
or a.Part8.Position.X +(1.9) < Partt6.Position.X 
or a.Part8.Position.X -(1.9) > Partt6.Position.X 
or a.Part8.Position.Y +(1.9) < Partt6.Position.Y 
or a.Part8.Position.Y -(1.9) > Partt6.Position.Y 
then
if a.Part8.Position.Z + 2.5 < Partt7.Position.Z
or a.Part8.Position.Z > Partt7.Position.Z
or a.Part8.Position.X +(1.9) < Partt7.Position.X 
or a.Part8.Position.X -(1.9) > Partt7.Position.X 
or a.Part8.Position.Y +(1.9) < Partt7.Position.Y 
or a.Part8.Position.Y -(1.9) > Partt7.Position.Y 
then
zpoPart8 = 1
else zpoPart8 = 0 
end
else zpoPart8 = 0
end
else zpoPart8 = 0
end
else zpoPart8 = 0
end
else zpoPart8 = 0
end
else zpoPart8 = 0
end
else zpoPart8 = 0
end

if a.Part8.Position.Z - 2.5 > Partt1.Position.Z -- P1 -Z Positions Library Reference
or a.Part8.Position.Z < Partt1.Position.Z
or a.Part8.Position.X +(1.9) < Partt1.Position.X 
or a.Part8.Position.X -(1.9) > Partt1.Position.X 
or a.Part8.Position.Y +(1.9) < Partt1.Position.Y 
or a.Part8.Position.Y -(1.9) > Partt1.Position.Y 
then
if a.Part8.Position.Z - 2.5 > Partt2.Position.Z
or a.Part8.Position.Z < Partt2.Position.Z
or a.Part8.Position.X +(1.9) < Partt2.Position.X 
or a.Part8.Position.X -(1.9) > Partt2.Position.X 
or a.Part8.Position.Y +(1.9) < Partt2.Position.Y 
or a.Part8.Position.Y -(1.9) > Partt2.Position.Y 
then
if a.Part8.Position.Z - 2.5 > Partt3.Position.Z
or a.Part8.Position.Z < Partt3.Position.Z
or a.Part8.Position.X +(1.9) < Partt3.Position.X 
or a.Part8.Position.X -(1.9) > Partt3.Position.X 
or a.Part8.Position.Y +(1.9) < Partt3.Position.Y 
or a.Part8.Position.Y -(1.9) > Partt3.Position.Y 
then
if a.Part8.Position.Z - 2.5 > Partt4.Position.Z
or a.Part8.Position.Z < Partt4.Position.Z
or a.Part8.Position.X +(1.9) < Partt4.Position.X 
or a.Part8.Position.X -(1.9) > Partt4.Position.X 
or a.Part8.Position.Y +(1.9) < Partt4.Position.Y 
or a.Part8.Position.Y -(1.9) > Partt4.Position.Y 
then
if a.Part8.Position.Z - 2.5 > Partt5.Position.Z
or a.Part8.Position.Z < Partt5.Position.Z
or a.Part8.Position.X +(1.9) < Partt5.Position.X 
or a.Part8.Position.X -(1.9) > Partt5.Position.X 
or a.Part8.Position.Y +(1.9) < Partt5.Position.Y 
or a.Part8.Position.Y -(1.9) > Partt5.Position.Y 
then
if a.Part8.Position.Z - 2.5 > Partt6.Position.Z
or a.Part8.Position.Z < Partt6.Position.Z
or a.Part8.Position.X +(1.9) < Partt6.Position.X 
or a.Part8.Position.X -(1.9) > Partt6.Position.X 
or a.Part8.Position.Y +(1.9) < Partt6.Position.Y 
or a.Part8.Position.Y -(1.9) > Partt6.Position.Y 
then
if a.Part8.Position.Z - 2.5 > Partt7.Position.Z
or a.Part8.Position.Z < Partt7.Position.Z
or a.Part8.Position.X +(1.9) < Partt7.Position.X 
or a.Part8.Position.X -(1.9) > Partt7.Position.X 
or a.Part8.Position.Y +(1.9) < Partt7.Position.Y 
or a.Part8.Position.Y -(1.9) > Partt7.Position.Y 
then
znePart8 = 1
else znePart8 = 0 
end
else znePart8 = 0
end
else znePart8 = 0
end
else znePart8 = 0
end
else znePart8 = 0
end
else znePart8 = 0
end
else znePart8 = 0
end

PriPart8 = 1 
if PriPart8 == 1
then	
if xpoPart8 == 1
then
for i=1, 10 do
a.Part8.CFrame = a.Part8.CFrame +(Vector3.new(.1,0,0))
wait(.01)
end
else PriPart8 = (PriPart8+1)
end
else end

if PriPart8 == 2
then	
if ypoPart8 == 1
then
for i=1, 10 do
a.Part8.CFrame = a.Part8.CFrame +(Vector3.new(0,.1,0))
wait(.01)
end
else PriPart8 = (PriPart8+1)
end
else end

if PriPart8 == 3
then	
if zpoPart8 == 1
then
for i=1, 10 do
a.Part8.CFrame = a.Part8.CFrame +(Vector3.new(0,0,.1))
wait(.01)
end
else PriPart8 = (PriPart8+1)
end
else end

if PriPart8 == 4
then	
if ynePart8 == 1
then
for i=1, 10 do
a.Part8.CFrame = a.Part8.CFrame +(Vector3.new(0,-.1,0))
wait(.01)
end
else PriPart8 = (PriPart8+1)
end
else end

if PriPart8 == 5
then	
if znePart8 == 1
then
for i=1, 10 do
a.Part8.CFrame = a.Part8.CFrame +(Vector3.new(0,0,-.1))
wait(.01)
end
else PriPart8 = (PriPart8+1)
end
else end
-- (PriPart8)
------------------------------------------------------------------------------
for i=1, 10 do
a.Part8.CFrame = a.Part8.CFrame * CFrame.fromEulerAnglesXYZ(math.pi/20,0,0)
wait(.01)
end
TMPart8 = (TMPart8+1)
until 
math.abs(a.Part8.Position.X - cPart8.Position.X) > 5
or TMPart8 == 7
else end
else end

if sPart8 == 3
and RPart8 == 2 --Checking +X Reconfiguration
then
if  XSPart8 == a.Part8.Position.X
and YSPart8 == a.Part8.Position.Y
and ZSPart8 == a.Part8.Position.Z
then
-- "Reconfiguring"
RPart8 = (RPart8+1)
repeat
if a.Part8.Position.X + 2.5 < Partt1.Position.X -- P1 +X Positions Library Reference
or a.Part8.Position.X > Partt1.Position.X
or a.Part8.Position.Y +(1.9) < Partt1.Position.Y 
or a.Part8.Position.Y -(1.9) > Partt1.Position.Y 
or a.Part8.Position.Z +(1.9) < Partt1.Position.Z 
or a.Part8.Position.Z -(1.9) > Partt1.Position.Z 
then
if a.Part8.Position.X + 2.5 < Partt2.Position.X
or a.Part8.Position.X > Partt2.Position.X
or a.Part8.Position.Y +(1.9) < Partt2.Position.Y 
or a.Part8.Position.Y -(1.9) > Partt2.Position.Y 
or a.Part8.Position.Z +(1.9) < Partt2.Position.Z 
or a.Part8.Position.Z -(1.9) > Partt2.Position.Z 
then
if a.Part8.Position.X + 2.5 < Partt3.Position.X
or a.Part8.Position.X > Partt3.Position.X
or a.Part8.Position.Y +(1.9) < Partt3.Position.Y 
or a.Part8.Position.Y -(1.9) > Partt3.Position.Y 
or a.Part8.Position.Z +(1.9) < Partt3.Position.Z 
or a.Part8.Position.Z -(1.9) > Partt3.Position.Z 
then
if a.Part8.Position.X + 2.5 < Partt4.Position.X
or a.Part8.Position.X > Partt4.Position.X
or a.Part8.Position.Y +(1.9) < Partt4.Position.Y 
or a.Part8.Position.Y -(1.9) > Partt4.Position.Y 
or a.Part8.Position.Z +(1.9) < Partt4.Position.Z 
or a.Part8.Position.Z -(1.9) > Partt4.Position.Z 
then
if a.Part8.Position.X + 2.5 < Partt5.Position.X
or a.Part8.Position.X > Partt5.Position.X
or a.Part8.Position.Y +(1.9) < Partt5.Position.Y 
or a.Part8.Position.Y -(1.9) > Partt5.Position.Y 
or a.Part8.Position.Z +(1.9) < Partt5.Position.Z 
or a.Part8.Position.Z -(1.9) > Partt5.Position.Z 
then
if a.Part8.Position.X + 2.5 < Partt6.Position.X
or a.Part8.Position.X > Partt6.Position.X
or a.Part8.Position.Y +(1.9) < Partt6.Position.Y 
or a.Part8.Position.Y -(1.9) > Partt6.Position.Y 
or a.Part8.Position.Z +(1.9) < Partt6.Position.Z 
or a.Part8.Position.Z -(1.9) > Partt6.Position.Z 
then
if a.Part8.Position.X + 2.5 < Partt7.Position.X
or a.Part8.Position.X > Partt7.Position.X
or a.Part8.Position.Y +(1.9) < Partt7.Position.Y 
or a.Part8.Position.Y -(1.9) > Partt7.Position.Y 
or a.Part8.Position.Z +(1.9) < Partt7.Position.Z 
or a.Part8.Position.Z -(1.9) > Partt7.Position.Z 
then
xpoPart8 = 1
else xpoPart8 = 0 
end
else xpoPart8 = 0
end
else xpoPart8 = 0
end
else xpoPart8 = 0
end
else xpoPart8 = 0
end
else xpoPart8 = 0
end
else xpoPart8 = 0
end

if a.Part8.Position.X - 2.5 > Partt1.Position.X -- P1 -X Positions Library Reference
or a.Part8.Position.X < Partt1.Position.X
or a.Part8.Position.Y +(1.9) < Partt1.Position.Y 
or a.Part8.Position.Y -(1.9) > Partt1.Position.Y 
or a.Part8.Position.Z +(1.9) < Partt1.Position.Z 
or a.Part8.Position.Z -(1.9) > Partt1.Position.Z 
then
if a.Part8.Position.X - 2.5 > Partt2.Position.X
or a.Part8.Position.X < Partt2.Position.X
or a.Part8.Position.Y +(1.9) < Partt2.Position.Y 
or a.Part8.Position.Y -(1.9) > Partt2.Position.Y 
or a.Part8.Position.Z +(1.9) < Partt2.Position.Z 
or a.Part8.Position.Z -(1.9) > Partt2.Position.Z 
then
if a.Part8.Position.X - 2.5 > Partt3.Position.X
or a.Part8.Position.X < Partt3.Position.X
or a.Part8.Position.Y +(1.9) < Partt3.Position.Y 
or a.Part8.Position.Y -(1.9) > Partt3.Position.Y 
or a.Part8.Position.Z +(1.9) < Partt3.Position.Z 
or a.Part8.Position.Z -(1.9) > Partt3.Position.Z 
then
if a.Part8.Position.X - 2.5 > Partt4.Position.X
or a.Part8.Position.X < Partt4.Position.X
or a.Part8.Position.Y +(1.9) < Partt4.Position.Y 
or a.Part8.Position.Y -(1.9) > Partt4.Position.Y 
or a.Part8.Position.Z +(1.9) < Partt4.Position.Z 
or a.Part8.Position.Z -(1.9) > Partt4.Position.Z 
then
if a.Part8.Position.X - 2.5 > Partt5.Position.X
or a.Part8.Position.X < Partt5.Position.X
or a.Part8.Position.Y +(1.9) < Partt5.Position.Y 
or a.Part8.Position.Y -(1.9) > Partt5.Position.Y 
or a.Part8.Position.Z +(1.9) < Partt5.Position.Z 
or a.Part8.Position.Z -(1.9) > Partt5.Position.Z 
then
if a.Part8.Position.X - 2.5 > Partt6.Position.X
or a.Part8.Position.X < Partt6.Position.X
or a.Part8.Position.Y +(1.9) < Partt6.Position.Y 
or a.Part8.Position.Y -(1.9) > Partt6.Position.Y 
or a.Part8.Position.Z +(1.9) < Partt6.Position.Z 
or a.Part8.Position.Z -(1.9) > Partt6.Position.Z 
then
if a.Part8.Position.X - 2.5 > Partt7.Position.X
or a.Part8.Position.X < Partt7.Position.X
or a.Part8.Position.Y +(1.9) < Partt7.Position.Y 
or a.Part8.Position.Y -(1.9) > Partt7.Position.Y 
or a.Part8.Position.Z +(1.9) < Partt7.Position.Z 
or a.Part8.Position.Z -(1.9) > Partt7.Position.Z 
then
xnePart8 = 1
else xnePart8 = 0 
end
else xnePart8 = 0
end
else xnePart8 = 0
end
else xnePart8 = 0
end
else xnePart8 = 0
end
else xnePart8 = 0
end
else xnePart8 = 0
end

if a.Part8.Position.Y + 2.5 < Partt1.Position.Y -- P1 +Y Positions Library Reference
or a.Part8.Position.Y > Partt1.Position.Y
or a.Part8.Position.X +(1.9) < Partt1.Position.X 
or a.Part8.Position.X -(1.9) > Partt1.Position.X 
or a.Part8.Position.Z +(1.9) < Partt1.Position.Z 
or a.Part8.Position.Z -(1.9) > Partt1.Position.Z 
then
if a.Part8.Position.Y + 2.5 < Partt2.Position.Y
or a.Part8.Position.Y > Partt2.Position.Y
or a.Part8.Position.X +(1.9) < Partt2.Position.X 
or a.Part8.Position.X -(1.9) > Partt2.Position.X 
or a.Part8.Position.Z +(1.9) < Partt2.Position.Z 
or a.Part8.Position.Z -(1.9) > Partt2.Position.Z 
then
if a.Part8.Position.Y + 2.5 < Partt3.Position.Y
or a.Part8.Position.Y > Partt3.Position.Y
or a.Part8.Position.X +(1.9) < Partt3.Position.X 
or a.Part8.Position.X -(1.9) > Partt3.Position.X 
or a.Part8.Position.Z +(1.9) < Partt3.Position.Z 
or a.Part8.Position.Z -(1.9) > Partt3.Position.Z 
then
if a.Part8.Position.Y + 2.5 < Partt4.Position.Y
or a.Part8.Position.Y > Partt4.Position.Y
or a.Part8.Position.X +(1.9) < Partt4.Position.X 
or a.Part8.Position.X -(1.9) > Partt4.Position.X 
or a.Part8.Position.Z +(1.9) < Partt4.Position.Z 
or a.Part8.Position.Z -(1.9) > Partt4.Position.Z 
then
if a.Part8.Position.Y + 2.5 < Partt5.Position.Y
or a.Part8.Position.Y > Partt5.Position.Y
or a.Part8.Position.X +(1.9) < Partt5.Position.X 
or a.Part8.Position.X -(1.9) > Partt5.Position.X 
or a.Part8.Position.Z +(1.9) < Partt5.Position.Z 
or a.Part8.Position.Z -(1.9) > Partt5.Position.Z 
then
if a.Part8.Position.Y + 2.5 < Partt6.Position.Y
or a.Part8.Position.Y > Partt6.Position.Y
or a.Part8.Position.X +(1.9) < Partt6.Position.X 
or a.Part8.Position.X -(1.9) > Partt6.Position.X 
or a.Part8.Position.Z +(1.9) < Partt6.Position.Z 
or a.Part8.Position.Z -(1.9) > Partt6.Position.Z 
then
if a.Part8.Position.Y + 2.5 < Partt7.Position.Y
or a.Part8.Position.Y > Partt7.Position.Y
or a.Part8.Position.X +(1.9) < Partt7.Position.X 
or a.Part8.Position.X -(1.9) > Partt7.Position.X 
or a.Part8.Position.Z +(1.9) < Partt7.Position.Z 
or a.Part8.Position.Z -(1.9) > Partt7.Position.Z 
then
ypoPart8 = 1
else ypoPart8 = 0 
end
else ypoPart8 = 0
end
else ypoPart8 = 0
end
else ypoPart8 = 0
end
else ypoPart8 = 0
end
else ypoPart8 = 0
end
else ypoPart8 = 0
end

if a.Part8.Position.Y - 2.5 > Partt1.Position.Y -- P1 -Y Positions Library Reference
or a.Part8.Position.Y < Partt1.Position.Y
or a.Part8.Position.X +(1.9) < Partt1.Position.X 
or a.Part8.Position.X -(1.9) > Partt1.Position.X 
or a.Part8.Position.Z +(1.9) < Partt1.Position.Z 
or a.Part8.Position.Z -(1.9) > Partt1.Position.Z 
then
if a.Part8.Position.Y - 2.5 > Partt2.Position.Y
or a.Part8.Position.Y < Partt2.Position.Y
or a.Part8.Position.X +(1.9) < Partt2.Position.X 
or a.Part8.Position.X -(1.9) > Partt2.Position.X 
or a.Part8.Position.Z +(1.9) < Partt2.Position.Z 
or a.Part8.Position.Z -(1.9) > Partt2.Position.Z 
then
if a.Part8.Position.Y - 2.5 > Partt3.Position.Y
or a.Part8.Position.Y < Partt3.Position.Y
or a.Part8.Position.X +(1.9) < Partt3.Position.X 
or a.Part8.Position.X -(1.9) > Partt3.Position.X 
or a.Part8.Position.Z +(1.9) < Partt3.Position.Z 
or a.Part8.Position.Z -(1.9) > Partt3.Position.Z 
then
if a.Part8.Position.Y - 2.5 > Partt4.Position.Y
or a.Part8.Position.Y < Partt4.Position.Y
or a.Part8.Position.X +(1.9) < Partt4.Position.X 
or a.Part8.Position.X -(1.9) > Partt4.Position.X 
or a.Part8.Position.Z +(1.9) < Partt4.Position.Z 
or a.Part8.Position.Z -(1.9) > Partt4.Position.Z 
then
if a.Part8.Position.Y - 2.5 > Partt5.Position.Y
or a.Part8.Position.Y < Partt5.Position.Y
or a.Part8.Position.X +(1.9) < Partt5.Position.X 
or a.Part8.Position.X -(1.9) > Partt5.Position.X 
or a.Part8.Position.Z +(1.9) < Partt5.Position.Z 
or a.Part8.Position.Z -(1.9) > Partt5.Position.Z 
then
if a.Part8.Position.Y - 2.5 > Partt6.Position.Y
or a.Part8.Position.Y < Partt6.Position.Y
or a.Part8.Position.X +(1.9) < Partt6.Position.X 
or a.Part8.Position.X -(1.9) > Partt6.Position.X 
or a.Part8.Position.Z +(1.9) < Partt6.Position.Z 
or a.Part8.Position.Z -(1.9) > Partt6.Position.Z 
then
if a.Part8.Position.Y - 2.5 > Partt7.Position.Y
or a.Part8.Position.Y < Partt7.Position.Y
or a.Part8.Position.X +(1.9) < Partt7.Position.X 
or a.Part8.Position.X -(1.9) > Partt7.Position.X 
or a.Part8.Position.Z +(1.9) < Partt7.Position.Z 
or a.Part8.Position.Z -(1.9) > Partt7.Position.Z 
then
ynePart8 = 1
else ynePart8 = 0 
end
else ynePart8 = 0
end
else ynePart8 = 0
end
else ynePart8 = 0
end
else ynePart8 = 0
end
else ynePart8 = 0
end
else ynePart8 = 0
end

if a.Part8.Position.Z + 2.5 < Partt1.Position.Z -- P1 +Z Positions Library Reference
or a.Part8.Position.Z > Partt1.Position.Z
or a.Part8.Position.X +(1.9) < Partt1.Position.X 
or a.Part8.Position.X -(1.9) > Partt1.Position.X 
or a.Part8.Position.Y +(1.9) < Partt1.Position.Y 
or a.Part8.Position.Y -(1.9) > Partt1.Position.Y 
then
if a.Part8.Position.Z + 2.5 < Partt2.Position.Z
or a.Part8.Position.Z > Partt2.Position.Z
or a.Part8.Position.X +(1.9) < Partt2.Position.X 
or a.Part8.Position.X -(1.9) > Partt2.Position.X 
or a.Part8.Position.Y +(1.9) < Partt2.Position.Y 
or a.Part8.Position.Y -(1.9) > Partt2.Position.Y 
then
if a.Part8.Position.Z + 2.5 < Partt3.Position.Z
or a.Part8.Position.Z > Partt3.Position.Z
or a.Part8.Position.X +(1.9) < Partt3.Position.X 
or a.Part8.Position.X -(1.9) > Partt3.Position.X 
or a.Part8.Position.Y +(1.9) < Partt3.Position.Y 
or a.Part8.Position.Y -(1.9) > Partt3.Position.Y 
then
if a.Part8.Position.Z + 2.5 < Partt4.Position.Z
or a.Part8.Position.Z > Partt4.Position.Z
or a.Part8.Position.X +(1.9) < Partt4.Position.X 
or a.Part8.Position.X -(1.9) > Partt4.Position.X 
or a.Part8.Position.Y +(1.9) < Partt4.Position.Y 
or a.Part8.Position.Y -(1.9) > Partt4.Position.Y 
then
if a.Part8.Position.Z + 2.5 < Partt5.Position.Z
or a.Part8.Position.Z > Partt5.Position.Z
or a.Part8.Position.X +(1.9) < Partt5.Position.X 
or a.Part8.Position.X -(1.9) > Partt5.Position.X 
or a.Part8.Position.Y +(1.9) < Partt5.Position.Y 
or a.Part8.Position.Y -(1.9) > Partt5.Position.Y 
then
if a.Part8.Position.Z + 2.5 < Partt6.Position.Z
or a.Part8.Position.Z > Partt6.Position.Z
or a.Part8.Position.X +(1.9) < Partt6.Position.X 
or a.Part8.Position.X -(1.9) > Partt6.Position.X 
or a.Part8.Position.Y +(1.9) < Partt6.Position.Y 
or a.Part8.Position.Y -(1.9) > Partt6.Position.Y 
then
if a.Part8.Position.Z + 2.5 < Partt7.Position.Z
or a.Part8.Position.Z > Partt7.Position.Z
or a.Part8.Position.X +(1.9) < Partt7.Position.X 
or a.Part8.Position.X -(1.9) > Partt7.Position.X 
or a.Part8.Position.Y +(1.9) < Partt7.Position.Y 
or a.Part8.Position.Y -(1.9) > Partt7.Position.Y 
then
zpoPart8 = 1
else zpoPart8 = 0 
end
else zpoPart8 = 0
end
else zpoPart8 = 0
end
else zpoPart8 = 0
end
else zpoPart8 = 0
end
else zpoPart8 = 0
end
else zpoPart8 = 0
end

if a.Part8.Position.Z - 2.5 > Partt1.Position.Z -- P1 -Z Positions Library Reference
or a.Part8.Position.Z < Partt1.Position.Z
or a.Part8.Position.X +(1.9) < Partt1.Position.X 
or a.Part8.Position.X -(1.9) > Partt1.Position.X 
or a.Part8.Position.Y +(1.9) < Partt1.Position.Y 
or a.Part8.Position.Y -(1.9) > Partt1.Position.Y 
then
if a.Part8.Position.Z - 2.5 > Partt2.Position.Z
or a.Part8.Position.Z < Partt2.Position.Z
or a.Part8.Position.X +(1.9) < Partt2.Position.X 
or a.Part8.Position.X -(1.9) > Partt2.Position.X 
or a.Part8.Position.Y +(1.9) < Partt2.Position.Y 
or a.Part8.Position.Y -(1.9) > Partt2.Position.Y 
then
if a.Part8.Position.Z - 2.5 > Partt3.Position.Z
or a.Part8.Position.Z < Partt3.Position.Z
or a.Part8.Position.X +(1.9) < Partt3.Position.X 
or a.Part8.Position.X -(1.9) > Partt3.Position.X 
or a.Part8.Position.Y +(1.9) < Partt3.Position.Y 
or a.Part8.Position.Y -(1.9) > Partt3.Position.Y 
then
if a.Part8.Position.Z - 2.5 > Partt4.Position.Z
or a.Part8.Position.Z < Partt4.Position.Z
or a.Part8.Position.X +(1.9) < Partt4.Position.X 
or a.Part8.Position.X -(1.9) > Partt4.Position.X 
or a.Part8.Position.Y +(1.9) < Partt4.Position.Y 
or a.Part8.Position.Y -(1.9) > Partt4.Position.Y 
then
if a.Part8.Position.Z - 2.5 > Partt5.Position.Z
or a.Part8.Position.Z < Partt5.Position.Z
or a.Part8.Position.X +(1.9) < Partt5.Position.X 
or a.Part8.Position.X -(1.9) > Partt5.Position.X 
or a.Part8.Position.Y +(1.9) < Partt5.Position.Y 
or a.Part8.Position.Y -(1.9) > Partt5.Position.Y 
then
if a.Part8.Position.Z - 2.5 > Partt6.Position.Z
or a.Part8.Position.Z < Partt6.Position.Z
or a.Part8.Position.X +(1.9) < Partt6.Position.X 
or a.Part8.Position.X -(1.9) > Partt6.Position.X 
or a.Part8.Position.Y +(1.9) < Partt6.Position.Y 
or a.Part8.Position.Y -(1.9) > Partt6.Position.Y 
then
if a.Part8.Position.Z - 2.5 > Partt7.Position.Z
or a.Part8.Position.Z < Partt7.Position.Z
or a.Part8.Position.X +(1.9) < Partt7.Position.X 
or a.Part8.Position.X -(1.9) > Partt7.Position.X 
or a.Part8.Position.Y +(1.9) < Partt7.Position.Y 
or a.Part8.Position.Y -(1.9) > Partt7.Position.Y 
then
znePart8 = 1
else znePart8 = 0 
end
else znePart8 = 0
end
else znePart8 = 0
end
else znePart8 = 0
end
else znePart8 = 0
end
else znePart8 = 0
end
else znePart8 = 0
end

PriPart8 = 1 

if PriPart8 == 1
then	
if ypoPart8 == 1
then
for i=1, 10 do
a.Part8.CFrame = a.Part8.CFrame +(Vector3.new(0,.1,0))
wait(.01)
end
else PriPart8 = (PriPart8+1)
end
else end


if PriPart8 == 2
then	
if xpoPart8 == 1
then
for i=1, 10 do
a.Part8.CFrame = a.Part8.CFrame +(Vector3.new(.1,0,0))
wait(.01)
end
else PriPart8 = (PriPart8+1)
end
else end



if PriPart8 == 3
then	
if zpoPart8 == 1
then
for i=1, 10 do
a.Part8.CFrame = a.Part8.CFrame +(Vector3.new(0,0,.1))
wait(.01)
end
else PriPart8 = (PriPart8+1)
end
else end


if PriPart8 == 4
then	
if znePart8 == 1
then
for i=1, 10 do
a.Part8.CFrame = a.Part8.CFrame +(Vector3.new(0,0,-.1))
wait(.01)
end
else PriPart8 = (PriPart8+1)
end
else end

if PriPart8 == 5
then	
if xnePart8 == 1
then
for i=1, 10 do
a.Part8.CFrame = a.Part8.CFrame +(Vector3.new(-.1,0,0))
wait(.01)
end
else PriPart8 = (PriPart8+1)
end
else end
-- (PriPart8)

for i=1, 10 do
a.Part8.CFrame = a.Part8.CFrame * CFrame.fromEulerAnglesXYZ(0,math.pi/10,0)
wait(.01)
end
TMPart8 = (TMPart8+1)
until 
math.abs(a.Part8.Position.Y - cPart8.Position.Y) > 5
or TMPart8 == 7
else end
else end
------------------------------------------------------------------------------

if sPart8 == 3
and RPart8 == 3 --Checking +X Reconfiguration
then
if  XSPart8 == a.Part8.Position.X
and YSPart8 == a.Part8.Position.Y
and ZSPart8 == a.Part8.Position.Z
then
-- "Reconfiguring"
RPart8 = (RPart8+1)
repeat
if a.Part8.Position.X + 2.5 < Partt1.Position.X -- P1 +X Positions Library Reference
or a.Part8.Position.X > Partt1.Position.X
or a.Part8.Position.Y +(1.9) < Partt1.Position.Y 
or a.Part8.Position.Y -(1.9) > Partt1.Position.Y 
or a.Part8.Position.Z +(1.9) < Partt1.Position.Z 
or a.Part8.Position.Z -(1.9) > Partt1.Position.Z 
then
if a.Part8.Position.X + 2.5 < Partt2.Position.X
or a.Part8.Position.X > Partt2.Position.X
or a.Part8.Position.Y +(1.9) < Partt2.Position.Y 
or a.Part8.Position.Y -(1.9) > Partt2.Position.Y 
or a.Part8.Position.Z +(1.9) < Partt2.Position.Z 
or a.Part8.Position.Z -(1.9) > Partt2.Position.Z 
then
if a.Part8.Position.X + 2.5 < Partt3.Position.X
or a.Part8.Position.X > Partt3.Position.X
or a.Part8.Position.Y +(1.9) < Partt3.Position.Y 
or a.Part8.Position.Y -(1.9) > Partt3.Position.Y 
or a.Part8.Position.Z +(1.9) < Partt3.Position.Z 
or a.Part8.Position.Z -(1.9) > Partt3.Position.Z 
then
if a.Part8.Position.X + 2.5 < Partt4.Position.X
or a.Part8.Position.X > Partt4.Position.X
or a.Part8.Position.Y +(1.9) < Partt4.Position.Y 
or a.Part8.Position.Y -(1.9) > Partt4.Position.Y 
or a.Part8.Position.Z +(1.9) < Partt4.Position.Z 
or a.Part8.Position.Z -(1.9) > Partt4.Position.Z 
then
if a.Part8.Position.X + 2.5 < Partt5.Position.X
or a.Part8.Position.X > Partt5.Position.X
or a.Part8.Position.Y +(1.9) < Partt5.Position.Y 
or a.Part8.Position.Y -(1.9) > Partt5.Position.Y 
or a.Part8.Position.Z +(1.9) < Partt5.Position.Z 
or a.Part8.Position.Z -(1.9) > Partt5.Position.Z 
then
if a.Part8.Position.X + 2.5 < Partt6.Position.X
or a.Part8.Position.X > Partt6.Position.X
or a.Part8.Position.Y +(1.9) < Partt6.Position.Y 
or a.Part8.Position.Y -(1.9) > Partt6.Position.Y 
or a.Part8.Position.Z +(1.9) < Partt6.Position.Z 
or a.Part8.Position.Z -(1.9) > Partt6.Position.Z 
then
if a.Part8.Position.X + 2.5 < Partt7.Position.X
or a.Part8.Position.X > Partt7.Position.X
or a.Part8.Position.Y +(1.9) < Partt7.Position.Y 
or a.Part8.Position.Y -(1.9) > Partt7.Position.Y 
or a.Part8.Position.Z +(1.9) < Partt7.Position.Z 
or a.Part8.Position.Z -(1.9) > Partt7.Position.Z 
then
xpoPart8 = 1
else xpoPart8 = 0 
end
else xpoPart8 = 0
end
else xpoPart8 = 0
end
else xpoPart8 = 0
end
else xpoPart8 = 0
end
else xpoPart8 = 0
end
else xpoPart8 = 0
end

if a.Part8.Position.X - 2.5 > Partt1.Position.X -- P1 -X Positions Library Reference
or a.Part8.Position.X < Partt1.Position.X
or a.Part8.Position.Y +(1.9) < Partt1.Position.Y 
or a.Part8.Position.Y -(1.9) > Partt1.Position.Y 
or a.Part8.Position.Z +(1.9) < Partt1.Position.Z 
or a.Part8.Position.Z -(1.9) > Partt1.Position.Z 
then
if a.Part8.Position.X - 2.5 > Partt2.Position.X
or a.Part8.Position.X < Partt2.Position.X
or a.Part8.Position.Y +(1.9) < Partt2.Position.Y 
or a.Part8.Position.Y -(1.9) > Partt2.Position.Y 
or a.Part8.Position.Z +(1.9) < Partt2.Position.Z 
or a.Part8.Position.Z -(1.9) > Partt2.Position.Z 
then
if a.Part8.Position.X - 2.5 > Partt3.Position.X
or a.Part8.Position.X < Partt3.Position.X
or a.Part8.Position.Y +(1.9) < Partt3.Position.Y 
or a.Part8.Position.Y -(1.9) > Partt3.Position.Y 
or a.Part8.Position.Z +(1.9) < Partt3.Position.Z 
or a.Part8.Position.Z -(1.9) > Partt3.Position.Z 
then
if a.Part8.Position.X - 2.5 > Partt4.Position.X
or a.Part8.Position.X < Partt4.Position.X
or a.Part8.Position.Y +(1.9) < Partt4.Position.Y 
or a.Part8.Position.Y -(1.9) > Partt4.Position.Y 
or a.Part8.Position.Z +(1.9) < Partt4.Position.Z 
or a.Part8.Position.Z -(1.9) > Partt4.Position.Z 
then
if a.Part8.Position.X - 2.5 > Partt5.Position.X
or a.Part8.Position.X < Partt5.Position.X
or a.Part8.Position.Y +(1.9) < Partt5.Position.Y 
or a.Part8.Position.Y -(1.9) > Partt5.Position.Y 
or a.Part8.Position.Z +(1.9) < Partt5.Position.Z 
or a.Part8.Position.Z -(1.9) > Partt5.Position.Z 
then
if a.Part8.Position.X - 2.5 > Partt6.Position.X
or a.Part8.Position.X < Partt6.Position.X
or a.Part8.Position.Y +(1.9) < Partt6.Position.Y 
or a.Part8.Position.Y -(1.9) > Partt6.Position.Y 
or a.Part8.Position.Z +(1.9) < Partt6.Position.Z 
or a.Part8.Position.Z -(1.9) > Partt6.Position.Z 
then
if a.Part8.Position.X - 2.5 > Partt7.Position.X
or a.Part8.Position.X < Partt7.Position.X
or a.Part8.Position.Y +(1.9) < Partt7.Position.Y 
or a.Part8.Position.Y -(1.9) > Partt7.Position.Y 
or a.Part8.Position.Z +(1.9) < Partt7.Position.Z 
or a.Part8.Position.Z -(1.9) > Partt7.Position.Z 
then
xnePart8 = 1
else xnePart8 = 0 
end
else xnePart8 = 0
end
else xnePart8 = 0
end
else xnePart8 = 0
end
else xnePart8 = 0
end
else xnePart8 = 0
end
else xnePart8 = 0
end

if a.Part8.Position.Y + 2.5 < Partt1.Position.Y -- P1 +Y Positions Library Reference
or a.Part8.Position.Y > Partt1.Position.Y
or a.Part8.Position.X +(1.9) < Partt1.Position.X 
or a.Part8.Position.X -(1.9) > Partt1.Position.X 
or a.Part8.Position.Z +(1.9) < Partt1.Position.Z 
or a.Part8.Position.Z -(1.9) > Partt1.Position.Z 
then
if a.Part8.Position.Y + 2.5 < Partt2.Position.Y
or a.Part8.Position.Y > Partt2.Position.Y
or a.Part8.Position.X +(1.9) < Partt2.Position.X 
or a.Part8.Position.X -(1.9) > Partt2.Position.X 
or a.Part8.Position.Z +(1.9) < Partt2.Position.Z 
or a.Part8.Position.Z -(1.9) > Partt2.Position.Z 
then
if a.Part8.Position.Y + 2.5 < Partt3.Position.Y
or a.Part8.Position.Y > Partt3.Position.Y
or a.Part8.Position.X +(1.9) < Partt3.Position.X 
or a.Part8.Position.X -(1.9) > Partt3.Position.X 
or a.Part8.Position.Z +(1.9) < Partt3.Position.Z 
or a.Part8.Position.Z -(1.9) > Partt3.Position.Z 
then
if a.Part8.Position.Y + 2.5 < Partt4.Position.Y
or a.Part8.Position.Y > Partt4.Position.Y
or a.Part8.Position.X +(1.9) < Partt4.Position.X 
or a.Part8.Position.X -(1.9) > Partt4.Position.X 
or a.Part8.Position.Z +(1.9) < Partt4.Position.Z 
or a.Part8.Position.Z -(1.9) > Partt4.Position.Z 
then
if a.Part8.Position.Y + 2.5 < Partt5.Position.Y
or a.Part8.Position.Y > Partt5.Position.Y
or a.Part8.Position.X +(1.9) < Partt5.Position.X 
or a.Part8.Position.X -(1.9) > Partt5.Position.X 
or a.Part8.Position.Z +(1.9) < Partt5.Position.Z 
or a.Part8.Position.Z -(1.9) > Partt5.Position.Z 
then
if a.Part8.Position.Y + 2.5 < Partt6.Position.Y
or a.Part8.Position.Y > Partt6.Position.Y
or a.Part8.Position.X +(1.9) < Partt6.Position.X 
or a.Part8.Position.X -(1.9) > Partt6.Position.X 
or a.Part8.Position.Z +(1.9) < Partt6.Position.Z 
or a.Part8.Position.Z -(1.9) > Partt6.Position.Z 
then
if a.Part8.Position.Y + 2.5 < Partt7.Position.Y
or a.Part8.Position.Y > Partt7.Position.Y
or a.Part8.Position.X +(1.9) < Partt7.Position.X 
or a.Part8.Position.X -(1.9) > Partt7.Position.X 
or a.Part8.Position.Z +(1.9) < Partt7.Position.Z 
or a.Part8.Position.Z -(1.9) > Partt7.Position.Z 
then
ypoPart8 = 1
else ypoPart8 = 0 
end
else ypoPart8 = 0
end
else ypoPart8 = 0
end
else ypoPart8 = 0
end
else ypoPart8 = 0
end
else ypoPart8 = 0
end
else ypoPart8 = 0
end

if a.Part8.Position.Y - 2.5 > Partt1.Position.Y -- P1 -Y Positions Library Reference
or a.Part8.Position.Y < Partt1.Position.Y
or a.Part8.Position.X +(1.9) < Partt1.Position.X 
or a.Part8.Position.X -(1.9) > Partt1.Position.X 
or a.Part8.Position.Z +(1.9) < Partt1.Position.Z 
or a.Part8.Position.Z -(1.9) > Partt1.Position.Z 
then
if a.Part8.Position.Y - 2.5 > Partt2.Position.Y
or a.Part8.Position.Y < Partt2.Position.Y
or a.Part8.Position.X +(1.9) < Partt2.Position.X 
or a.Part8.Position.X -(1.9) > Partt2.Position.X 
or a.Part8.Position.Z +(1.9) < Partt2.Position.Z 
or a.Part8.Position.Z -(1.9) > Partt2.Position.Z 
then
if a.Part8.Position.Y - 2.5 > Partt3.Position.Y
or a.Part8.Position.Y < Partt3.Position.Y
or a.Part8.Position.X +(1.9) < Partt3.Position.X 
or a.Part8.Position.X -(1.9) > Partt3.Position.X 
or a.Part8.Position.Z +(1.9) < Partt3.Position.Z 
or a.Part8.Position.Z -(1.9) > Partt3.Position.Z 
then
if a.Part8.Position.Y - 2.5 > Partt4.Position.Y
or a.Part8.Position.Y < Partt4.Position.Y
or a.Part8.Position.X +(1.9) < Partt4.Position.X 
or a.Part8.Position.X -(1.9) > Partt4.Position.X 
or a.Part8.Position.Z +(1.9) < Partt4.Position.Z 
or a.Part8.Position.Z -(1.9) > Partt4.Position.Z 
then
if a.Part8.Position.Y - 2.5 > Partt5.Position.Y
or a.Part8.Position.Y < Partt5.Position.Y
or a.Part8.Position.X +(1.9) < Partt5.Position.X 
or a.Part8.Position.X -(1.9) > Partt5.Position.X 
or a.Part8.Position.Z +(1.9) < Partt5.Position.Z 
or a.Part8.Position.Z -(1.9) > Partt5.Position.Z 
then
if a.Part8.Position.Y - 2.5 > Partt6.Position.Y
or a.Part8.Position.Y < Partt6.Position.Y
or a.Part8.Position.X +(1.9) < Partt6.Position.X 
or a.Part8.Position.X -(1.9) > Partt6.Position.X 
or a.Part8.Position.Z +(1.9) < Partt6.Position.Z 
or a.Part8.Position.Z -(1.9) > Partt6.Position.Z 
then
if a.Part8.Position.Y - 2.5 > Partt7.Position.Y
or a.Part8.Position.Y < Partt7.Position.Y
or a.Part8.Position.X +(1.9) < Partt7.Position.X 
or a.Part8.Position.X -(1.9) > Partt7.Position.X 
or a.Part8.Position.Z +(1.9) < Partt7.Position.Z 
or a.Part8.Position.Z -(1.9) > Partt7.Position.Z 
then
ynePart8 = 1
else ynePart8 = 0 
end
else ynePart8 = 0
end
else ynePart8 = 0
end
else ynePart8 = 0
end
else ynePart8 = 0
end
else ynePart8 = 0
end
else ynePart8 = 0
end

if a.Part8.Position.Z + 2.5 < Partt1.Position.Z -- P1 +Z Positions Library Reference
or a.Part8.Position.Z > Partt1.Position.Z
or a.Part8.Position.X +(1.9) < Partt1.Position.X 
or a.Part8.Position.X -(1.9) > Partt1.Position.X 
or a.Part8.Position.Y +(1.9) < Partt1.Position.Y 
or a.Part8.Position.Y -(1.9) > Partt1.Position.Y 
then
if a.Part8.Position.Z + 2.5 < Partt2.Position.Z
or a.Part8.Position.Z > Partt2.Position.Z
or a.Part8.Position.X +(1.9) < Partt2.Position.X 
or a.Part8.Position.X -(1.9) > Partt2.Position.X 
or a.Part8.Position.Y +(1.9) < Partt2.Position.Y 
or a.Part8.Position.Y -(1.9) > Partt2.Position.Y 
then
if a.Part8.Position.Z + 2.5 < Partt3.Position.Z
or a.Part8.Position.Z > Partt3.Position.Z
or a.Part8.Position.X +(1.9) < Partt3.Position.X 
or a.Part8.Position.X -(1.9) > Partt3.Position.X 
or a.Part8.Position.Y +(1.9) < Partt3.Position.Y 
or a.Part8.Position.Y -(1.9) > Partt3.Position.Y 
then
if a.Part8.Position.Z + 2.5 < Partt4.Position.Z
or a.Part8.Position.Z > Partt4.Position.Z
or a.Part8.Position.X +(1.9) < Partt4.Position.X 
or a.Part8.Position.X -(1.9) > Partt4.Position.X 
or a.Part8.Position.Y +(1.9) < Partt4.Position.Y 
or a.Part8.Position.Y -(1.9) > Partt4.Position.Y 
then
if a.Part8.Position.Z + 2.5 < Partt5.Position.Z
or a.Part8.Position.Z > Partt5.Position.Z
or a.Part8.Position.X +(1.9) < Partt5.Position.X 
or a.Part8.Position.X -(1.9) > Partt5.Position.X 
or a.Part8.Position.Y +(1.9) < Partt5.Position.Y 
or a.Part8.Position.Y -(1.9) > Partt5.Position.Y 
then
if a.Part8.Position.Z + 2.5 < Partt6.Position.Z
or a.Part8.Position.Z > Partt6.Position.Z
or a.Part8.Position.X +(1.9) < Partt6.Position.X 
or a.Part8.Position.X -(1.9) > Partt6.Position.X 
or a.Part8.Position.Y +(1.9) < Partt6.Position.Y 
or a.Part8.Position.Y -(1.9) > Partt6.Position.Y 
then
if a.Part8.Position.Z + 2.5 < Partt7.Position.Z
or a.Part8.Position.Z > Partt7.Position.Z
or a.Part8.Position.X +(1.9) < Partt7.Position.X 
or a.Part8.Position.X -(1.9) > Partt7.Position.X 
or a.Part8.Position.Y +(1.9) < Partt7.Position.Y 
or a.Part8.Position.Y -(1.9) > Partt7.Position.Y 
then
zpoPart8 = 1
else zpoPart8 = 0 
end
else zpoPart8 = 0
end
else zpoPart8 = 0
end
else zpoPart8 = 0
end
else zpoPart8 = 0
end
else zpoPart8 = 0
end
else zpoPart8 = 0
end

if a.Part8.Position.Z - 2.5 > Partt1.Position.Z -- P1 -Z Positions Library Reference
or a.Part8.Position.Z < Partt1.Position.Z
or a.Part8.Position.X +(1.9) < Partt1.Position.X 
or a.Part8.Position.X -(1.9) > Partt1.Position.X 
or a.Part8.Position.Y +(1.9) < Partt1.Position.Y 
or a.Part8.Position.Y -(1.9) > Partt1.Position.Y 
then
if a.Part8.Position.Z - 2.5 > Partt2.Position.Z
or a.Part8.Position.Z < Partt2.Position.Z
or a.Part8.Position.X +(1.9) < Partt2.Position.X 
or a.Part8.Position.X -(1.9) > Partt2.Position.X 
or a.Part8.Position.Y +(1.9) < Partt2.Position.Y 
or a.Part8.Position.Y -(1.9) > Partt2.Position.Y 
then
if a.Part8.Position.Z - 2.5 > Partt3.Position.Z
or a.Part8.Position.Z < Partt3.Position.Z
or a.Part8.Position.X +(1.9) < Partt3.Position.X 
or a.Part8.Position.X -(1.9) > Partt3.Position.X 
or a.Part8.Position.Y +(1.9) < Partt3.Position.Y 
or a.Part8.Position.Y -(1.9) > Partt3.Position.Y 
then
if a.Part8.Position.Z - 2.5 > Partt4.Position.Z
or a.Part8.Position.Z < Partt4.Position.Z
or a.Part8.Position.X +(1.9) < Partt4.Position.X 
or a.Part8.Position.X -(1.9) > Partt4.Position.X 
or a.Part8.Position.Y +(1.9) < Partt4.Position.Y 
or a.Part8.Position.Y -(1.9) > Partt4.Position.Y 
then
if a.Part8.Position.Z - 2.5 > Partt5.Position.Z
or a.Part8.Position.Z < Partt5.Position.Z
or a.Part8.Position.X +(1.9) < Partt5.Position.X 
or a.Part8.Position.X -(1.9) > Partt5.Position.X 
or a.Part8.Position.Y +(1.9) < Partt5.Position.Y 
or a.Part8.Position.Y -(1.9) > Partt5.Position.Y 
then
if a.Part8.Position.Z - 2.5 > Partt6.Position.Z
or a.Part8.Position.Z < Partt6.Position.Z
or a.Part8.Position.X +(1.9) < Partt6.Position.X 
or a.Part8.Position.X -(1.9) > Partt6.Position.X 
or a.Part8.Position.Y +(1.9) < Partt6.Position.Y 
or a.Part8.Position.Y -(1.9) > Partt6.Position.Y 
then
if a.Part8.Position.Z - 2.5 > Partt7.Position.Z
or a.Part8.Position.Z < Partt7.Position.Z
or a.Part8.Position.X +(1.9) < Partt7.Position.X 
or a.Part8.Position.X -(1.9) > Partt7.Position.X 
or a.Part8.Position.Y +(1.9) < Partt7.Position.Y 
or a.Part8.Position.Y -(1.9) > Partt7.Position.Y 
then
znePart8 = 1
else znePart8 = 0 
end
else znePart8 = 0
end
else znePart8 = 0
end
else znePart8 = 0
end
else znePart8 = 0
end
else znePart8 = 0
end
else znePart8 = 0
end

PriPart8 = 1 
if PriPart8 == 1
then	
if xnePart8 == 1
then
for i=1, 10 do
a.Part8.CFrame = a.Part8.CFrame +(Vector3.new(-.1,0,0))
wait(.01)
end
else PriPart8 = (PriPart8+1)
end
else end

if PriPart8 == 2
then	
if ypoPart8 == 1
then
for i=1, 10 do
a.Part8.CFrame = a.Part8.CFrame +(Vector3.new(0,.1,0))
wait(.01)
end
else PriPart8 = (PriPart8+1)
end
else end

if PriPart8 == 3
then	
if zpoPart8 == 1
then
for i=1, 10 do
a.Part8.CFrame = a.Part8.CFrame +(Vector3.new(0,0,.1))
wait(.01)
end
else PriPart8 = (PriPart8+1)
end
else end

if PriPart8 == 4
then	
if ynePart8 == 1
then
for i=1, 10 do
a.Part8.CFrame = a.Part8.CFrame +(Vector3.new(0,-.1,0))
wait(.01)
end
else PriPart8 = (PriPart8+1)
end
else end

if PriPart8 == 5
then	
if znePart8 == 1
then
for i=1, 10 do
a.Part8.CFrame = a.Part8.CFrame +(Vector3.new(0,0,-.1))
wait(.01)
end
else PriPart8 = (PriPart8+1)
end
else end
------------------------------------------------------------------------------
-- (PriPart8)

wait(.1)
TMPart8 = (TMPart8+1)
until 
math.abs(a.Part8.Position.X - cPart8.Position.X) > 5
or TMPart8 == 7
else end
else end

if sPart8 == 3
and RPart8 == 4 --Checking +X Reconfiguration
then
if  XSPart8 == a.Part8.Position.X
and YSPart8 == a.Part8.Position.Y
and ZSPart8 == a.Part8.Position.Z
then
-- "Reconfiguring"
RPart8 = 1
repeat
if a.Part8.Position.X + 2.5 < Partt1.Position.X -- P1 +X Positions Library Reference
or a.Part8.Position.X > Partt1.Position.X
or a.Part8.Position.Y +(1.9) < Partt1.Position.Y 
or a.Part8.Position.Y -(1.9) > Partt1.Position.Y 
or a.Part8.Position.Z +(1.9) < Partt1.Position.Z 
or a.Part8.Position.Z -(1.9) > Partt1.Position.Z 
then
if a.Part8.Position.X + 2.5 < Partt2.Position.X
or a.Part8.Position.X > Partt2.Position.X
or a.Part8.Position.Y +(1.9) < Partt2.Position.Y 
or a.Part8.Position.Y -(1.9) > Partt2.Position.Y 
or a.Part8.Position.Z +(1.9) < Partt2.Position.Z 
or a.Part8.Position.Z -(1.9) > Partt2.Position.Z 
then
if a.Part8.Position.X + 2.5 < Partt3.Position.X
or a.Part8.Position.X > Partt3.Position.X
or a.Part8.Position.Y +(1.9) < Partt3.Position.Y 
or a.Part8.Position.Y -(1.9) > Partt3.Position.Y 
or a.Part8.Position.Z +(1.9) < Partt3.Position.Z 
or a.Part8.Position.Z -(1.9) > Partt3.Position.Z 
then
if a.Part8.Position.X + 2.5 < Partt4.Position.X
or a.Part8.Position.X > Partt4.Position.X
or a.Part8.Position.Y +(1.9) < Partt4.Position.Y 
or a.Part8.Position.Y -(1.9) > Partt4.Position.Y 
or a.Part8.Position.Z +(1.9) < Partt4.Position.Z 
or a.Part8.Position.Z -(1.9) > Partt4.Position.Z 
then
if a.Part8.Position.X + 2.5 < Partt5.Position.X
or a.Part8.Position.X > Partt5.Position.X
or a.Part8.Position.Y +(1.9) < Partt5.Position.Y 
or a.Part8.Position.Y -(1.9) > Partt5.Position.Y 
or a.Part8.Position.Z +(1.9) < Partt5.Position.Z 
or a.Part8.Position.Z -(1.9) > Partt5.Position.Z 
then
if a.Part8.Position.X + 2.5 < Partt6.Position.X
or a.Part8.Position.X > Partt6.Position.X
or a.Part8.Position.Y +(1.9) < Partt6.Position.Y 
or a.Part8.Position.Y -(1.9) > Partt6.Position.Y 
or a.Part8.Position.Z +(1.9) < Partt6.Position.Z 
or a.Part8.Position.Z -(1.9) > Partt6.Position.Z 
then
if a.Part8.Position.X + 2.5 < Partt7.Position.X
or a.Part8.Position.X > Partt7.Position.X
or a.Part8.Position.Y +(1.9) < Partt7.Position.Y 
or a.Part8.Position.Y -(1.9) > Partt7.Position.Y 
or a.Part8.Position.Z +(1.9) < Partt7.Position.Z 
or a.Part8.Position.Z -(1.9) > Partt7.Position.Z 
then
xpoPart8 = 1
else xpoPart8 = 0 
end
else xpoPart8 = 0
end
else xpoPart8 = 0
end
else xpoPart8 = 0
end
else xpoPart8 = 0
end
else xpoPart8 = 0
end
else xpoPart8 = 0
end

if a.Part8.Position.X - 2.5 > Partt1.Position.X -- P1 -X Positions Library Reference
or a.Part8.Position.X < Partt1.Position.X
or a.Part8.Position.Y +(1.9) < Partt1.Position.Y 
or a.Part8.Position.Y -(1.9) > Partt1.Position.Y 
or a.Part8.Position.Z +(1.9) < Partt1.Position.Z 
or a.Part8.Position.Z -(1.9) > Partt1.Position.Z 
then
if a.Part8.Position.X - 2.5 > Partt2.Position.X
or a.Part8.Position.X < Partt2.Position.X
or a.Part8.Position.Y +(1.9) < Partt2.Position.Y 
or a.Part8.Position.Y -(1.9) > Partt2.Position.Y 
or a.Part8.Position.Z +(1.9) < Partt2.Position.Z 
or a.Part8.Position.Z -(1.9) > Partt2.Position.Z 
then
if a.Part8.Position.X - 2.5 > Partt3.Position.X
or a.Part8.Position.X < Partt3.Position.X
or a.Part8.Position.Y +(1.9) < Partt3.Position.Y 
or a.Part8.Position.Y -(1.9) > Partt3.Position.Y 
or a.Part8.Position.Z +(1.9) < Partt3.Position.Z 
or a.Part8.Position.Z -(1.9) > Partt3.Position.Z 
then
if a.Part8.Position.X - 2.5 > Partt4.Position.X
or a.Part8.Position.X < Partt4.Position.X
or a.Part8.Position.Y +(1.9) < Partt4.Position.Y 
or a.Part8.Position.Y -(1.9) > Partt4.Position.Y 
or a.Part8.Position.Z +(1.9) < Partt4.Position.Z 
or a.Part8.Position.Z -(1.9) > Partt4.Position.Z 
then
if a.Part8.Position.X - 2.5 > Partt5.Position.X
or a.Part8.Position.X < Partt5.Position.X
or a.Part8.Position.Y +(1.9) < Partt5.Position.Y 
or a.Part8.Position.Y -(1.9) > Partt5.Position.Y 
or a.Part8.Position.Z +(1.9) < Partt5.Position.Z 
or a.Part8.Position.Z -(1.9) > Partt5.Position.Z 
then
if a.Part8.Position.X - 2.5 > Partt6.Position.X
or a.Part8.Position.X < Partt6.Position.X
or a.Part8.Position.Y +(1.9) < Partt6.Position.Y 
or a.Part8.Position.Y -(1.9) > Partt6.Position.Y 
or a.Part8.Position.Z +(1.9) < Partt6.Position.Z 
or a.Part8.Position.Z -(1.9) > Partt6.Position.Z 
then
if a.Part8.Position.X - 2.5 > Partt7.Position.X
or a.Part8.Position.X < Partt7.Position.X
or a.Part8.Position.Y +(1.9) < Partt7.Position.Y 
or a.Part8.Position.Y -(1.9) > Partt7.Position.Y 
or a.Part8.Position.Z +(1.9) < Partt7.Position.Z 
or a.Part8.Position.Z -(1.9) > Partt7.Position.Z 
then
xnePart8 = 1
else xnePart8 = 0 
end
else xnePart8 = 0
end
else xnePart8 = 0
end
else xnePart8 = 0
end
else xnePart8 = 0
end
else xnePart8 = 0
end
else xnePart8 = 0
end

if a.Part8.Position.Y + 2.5 < Partt1.Position.Y -- P1 +Y Positions Library Reference
or a.Part8.Position.Y > Partt1.Position.Y
or a.Part8.Position.X +(1.9) < Partt1.Position.X 
or a.Part8.Position.X -(1.9) > Partt1.Position.X 
or a.Part8.Position.Z +(1.9) < Partt1.Position.Z 
or a.Part8.Position.Z -(1.9) > Partt1.Position.Z 
then
if a.Part8.Position.Y + 2.5 < Partt2.Position.Y
or a.Part8.Position.Y > Partt2.Position.Y
or a.Part8.Position.X +(1.9) < Partt2.Position.X 
or a.Part8.Position.X -(1.9) > Partt2.Position.X 
or a.Part8.Position.Z +(1.9) < Partt2.Position.Z 
or a.Part8.Position.Z -(1.9) > Partt2.Position.Z 
then
if a.Part8.Position.Y + 2.5 < Partt3.Position.Y
or a.Part8.Position.Y > Partt3.Position.Y
or a.Part8.Position.X +(1.9) < Partt3.Position.X 
or a.Part8.Position.X -(1.9) > Partt3.Position.X 
or a.Part8.Position.Z +(1.9) < Partt3.Position.Z 
or a.Part8.Position.Z -(1.9) > Partt3.Position.Z 
then
if a.Part8.Position.Y + 2.5 < Partt4.Position.Y
or a.Part8.Position.Y > Partt4.Position.Y
or a.Part8.Position.X +(1.9) < Partt4.Position.X 
or a.Part8.Position.X -(1.9) > Partt4.Position.X 
or a.Part8.Position.Z +(1.9) < Partt4.Position.Z 
or a.Part8.Position.Z -(1.9) > Partt4.Position.Z 
then
if a.Part8.Position.Y + 2.5 < Partt5.Position.Y
or a.Part8.Position.Y > Partt5.Position.Y
or a.Part8.Position.X +(1.9) < Partt5.Position.X 
or a.Part8.Position.X -(1.9) > Partt5.Position.X 
or a.Part8.Position.Z +(1.9) < Partt5.Position.Z 
or a.Part8.Position.Z -(1.9) > Partt5.Position.Z 
then
if a.Part8.Position.Y + 2.5 < Partt6.Position.Y
or a.Part8.Position.Y > Partt6.Position.Y
or a.Part8.Position.X +(1.9) < Partt6.Position.X 
or a.Part8.Position.X -(1.9) > Partt6.Position.X 
or a.Part8.Position.Z +(1.9) < Partt6.Position.Z 
or a.Part8.Position.Z -(1.9) > Partt6.Position.Z 
then
if a.Part8.Position.Y + 2.5 < Partt7.Position.Y
or a.Part8.Position.Y > Partt7.Position.Y
or a.Part8.Position.X +(1.9) < Partt7.Position.X 
or a.Part8.Position.X -(1.9) > Partt7.Position.X 
or a.Part8.Position.Z +(1.9) < Partt7.Position.Z 
or a.Part8.Position.Z -(1.9) > Partt7.Position.Z 
then
ypoPart8 = 1
else ypoPart8 = 0 
end
else ypoPart8 = 0
end
else ypoPart8 = 0
end
else ypoPart8 = 0
end
else ypoPart8 = 0
end
else ypoPart8 = 0
end
else ypoPart8 = 0
end

if a.Part8.Position.Y - 2.5 > Partt1.Position.Y -- P1 -Y Positions Library Reference
or a.Part8.Position.Y < Partt1.Position.Y
or a.Part8.Position.X +(1.9) < Partt1.Position.X 
or a.Part8.Position.X -(1.9) > Partt1.Position.X 
or a.Part8.Position.Z +(1.9) < Partt1.Position.Z 
or a.Part8.Position.Z -(1.9) > Partt1.Position.Z 
then
if a.Part8.Position.Y - 2.5 > Partt2.Position.Y
or a.Part8.Position.Y < Partt2.Position.Y
or a.Part8.Position.X +(1.9) < Partt2.Position.X 
or a.Part8.Position.X -(1.9) > Partt2.Position.X 
or a.Part8.Position.Z +(1.9) < Partt2.Position.Z 
or a.Part8.Position.Z -(1.9) > Partt2.Position.Z 
then
if a.Part8.Position.Y - 2.5 > Partt3.Position.Y
or a.Part8.Position.Y < Partt3.Position.Y
or a.Part8.Position.X +(1.9) < Partt3.Position.X 
or a.Part8.Position.X -(1.9) > Partt3.Position.X 
or a.Part8.Position.Z +(1.9) < Partt3.Position.Z 
or a.Part8.Position.Z -(1.9) > Partt3.Position.Z 
then
if a.Part8.Position.Y - 2.5 > Partt4.Position.Y
or a.Part8.Position.Y < Partt4.Position.Y
or a.Part8.Position.X +(1.9) < Partt4.Position.X 
or a.Part8.Position.X -(1.9) > Partt4.Position.X 
or a.Part8.Position.Z +(1.9) < Partt4.Position.Z 
or a.Part8.Position.Z -(1.9) > Partt4.Position.Z 
then
if a.Part8.Position.Y - 2.5 > Partt5.Position.Y
or a.Part8.Position.Y < Partt5.Position.Y
or a.Part8.Position.X +(1.9) < Partt5.Position.X 
or a.Part8.Position.X -(1.9) > Partt5.Position.X 
or a.Part8.Position.Z +(1.9) < Partt5.Position.Z 
or a.Part8.Position.Z -(1.9) > Partt5.Position.Z 
then
if a.Part8.Position.Y - 2.5 > Partt6.Position.Y
or a.Part8.Position.Y < Partt6.Position.Y
or a.Part8.Position.X +(1.9) < Partt6.Position.X 
or a.Part8.Position.X -(1.9) > Partt6.Position.X 
or a.Part8.Position.Z +(1.9) < Partt6.Position.Z 
or a.Part8.Position.Z -(1.9) > Partt6.Position.Z 
then
if a.Part8.Position.Y - 2.5 > Partt7.Position.Y
or a.Part8.Position.Y < Partt7.Position.Y
or a.Part8.Position.X +(1.9) < Partt7.Position.X 
or a.Part8.Position.X -(1.9) > Partt7.Position.X 
or a.Part8.Position.Z +(1.9) < Partt7.Position.Z 
or a.Part8.Position.Z -(1.9) > Partt7.Position.Z 
then
ynePart8 = 1
else ynePart8 = 0 
end
else ynePart8 = 0
end
else ynePart8 = 0
end
else ynePart8 = 0
end
else ynePart8 = 0
end
else ynePart8 = 0
end
else ynePart8 = 0
end

if a.Part8.Position.Z + 2.5 < Partt1.Position.Z -- P1 +Z Positions Library Reference
or a.Part8.Position.Z > Partt1.Position.Z
or a.Part8.Position.X +(1.9) < Partt1.Position.X 
or a.Part8.Position.X -(1.9) > Partt1.Position.X 
or a.Part8.Position.Y +(1.9) < Partt1.Position.Y 
or a.Part8.Position.Y -(1.9) > Partt1.Position.Y 
then
if a.Part8.Position.Z + 2.5 < Partt2.Position.Z
or a.Part8.Position.Z > Partt2.Position.Z
or a.Part8.Position.X +(1.9) < Partt2.Position.X 
or a.Part8.Position.X -(1.9) > Partt2.Position.X 
or a.Part8.Position.Y +(1.9) < Partt2.Position.Y 
or a.Part8.Position.Y -(1.9) > Partt2.Position.Y 
then
if a.Part8.Position.Z + 2.5 < Partt3.Position.Z
or a.Part8.Position.Z > Partt3.Position.Z
or a.Part8.Position.X +(1.9) < Partt3.Position.X 
or a.Part8.Position.X -(1.9) > Partt3.Position.X 
or a.Part8.Position.Y +(1.9) < Partt3.Position.Y 
or a.Part8.Position.Y -(1.9) > Partt3.Position.Y 
then
if a.Part8.Position.Z + 2.5 < Partt4.Position.Z
or a.Part8.Position.Z > Partt4.Position.Z
or a.Part8.Position.X +(1.9) < Partt4.Position.X 
or a.Part8.Position.X -(1.9) > Partt4.Position.X 
or a.Part8.Position.Y +(1.9) < Partt4.Position.Y 
or a.Part8.Position.Y -(1.9) > Partt4.Position.Y 
then
if a.Part8.Position.Z + 2.5 < Partt5.Position.Z
or a.Part8.Position.Z > Partt5.Position.Z
or a.Part8.Position.X +(1.9) < Partt5.Position.X 
or a.Part8.Position.X -(1.9) > Partt5.Position.X 
or a.Part8.Position.Y +(1.9) < Partt5.Position.Y 
or a.Part8.Position.Y -(1.9) > Partt5.Position.Y 
then
if a.Part8.Position.Z + 2.5 < Partt6.Position.Z
or a.Part8.Position.Z > Partt6.Position.Z
or a.Part8.Position.X +(1.9) < Partt6.Position.X 
or a.Part8.Position.X -(1.9) > Partt6.Position.X 
or a.Part8.Position.Y +(1.9) < Partt6.Position.Y 
or a.Part8.Position.Y -(1.9) > Partt6.Position.Y 
then
if a.Part8.Position.Z + 2.5 < Partt7.Position.Z
or a.Part8.Position.Z > Partt7.Position.Z
or a.Part8.Position.X +(1.9) < Partt7.Position.X 
or a.Part8.Position.X -(1.9) > Partt7.Position.X 
or a.Part8.Position.Y +(1.9) < Partt7.Position.Y 
or a.Part8.Position.Y -(1.9) > Partt7.Position.Y 
then
zpoPart8 = 1
else zpoPart8 = 0 
end
else zpoPart8 = 0
end
else zpoPart8 = 0
end
else zpoPart8 = 0
end
else zpoPart8 = 0
end
else zpoPart8 = 0
end
else zpoPart8 = 0
end

if a.Part8.Position.Z - 2.5 > Partt1.Position.Z -- P1 -Z Positions Library Reference
or a.Part8.Position.Z < Partt1.Position.Z
or a.Part8.Position.X +(1.9) < Partt1.Position.X 
or a.Part8.Position.X -(1.9) > Partt1.Position.X 
or a.Part8.Position.Y +(1.9) < Partt1.Position.Y 
or a.Part8.Position.Y -(1.9) > Partt1.Position.Y 
then
if a.Part8.Position.Z - 2.5 > Partt2.Position.Z
or a.Part8.Position.Z < Partt2.Position.Z
or a.Part8.Position.X +(1.9) < Partt2.Position.X 
or a.Part8.Position.X -(1.9) > Partt2.Position.X 
or a.Part8.Position.Y +(1.9) < Partt2.Position.Y 
or a.Part8.Position.Y -(1.9) > Partt2.Position.Y 
then
if a.Part8.Position.Z - 2.5 > Partt3.Position.Z
or a.Part8.Position.Z < Partt3.Position.Z
or a.Part8.Position.X +(1.9) < Partt3.Position.X 
or a.Part8.Position.X -(1.9) > Partt3.Position.X 
or a.Part8.Position.Y +(1.9) < Partt3.Position.Y 
or a.Part8.Position.Y -(1.9) > Partt3.Position.Y 
then
if a.Part8.Position.Z - 2.5 > Partt4.Position.Z
or a.Part8.Position.Z < Partt4.Position.Z
or a.Part8.Position.X +(1.9) < Partt4.Position.X 
or a.Part8.Position.X -(1.9) > Partt4.Position.X 
or a.Part8.Position.Y +(1.9) < Partt4.Position.Y 
or a.Part8.Position.Y -(1.9) > Partt4.Position.Y 
then
if a.Part8.Position.Z - 2.5 > Partt5.Position.Z
or a.Part8.Position.Z < Partt5.Position.Z
or a.Part8.Position.X +(1.9) < Partt5.Position.X 
or a.Part8.Position.X -(1.9) > Partt5.Position.X 
or a.Part8.Position.Y +(1.9) < Partt5.Position.Y 
or a.Part8.Position.Y -(1.9) > Partt5.Position.Y 
then
if a.Part8.Position.Z - 2.5 > Partt6.Position.Z
or a.Part8.Position.Z < Partt6.Position.Z
or a.Part8.Position.X +(1.9) < Partt6.Position.X 
or a.Part8.Position.X -(1.9) > Partt6.Position.X 
or a.Part8.Position.Y +(1.9) < Partt6.Position.Y 
or a.Part8.Position.Y -(1.9) > Partt6.Position.Y 
then
if a.Part8.Position.Z - 2.5 > Partt7.Position.Z
or a.Part8.Position.Z < Partt7.Position.Z
or a.Part8.Position.X +(1.9) < Partt7.Position.X 
or a.Part8.Position.X -(1.9) > Partt7.Position.X 
or a.Part8.Position.Y +(1.9) < Partt7.Position.Y 
or a.Part8.Position.Y -(1.9) > Partt7.Position.Y 
then
znePart8 = 1
else znePart8 = 0 
end
else znePart8 = 0
end
else znePart8 = 0
end
else znePart8 = 0
end
else znePart8 = 0
end
else znePart8 = 0
end
else znePart8 = 0
end

PriPart8 = 1 

if PriPart8 == 1
then	
if ynePart8 == 1
then
for i=1, 10 do
a.Part8.CFrame = a.Part8.CFrame +(Vector3.new(0,-.1,0))
wait(.01)
end
else PriPart8 = (PriPart8+1)
end
else end


if PriPart8 == 2
then	
if xpoPart8 == 1
then
for i=1, 10 do
a.Part8.CFrame = a.Part8.CFrame +(Vector3.new(.1,0,0))
wait(.01)
end
else PriPart8 = (PriPart8+1)
end
else end



if PriPart8 == 3
then	
if zpoPart8 == 1
then
for i=1, 10 do
a.Part8.CFrame = a.Part8.CFrame +(Vector3.new(0,0,.1))
wait(.01)
end
else PriPart8 = (PriPart8+1)
end
else end


if PriPart8 == 4
then	
if znePart8 == 1
then
for i=1, 10 do
a.Part8.CFrame = a.Part8.CFrame +(Vector3.new(0,0,-.1))
wait(.01)
end
else PriPart8 = (PriPart8+1)
end
else end

if PriPart8 == 5
then	
if xnePart8 == 1
then
for i=1, 10 do
a.Part8.CFrame = a.Part8.CFrame +(Vector3.new(-.1,0,0))
wait(.01)
end
else PriPart8 = (PriPart8+1)
end
else end
-- (PriPart8)

wait(.1)
TMPart8 = (TMPart8+1)
until 
math.abs(a.Part8.Position.Y - cPart8.Position.Y) > 5
or TMPart8 == 7
else end
else end
------------------------------------------------------------------------------

if sPart8==3
then sPart8 = 0
else end

wait(.1)
until
    a.Part8.Position.X < cPart8.Position.X +.7
and a.Part8.Position.X > cPart8.Position.X -.7
and a.Part8.Position.Y < cPart8.Position.Y +.7
and a.Part8.Position.Y > cPart8.Position.Y -.7
and a.Part8.Position.Z < cPart8.Position.Z +.7
and a.Part8.Position.Z > cPart8.Position.Z -.7
end --Couroutine







coroutine.resume(coroutine.create(core1))
coroutine.resume(coroutine.create(core2))
coroutine.resume(coroutine.create(core3))
coroutine.resume(coroutine.create(core4))
coroutine.resume(coroutine.create(core5))
coroutine.resume(coroutine.create(core6))
coroutine.resume(coroutine.create(core7))
coroutine.resume(coroutine.create(core8))

else end
