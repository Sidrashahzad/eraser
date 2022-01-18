PImage img;

void setup() {
  size(300, 300);
  img = loadImage("https://happycoding.io/images/stanley-1.jpg");
}

void draw() {
  image(img, 0, 0);

  // Get the color at the mouse position
  color c = img.get(mouseX, mouseY);

  // Change the fill to that color
  fill(c);

  // Draw a rectangle with that color
  rect(mouseX, mouseY, 50, 50);
}
