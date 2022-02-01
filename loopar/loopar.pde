float [] x;
float [] y;

void setup() {
  size(300, 300);
  x = new float[20];
  y = new float[20];
}



void draw() {
 
  for (int i = 0; i < x.length; i++){ 
    x[i] = i;
  }
  for (int i = 0; i < y.length; i++){ 
    y[i] = 3*x[i];
  }
  for(int i = 0; i < x.length; i++){
    ellipse(x[i], y[i], 10, 10);
  }
}
