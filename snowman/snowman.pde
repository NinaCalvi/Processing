ArrayList flakesCollection;



void setup (){
  size(500, 500);
  smooth();
  
  flakesCollection = new ArrayList();
  
  
}


void draw (){
  background(#14FAEC);
  strokeWeight(1);
    
    
  fill(255);
  ellipse(440, 450, 100, 100);
  // the final two values for the ellipse are the diameter
  ellipse(440, 370, 74, 74);
  ellipse(440, 315, 54, 54);
  fill(0);
  ellipse(453.5, 315, 5, 5);
  ellipse(426.5, 315, 5, 5);
  strokeWeight(3);
  line(340, 340, 404, 370); 
  line(350, 325, 355, 344);
  line(345, 363, 355, 344);
  line(510, 340, 478, 370);
  strokeWeight(0);
  fill(#F79A02);
  triangle(435, 321, 444, 321, 439.5, 316);

  Flakes myFlakes = new Flakes(random(-width, width), -50);
  flakesCollection.add(myFlakes);

for(int i = 1; i < flakesCollection.size(); i++){
   Flakes myF = (Flakes) flakesCollection.get(i);
   myF.run();  
}
  
}

void mouseClicked(){
for(int i = 1; i < flakesCollection.size(); i++){
Flakes myF = (Flakes) flakesCollection.get(i);
  myF.mouseClicked();
}
}



