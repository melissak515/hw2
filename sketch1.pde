void setup() {
size(500, 500);
}

void draw() {
background(0);
int x = 30;
while (x < 475) {
  fill(255);
  noStroke();  
  ellipse(x,x,25,25);
  x = x + 20;
}
}
