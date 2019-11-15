pico-8 cartridge // http://www.pico-8.com
version 18
__lua__
::G::
B,L,P=btn,line,print
A=.03x=64y=64s=0r=0u=0o=0l=1q=96w=64p=0
::_::
s=mid(0,s+(B(2)and A or B(3)and -A or o*.01)-.005,1)
r+=(B(0)and A or B(1)and -A or 0)*(1-s/2)
u=cos(r)o=sin(r)
x=(x<-2 and 130 or x>130 and -2 or x)+u*s
y+=o*s+(1-s)/2
l-=.008
a=atan2(q-x,w-y)q+=cos(a)/4w+=sin(a)/4
if sqrt((q-x)^2+(w-y)^2)<6then l=1q=rnd(64)+32w=rnd(64)+32 p+=1end
cls(1)
h,j=x-u*2,y-o*2L(h,j,x+u*2,y+o*2,3)L(x-o*2,y-u*2,x+o*2,y+u*2)L(h-o,j-u,h+o,j+u)
L(0,1,l*128,1,14)
P("ˇ",q,w)
rect(-1,0,128,127,7)P(p,2,4)
if y>128 or y<0 or l<0 then goto G end
flip()
goto _