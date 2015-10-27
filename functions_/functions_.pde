void setup (){
  size(600, 600);
  smooth();
}

void draw (){
  background(0);
  drawEllipse(200, 200, 255);
  drawEllipse(500, 200, 200);
  drawEllipse(200, 400, 145);
  
  
}

void drawEllipse(float x, float y, float r){
// thing in brackets is what we can alter
// to call the function in different ways
// according to the variables shown in void draw()
// for the drawEllipse
 
 fill(r, 0, 0);
 ellipse(x, y, 20, 20);
  
}
