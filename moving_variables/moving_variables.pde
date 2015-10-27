// variable: numbers and letters
// whole numbers: use int
// decimal place number: use float

float x = 0;
float y = 200;
float speed = 3;

// we can now access these variables from anywhere in the screen

void setup (){
  size(600, 600);
  background(0);
}

void draw (){
  background(0); 
 ellipse (x, y, 60, 60);
 
  x = x + speed;
// we can UPDATE variables over time
// using this function the variable will MOVE because 
// variable is UPDATING EVERY FRAME
// variable SPEED tells the ellipse how much to move every frame - continuous hence keeps moving
 
}
