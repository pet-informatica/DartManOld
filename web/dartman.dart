import 'dart:html';

CanvasElement backgroundCanvas;
CanvasElement gameCanvas;
ImageElement sprites;

void main() {
  backgroundCanvas = query("#background");
  gameCanvas = query("#game");
  drawBackground();
  drawGame();
}

void drawBackground(){
  var context = backgroundCanvas.context2D;
  Rect rect = backgroundCanvas.client;
  context.clearRect(0, 0, rect.width, rect.height);
  context.fillStyle = "#000";
  context.fillRect(0, 0, rect.width, rect.height);
}

void drawGame(){
  var context = gameCanvas.context2D;
  Rect rect = gameCanvas.client;
  context.fillStyle = "red";
  context.fillRect(50, 50, 30, 30);
}