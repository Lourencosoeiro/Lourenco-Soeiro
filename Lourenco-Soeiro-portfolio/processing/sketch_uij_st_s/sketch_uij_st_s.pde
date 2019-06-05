
PVector location;  // Location of shape
PVector velocity;  // Velocity of shape
PVector gravity;   // Gravity acts at the shape's acceleration

void setup() {
  size(640,360); 
  location = new PVector(100,100);
  velocity = new PVector(1.5,2.1);
  gravity = new PVector(0,0.2);

}

void draw() {
  background(400, 200, 30);
  
  // Add velocity to the location.
  location.add(velocity);
  // Add gravity to velocity
  velocity.add(gravity);
  
  // Bounce off edges
  if ((location.x > 550) || (location.x < 0)) {
    velocity.x = velocity.x * -1;
  }
  if (location.y > 360) {
    // We're reducing velocity ever so slightly 
    // when it hits the bottom of the window
    velocity.y = velocity.y * -0.95; 
    location.y =  300;
  }

  // Display circle at location vector
  stroke(255);
  strokeWeight(30);
  fill(45, 23, 00);
  ellipse(location.x,location.y,48,48);
}
