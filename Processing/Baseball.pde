int x = 500; // half width
int catchCount, highscore, ballHeight;
int ballSpeed = 2;
int playerSpeed = 1;
int ballX = 500; // half width
boolean gameOver;

void setup() {
  size(1000, 500);
  noFill();
  stroke(255);
  rectMode(CENTER);
  textAlign(CENTER, CENTER);
}

void draw() {
  background(0);
  
  textSize(20);
  text("Shoot: ENTER\nMove: WASD", 900, 50);
  
  textSize(30);
  text("Catches: " + catchCount, 100, 50);
    
  if (gameOver) {
    strokeWeight(5);
    rect(width * 0.50, height * 0.35, width * 0.35, height * 0.20);
    textSize(50);
    text("Game Over!", width * 0.50, height * 0.35);
    
    strokeWeight(3);
    rect(width * 0.50, height * 0.75, width * 0.5, height * 0.35);
    
    textSize(25);
    text("Press The Space Key", width * 0.5, height * 0.75);
    
    textSize(30);
    text("Highscore: " + highscore, width * 0.5, height * 0.1);
    if (catchCount > highscore) {
      highscore = catchCount; 
    }
  } else {
    strokeWeight(2);
    line(x - 15, height - 50, x + 15, height - 50);
    line(x, height - 50 + 15, x, height - 50 - 15);

    if (x > width) {
      x = 0;
    } else if (x < 0) {
      x = width;
    }
    
    circle(ballX, ballHeight, 50);
    if (ballHeight > height) {
      ballHeight = 0;
    } else {
      ballHeight += ballSpeed;
    }
    
    if (dist(x, height - 50, ballX, ballHeight) <= 25 && keyCode == ENTER) {
      catchCount++;
      if (catchCount % 5 == 0) {
        ballSpeed ++;
        playerSpeed += 1;
      }
      ballHeight = 0;
      ballX = int(random(25, width - 25));
    } else if (ballHeight == 0) {
      gameOver = true;
    }
  }
}

void keyPressed() {
  if (key == 'a' || keyCode == LEFT) {
    x -= 20 * playerSpeed;
  } else if (key == 'd' || keyCode == RIGHT) {
    x += 20 * playerSpeed;
  } else if (key == ' ' && gameOver) {
    gameOver = !gameOver;
    catchCount = 0;
    playerSpeed = 1;
    ballSpeed = 2;
    x = width / 2;
  }
}
