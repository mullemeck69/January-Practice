import uibooster.*;


UiBooster booster;
UiBooster booster2;

int guess;
int secret;
String answer;
String gameState = "PLAY";



void setup() {
  textSize(30);
  textAlign( CENTER, CENTER);
  size(800, 400);
  background(10);


  booster = new UiBooster();
  booster2 = new UiBooster();
}


void draw() {

  switch(gameState) {

    case("PLAY"):

    guess = int(booster.showTextInputDialog("Gissa på ett tal mellan 1-100"));

    secret = int(random(1, 100)) + 1;

    if ( guess-secret == 0) {
      text("Rätt tal!", width/2, height/2);
    } else if (guess - secret == abs(10)) {
      text(("Hyfsat ändå, inom 10... (rätt svar är " + secret), width/2, height/2);
    } else { 
      text("Dålig gissning, rätt svar är " + secret, width/2, height/2);
    }
    gameState = "ASK";
    break;

    case("ASK"):

    answer = booster2.showTextInputDialog("Vill du spela igen?");

    if (answer == "ja") {
      gameState = "PLAY";
      println(answer);
    } else {
      exit();
    }
    break;
  }
}
