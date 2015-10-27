

void setup (){
  size (1000, 500);
 background (#106ADE);
}


void draw (){
 // if background was put here, then the thing wouldn't draw
 // when pressed the mouse would have a thing following it
 // without however leaving anything on the screen
  if (mousePressed){
  stroke (#DA10DE);
  strokeWeight(6);
  line (mouseX, mouseY, pmouseX, pmouseY);

// pmouseX and pmouseY create continuous lines
  
}

}

