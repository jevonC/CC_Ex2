//Declaring variables used for animation

//Left Curtain Variables, 3 moving vertices identified (LC1, LC2, LC3)
float LC1x=174.02;
float LC1y=391.37;
float speedLC1x=0.2; //determines rate of change of moving point's x-coordinate
float speedLC1y=0.05; //determines rate of change of moving point's x-coordinate

float LC2x=151.67;
float LC2y=690.16;
float speedLC2x=0.2;
float speedLC2y=0.05;

float LC3x=135;
float LC3y=800;
float speedLC3x=0.25;
float speedLC3y=0.02;

//Right Curtain Variables, 4 moving vertices identified (RC1, RC2, RC3, RC4)
float RC1x=816.18;
float RC1y=394.15;
float speedRC1x=0.2;
float speedRC1y=0.20;

float RC2x=845;
float RC2y=655;
float speedRC2x=0.15;
float speedRC2y=0.05;

float RC3x=843.71;
float RC3y=712.93;
float speedRC3x=0.1;
float speedRC3y=0.1;

float RC4x=595.45;
float RC4y=737.64;
float speedRC4x=0.25;
float speedRC4y=0.15;

//Dress Variables, 3 moving vertices identified (DV1, DV2, DV3)
float D1x=634.88;
float D1y=390.75;
float speedD1x=0.9;
float speedD1y=0.4;

float D2x=555;
float D2y=595;
float speedD2x=0.8;
float speedD2y=0.4;

float D3x=434.05;
float D3y=644.41;
float speedD3x=0.8;
float speedD3y=0.2;


//Determining size and frames per second, set to 30 fps for animation 
void setup() {
  size(1041, 783);
  smooth();
  frameRate(30);
}

//Interactive elements and animation goes here
void draw() {
  //The following are static items that need to be recalled every frame to prevent trails during animation

  //Left Wall
  noStroke();
  fill(#7B736D);
  beginShape();
  vertex(0, 0);
  vertex(556.56, 0);
  vertex(810.99, 50.2);
  vertex(810.99, 721.57);
  vertex(415.63, 782.75);
  vertex(0, 782.75);
  endShape(CLOSE); 

  //Right Wall
  noStroke();
  fill(#3D341E);
  beginShape();
  vertex(810.99, 48.24);
  vertex(888.24, 0);
  vertex(1042.11, 0);
  vertex(1042.11, 782.75);
  vertex(951.31, 782.75);
  vertex(810.99, 722.75);
  endShape(CLOSE);

  //AC
  noStroke();
  fill(#656A5F);
  beginShape();
  vertex(0, 0);
  vertex(329.56, 0);
  vertex(329.56, 240.31);
  vertex(0, 215.99);
  endShape(CLOSE);

  //Bed
  noStroke();
  fill(#A9C1D0);
  beginShape();
  vertex(422.76, 782.75);
  vertex(810.99, 722.67);
  vertex(942.75, 782.75);
  endShape(CLOSE);

  //Corner Roof
  noStroke();
  fill(#342916);
  beginShape();
  vertex(550.60, 0);
  vertex(888.24, 0);
  vertex(810.99, 50.2);
  endShape(CLOSE);

  //If mouse hovers on one window, adjacent window in clockwise rotation lights up

  //To switch Left Window on
  if (mouseX>351.87 && mouseX<564.65 && mouseY>204.22 && mouseY<601) { //mouse must be within coordinates of previous window in clockwise rotation 
    noStroke();
    fill(random(235), random(10), random(10), random(75)); //strobe of random colours, slightly different for each window panel
    beginShape();
    vertex(76.37, 251.37);
    vertex(309.33, 264.23);
    vertex(309.33, 626.62);
    vertex(76.37, 651.33);
    endShape(CLOSE);
  } else { //otherwise, nothing happens
    noStroke();
    fill(#FFFFFF);
    beginShape();
    vertex(76.37, 251.37);
    vertex(309.33, 264.23);
    vertex(309.33, 626.62);
    vertex(76.37, 651.33);
    endShape(CLOSE);
  }

  //To switch Right Window Top-Left (i.e the top-left window on the set of 4 windows) on
  if (mouseX>76.37 && mouseX<309.33 && mouseY>264.23 && mouseY<626.62) {
    noStroke();
    fill(random(10), random(235), random(10), random(75));
    beginShape();
    vertex(352.87, 23.03);
    vertex(564.65, 53);
    vertex(564.65, 179.52);
    vertex(351.87, 158.34);
    endShape(CLOSE);
  } else {
    noStroke();
    fill(#FFFFFF);
    beginShape();
    vertex(352.87, 23.03);
    vertex(564.65, 53);
    vertex(564.65, 179.52);
    vertex(351.87, 158.34);
    endShape(CLOSE);
  }

  //To switch Right Window Top-Right on
  if (mouseX>351.87 && mouseX<564.65 && mouseY>53 && mouseY<158.34) {
    noStroke();
    fill(random(10), random(10), random(235), random(75));
    beginShape();
    vertex(591.38, 57);
    vertex(787.46, 86.27);
    vertex(788.46, 200);
    vertex(591.38, 182.75);
    endShape(CLOSE);
  } else {
    noStroke();
    fill(#FFFFFF);
    beginShape();
    vertex(591.38, 57);
    vertex(787.46, 86.27);
    vertex(788.46, 200);
    vertex(591.38, 182.75);
    endShape(CLOSE);
  }

  //To switch Right Window Bottom-Right on
  if (mouseX>591.38 && mouseX<787.46 && mouseY>86.27 && mouseY<182.75) {
    noStroke();
    fill(random(100), random(100), random(55), random(75));
    beginShape();
    vertex(591.38, 206.27);
    vertex(787.46, 221.18);
    vertex(787.46, 578.82);
    vertex(591.38, 596.86);
    endShape(CLOSE);
  } else {
    noStroke();
    fill(#FFFFFF);
    beginShape();
    vertex(591.38, 206.27);
    vertex(787.46, 221.18);
    vertex(787.46, 578.82);
    vertex(591.38, 596.86);
    endShape(CLOSE);
  }

  //To switch Right Window Bottom-Left on
  if (mouseX>591.38 && mouseX<787.46 && mouseY>221.18 && mouseY<578.82) {
    noStroke();
    fill(random(55), random(100), random(100), random(75));
    beginShape();
    vertex(351.87, 187.75);
    vertex(564.65, 204.22);
    vertex(564.65, 601);
    vertex(352.87, 620.74);
    endShape(CLOSE);
  } else {  
    noStroke();
    fill(#FFFFFF);
    beginShape();
    vertex(351.87, 187.75);
    vertex(564.65, 204.22);
    vertex(564.65, 601);
    vertex(352.87, 620.74);
    endShape(CLOSE);
  }

  //Pillow
  //Made using a combination of 2 ellipses
  noStroke();
  fill(#6483A8);
  ellipse(205.13, 785.85, 320.21, 83.38); //ellipse1
  ellipse(361.42, 822.33, 108.74, 102.73); //ellipse2


  //Left Curtain (Animated)
  noStroke();
  fill(#7E794D, 230); //90% alpha
  beginShape();
  curveVertex(0, 0);
  curveVertex(0, 0); //first drawn point of irregular polygon
  curveVertex(154.13, 0);
  curveVertex(154.13, 0);
  curveVertex(LC1x, LC1y); //LC1, a moving point
  curveVertex(LC2x, LC2y); //LC2, a moving point
  curveVertex(LC3x, LC3y); //LC3, a moving point
  curveVertex(0, 783); //last drawn point
  curveVertex(0, 783);
  endShape(CLOSE);

  LC1x=LC1x+speedLC1x; //position of LC1x, x-coordinate of LC1, determined by speedLC1x
  LC1y=LC1y+speedLC1y; //position of LC1y, y-coordinate of LC1, determined by speedLC1y
  if (LC1x>184 || LC1x<170 ) { //limiting values of LC1x
    speedLC1x=speedLC1x*-1; //if limits are crossed, operator of speedLC1x changes, thus returning LC1x into permissible range
  }
  if (LC1y>393 || LC1y<389 ) {
    speedLC1y=speedLC1y*-1;
  }

  LC2x=LC2x+speedLC2x;
  LC2y=LC2y+speedLC2y;
  if (LC2x>170 || LC2x<130 ) {
    speedLC2x=speedLC2x*-1;
  }
  if (LC2y>399 || LC2y<382 ) {
    speedLC2y=speedLC2y*-1;
  }

  LC3x=LC3x+speedLC3x;
  LC3y=LC3y+speedLC3y;
  if (LC3x>160 || LC3x<110 ) {
    speedLC3x=speedLC3x*-1;
  }
  if (LC3y>806 || LC3y<792 ) {
    speedLC3y=speedLC3y*-1;
  }

  //Right Curtain (Animated)
  noStroke();
  fill(#A3A17C, 230); 
  beginShape();
  curveVertex(807.24, 49.34);
  curveVertex(807.24, 49.34); //first drawn point of irregular polygon
  curveVertex(RC1x, RC1y); //RC1, a moving point
  curveVertex(RC2x, RC2y); //RC2, a moving point
  curveVertex(RC3x, RC3y); //RC3, a moving point
  curveVertex(RC4x, RC4y); //RC4, a moving point
  curveVertex(614.27, 185.82);
  curveVertex(608.39, 17.57); //last drawn point
  curveVertex(608.39, 17.57);
  endShape(CLOSE);

  RC1x=RC1x+speedRC1x;
  RC1y=RC1y+speedRC1y;
  if (RC1x>823 || RC1x<810 ) {
    speedRC1x=speedRC1x*-1;
  }
  if (RC1y>402 || RC1y<392 ) {
    speedRC1y=speedRC1y*-1;
  }

  RC2x=RC2x+speedRC2x;
  RC2y=RC2y+speedRC2y;
  if (RC2x>858 || RC2x<849.2 ) {
    speedRC2x=speedRC1x*-1;
  }
  if (RC2y>659 || RC2y<641 ) {
    speedRC2y=speedRC2y*-1;
  }

  RC3x=RC3x+speedRC3x;
  RC3y=RC3y+speedRC3y;
  if (RC3x>849 || RC3x<837 ) {
    speedRC3x=speedRC3x*-1;
  }
  if (RC3y>717 || RC3y<709 ) {
    speedRC3y=speedRC3y*-1;
  }

  RC4x=RC4x+speedRC4x;
  RC4y=RC4y+speedRC4y;
  if (RC4x>607 || RC4x<589 ) {
    speedRC4x=speedRC4x*-1;
  }
  if (RC4y>745 || RC4y<730 ) {
    speedRC4y=speedRC4y*-1;
  }

  //Dress (Animated)
  noStroke();
  fill(#B42B34, 230);
  beginShape();
  curveVertex(413.35, 158.34);
  curveVertex(413.35, 158.34); //first drawn point
  curveVertex(D1x, D1y); //D1, a moving point
  curveVertex(D2x, D2y); //D2, a moving point
  curveVertex(D3x, D3y); //D3, a moving point
  curveVertex(344.24, 436.01); //last drawn point
  curveVertex(344.24, 436.01);
  endShape(CLOSE);

  D1x=D1x+speedD1x;
  D1y=D1y+speedD1y;
  if (D1x>684 || D1x<578 ) {
    speedD1x=speedD1x*-1;
  }
  if (D1y>405 || D1y<365 ) {
    speedD1y=speedD1y*-1;
  }

  D2x=D2x+speedD2x;
  D2y=D2y+speedD2y;
  if (D2x>602 || D2x<511 ) {
    speedD2x=speedD2x*-1;
  }
  if (D2y>610 || D2y<550 ) {
    speedD2y=speedD2y*-1;
  }

  D3x=D3x+speedD3x;
  D3y=D3y+speedD3y;
  if (D3x>490 || D3x<397 ) {
    speedD3x=speedD3x*-1;
  }
  if (D3y>650 || D3y<640 ) {
    speedD3y=speedD3y*-1;
  }
}