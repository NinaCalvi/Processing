void setup (){
  size (1000, 500);
  background (#106ADE);
}

void draw (){

if (mousePressed){  
  line(mouseX, mouseY, 500, 1);
  
//line( x coordinate of endpoint, y coordinate of endpoint, x coordinate of canvas WHERE IT SHOULD START, y WHERE IT SHOULD STAR
  
}

else{
  strokeWeight(1);
  line(mouseX, mouseY, mouseX, mouseY);
}


}
