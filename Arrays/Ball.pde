//just a continuation of the previous page

class Ball{
  //defining the class; in this case called Ball
  
  //GLOBAL VARIABLES - main variables of a class
  float x = 0;
  float y = 0;
  float speed = 3;
  float speedY = 0.5;
  
  //CONSTRUCTOR - specify how you build the class and where initialize variable
  Ball(float _x, float _y){
    
    x = _x;
    y = _y;
    //makes variable provided outside the class 
    //equal to the one in the constructor
    //therefore making it accessible anywhere else
    //couldn't just use _x and _y anywhere else because they are
    //ONLY defined within the constructor
    
    
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
  ellipse(x, y, 20, 20);
  }  
  
  void move(){
   x = x + speed;
   //other way of writing it would be x += speed
   
   y += speedY;
  }
  
  void bounce(){
   if(x > width){
     speed = speed*-1;
  }
  if(x < 0){
   speed = speed*-1;
  }
  if(y < 0){
   speedY = speedY*-1;
  }
  if(y > height){
   speedY = speedY*-1;
  }
  
  }

void gravity(){
 speedY += 0.2;
//keep decreasing the bouncing ball making it fall down
//as every frame it adds thise value
//if you start at a higher value like (0,0) 
//gravity will take longer for the ball to change direction again
//therefore it will jump higher
  
}
  
}
