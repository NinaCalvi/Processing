// static drawings!!
// colors: RGB = red, green, blue
//shape(x, y, width, height)

//size( 500, 200 );
//background(200, 180, 150);

//stroke(234, 0, 0);
//rect (200, 100, 30, 40);

/**

the color for a picture has to go before the actual shape

stroke(222, 50, 100);
fill(19, 19, 164);
ellipse(215, 120, 45, 30); 

**/

//interact
// setup = things that happen once at the beginning
    // function size (width, height); - size of canvas
// draw = goes on forever - goes in LOOPS
    // background then shape then ellipse etc. 
// void action etc (){ code } --> azione!!
// varying the way shapes are drawn - give variables (e.g. x value of mouse and y value of mouse)

void setup (){
  size(1000, 500);
  background( #D60D0D);
  
 /** If background put in setup, then you draw therefore the things that you move in draw will leave things
 behind, like actually drawing, while if you put the backfround in draw the things will just move without
 leaving any drawing behind **/
 // color can also be inserted with the color selector in tools and then just write the value for it
 

}

void draw (){

  // if no background, then the thing doesn't run smoothly -- mainly leaves pictures of itself behind. 
 // color can also be inserted with the color selector in tools and then just write the value for it
 

  stroke(255, 255, 255);
  fill(128, 220, 90);
  
  // CONDIITIONAL STATEMENT true and false questions make it so that they can have more animation options 
  /** if ( action ) {
 } **/
 
 if(mousePressed){
 background( #D60D0D);
 
 // causes what drawn to be erased
 }
 
/**saying that when the thing is pressed, the background stays fixed, but the rectangle stays therere because it isn't
in the if function. If it were there then it would print the rectangle wher the mouse is but clear everything that was
put there before. If the reactangle was to go in an else function, then when clicked, it would only show the red background
without the rectangle on the pointer, and then when that was left it would draw again (what was drawin before would be 
erased)**/

   rect (mouseX, mouseY, 50, 50);

/** if rectangle in the if with the background, it would cause it to be printed on the screen, but when clicked again it 
would erase and print in the other position. Similarly, if it would be put in the if function without the background
it would just keep printing the rectangles without erasing it as the background wouldn't be set back to normal*/

 }
 


  


