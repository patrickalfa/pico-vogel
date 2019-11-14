__lua__

-- SHOOTING
z={}
if btnp(5) then
add(z,{x=x,y=y,u=u,o=o})
end
foreach(z,function(v)
v.x+=v.u*2
v.y+=v.o*2
pset(v.x,v.y,13)
end)