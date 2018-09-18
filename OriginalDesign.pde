//sets up variables for program to run
int movement = 0;
int counter = 0;

void setup() {
  size(500, 500);
  background(#00CAFF);
  frameRate(20);
  println("Welcome To Turtle Land");
  println("Click Anywhere On The Canvas");
}

void draw() {
  // draws rectangle
  fill(colorSelector(counter));
  rect(movement, 0, 20, 20);
  
  fill(colorSelector(counter + 1));
  rect(480, movement, 20, 20);
  
  fill(colorSelector(counter + 2));
  rect(480 - movement, 480, 20, 20);
  
  fill(colorSelector(counter + 3));
  rect(0, 480 - movement, 20, 20);
    
    //changes values for x and y
  movement = movement + 20;
    
  if(movement >= 480){
    movement = 0;
    counter = counter + 3;
  }
}

void mouseClicked() {
  drawTurtle(mouseX, mouseY);
}

void drawTurtle(float x, float y) {
  fill(#8E4904);
  arc(x, y, 100, 100, PI, 2 * PI);
  
  fill(0, 255, 0);
  ellipse(x + 60, y - 20, 40, 40);
  
  arc(x + 10, y, 80, 40, 0, 3 * QUARTER_PI);
  
  arc(x - 50, y, 80, 40, 0, 3 * QUARTER_PI);
  
  fill(0);
  ellipse(x + 70, y - 20, 5, 5);
}

int colorSelector(int num) {
  if(num % 4 == 1) {
    return color(0, 0, 255);
  }else if(num % 4 == 2) {
    return color(255, 0, 0);
  }else if(num % 4 == 3) {
    return color(0, 225, 0);
  }else {
    return color(225, 225, 0);
  }
}
