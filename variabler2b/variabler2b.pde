import uibooster.*;

UiBooster booster;

String name;
String salary;
String procent;
float answer;

void setup() {
  size(800, 400);
  background(10);

  booster = new UiBooster();
  name = booster.showTextInputDialog("Vad heter du?");
  booster = new UiBooster();
  salary = booster.showTextInputDialog("Vad har du för månadslön?");
  booster = new UiBooster();
  procent = booster.showTextInputDialog("Vad vad är din löneförhöjning i procent?");

  float answer1 = float(salary);
  float procent1 = float(procent);
  answer = answer1*(procent1/100+1);
  
}

void draw() {
  textAlign(CENTER, CENTER);
  textSize(32);
  text(name +", din ny månadslön är " + answer, width/2, height/2);
 
}
