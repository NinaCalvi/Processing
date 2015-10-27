float xrect = 0;
float speed = 3;
float xell1 = 60;
float xell2 = 0;
float var = 1;

void setup (){
  size (500, 500);
}

void draw (){
  background (#12BFE0);
  move ();
  display ();
 
}

void move (){
  
  xrect = xrect + speed*var;
  xell1 = xell1 + speed*var;
  xell2 = xell2 + speed*var;
  if (xrect > width){
    xrect = 0;
  }
  if (xell1 > width+60){
    xell1 = 60;
  }
  
  if (xell2 > width){
    xell2 = 0;
  }
  
}

void mouseClicked (){
  
  if (var==1){
    var = 0;
  }else{
    var = 1;
  }
  }

//for mouseClicked to work, it had to be connected to void move()
//this is done by putting the variable var next to the speed
//and then setting the conditions for var in mouseClicked


void display (){
    fill(#FFDA08);
  rect(xrect, height/2, 60, 30);
 fill(#394E52);
  ellipse(xell2, height/2+30, 15, 15);
  ellipse(xell1, height/2+30, 15, 15);
}
