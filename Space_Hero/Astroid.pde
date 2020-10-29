class Astroid
{
 float a,x;
 Rocket1 r1=null;
 Rocket2 r2=null;
 Rocket3 r3=null;
 
 int count;
 
 void  Ainit()
 {
   selectRoc();
   update();
 }
 void update()
 {
   x=random(400,900);
   a=random(0.2,6.28);
  
 }
 
 void disp()
 {
  
  float g =c.angle;
  pushMatrix();
  rotate(a);
  point(x,0);
  
  astrdisp();
  point(x,0);
  
  
  if(--x < 200)
  {  if( x>145)
      {
        float z=g;
        if(a<HALF_PI && g>(PI+HALF_PI))
        {
         z-=2*PI; 
        }
        
        if(z<a && (a<(z+HALF_PI)))
          {   
          spe.init(spe.r+2);
                    /// destroy in 145-150
          update();  
          d.updateD();
         }
      }    
   }
    if(x<=spe.r+4)
       {  //reduce radius
        d2.updateD();
        spe.init(spe.r-5);
        
        update();
      }
    
  
  popMatrix();
  
 }
  
 void astrdisp()
 {
   pushMatrix();
   translate(x,0);
    if(r1!=null)
     {r1.dispSpriteR1(); }
    else if(r2!=null)
     {r2.dispSpriteR2();}    
    else if(r3!=null)
     {r3.dispSpriteR3();}
    else
    {}
    popMatrix();
 }
 
  void selectRoc()
  {
  int i=(int)random(1,4);
   switch(i)
   {
    case 1: r1=rock1;      
            break; 
    case 2:r2=rock2;
            break;   
    case 3:r3=rock3;
            break;  
    
    default:
    System.out.print("wrong select");
   }
  }
  
}
