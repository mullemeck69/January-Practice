import uibooster.*;


UiBooster booster;

int guess;
int secret;


void setup() {

  size(800, 400);
  background(10);

  booster =new UiBooster();

  guess = int(booster.showTextInputDialog("Vad tror du talet är?(1-100)"));
  
  secret = int(random(1, 100)) + 1;
}
