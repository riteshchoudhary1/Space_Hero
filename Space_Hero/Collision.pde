class destP
{
  
 PImage[] sp;
 int count,nf=5,l;
 float rot; 
 void Dinit()
 {
  int i,j,k=0;
  sp=new PImage[30];
    for(i=1;i<5;i++)
    for(j=0;j<5;j++)
    sp[k++]=de.get(j*256,i*256,256,256);
  
    nf=k;
    System.out.println( "dest"+k);
   l=50;
   rot=0;

 }

  void updateD()
  {
    d2.l=0;
    l=30;
  rot=0;
  }
  void displayDest()
  {
    if(l>0)
    {
      if(count >=nf)
    {count=0;}
    pushMatrix();
    //rot+=0.1;
   // rotate(rot);
  //  translate(0,0,150);
    float v=(spe.r+10)*4 -l;
    image(sp[count++],0,0,v,v);
    popMatrix();
    l--;
    }
  }
  
}

class dest2
{
 PImage[] sp;
 int count,nf=5,l;
 float rot; 
 
  void Dinit()
 {
  int i,j,k=0;
  sp=new PImage[30];
    for(i=1;i<5;i++)
    for(j=0;j<5;j++)
    sp[k++]=de2.get(j*256,i*256,256,256);
  
    nf=k;
    System.out.println( "dest2"+k);
   l=50;
   rot=0;
 }
  
  void updateD()
  {
    d.l=0;
    l=30;
  }
  
   void displayDest()
  {
    if(l>0)
    {
      if(count >=nf)
    {count=0;}
    pushMatrix();
    //rot+=0.1;
     // rotate(rot);
    //  translate(0,0,150);
    float v=(spe.r+10)*4 -l;
    image(sp[count++],0,0,v,v);
    popMatrix();
    l--;
    }
  }
 
  
  
}
