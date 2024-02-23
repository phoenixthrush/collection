// SPDX-License-Identifier: MIT

/*
  Phoenixthrush UwU - 09/2023
  https://github.com/phoenixthrush
*/

void setup() {
    size(800, 800); // should be 1:1

    background(255);
    fill(0);
    stroke(0);
    
    textSize(width / 25);
    textAlign(CENTER);
    text("Please enter a number [1-8]:\n\nStraight Line\nCircle\nHouse\nSemicircle\nHouse Complicated\nStar\nSmiley\nPyramide", width/2, height/4);
}

void draw() {
    int margin = width / 4;
    if (keyPressed) {
        char symbol = key;
        
        background(255);
        stroke(0);
        fill(255);
    
        if (symbol == '1') {
            drawStraightLine();
        } else if (symbol == '2') {
            drawCircle();
        } else if (symbol == '3') {
            drawHouse(margin);
        } else if (symbol == '4') {
            drawSemicircle();
        } else if (symbol == '5') {
            drawHouseComplicated(margin);
        } else if (symbol == '6') {
            drawStar(margin);
        } else if (symbol == '7') {
            drawSmiley(margin);
        } else if (symbol == '8') {
            drawPyramide(margin);
        }
        
        keyPressed = false;
    }
}

// Task 1a - straight line
void drawStraightLine() {
    line(width * 0.1, height / 2, width * 0.9, height / 2);
}

// Task 1b - circle
void drawCircle() {
    ellipse(width / 2, height / 2, width * 0.9, height * 0.9);
}

// Task 2a - house
void drawHouse(int margin) {
    rectMode(CORNERS);
    triangle(margin, margin * 1.5, width - margin, margin * 1.5, width / 2, margin / 2); // roof
    rect(margin, height - margin / 1.5, width - margin, margin * 1.5);
}

// Task 2b - semicircle
void drawSemicircle() {
    arc(width / 2, height / 1.75, width / 2, height / 2, radians(180), radians(360));
}

// Task 2c - house using beginShape and endShape
void drawHouseComplicated(int margin) {
    // upper left -> upper right -> top -> upper left -> bottom left -> bottom right -> upper right
    beginShape();
    vertex(margin, margin * 1.5);
    vertex(width - margin, margin * 1.5);
    vertex(width / 2, margin / 2);
    vertex(margin, margin * 1.5);
    vertex(margin, height - margin / 1.5);
    vertex(width - margin, height - margin / 1.5);
    vertex(width - margin, margin * 1.5);
    endShape();
}

// Task 2d - star using beginShape and endShape
// this approach is not optimal, you would need to implement this using geometry inscribed in a circle or by a given distance between vertices
void drawStar(int margin) {
    // bottom left -> top -> bottom right -> upper left -> upper right -> bottom left
    beginShape();
    vertex(margin, height - margin / 2);
    vertex(width / 2, margin / 2);
    vertex(width - margin, height - margin / 2);
    vertex(margin / 2, margin * 1.5);
    vertex(width - margin / 2, margin * 1.5);
    vertex(margin, height - margin / 2);
    endShape();
}

// Task 2e - smiley
void drawSmiley(int margin) {
    int noseSize = margin / 4;

    ellipse(width / 2, height / 2, width - margin, height - margin); // head
    arc(width / 2, height / 2, width / 2, height / 2, radians(25), radians(155)); // mouth
    triangle(width / 2 - noseSize, height / 2 + noseSize, width / 2 + noseSize, height / 2 + noseSize, width / 2, height / 2 - noseSize / 6); // nose
    ellipse(width / 3, height / 2.5, width / 10, height / 10); // left eye
    ellipse(width / 1.5, height / 2.5, width / 10, height / 10); // right eye
}

// Task 2f - pyramide
void drawPyramide(int margin) {
    rectMode(CORNERS);
    rect(margin, height - margin * 1.5, margin * 1.5, height - margin); // bottom 1
    rect(margin * 1.5, height - margin * 1.5, margin * 2, height - margin); // bottom 2
    rect(margin * 2, height - margin * 1.5, margin * 2.5, height - margin); // bottom 3
    rect(margin * 2.5, height - margin * 1.5, margin * 3, height - margin); // bottom 4
    
    rect(margin * 1.25, height - margin * 2, margin * 1.75, height - margin * 1.5); // middle 1
    rect(margin * 1.75, height - margin * 2, margin * 2.25, height - margin * 1.5); // middle 2
    rect(margin * 2.25, height - margin * 2, margin * 2.75, height - margin * 1.5); // middle 3
    
    rect(margin * 1.5, height - margin * 2.5, margin * 2, height - margin * 2); // upper 1
    rect(margin * 2, height - margin * 2.5, margin * 2.5, height - margin * 2); // upper 2
    
    rect(margin * 1.75, height - margin * 3, margin * 2.25, height - margin * 2.5); // top
}

// Dev Notes v.0.1
/*  09.14.23 - 19:35-22:15
    7/8 done, pyramide left.
    Tried to make each coordinate dynamic to some extent.
*/

// Dev Notes v.0.2
/*  09.15.23 - 22:35-12:41
    Added pyramide.
    Code cleanup/ centered some coords.
*/
