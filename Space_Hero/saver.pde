class Saver
{
 float angle=6.27;
//  PShape ns;
  void dis()
  {
    pushMatrix();
   // angle=mouseX/10;
   // angle%=6.28;
    strokeWeight(6);
    stroke(252, 63, 63);
    noFill();
    arc(0, 0, 300, 300, angle, HALF_PI+angle);
    stroke(255);
    arc(0, 0, 310, 310, angle, HALF_PI+angle);
    stroke(252, 63, 63);
    arc(0, 0, 320, 320, angle, HALF_PI+angle);
    //rotate(angle);
   //  image(rain,0,0,rain.height/4,rain.width/8);
   // ns.noFill();
    //ns.setTexture(rain);
    //shape(ns);
    popMatrix();
    
 }
  
}
