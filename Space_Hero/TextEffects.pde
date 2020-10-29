class MyText
{
 
  
  
  
  void displayText()
  {
   textSize(32);
   // fill(255,255,0);
   String s="Radius : "+ Integer.toString(spe.r-40)+"000";
   text(s,50- height/2,50- width/2); 
  }
  
  void dispTry()
  { 
   String s="Radius : 1001";
   text(s,50- height/2,50- width/2); 
   
   text("TRY AGAIN",-120,0,200); 
    
  }
  
 void displayTextWin() 
  { 
   textSize(32);
   String s="Radius : 100000";
   text(s,50- height/2,50- width/2); 
   text("YOU WERE MARVELOUS",-180,0,200); 
   
   text("!!!Candy World Saved!!!",-180,200); 
    
  }
  void dispARR(char c)
  {
  switch(c)
  {
   case 'a':text("O---",50- height/2,0);
             break;
   case 'd':text("---O",250,0);
            break;
   case 'w':text("O",0,50- height/2);
            text(" |",0,75- height/2);
             break;
   case 's':text(" |",0,250);
            text("O",0,275);
            
  }
  }

}
