//Java Processing Implementation of 
int w, h, k, gridW, gridH, tries;
float minimumRadius, minimumRadiusSquared, cellSize;
int [] grid;

ArrayList<PVector> active, points;

PVector selection;

PointGrid g;

void setup() {
  size( 600, 600 );
  pixelDensity(2);
  
  k = 40;
  tries = 0;
  minimumRadius = 20;
  
  g = new PointGrid( 600, 600, minimumRadius );
  g.createPoints();
  
  smooth();
}

void draw() {
  background(200);
  //translate(50,50);
  noStroke();
  fill(255);
  for( PVector p : g.points ) {
    ellipse( p.x, p.y, 7, 7 );
  }
  
  //stroke(100);
  //strokeWeight(1);
  //noFill();
  //rect(0, 0, 500, 500);
}

void mouseClicked() {
  setup();
}

void keyPressed() {
  if( key == ' ' ) {
    saveFrame("dots.png");
  }
}