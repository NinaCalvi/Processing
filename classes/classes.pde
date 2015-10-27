//DECLARE
Ball myBall;
//Class [variable that we will call]
//followed by class instance


void setup(){
  size(600, 600);
  smooth();
  
  //INITIALIZE
  myBall = new Ball(200, 200);
  //'new' is saying to creating a new instance of the class
  //what in the brackets are the variables mentioned in the ball constructor
  
}

//object is the same thing as a class
//object-oriented programming = programming whose aim is to create objects

//class tells you how to create specific things
//class instance = how to call these class so to create an instance


void draw(){
  background(0);
 
 //CALL FUNCTIONALITY
  myBall.run();
  //the . opens up the class function
  
}
