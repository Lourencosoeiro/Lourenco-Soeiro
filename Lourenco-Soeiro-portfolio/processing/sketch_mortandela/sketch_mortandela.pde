
  
  
// Drag (click and hold) your mouse across the 
// image to change the value of the rectangle

int value = 0;

void draw() {
  fill(value);
  rect(25, 24, 30, 50);
}

void mouseDragged() 
{
  value = value + 5;
  if (value > 300) {
    value = 0;
  }
}
