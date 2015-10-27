//float z = 500;

import peasy.*;
//importing peasyCam

//DECLARE
PeasyCam jCam;
//loads library + creates new class

void setup (){
  size (600,600, P3D);
  //specify the rendering (P3D)  

//INITIALIZE

jCam = new PeasyCam(this, 100);
//100 is the scale
//this = the processing sketch that we are working (using canvas)
//need it for PeasyCam


}


void draw (){
  background(0);
  
  stroke(255);
  noFill();
  box(600);
  //box element inbuilt in processing
  //box located in the (0,0) coordinate therefore have to specify a camera
  //camera(eyeX, eyeY, eyeZ, centerX, centerY, centerZ, upX, upY, upZ)
  // eye = position of camera
  // center = point we are looking at/aiming at
  // up = orientation of camera
  
   /* z = z + 2;
   camera(500, 400, z,     0, 0, 0,    0, 0, 1);*/
   //would make the position of the box move
  
  
}
