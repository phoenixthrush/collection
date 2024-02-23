/* TASK 1a
int bucketX = 250;

void setup() {
  size(500, 500);
  rectMode(CENTER);
}

void draw() {
  background(0, 255, 0);
  rect(bucketX, height - 50, 75, 30);
}

void mousePressed() {
  if (mouseButton == LEFT) {
    bucketX -= 35;
  } else if (mouseButton == RIGHT) {
    bucketX += 35;
  }
}
*/

/* TASK 1b - (I'm on a mac (trackpad), switching from mouse to keyboard...)
// bug (all raindrops respawn after collecting all 3)
int bucketX = 250;
int rainX1, rainX2, rainX3;
float rainY1, rainY2, rainY3;
int fillColor = 255;
boolean gameOver = false;
int score = 0;

void setup() {
  size(500, 500);
  rectMode(CENTER);
  textAlign(CENTER, CENTER);
}

void draw() {
  background(0, 255, 0);
  fill(255);
  rect(bucketX, height - 50, 80, 30);

  if (frameCount % height == 1) {
    fillColor = int(random(0, 255));
    rainX1 = int(random(0, width));
    rainX2 = int(random(0, width));
    rainX3 = int(random(0, width));
    rainY1 = 10;
    rainY2 = 10;
    rainY3 = 10;
  }

  fill(fillColor);
  if (!gameOver) {
    rainY1 += random(0.5, 2);
    rainY2 += random(0.8, 2);
    rainY3 += random(1.2, 2);
  }
  ellipse(rainX1, rainY1, 30, 30);
  ellipse(rainX2, rainY2, 30, 30);
  ellipse(rainX3, rainY3, 30, 30);

  if (!gameOver) {
    if (checkCatch(rainX1, rainY1)) {
      println("Catch!");
      rainX1 = int(random(0, width));
      rainY1 = 1;
      score++;
    }
    if (checkCatch(rainX2, rainY2)) {
      println("Catch!");
      rainX2 = int(random(0, width));
      rainY2 = 1;
      score++;
    }
    if (checkCatch(rainX3, rainY3)) {
      println("Catch!");
      rainX3 = int(random(0, width));
      rainY3 = 1;
      score++;
    }

    if (rainY1 >= height || rainY2 >= height || rainY3 >= height) {
      gameOver = true;
    }
  }
  
  if (gameOver) {
    fill(255);
    rect(width / 2, height / 2, 400, 100);
    fill(0);
    textSize(32);
    text("Game Over!", width / 2, height / 2 - 20);
    text("Score: " + score, width / 2, height / 2 + 20);
    frameRate(0);
  }

  if (bucketX < -45) {
    bucketX = width;
  } else if (bucketX > width + 45) {
    bucketX = 0;
  }
}

void keyPressed() {
  if (keyCode == LEFT) {
    bucketX -= 35;
  } else if (keyCode == RIGHT) {
    bucketX += 35;
  }
}

boolean checkCatch(float rainX, float rainY) {
  return (rainX > bucketX - 40 && rainX < bucketX + 40 && rainY > height - 65 && rainY < height - 35);
}
*/
