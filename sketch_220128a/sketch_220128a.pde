void setup() {

  size(320, 320);
  background(0);


  for (int i = 0; i < 7; i++) {
    
    for (int j = 0; j < 7; j++) {
      
      if (i == j) {
        fill(0, 0, 255);
      } else { 
        fill(255, 255, 0);
      }
      
      ellipse(40 + i*40, 40 + j*40, 40, 40);
    }
    
  }
}
