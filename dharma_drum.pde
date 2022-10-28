// 20 little internal cubes
//Cube[] cubies = new Cube[100]; 

boolean recording = false;

// Size of outer cube
float bounds = 300;
boolean on = true;

void setup() {
  size(1000, 750, P3D);
  frameRate(24);
 
}

void draw() {
  float rf = random(140);
  background(random(255), random(255), random(255));
  
  //lights();

  // Center in display window
  translate(width/2, height/2, -130);

  // Rotate everything, including external large cube
  //rotateX(frameCount * 0.1);
  //rotateY(frameCount * 0.2);
  //rotateZ(frameCount * 0.002);


  //noStroke();

  if (mousePressed) {
    //translate( mouseX, -mouseY);
    //translate(frameCount *0.001, height/110);
    //fill(random(255));
    //on = true;
  }

  if (on) {
    for (int x=0; x<=width; x+=10) {
      for (int y=0; y <=height; y+=10) {
        stroke(55, 0, 0);
        //noStroke();
        strokeWeight(.1);
        fill(x/8, y/2, x*y/2);
        beginShape(QUAD_STRIP);
        vertex(width - x, height - y);
        vertex(width - rf, height - rf);
        vertex(x +10 + y, y+10+x);
        vertex(x,y);
        vertex(x/2, y/2);
        vertex(width/2, height/2);
        vertex(-mouseX, -mouseY);
        vertex(mouseX, mouseY);
        vertex(width/2, height/2);
        endShape();
        //ellipse(random(width), random(height), random(x), random(x));
        //on = false;
        rotateZ(frameCount * .000032);
        rotateY(-frameCount * .0000025);
        //rotateX(frameCount * .0001);
      }
    }
    if(recording) {
   saveFrame("frame2/1stcut_####.png");
  }
    
  }
  //rotateZ(frameCount *.04);

  //translate(mouseX, mouseY);
  // Outer transparent cube, just using box() method
  //noFill(); 
  //box(bounds);

  // Move and rotate cubies
  //for (Cube c : cubies) {
  //c.update();
  //c.display();
  //}
}

void keyPressed() {
 if (key == 'r' || key == 'R') {
  recording = !recording; 
 }
}
