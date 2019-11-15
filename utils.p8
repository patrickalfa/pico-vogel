__lua__

-- SHOOTING
z={}
if btnp(5)then add(z,{x=x,y=y,u=u,o=o})end
foreach(z,function(v)v.x+=v.u*2v.y+=v.o*2pset(v.x,v.y,13)end)

-- COLLISION
if sqrt((q-x)^2+(w-y)^2)<5then l=1q=rnd(128)w=rnd(128)end

-- FOLLOW PLAYER
a=atan2(x-q,y-w)q+=cos(a)/2w+=sin(a)/2