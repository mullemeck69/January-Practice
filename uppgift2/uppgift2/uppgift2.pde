import uibooster.*;


UiBooster booster;

int guess;
int secret;


void setup() {

  size(800, 400);
  background(10);

textSize(30);
textAlign( CENTER, CENTER);
  booster =new UiBooster();

  guess = int(booster.showTextInputDialog("Gissa på ett tal mellan 1-100"));

  secret = int(random(1, 100)) + 1;

  if ( guess-secret == 0) {
    text("Rätt tal!", width/2, height/2);
  } else if (guess - secret == abs(10)) {
    text(("Hyfsat ändå, inom 10... (rätt svar är " + secret), width/2, height/2);
  } else { 
    text("Dålig gissning, rätt svar är " + secret, width/2, height/2);
  }
}
