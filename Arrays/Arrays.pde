
Ball [] ballCollection = new Ball [100];
//type of elements from section ball
//[20] --> amount of elements in array; in this case 20


//array = collection of classes

void setup(){
  size(600, 600);
  smooth();
  
 //INITIALIZE 
  for(int i = 0; i < ballCollection.length; i++){
  //i < ballCollection.length --> from 0 to the size of collection
    ballCollection[i] = new Ball(random(0, width), random(0, 200));
  //first element in the array
  //values appear randomly in the screen between the given values.
  }
}



void draw(){
  background(0);
 

 for(int i = 0; i < ballCollection.length; i++){
 ballCollection[i].run();
 
 }
  
}
