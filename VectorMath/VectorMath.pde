import toxi.geom.*;

Vec3D vec1= new Vec3D(100, 100, 0);
Vec3D vec2= new Vec3D(-100, 50, 0);

void setup(){
  size(600, 600);
  smooth();
  
}

void draw(){
  background(0);
  
  translate(300, 300);
  //TRANSLATING ORIGIN POSITION FOR EVERYTHING BELOW
  //NOT ANYMORE AT TOP LEFT ANGLE
  
  stroke(100);
  strokeWeight(1);
  line(-600, 0, 600, 0);
  //remember first endpoint then starting point
  line(0, -600, 0, 600);
 
  stroke(255, 0, 0);
  strokeWeight(6);
  point(vec1.x, vec1.y);
   strokeWeight(1);
   line(0, 0, vec1.x, vec1.y);
   //the 0,0 origing is now translated at (300, 300)
   //therefore places it there and not at the top left corner
   
   stroke(0, 255, 0);
  strokeWeight(6);
  point(vec2.x, vec2.y);
  strokeWeight(1);
  line(0, 0, vec2.x, vec2.y);
  
  Vec3D newVec = vec1.copy();
  //copying vec1 but name it in another way
  
  newVec.normalize();
  //normalize --> magnitude of vector is made 1
  //direction however kept the same
  
  newVec.scaleSelf(100);
  //increases the magnitude by 100
  
  /*
  newVec.scaleSelf(0.5); would half the lenght of the vecotr
  */
  
  
  stroke(0, 0, 255);
  strokeWeight(6);
  point(newVec.x, newVec.y);
  
  
  Vec3D newVec2 = vec1.add(vec2);
  //adds vector 1 to vector 2
 //not just the magniturde but the direction as well
//therefore connects head to tail and then draw the line between that
//like studied in math
  
  stroke(255, 0, 255);
  strokeWeight(6);
  point(newVec2.x, newVec2.y);
  strokeWeight(1);
  line(0, 0, newVec2.x, newVec2.y);
  
  Vec3D newVec3 = vec2.sub(vec1);
  //subtracting one vector from another
  //subtraction given by putting the heads(tails) of the vectors together
  //and then connect the tails(heads)
  //N.B. in this case line starts at 0,0 - referred to that
   
  stroke(0, 255, 255);
  strokeWeight(6);
  point(newVec3.x, newVec3.y);
  strokeWeight(1);
  line(0, 0, newVec3.x, newVec3.y);
  
  //subtraciton allows us, from a position to a vector
  //to point directly to another vector - 
  //in this graph it would be the line connecting the red head to the green head directly
  //allows us to create an agent
  //and make things follow the mouse -
  //subtraction looking to a vector which will be the position
  //of the mouse
  
}
