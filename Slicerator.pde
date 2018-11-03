ArrayList<Slice> slices;
float sliceWidth = 5;
float speed = 0.03;

void setup() {
  size(640, 640, P2D);
  frameRate(60);
  slices = new ArrayList<Slice>();
  
  for (int i=0; i<int(width/sliceWidth); i++) {
    float pos = i * sliceWidth;
    Slice slice = new Slice(pos, 0.0, sliceWidth, float(height), speed);
    slices.add(slice);
  }
}

void draw() {
  background(0);
  for (int i=0; i<slices.size(); i++) {
    slices.get(i).run();
  }
  saveFrame("render/frame####.tga");
}
