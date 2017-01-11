 //declare bacteria variables here
 Bacteria[] colony;
 void setup()   
 {     
   //initialize bacteria variables here
   size(300,300);
   colony = new Bacteria[200];
   for(int i = 0; i<colony.length; i++){
     colony[i] = new Bacteria();
   }
 }   
 void draw()   
 { 
   background(180,180,180);
   for(int i=0;i< colony.length;i++){
     colony[i].move();
     colony[i].show();
   }
   //move and show the bacteria   
 }  
 class Bacteria    
 {   
 int myX,myY,R,G,B;
   //lots of java!
   Bacteria(){
     myX = (int)random(0,300);
     myY = (int)random(0,300);
     R = (int)random(0,255);
     G = (int)random(0,255);
     B = (int)random(0,255);
     
   }
   void show(){
     fill(R,G,B);
     ellipse(myX,myY,10,10);
   }
   void move(){
     if(mouseX > myX && mouseY > myY){
       myX++;
       myY++;
     }
     else if(mouseX < myX && mouseY < myY){
       myX--;
       myY--;
     }
     else if(mouseX < myX && mouseY > myY){
       myX--;
       myY++;
     }
     else if(mouseX > myX && mouseY < myY){
       myX++;
       myY--;
     }
     else{
       myX = (int)random(0,300);
       myY = (int)random(0,300);
     }
   }
 }    
