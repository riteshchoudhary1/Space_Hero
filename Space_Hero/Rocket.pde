class Rocket1
{
 PImage[] sp;
 int count,nf=30;
 float rAn=3*PI/2; 
 
 void finit()
 {
   int i,k=0;
    sp=new PImage[nf];
    
    for(i=0;i<8;i++)
    sp[k++]=rk1.get(0,i*600,600,600);
    
  nf=k;
 }
 
 void dispSpriteR1()
 {
   if(count>=nf)
   {count=0;}
   rotate(rAn);
   image(sp[count++],0,0,100,100);
  
 }
}


class Rocket2
{
 PImage[] sp;
 int count,nf=5;
 float rAn=3*PI/2; 
 
 void finit()
 {
   int i,k=0;
    sp=new PImage[nf];
    
    for(i=0;i<5;i++)
    sp[k++]=rk2.get(i*240,0,240,595);
    
  nf=k;
  System.out.println(k);
 }
 
 void dispSpriteR2()
 {
   if(count>=nf)
   {count=0;}
   rotate(rAn);
   image(sp[count++],0,0,60,100);
  
 }
}



class Rocket3
{
 PImage[] sp;
 int count,nf=5;
 float rAn=3*PI/2; 
 
 void finit()
 {
   int i,k=0;
    sp=new PImage[nf];
    
    for(i=0;i<5;i++)
    sp[k++]=rk3.get(i*286,0,286,458);
    
  nf=k;
  System.out.println(k+"  "+sp[0].height + "  "+sp[0].width) ;
 }
 
 void dispSpriteR3()
 {
   if(count>=nf)
   {count=0;}
   rotate(rAn);
   image(sp[count++],0,0,60,100);
  
 }
}
