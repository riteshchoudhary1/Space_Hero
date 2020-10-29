class backGr
{  
 PImage bp;
 int i=0,v=-1;
void init()
{
  bp=backe;
}
 
 void dispBg()
 {
   if(i>=200 || i<=-200)
   {v*=-1;}
   i+=v;
  image(bp,height/2+i,width/2);
 
 }
}
