class Flakes{
  
  float yFlake = 0;
  float speed = 3.3;
  float y = 0;
  float var = 1;
  float varX = 1;
  float varX2 = 1;
  float x = 0;

  Flakes(float _x, float _y){
    
    x = _x;
    y = _y;
  }
  
  void run(){
    move();
    display();
  }
  
  void move(){

  y = y + speed*var;
  x = x + (speed*varX*varX2)/4;
if(y > height){
  y = height;
  varX2 = 0;
}


}

  
void display (){
 fill(255);
 
      ellipse(x, y, 10, 10);
     
  }

void mouseClicked(){
   if (var==1){
        var = 0;

    } else{
      var = 1;
    }
     if (varX==1){
        varX = 0;

    } else{
      varX = 1;
    }
}
}
  
