pico-8 cartridge // http://www.pico-8.com
version 18
__lua__
B,L,G,A=btn,line,1,.02
c={
{x=96,y=64,s=0,r=0,u=0,o=0},
{x=32,y=64,s=0,r=0,u=0,o=0}
}
::_::
cls(1)
i=0
for p in all(c) do
x,y,u,o=p.x,p.y,p.u,p.o
p.s=mid(0,p.s+(B(2,i) and A or B(3,i) and -A or o*.01)-.005,1)
p.r+=(B(0,i) and A or B(1,i) and -A or 0)
u,o=cos(p.r),sin(p.r)
x=(x<-2 and 130 or x>130 and -2 or x)+u*p.s
y+=o*p.s+(1-p.s)*G
h,j=x-u*2,y-o*2
L(h,j,x+u*2,y+o*2,3+i)
L(x-o*2,y-u*2,x+o*2,y+u*2)
L(h-o,j-u,h+o,j+u)
p.x,p.y,p.u,p.o=x,y,u,o
i=1
end
flip()
goto _