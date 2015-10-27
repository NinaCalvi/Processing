void setup () {
  size(600, 600);
  smooth();
}

void draw () {
  background(0);
  // for loop = repetition function 
  // repeats something for a certain amount of times

  for (int i = 0; i < 20; i = i + 1 ) {
    for (int j = 0; j < 20; j = j + 1 ) {
      // int i = number
      //               = where we want to start
      // then says where we want it to end
      // finally by how much we want it to change
      // EXTRA NOTATION: i++ and i +=1 ALL MEAN i + 1
      // creates a grid because when on changes the other
      // can stay constant and so on
      // if I were just to use i instead of creating j
      // then the x and y positions would increment at the same rate
      // therefore creating a diagonal
      ellipse(i*20, j*20, 20, 20);
    }
  }
}

