
class Ball{
  //defining the class; in this case called Ball
  
  
  //Vector has position and direction
  
  Vec3D loc = new Vec3D (0, 0, 0);
  //Using the Vec3D in the library
  //loc = location
  // ( ) - position
   Vec3D speed = new Vec3D (random(-2, 2), random(-2, 2), 0);
   //therefore speed in x is one others is 0
   Vec3D gravity = new Vec3D (0, 0.2, 0);
  
  //CONSTRUCTOR - specify how you build the class and where initialize variable
  Ball(Vec3D _loc){
    
  loc = _loc;
  //so that vecotr location will be accessible everywhere else
  
  
    
  }
  //this will operate just ONCE 
  
  
  //FUNCITON
  void run(){
   display();
   move();
   bounce();  
   gravity();
    
  }
  
  void display(){
  ellipse(loc.x, loc.y, 20, 20);
  //loc.x --> x part of location
  //same for y
  
  }  
  
  void move(){

   loc.addSelf(speed);
   //speed vector will add every frame
   //addSelf = vecot math
   
  }
  
  void bounce(){
   if(loc.x > width){
     speed.x = speed.x*-1;
  }
  if(loc.x < 0){
   speed.x = speed.x*-1;
  }
  if(loc.y < 0){
   speed.y = speed.y*-1;
  }
  if(loc.y > height){
   speed.y = speed.y*-1;
  }
  
  }

void gravity(){
 speed.addSelf(gravity);

}
  
}

//speed.x and speed.y used as speed has now been put in vector form
