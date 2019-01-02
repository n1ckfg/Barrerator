ArrayList<Bar> bars;
float barWidth = 5;
float speed = 0.03;

void setup() {
  size(640, 640, P2D);
  frameRate(60);
  bars = new ArrayList<Bar>();
  
  for (int i=0; i<int(width/barWidth); i++) {
    float pos = i * barWidth;
    Bar bar = new Bar(pos, 0.0, barWidth, float(height), speed);
    bars.add(bar);
  }
}

void draw() {
  background(0);
  for (int i=0; i<bars.size(); i++) {
    bars.get(i).run();
  }
  saveFrame("render/frame####.tga");
}
