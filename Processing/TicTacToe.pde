boolean isPlayer1 = true;
boolean gameOver = false;

char[][] board = new char[3][3];

void setup() {
  size(500, 500);
  rectMode(CENTER);
  noFill();
  textAlign(CENTER, CENTER);
  textSize(32);

  line(0, height / 3, width, height / 3); // upper horizontal
  line(0, height - height / 3, width, height - height / 3);  // bottom horizontal

  line(width / 3, 0, width / 3, height); // left vertical
  line(width - width / 3, 0, width - width / 3, height);  // right vertical
}

void draw() {
  if (!gameOver) {
    char winner = checkWinner();
    if (winner != ' ') {
      gameOver = true;
      background(255);
      fill(0);
      if (winner == 'X') {
        text("Player 1 (X) wins!", width / 2, height / 2);
      } else if (winner == 'O') {
        text("Player 2 (O) wins!", width / 2, height / 2);
      } else {
        text("It's a draw!", width / 2, height / 2);
      }
      return;
    }
  }
  
  if (!isPlayer1 && !gameOver) {
    botMove();
  }
}

void mousePressed() {
  if (gameOver) return;
  
  int row = -1;
  int col = -1;
  
  if (mouseX >= 0 && mouseX < width / 3) {
    col = 0;
  } else if (mouseX >= width / 3 && mouseX < 2 * width / 3) {
    col = 1;
  } else if (mouseX >= 2 * width / 3 && mouseX < width) {
    col = 2;
  }
  
  if (mouseY >= 0 && mouseY < height / 3) {
    row = 0;
  } else if (mouseY >= height / 3 && mouseY < 2 * height / 3) {
    row = 1;
  } else if (mouseY >= 2 * height / 3 && mouseY < height) {
    row = 2;
  }
  
  if (row != -1 && col != -1 && board[row][col] == 0 && isPlayer1) {
    drawX((col + 0.5) * width / 3, (row + 0.5) * height / 3);
    board[row][col] = 'X';
    isPlayer1 = false;
  }
}

void keyReleased() {
  if (key == ' ') {
    resetGame();
  }
}

char checkWinner() {
  for (int i = 0; i < 3; i++) {
    if (board[i][0] == board[i][1] && board[i][1] == board[i][2] && board[i][0] != 0) {
      return board[i][0];
    }
  }
  
  for (int i = 0; i < 3; i++) {
    if (board[0][i] == board[1][i] && board[1][i] == board[2][i] && board[0][i] != 0) {
      return board[0][i];
    }
  }
  
  if (board[0][0] == board[1][1] && board[1][1] == board[2][2] && board[0][0] != 0) {
    return board[0][0];
  }
  
  if (board[0][2] == board[1][1] && board[1][1] == board[2][0] && board[0][2] != 0) {
    return board[0][2];
  }
  
  boolean isDraw = true;
  for (int i = 0; i < 3; i++) {
    for (int j = 0; j < 3; j++) {
      if (board[i][j] == 0) {
        isDraw = false;
        break;
      }
    }
  }
  if (isDraw) {
    return 'D';
  }
  
  return ' ';
}

void drawX(float x, float y) {
  line(x - 50, y - 50, x + 50, y + 50);
  line(x + 50, y - 50, x - 50, y + 50);
}

void drawO(float x, float y) {
  ellipse(x, y, 100, 100);
}

void botMove() {
  int[] bestMove = minimax(board, 'O');
  int row = bestMove[0];
  int col = bestMove[1];
  
  drawO((col + 0.5) * width / 3, (row + 0.5) * height / 3);
  board[row][col] = 'O';
  isPlayer1 = true;
}

int[] minimax(char[][] board, char player) {
  int[] bestMove = new int[]{-1, -1};
  int bestScore = (player == 'O') ? Integer.MIN_VALUE : Integer.MAX_VALUE;
  
  for (int i = 0; i < 3; i++) {
    for (int j = 0; j < 3; j++) {
      if (board[i][j] == 0) {
        board[i][j] = player;
        int score = minimaxHelper(board, 0, false);
        board[i][j] = 0;
        
        if ((player == 'O' && score > bestScore) || (player == 'X' && score < bestScore)) {
          bestScore = score;
          bestMove[0] = i;
          bestMove[1] = j;
        }
      }
    }
  }
  
  return bestMove;
}

int minimaxHelper(char[][] board, int depth, boolean isMaximizing) {
  char result = checkWinner();
  if (result != ' ') {
    if (result == 'O') {
      return 1;
    } else if (result == 'X') {
      return -1;
    } else {
      return 0;
    }
  }
  
  if (isMaximizing) {
    int bestScore = Integer.MIN_VALUE;
    for (int i = 0; i < 3; i++) {
      for (int j = 0; j < 3; j++) {
        if (board[i][j] == 0) {
          board[i][j] = 'O';
          int score = minimaxHelper(board, depth + 1, false);
          board[i][j] = 0;
          bestScore = max(score, bestScore);
        }
      }
    }
    return bestScore;
  } else {
    int bestScore = Integer.MAX_VALUE;
    for (int i = 0; i < 3; i++) {
      for (int j = 0; j < 3; j++) {
        if (board[i][j] == 0) {
          board[i][j] = 'X';
          int score = minimaxHelper(board, depth + 1, true);
          board[i][j] = 0;
          bestScore = min(score, bestScore);
        }
      }
    }
    return bestScore;
  }
}

void resetGame() {
  for (int i = 0; i < 3; i++) {
    for (int j = 0; j < 3; j++) {
      board[i][j] = 0;
    }
  }
  gameOver = false;
  isPlayer1 = true;
  background(205);
  line(0, height / 3, width, height / 3); // upper horizontal
  line(0, height - height / 3, width, height - height / 3);  // bottom horizontal

  line(width / 3, 0, width / 3, height); // left vertical
  line(width - width / 3, 0, width - width / 3, height);  // right vertical
  noFill();
}
