class Sphe
{
  float x=0;
  int r;
  PShape globe;
  
  void display()
  {
  //stroke(255, 50);
  directionalLight(255,255,255,-60,60,-200);
  pointLight(100,100,100,60,60,900);
  pushMatrix();
  x += 0.1;
  rotateY(x);
  //fill(mouseX * 2, 0, 160);
  shape(globe); 
  //sphereDetail(mouseX / 8,mouseX / 8);
  //sphere(r);
  popMatrix();
  }
 
  void init(int rad)
  {
    r=rad;
  globe=createShape(SPHERE,rad);
  globe.setTexture(earth);
  globe.setStroke(false);
 
  }
  
}
