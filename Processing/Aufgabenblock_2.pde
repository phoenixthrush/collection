// SPDX-License-Identifier: MIT

/*
  Phoenixthrush UwU - 09/2023
  https://github.com/phoenixthrush
*/

void setup() {
    size(500, 500); // should be 1:1

    background(255);
    fill(0);
    stroke(0);
    
    textSize(width / 25);
    textAlign(CENTER);
    text("Please enter a number [1-8]:\n\nCode Example 1a(1)\nCode Example 1a(2)\nButton\nRectangles\nHalf\nFace\nFace + Mouth\nRainbow", width/2, height/4);
}

void draw() {
    int margin = width / 4;
    if (keyPressed) {
        char symbol = key;
        
        background(255);
        stroke(0);
        fill(255);
    
        if (symbol == '1') {
            resetToDefault();
            drawCodeExampleA();
        } else if (symbol == '2') {
            resetToDefault();
            drawCodeExampleB();
        } else if (symbol == '3') {
            resetToDefault();
            drawButton();
        } else if (symbol == '4') {
            resetToDefault();
            drawRectangles();
        } else if (symbol == '5') {
            resetToDefault();
            drawHalf();
        }  else if (symbol == '6') {
            resetToDefault();
            drawFace(margin);
        }  else if (symbol == '7') {
            resetToDefault();
            drawFaceMouth(margin);
        }  else if (symbol == '8') {
            resetToDefault();
            drawRainbow();
        } else {
            setup();
        }
        
        keyPressed = false;
    }
}

void resetToDefault() {
  fill(255);
  stroke(0);
  strokeWeight(1);
  rectMode(CORNER);
}

// Task 1a,(1)- Black Circle, White Rectangle, White Triangle
void drawCodeExampleA() {
  fill(0);
  ellipse(40, 40, 35, 35);
  fill(255);
  rect(40, 40, 40, 30);
  triangle(60, 60, 20, 90, 60, 90);
}

// Task 1a,(2) - Black Circle, Black Rectangle, White Triangle
void drawCodeExampleB() {
  fill(0);
  ellipse(40, 40, 35, 35);
  rect(40, 40, 40, 30);
  fill(255);
  triangle(60, 60, 20, 90, 60, 90);
}

// Task 1b - Red circle mid screen with white stroke, thickness 5 and black background
void drawButton() {
  background(0);
  fill(255, 0, 0);
  stroke(255);
  strokeWeight(5);
  ellipse(width / 2, height / 2, 80, 80); // 80px
}

// Task 1c - Two rectangles that overlap, white background
// 1st one no stroke but green filling, 2nd one black stroke no filling
void drawRectangles() {
  fill(0, 255, 0);
   noStroke();
   rect(width / 2, height / 2, width / 4, height / 4); // 1st rectangle
 
   noFill();
   stroke(0);
   rect(width / 4, height / 4, width / 3, height / 3); // 2nd rectangle
}

// Task 2a - right half black
void drawHalf() {
  fill(0);
  rect(width / 2, 0, width / 2, height);
}

// Task 2b - face
void drawFace(int margin) {
  fill(0);
  ellipse(width / 2, height / 2, width - margin, height - margin); // head
  fill(255);
  ellipse(width / 2 - margin / 2, height / 2 - margin / 2, width / 6, height / 6); // left eye
  ellipse(width / 2 + margin / 2, height / 2 - margin / 2, width / 6, height / 6); // right eye
  strokeWeight(width / 15);
  point(width / 2 - margin / 2, height / 2 - margin / 2); // left eye
  point(width / 2 + margin / 2, height / 2 - margin / 2);  // right eye
}

// Task 2c - face + mouth
void drawFaceMouth(int margin) {
  fill(0);
  ellipse(width / 2, height / 2, width - margin, height - margin); // head
  fill(255);
  ellipse(width / 2 - margin / 2, height / 2 - margin / 2, width / 6, height / 6); // left eye
  ellipse(width / 2 + margin / 2, height / 2 - margin / 2, width / 6, height / 6); // right eye
  strokeWeight(width / 15);
  point(width / 2 - margin / 2, height / 2 - margin / 2); // left eye
  point(width / 2 + margin / 2, height / 2 - margin / 2);  // right eye
  rectMode(CENTER);
  strokeWeight(width / 100);
  rect(width / 2, height - margin * 1.5, width / 2, height / 5, 90, 90, 90, 90); // mouth
  line(margin, height - margin * 1.5, width - margin, height - margin * 1.5); // horizontal
  line(width - margin * 2.5, height - margin * 1.1, width - margin * 2.5, height - margin * 1.9); // vertical 1
  line(width - margin * 2, height - margin * 1.1, width - margin * 2, height - margin * 1.9); // vertical 2
  line(width - margin * 1.5, height - margin * 1.1, width - margin * 1.5, height - margin * 1.9); // vertical 3
}

// Task 2d - rainbow
void drawRainbow() {
  background(0,0,255); // blue
  fill(255, 0, 0); // red
  strokeWeight(width / 200);
  ellipseMode(CENTER);
  arc(width / 2, height, width, width, radians(180), radians(360));
  fill(255, 127, 0); // orange
  arc(width / 2, height, width * 0.8, width * 0.8, radians(180), radians(360));
  fill(255, 255, 0); // yellow
  arc(width / 2, height, width * 0.6, width * 0.6, radians(180), radians(360));
  fill(0, 0, 255); // blue
  arc(width / 2, height, width * 0.4, width * 0.4, radians(180), radians(360));
}

// Development Notes v0.1
/* 
   Date: 09/20/23
   Progress: 3/8 tasks completed.
*/

// Development Notes v0.2
/* 
   Date: 09/21/23
   Progress: All 8 tasks completed.
   Accomplishments:
   - Implemented menu functionality.
   - Resolved the issue with the strokeWeight() function.
   - Corrected mouth sizing.
   - Conducted code cleanup.

   TODO:
   - [DONE] Adjust the size of the face() and faceMouth() functions to match.
   - [DONE] Resolve the strokeWeight() bug.

   Potential improvements for the next version:
   - Renaming variables to enhance code readability
     (e.g., changing every 'width / 2' to 'halfScreenWidth')."
*/
