Sphe spe;
Saver c;
Astroid[] a;
destP d;
dest2 d2;
backGr br;
MyText t;
Rocket1 rock1;
Rocket2 rock2;
Rocket3 rock3;

PImage earth,ast,rain;
PImage backe,de,de2;
PImage rk1,rk2,rk3;
float inc=0.05;
void setup() {
  size(720, 720, P3D); 
  Cinit();
  Iminit();
  assignInit();   

  imageMode(CENTER);
}

void draw() {

  if(spe.r>140)
  { br.dispBg();  // print win
  translate(width/2,height/2, 0);
  spe.display(); 
  t.displayTextWin();
  
}
 else if(spe.r>50)
 {
  keyRel();
  br.dispBg();
  translate(width/2,height/2, 0);
  spe.display(); 
  d.displayDest();
  d2.displayDest();
  c.dis();  
  
  for(int i=0;i<10;i++)
  a[i].disp();
  t.displayText();
 
 }
 else
 {
   br.dispBg();  // print win
  translate(width/2,height/2, 0);
  spe.display();  
   t.dispTry();
  //print lose
 }
}


void backg()
{
  pushMatrix();
  translate(0,0,-500);
  image(backe,0,0,height*2,width*2);
  popMatrix();
  
}
void Cinit()
{
  spe=new Sphe();
  c=new Saver();
  a= new Astroid[10];
  t=new MyText();
  d= new destP();
  d2=new dest2();
  br=new backGr();
  rock1=new Rocket1();
  rock2=new Rocket2();
  rock3=new Rocket3();

}
void Iminit()  // preload
{
 // rain=loadImage("G:\\desk\\Psaver\\dpj.jpg");
  backe=loadImage("G:\\desk\\Psaver\\fvcc.jpg");
  de=loadImage("G:\\desk\\Psaver\\ezgabc.png"); //destroy
  de2=loadImage("G:\\desk\\Psaver\\ezttei.png");
  earth=loadImage("G:\\desk\\Psaver\\imagesh.jpg"); //sphere
  rk1=loadImage("G:\\desk\\Psaver\\ezfcmin.png"); 
  rk2=loadImage("G:\\desk\\Psaver\\ezidd.png");
  rk3=loadImage("G:\\desk\\Psaver\\ezv3.png");
   
}
void assignInit()
{
  d.Dinit();
  d2.Dinit();
  br.init();
  spe.init(80); 
  rock1.finit();
  rock2.finit();
  rock3.finit();
try{
  for(int i=0;i<10;i++)
  {
    a[i]=new Astroid();
    a[i].Ainit();
  }
}catch(Exception e)
{System.out.println(e);
}
}




void keyRel()
{
  System.out.println(key);
  if(key=='r')
  {
   spe.r=80; 
  }
  
 if(key=='w')
 {  if((c.angle+(PI/4)>HALF_PI)&&(c.angle+(PI/4)< PI+HALF_PI))
      {
        c.angle+=inc;
        System.out.println("w add");
        t.dispARR('w');
       }
   else
      {
        c.angle-=inc;
        t.dispARR('w');
        System.out.println("w sub");
      }
 }
 
 if(key=='a')
 {  if(c.angle+(PI/4)<PI)
      {
        c.angle+=inc;
        System.out.println("a add");
       t.dispARR('a');  
     }
    else
      {
        c.angle-=inc;
        t.dispARR('a');
        System.out.println("a sub");
      }
 }
 
 if(key=='d')
 {  if((c.angle+(PI/4)>PI) && (c.angle+(PI/4)<2*PI))
      {
        c.angle+=inc;
        t.dispARR('d');
        System.out.println("d add");
       }
    else
      {
        c.angle-=inc;
        t.dispARR('d');
        System.out.println("d sub");
      }
 }
 
 if(key=='s')
 {  if((c.angle+(PI/4)< PI+HALF_PI) && (c.angle+(PI/4)>HALF_PI))
      {
        c.angle-=inc;
        t.dispARR('s');
        System.out.println("s add");
       }
    else
      {
        c.angle+=inc;
        t.dispARR('s');
        System.out.println("s sub");
      }
 }
 
 if(c.angle<0.2)
 {
   c.angle=6.27;
 }
 if(c.angle>6.27)
 {
   c.angle=0.2;
 }
}
