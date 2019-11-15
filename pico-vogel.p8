pico-8 cartridge // http://www.pico-8.com
version 18
__lua__
cls(1)
B,L=btn,line::G::
?"press 🅾️",50,60
if(B(4))goto S
flip()goto G::S::A=.03x=8y=8q=32w=32s=0r=0o=0l=1p=0::_::s=mid(0,s+(B(4)and A or B(5)and -A or o*.01)-.005,1)r+=(B(0)and A or B(1)and -A or 0)*(1-s/2)u=cos(r)o=sin(r)x=u*s+(x<-2 and 130or x>130 and -2or x)y+=o*s+(1-s)/2l-=.008a=atan2(q-x,w-y)q+=cos(a)/4w+=sin(a)/4if(sqrt((q-x)^2+(w-y)^2)<6)l=1q=rnd(64)+32w=rnd(64)+32 p+=1
cls(1)h,j=x-u*2,y-o*2L(h,j,x+u*2,y+o*2,3)L(x-o*2,y-u*2,x+o*2,y+u*2)L(h-o,j-u,h+o,j+u)L(0,1,l*128,1,9)
?"ˇ",q,w
rect(-1,0,128,127,7)
?p,2,4
if(y>128or y<0or l<0)goto G
flip()goto _