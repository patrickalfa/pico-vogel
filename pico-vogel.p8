pico-8 cartridge // http://www.pico-8.com
version 18
__lua__
::G::
B,L,A,x,y,s,r,u,o=btn,line,.03,64,64,0,0,0,0
::_::
s=mid(0,s+(B(2) and A or B(3) and -A or o*.01)-.005,1)
r+=(B(0) and A or B(1) and -A or 0)*(1-s/2)
u,o=cos(r),sin(r)
x=(x<-2 and 130 or x>130 and -2 or x)+u*s
y+=o*s+(1-s)/2
cls(1)
h,j=x-u*2,y-o*2
L(h,j,x+u*2,y+o*2,3)
L(x-o*2,y-u*2,x+o*2,y+u*2)
L(h-o,j-u,h+o,j+u)
foreach({5,8,11},function(v) pset(x+u*v,y+o*v,13) end)
rect(-1,0,128,127,7)
if y>128 or y<0 then goto G end
flip()
goto _