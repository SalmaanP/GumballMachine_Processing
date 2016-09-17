GumballMachine gm = new GumballMachine(100);
boolean b1Press = false;
boolean b2Press = false;

void setup() 
{
  size(800, 800) ;
  background(255) ;
  smooth() ;
  strokeWeight(3);
  strokeCap(ROUND);
  frameRate(30);
}

void draw() {

  fill(0);
  PFont font;
  font = loadFont("BookAntiqua-48.vlw");
  textFont(font, 32);

  text("The Gumball Machine", 250, 60);

  PImage image = loadImage("gumball.jpg");
  image(image, (width-image.width)/2, (height-image.height)/2);
  textSize(18);
  text("Current Gumball count: " + gm.count, 50, 400);

  drawBoxes();
  //runTest() ;
  //System.out.println(mouseX);
}

public void drawBoxes() {



  if ((mouseX > 200) && (mouseX < 300) && (mouseY > 670) && (mouseY < 720)) {
    fill(96);
    if (mousePressed) {
      gm.insertQuarter();
      b1Press = true;  
      b2Press = false;
    }
  } else {
    fill(255);
  }
  if (b1Press) {
    fill(0);
    rect(200, 670, 100, 50, 10);
  } else {
    rect(200, 670, 100, 50, 10);
  }

  if ((mouseX > 500) && (mouseX < 600) && (mouseY > 670) && (mouseY < 720)) {
    fill(96);
    if (mousePressed) {
      gm.turnCrank();
      b2Press = true;
      b1Press = false;
    }
  } else {
    fill(255);
  }
  if (b2Press) {
    fill(0);
    rect(500, 670, 100, 50, 10);
  } else {
    rect(500, 670, 100, 50, 10);
  }
  fill(0);
  textSize(14);
  if (b1Press)
    fill(255);
  text("Insert Quarter", 205, 700);
  fill(0);
  if (b2Press)
    fill(255);
  text("Turn Crank", 512, 700);
  fill(0);
}


public void runTest() {
  GumballMachine gumballMachine = new GumballMachine(5);
  System.out.println(gumballMachine);
  gumballMachine.insertQuarter();
  gumballMachine.turnCrank();
  System.out.println(gumballMachine);
  gumballMachine.insertQuarter();
  gumballMachine.turnCrank();
  gumballMachine.insertQuarter();
  gumballMachine.turnCrank();
  System.out.println(gumballMachine);
}