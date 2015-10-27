int value = 5;
float var = 1;


void setup (){
  size (1000, 500);
  background (#106ADE);
}

void draw (){

 strokeWeight(value);
 line(mouseX, mouseY, mouseX, mouseY*var);

// mouseY had to be multiplied by a variable var so to crate lines and points
// if a variable had been used to represent the whole of that part
// no points would have been formed as that part (y2) represents the starting
// point of a line, and setting the variable to mouseY in the if/else wouldn't
// have created a point but just told the line to start at the point where the
// mouse had clicked. variables = FIXED VALUES!!!
// for things to change, and actually DRAW, the mouseClicked HAS to be connected
// to void draw. This is done by using variables. 

}

void mouseClicked (){
  
  if (value == 5){ 
  value = 1;
 var = 0;
  
} 
else{
  value = 5;
  var = 1;
  
}
}
