//TaskSix

int red = color(242, 17, 17);
int yellow = color(242, 205, 17);
int green = color(17, 242, 17);
int grey = color(72, 72, 72);

int light1 = red;
int light2 = grey;
int light3 = grey;

void setup () {
  size(400, 600);
  background(255);

  frameRate(5);
}


int i=0;

void draw () {
  switch(frameCount%250) {
  case 0:
    light1 = red;
    light2 = grey;
    light3 = grey;
    println("Rødt");
    break;
  case 90:
    light1 = red;
    light2 = yellow;
    light3 = grey;
    println("Skifter til grøn");
    break;
  case 100:
    light1 = grey;
    light2 = grey;
    light3 = green;
    println("Grønt lys");
    break;
  case 225:
    light1 = grey;
    light2 = yellow;
    light3 = grey;
    println("Skifter til gult");
    break;
  }


  rectMode(CENTER);
  fill(0);
  rect(width/2, height/3, width/5, height/2);


  fill(light1);
  ellipse(width/2, height/5.5, width/5, width/5);

  fill(light2);
  ellipse(width/2, height/3, width/5, width/5);

  fill(light3);
  ellipse(width/2, height/2, width/5, width/5);
}
