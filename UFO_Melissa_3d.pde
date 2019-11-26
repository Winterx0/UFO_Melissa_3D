PImage Ufo;
PShape UFO;


int framesEllapsed = 500;

int x = 25;
int y = 25;




void setup(){
  fullScreen(P3D, 2); //sets up a 500 x 200 screen with the 3d renderer
  Ufo = loadImage("Ufo.jpg"); // Load an image
  UFO = createShape(SPHERE, 50);
  UFO.setTexture(Ufo);

// Automatically texture the shape with the image Ufo.jpg(img);
}

void draw(){

  translate(width/4, height/2, 0); //moves the origin so the shape isn't offscreen
  lights(); //sets up default lights
  beginShape(SPHERE);
  texture(Ufo);
  vertex(-100, -100, 0, 0,   0);
  vertex( 100, -100, 0, 400, 0);
  vertex( 100,  100, 0, 400, 400);
  vertex(-100,  100, 0, 0,   400);
  endShape(SPHERE);


  float spin = framesEllapsed * 10;
  float rx = map(mouseY, 25, height, -PI, PI); //maps mouse locations to numbers between -pi and pi
  float ry = map(spin, 25, width, -PI, PI);
  
  rotateX(rx); //rotates x axis using mouse 
  rotateY(ry); //rotates y axis using mouse
  fill(230, 66, 36, 50);
{
  noStroke();
  shape(UFO);

  framesEllapsed ++;
 }
}
