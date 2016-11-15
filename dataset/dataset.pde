int[]colors;

void setup () {
  size(600, 200);
  Table stats = loadTable("HairEyeColor.csv", "header");
  colors = new int [stats.getRowCount()];
  for (int i=0; i<stats.getRowCount(); i++) {
    //colors[i] = stats.getInt(i, 2);
    colors[i] = stats.getInt(i, 4);
  }
}


void draw() {
  background(255);
  stroke(0);
  fill (random (0, 255), random (0, 255), random (0, 255));
  beginShape();
  for (int i = 0; i < colors.length; i++) {
    float x = width / colors.length;
    float y = height - colors [i];
    rect ((x * i), y, x, y);
  }
  endShape();
  
}