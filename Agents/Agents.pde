//class INTERACTIONS!!!!

import toxi.geom.*;
//import library

//DECLARE 
ArrayList ballCollection;

void setup(){
  size(600,600);
  smooth();
  
  //INITIALIZE
  ballCollection = new ArrayList();
  
   for(int i=0; i < 100; i++){
      
     Vec3D origin = new Vec3D(random(width), random(200), 0);
       //defining a point in the middle of screen
   Ball myBall = new Ball(origin);
   ballCollection.add(myBall);
 
   }

}

void draw(){
  background(0);
  
  
  
  
  //CALL FUNCTIONALITY
   for(int i=0; i < ballCollection.size(); i++){
  Ball myB = (Ball) ballCollection.get(i);
  myB.run();
   }
   

  
}
