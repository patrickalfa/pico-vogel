pico-8 cartridge // http://www.pico-8.com
version 18
__lua__
::G::
P,B,L,A,x,y,s,r,u,o,z,q,w=print,btn,line,.03,64,64,0,0,0,0,{},32,32
::_::
s=mid(0,s+(B(2) and A or B(3) and -A/2 or o*.01)-.005,1)
r+=(B(0) and A or B(1) and -A or 0)*(1-s/2)
u,o=cos(r),sin(r)
x=(x<-2 and 130 or x>130 and -2 or x)+u*s
y+=o*s+(1-s)/2
cls(1)
h,j=x-u*2,y-o*2
L(h,j,x+u*2,y+o*2,3)
L(x-o*2,y-u*2,x+o*2,y+u*2)
L(h-o,j-u,h+o,j+u)
rect(-1,0,128,127,7)
if y>128 or y<0 then goto G end
if btnp(5) then
add(z,{x=x,y=y,u=u,o=o})
end
foreach(z,function(v)
v.x+=v.u*2
v.y+=v.o*2
pset(v.x,v.y,13)
end)
a=atan2(x-q,y-w)
q+=cos(a)/2
w+=sin(a)/2
P("✽",q,w,4)
P(flr(t()),0,0)
flip()
goto _