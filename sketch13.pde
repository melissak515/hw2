float x = 100;
float y = 450;
float xspeed = 3;
float yspeed = 4;

void setup() {
  size(500,500);
  smooth();
  background(255);
}

void draw() {
  noStroke();
  fill(255);
  rect(0,0,width,height);
  
  // Add the current speed to the location.
  x = x + xspeed;
  y = y + yspeed;

  // Check for bouncing
  if ((x+23 > width) || (x < 23)) {
    xspeed = xspeed * -1;
  }
  if ((x-23 < 0)) {
    xspeed = xspeed * 1;
  }
  if ((y+23 > height) || (y < 23)) {
    yspeed = yspeed * -1;
  }
  if ((y+23 < width)) {
    yspeed = yspeed * 1;
  }

  // Display at x,y location
  noStroke();
  fill(214,41,0);
  ellipse(x,x,46,46);
  fill(152,250,56);
  noStroke();
  ellipse(y,x,46,46);
}
