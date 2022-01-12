int x = 20, y = 40, w = 70, h = 50;

void setup() {
  size(600, 600);
  background(255);

  stroke(240);
  for (int linex = 0; linex < width; linex = linex+40) {
    for (int liney = 0; liney < height; liney = liney + 40) {
      line(0, liney, width, liney);
    }
    line(linex, 0, linex, height);
  }

  fill(255, 0, 0);
  rect(x, height - 250, w, h);

  fill(0, 255, 0);
  rect(x, height - 190, w, h);

  fill(0, 0, 255);
  rect(x, height - 130, w, h);

  fill(0);
  rect(x, y, w, h);
  textSize(17);
  text("Erase everything", 10, 30);
}

void draw() {
  if ((keyPressed && key == 'r') || (mousePressed && mouseX > x && mouseX < x + w && mouseY > (height - 250) && mouseY < (height - 250) + h)) {
    fill(255, 0, 0);
  }
  if (keyPressed && key == 'g'|| (mousePressed && mouseX > x && mouseX < x + w && mouseY > (height - 190) && mouseY < (height - 190) + h)) {
    fill(0, 255, 0);
  }
  if (keyPressed && key == 'b' || (mousePressed && mouseX > x && mouseX < x + w && mouseY > (height - 130) && mouseY < (height - 130) + h))  {
    fill(0, 0, 255);
  }
  if (keyPressed && key == 'n'){
    fill(0);
  }

  if (mousePressed) {
    noStroke();
    ellipse(mouseX, mouseY, 20, 20);
  }

  if (mouseX > x && mouseX < x + w && mouseY > y && mouseY < y+h && mousePressed) {
    setup();
  }
}
