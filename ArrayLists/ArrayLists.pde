//DECLARE 
ArrayList ballCollection;

void setup(){
  size(600,600);
  smooth();
  
  //INITIALIZE
  ballCollection = new ArrayList();
  //Array defines the size of the collection at the beginning
  //Array list: dynamic array
  //Starts empty and can then dynamically add values to the list
  
  /*for(int i=0; i < 100; i++){
    //collection now has 100 elements 
  Ball myBall = new Ball(random(0, width), random(0, 200));
  //new instance of the class
  
  ballCollection.add(myBall);
  //allows to add elements in the collection
  //adding instance myBall to the array list
  
  }
  */
}

void draw(){
  background(0);
  
  
  Ball myBall = new Ball(300, 300);
//where it should start  
  ballCollection.add(myBall);
 
  //putting this here causes each frame to produce one element in a random position of 
  //the screen
 
  
  //CALL FUNCTIONALITY
   for(int i=0; i < ballCollection.size(); i++){
  Ball myB = (Ball) ballCollection.get(i);
  myB.run();
   }
   
   //have to change the name otherwise duplicate and doesn't work
         //just a name
 //call instance of class, myBall, to the elemnt i of the collection ballCollection

 
  
}
