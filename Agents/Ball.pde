
class Ball {

  Vec3D loc = new Vec3D (0, 0, 0);

  Vec3D speed = new Vec3D (random(-2, 2), random(-2, 2), 0);

  Vec3D gravity = new Vec3D (0, 0.2, 0);

  Vec3D acc = new Vec3D(0, 0, 0);

  //CONSTRUCTOR - specify how you build the class and where initialize variable
  Ball(Vec3D _loc) {

    loc = _loc;
  }
  //this will operate just ONCE 


  //FUNCITON
  void run() {
    display();
    move();
    bounce();  
    //gravity();

    lineBetween();
    flock();
  }

  void flock() {
    //all the following functions are based on Vector Math

    separate(4);
    collision(0.001);
    //collision is saying to the balls to come together
    //while the separate is telling them to move away from one another
    //depending on the force you will see them bouncing against one another
    //from one foce to another
    
    allign(0.1);
  }


void allign(float magnitude){
  
  
     Vec3D steer = new Vec3D();
    int count = 0;

    for (int i = 0; i < ballCollection.size(); i++) {
      Ball other = (Ball) ballCollection.get(i);
      float distance = loc.distanceTo(other.loc);

      if (distance > 0 && distance < 40) {
          
        steer.addSelf(other.speed);
        //we are trying to mimic the directionality of any ball
        //speed = directionality
        //make balls come into a pack and make them move in same direction
        
        //storing that information in the empty steer vector
        
        count++;
        
      }
    }
      if(count > 0){
       steer.scaleSelf(1.0/count); 
      }


      steer.scaleSelf(magnitude);
      acc.addSelf(steer);


}




  void collision(float magnitude) {
    //similar to separate but kind of separate
    //want to be around other balls  

    Vec3D sum = new Vec3D();
    int count = 0;

    for (int i = 0; i < ballCollection.size(); i++) {
      Ball other = (Ball) ballCollection.get(i);
      float distance = loc.distanceTo(other.loc);

      if (distance > 0 && distance < 60) {
        
        sum.addSelf(other.loc);
        //vector that will average the position of many of other balls
        //want to calculate the centroid point between all other balls
        //adding to the some vector the position of other balls when they are 
        //within the range
        
        count++;
        //N.B. variable inside the function therefore even if it has the same
        //name as the one in separate it doesn't affect it
        
      }
    }
  
      if(count > 0){
       sum.scaleSelf(1.0/count);
      //get the average position of where balls around me are
      //just as done in steer
        
      }

    Vec3D steer = sum.sub(loc);
    //subtraction - line between our position and our target
    //the order of sum and loc is opposite from that in separate
    //as in this case we want to go towards the balls and not away from the 
    //balls - therefore from the sum vector (location of other vectors)
    //we substract that of our ball. In separate it was subtracting from our ball
    //the position of other vectors therefore making them move away
    
    steer.scaleSelf(magnitude);
    //magnitude of force
    acc.addSelf(steer);
    
    

}
  


  void separate(float magnitude) {
    //informaiton (float magnitude) - variable that can be accessed all 
    //throughout the void. The value of the variable magnitude is found
    //in the brackets of the separate function under void flock

    //if two balls are too close to each other, they move away from one another


    Vec3D steer = new Vec3D();
    //empty vector
    int count = 0;

    for (int i = 0; i < ballCollection.size(); i++) {
      Ball other = (Ball) ballCollection.get(i);
      float distance = loc.distanceTo(other.loc);
      //through vector math calculate the distance
      if (distance > 0 && distance < 30) {
        //insert distance>0 because it also goes through our ball
        //and in that case the distance between that ball and other is 0
        
        

        Vec3D diff = loc.sub(other.loc);
        //vecotor between ball and other ball
        diff.normalizeTo(1.0/distance);
        //smoothens up the movement
        //vector has a strength depending on the distance
        //divide it to create a smaller strength (?)

        steer.addSelf(diff);
        //add to empty vector the difference vector
        //therefore fills up the empty vector

        count++;
        //each time you go through another ball according to the if statement
        //add one unit to the count and add diff vector to steer vector
        //we need to count as we are storing more and more vectors 
        //from different balls the vector would get huge
        //so we have to scale it down
      }
    }

    if (count > 0) {
      steer.scaleSelf(1.0/count);
      //scales the vector down
      //divides the steer vector by the number of stored vectors
      //to find the actual distance
    }

    //separate needs to provide the information of steer to the vector
    //of acceleration

    steer.scaleSelf(magnitude);
    //allowing us to have a scale factor to operations
    //allow us to modify how intense the steering is

    acc.addSelf(steer);
    //acceleration will now be passed on to the speed and then location
  }




  void lineBetween() {

    //draw a line between two balls
    //how to retrieve informaion of other balls
    //Array lists stores all balls
    //Array list = global variable = can access from anywhere

    //ballCollection;: collection array we want to go through

    for (int i = 0; i < ballCollection.size(); i++) {

      //goes up to size of collection
      //calculate a distance between location of ball and 
      //location of  ANY other ball

      Ball other = (Ball) ballCollection.get(i);
      //(Ball) = class ball
      //casting instance of class Ball and calling it other
      //and get EACH element from collection

      float distance = loc.distanceTo(other.loc);
      //distance between ball to all other balls
      //other.loc --> has access to all global values of other

      if (distance > 0 && distance < 40) {

        stroke(255, 0, 0);
        strokeWeight(0.4);
        line(loc.x, loc.y, other.loc.x, other.loc.y);
        //if distance between balls is smaller than 40
        //then a red line appears between them
        //loc.x and loc.y refers to all balls in this class
      }
    }
  }


  void display() {
    stroke(0);
    ellipse(loc.x, loc.y, 20, 20);
  }  

  void move() {

    //acceleration - where we store all movement calculated form the ball
    //and pass it on to the speed (=constant of movement from ball)
    //speed = actual movement of ball

    speed.addSelf(acc);
    //storing acceleration and passing it on to the speed

    speed.limit(2);
    //gives threshold for maximum velocity

    loc.addSelf(speed);
    //speed passed to the location - updated

      acc.clear();
    //reset acceleration to zero

    //ALL THESE ARE DONE EVERY FRAME
  }

  void bounce() {
    if (loc.x > width) {
      speed.x = speed.x*-1;
    }
    if (loc.x < 0) {
      speed.x = speed.x*-1;
    }
    if (loc.y < 0) {
      speed.y = speed.y*-1;
    }
    if (loc.y > height) {
      speed.y = speed.y*-1;
    }
  }

  void gravity() {
    speed.addSelf(gravity);
  }
}

//speed.x and speed.y used as speed has now been put in vector form

