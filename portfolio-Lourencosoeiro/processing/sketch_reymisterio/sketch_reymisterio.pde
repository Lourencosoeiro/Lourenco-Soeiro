PGraphics pg;

void setup() {
  size(640, 360);
  pg = createGraphics(700, 200);
}

void draw() {
  fill(0, 12);
  rect(0, 0, width, height);
  fill(255);
  noStroke();
  ellipse(mouseX, mouseY, 60, 60);
  
  pg.beginDraw();
  pg.background(789);
  pg.noFill();
  pg.stroke(899);
  pg.ellipse(mouseX-120, mouseY-60, 60, 60);
  pg.endDraw();
  
  // Draw the offscreen buffer to the screen with image() 
  image (pg, 120, 60); 
}
