float w, h;
float r = 0;
float n = 10;

void setup() {
  size(401, 401);
  w = width / n;
  h = height / n;
}

void draw() {
  background(155);
  for (int i = 0; i < w; i++) {
    for (int j = 0; j < h; j++) {
      rectMode(CORNER);
      noFill();
      noStroke();
      rect(i * w, j * h, w, h);

      rectMode(CENTER);
      pushMatrix();
      fill(255);
      translate(i*w + w/2, j*h + h/2);
      if (i*j % 2 == 0) {
        rotate(radians(-r));
      } else {
        rotate(radians(r));
      }
      scale(noise(i, j));
      triangle(-w/2, h/2, 0, -h/2, w/2, h/2);
      popMatrix();
    }
  }
  r += 0.1;
}