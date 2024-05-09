float time = 0;   // time is used to move objects from one frame to another
boolean generateImages = false; // For instructors. Automatically generate images (and create a video manually).

void setup() {
  size(800, 800, P3D); // If 3D mode is not working on your mac, download the latest version of Processing with a proper version: "Apple Silicon" or "Intel 64-bit".
  frameRate(30);      // this seems to be needed to make sure the scene draws properly
  perspective(60 * PI / 180, 1, 0.1, 1000); // 60-degree field of view
}
void draw() {
  time += 0.5;
  
  if(time>=0 && time<50) {camera (0, 0, time+51, 0, 0, 0, 0, 1, 0);}
  else if(time>=50 && time<100) {camera (50-time, 0, 100, 0, 0, 0, 0, 1, 0);}
  else if(time>=100 && time<150) {camera (time-150, 0, 100, 0, 0, 0, 0, 1, 0);}
  else if(time>=150 && time<200) {camera (0, 0, 100, 0, 0, 0, 0, 1, 0);}
  else if(time>=200 && time<251) {camera (0, 0, time-100, 0, 0, 0, 0, 1, 0);}
  else if(time>=250 && time<301) {camera (0, 0, 400-time, 0, 0, 0, 0, 1, 0);}
  else if(time>=301 && time<351) {camera (time-301, 0, 100, 0, 0, 0, 0, 1, 0);}
  else if(time>=350 && time<400) {camera (399-time, 0, 100, 0, 0, 0, 0, 1, 0);}
  else{camera (0, 0, 100, 0, 0, 0, 0, 1, 0);}
  
  
  background (255, 182, 193); // clear screen and set background to light blue pink 

  // set up the lights
  ambientLight(50, 50, 50);
  lightSpecular(255, 255, 255);
  directionalLight (100, 100, 100, -0.3, 0.5, -1);
  spotLight(200, 255, 59, 0, 40, 200, 0, -0.5, 0.5, PI / 2, 2); 

  // set some of the surface properties
  noStroke();
  specular (180, 180, 180);
  shininess (15.0);

//////////////////////////////////////////////////////////////////////////////////////
//windows instance start
  pushMatrix();
  if(time >=0 && time<=3){translate(-145,-50,0);}
  else if(time>3 && time<9){translate(-145+time,-50,0);}
  else {translate(-137,-50,0);}
  fill(15,15,14);
  windowsWithStar();
  popMatrix();

  pushMatrix();
  if(time >=0 && time<=5){translate(-100,-50,0);}
  else if(time>5 && time<11){translate(-100+time,-50,0);}
  else {translate(-90,-50,0);}
  fill(15,15,14);
  windowsWithStar();
  popMatrix();

  pushMatrix();
  if(time >=0 && time<=5){translate(-55,-50,0);}
  else if(time>5 && time<11){translate(-55+time,-50,0);}
  else {translate(-45,-50,0);}
  fill(15,15,14);
  windowsWithStar();
  popMatrix();
  
  pushMatrix();
  if(time >=0 && time<=5){translate(-10,-50,0);}
  else if(time>5 && time<11){translate(-10+time,-50,0);}
  else {translate(0,-50,0);}
  fill(15,15,14);
  windowsWithStar();
  popMatrix();
  
  pushMatrix();
  if(time >=0 && time<=5){translate(35,-50,0);}
  else if(time>5 && time<11){translate(35+time,-50,0);}
  else {translate(45,-50,0);}
  fill(15,15,14);
  windowsWithStar();
  popMatrix();
  //windows instance end
  ///////////////////////////////////////////////////////////////////  
  
  // ==============================
  // Professor Utonium
  // ==============================  
  pushMatrix();
  float p = 30;
  if(time >=0 && time<=5) {
  translate(p,16,0);
  }
  else if(time>5 && time<27){
  translate(p-(time-6),16,0);
  rotateY(-PI/2);
  }
  else if (time>=27 && time<280){
  translate(10,16,0);
  rotateY(-PI/2);
  }
  
  else if(time>=280 && time <290 )   {translate(10,16,0);
  rotateY(PI/2);
  }
  
  else if (time>=290 && time<650){translate(time-280,16,0);
  rotateY(PI/2);
  }
  else if (time>=650 && time<710) {translate(723-time,16,0);
  rotateY(-PI/2);
  }
  
  else {translate(13,16,0);}

  Professor();
  
  popMatrix();
  
  ///////////////////////////////////////// drawing powerpuff girls
  pushMatrix();
  float a = -90;
  if(time>40 && time<55) {translate(a+time,12,-10);
  rotate(PI/8);}
  else if(time>=0 && time<=40) {translate(-90,12,-10);
  rotate(PI/8);}
  else if (time>40 && time<=330) {translate(-36,12,-10);
  rotate(PI/8);}
   else if(time>330 && time<380) {translate(time-367,12,-10);
  rotate(PI/8);}
  else if(time>=380 && time<=520) {translate(22,12,-10);
  rotateY(-PI);}
  else if (time>520 && time<680){translate(time-499,12,-10);
 rotate(PI/8);}
 else if (time>=680 && time<870){translate(834-time,12,-10);
 rotate(-PI/8);}
 else {translate(-36,12,-10);
 rotate(PI/8);}
  scale(0.7);
  blossom();
  popMatrix();
  
  
  
  pushMatrix();
  float b = -99;
  if(time>58 && time<75) {translate(b+time,-15,-10);
rotate(PI/8);}
  else if(time>=0 && time<=58) {translate(-99,-15,-10);}
  else if (time>=75 && time<=520){translate(-24,-15,-10);
rotate(PI/8);}
  //else {translate(time-545,-15,-10);}
 else if (time>520 && time<680){translate(time-545,-15,-10);
 rotate(PI/8);}
 else if (time>=680 && time<870){translate(846-time,-15,-10);
 rotate(-PI/8);}
 else {translate(-24,-15,-10);
  //translate(-20,10,-15);
  rotate(PI/8);}
  scale(0.7);
  bubble();
  popMatrix();
  
  pushMatrix();
  float c = -100;
  if(time>78 && time<95) {translate(c+time,-3,-1);  rotate(PI/8);}
  else if(time>=0 && time<=78) {translate(-100,-3,-1);   rotate(PI/8);}
  else if(time>=95 && time<=520){translate(-6,-3,-1);   rotate(PI/8);}
 else if (time>520 && time<680){translate(time-527,-3,-10);
 rotate(PI/8);}
 else if (time>=680 && time<870){translate(864-time,-3,-10);
 rotate(-PI/8);}
 else {translate(-6,-3,-10);
   rotate(PI/8);}

  scale(0.7);
  buttercup();
  popMatrix();
  
////////////////////////////////////
//Conversation
  pushMatrix();
  if(time>30 && time< 100) {
  translate(16,-22,0);}
  else{translate(-200,-22,0);}
 conversation1();
   popMatrix();
   
  pushMatrix();
  if(time>120 && time< 160) {
  translate(-40,16,0);}
  else{translate(-200,-22,0);}
 conversation2();
   popMatrix();
   
   pushMatrix();
  if(time>170 && time< 220) {
  translate(16,-22,0);}
  else{translate(-200,-22,0);}
 conversation3();
   popMatrix();
   
   
   pushMatrix();
  if(time>230 && time< 280) {
  translate(-40,16,0);}
  else{translate(-200,-22,0);}
 conversation4();
   popMatrix();
   
      pushMatrix();
  if(time>385 && time< 440) {
  translate(-10,10,0);}
  else{translate(-200,-22,0);}
 conversation5();
   popMatrix();
  
   pushMatrix();
  if(time>445 && time< 520) {
  translate(-52,2.5,0);}
  else{translate(-200,-22,0);}
 conversation6();
   popMatrix();
   
   
  pushMatrix();
  if(time>479 && time< 520) {
  translate(-25,11,0);}
  else{translate(-200,-22,0);}
 conversation7();
   popMatrix();
  
  pushMatrix();
  if(time>=610 && time< 650) {
  translate(-10,-15,0);}
  else{translate(-200,-22,0);}
 conversation8();
   popMatrix();
   
   pushMatrix();
  if(time>=875 && time< 930) {
  translate(22,-27,0);}
  else{translate(-200,-22,0);}
 conversation9();
   popMatrix();
   
      pushMatrix();
  if(time>=940 && time< 985) {
  translate(-30,17,0);}
  else{translate(-200,-22,0);}
 conversation10();
   popMatrix();
   
   
     //floor 
  pushMatrix();
  fill(248,200,220);
  translate(-400,22,-30);
  rect(0,0,2000,2000);
  popMatrix();
   
  
////////////////////////////////////////////////////////  
  // Single frame capture with 'c' key
  if (keyPressed && key == 'c') {
    saveFrame("p2-######.png");
  }
  if (generateImages && frameCount < 300) {
    saveFrame("p2-######.png");
  }
}

void cylinder() {
  // Helper function to draw a cylinder radius = 1, z range in [-1, 1]
  cylinder(50);
}

void cylinder(int sides) {
  // Helper function to draw a cylinder with the given number of sides.
  
  // first endcap
  beginShape();
  for (int i = 0; i < sides; i++) {
    float theta = i * 2 * PI / sides;
    float x = cos(theta);
    float y = sin(theta);
    vertex(x, y, -1);
  }
  endShape(CLOSE);

  // second endcap
  beginShape();
  for (int i = 0; i < sides; i++) {
    float theta = i * 2 * PI / sides;
    float x = cos(theta);
    float y = sin(theta);
    vertex(x, y, 1);
  }
  endShape(CLOSE);
  
  // round main body
  float x1 = 1;
  float y1 = 0;
  for (int i = 0; i < sides; i++) {
    float theta = (i + 1) * 2 * PI / sides;
    float x2 = cos(theta);
    float y2 = sin(theta);
    beginShape();
    normal (x1, y1, 0);
    vertex (x1, y1, 1);
    vertex (x1, y1, -1);
    normal (x2, y2, 0);
    vertex (x2, y2, -1);
    vertex (x2, y2, 1);
    endShape(CLOSE);
    x1 = x2;
    y1 = y2;
  }
  

}

 void window() {
    circle(10,10,25);
 }
 
 void star() {
   fill(255,255,255);
   scale(0.03);
   star(0,0,30,70,5);
 
 }
 
 void star(float x, float y, float radius1, float radius2, int npoints) {
  float angle = TWO_PI / npoints;
  float halfAngle = angle/2.0;
  beginShape();
  for (float a = 0; a < TWO_PI; a += angle) {
    float sx = x + cos(a) * radius2;
    float sy = y + sin(a) * radius2;
    vertex(sx, sy);
    sx = x + cos(a+halfAngle) * radius1;
    sy = y + sin(a+halfAngle) * radius1;
    vertex(sx, sy);
  }
  endShape(CLOSE);
 }
 
//////////////////////////////////////////////////
//blossom
 void blossom() {
   
    pushMatrix();
     //head
     pushMatrix();
     
     noLights();
    fill (242,210,189);
     translate(-13,0,0);
     //
     scale(9,10,2);
     cylinder();
     popMatrix();
     
     // left eye
     pushMatrix();
     noLights();
     fill(255,255,255);
     translate(-18,-3,2.6);
     scale(2,2,0);
     circle(1,1,3);
     popMatrix();
     
     // right eye
     pushMatrix();
     noLights();
     fill(255,255,255);
     translate(-10.5,-3,2.6);
     scale(2,2,0);
     circle(1,1,3);
     popMatrix();
     
          // left eye pupil
     pushMatrix();
     noLights();
     fill(242,29,22);
     translate(-17,-3,2.68);
     scale(1.5,1.5,0);
     circle(1,1,3);
     popMatrix();
     
         // right eye pupil
     pushMatrix();
     noLights();
      fill(242,29,22);
     translate(-9.5,-3,2.68);
     scale(1.5,1.5,0);
     circle(1,1,3);
     popMatrix();
     
               // left eye black pupil
     pushMatrix();
     noLights();
     fill(13,12,12);
     translate(-16,-3,2.69);
     scale(1,1,0);
     circle(1,1,3);
     popMatrix();
     
     // right eye black pupil
     pushMatrix();
     noLights();
      fill(13,12,12);
     translate(-8.5,-3,2.69);
     scale(1,1,0);
     circle(1,1,3);
     popMatrix();
     
       // smile
     pushMatrix();
     translate(-21,-24,2.6);
     //scale(10);
     noFill();
     stroke(0);
     arc(10, 30, 3.5, 3.5, 0, PI);
     popMatrix();
     
     //body
     pushMatrix();
     fill(255,28,21);
     translate(-12.9,14,0);
     box(6,8,2);
     popMatrix();
     
     //right hand
     pushMatrix();
    fill (242,210,189); 
     translate(-7,11,0);
     rotate(-PI/4);
     scale(4,1,0.2);
     cylinder();
     popMatrix();
     
     //left hand
     pushMatrix();
    fill (242,210,189); 
     translate(-17,15,0);
      rotate(-PI/2.5);
     scale(4,1,0.2);
     cylinder();
     popMatrix();
     
      //right leg
     pushMatrix();
    fill (242,210,189); 
     translate(-14,18,1);
     scale(2,2.9,0.2);
     cylinder();
     popMatrix();
     
     //left leg
     pushMatrix();
    fill (242,210,189); 
     translate(-11,22,0);
     scale(2,4,0.5);
     cylinder();
     popMatrix();
     
     //hair
          pushMatrix();
      fill(242,140,40);
          translate(-13,-3,-3);
          box(21,19,8);
          popMatrix();
          
          pushMatrix();
          fill(255,177,21);
          translate(-13,-11,0);
          box(20,3,10);
          popMatrix();
          
       //hairclip
       
           pushMatrix();
          fill(255,60,21);
          translate(-10,-19,0);
          rotate(PI/6);
           scale(2,7,3);
          cylinder();
          popMatrix();
          
          pushMatrix();
          fill(255,60,21);
          translate(-17.5,-19,0);
          rotate(-PI/6);
          scale(2,7,3);
          cylinder();
          popMatrix();
          
          //shoe
           pushMatrix();
          fill(13,12,12); 
         
          translate(-12,14,0.8);
           stroke(10);
       arc(1, 10, 3, 4, 0, PI);
       popMatrix();
       
                 pushMatrix();
          fill(13,12,12); 
         
          translate(-15,9,1.3);
           stroke(10);
       arc(1, 10, 3, 4, 0, PI);
       popMatrix();
       
        //skirt
    pushMatrix();
          fill(13,12,12); 
         
          translate(-17.8,11,1.3);
       rect(2,2,5.8,3);
       popMatrix();
       
 
     popMatrix();
 }
///////////////////////////////////////////////////////////
//bubble
 void bubble() {
   
    pushMatrix();
     //head
     
     
     pushMatrix();
     noLights();
    fill (242,210,189);
     translate(-13,0,0);
     //
     scale(9,10,2);
     cylinder();
     popMatrix();
     
     // left eye
     pushMatrix();
     noLights();
     fill(255,255,255);
     translate(-18,-3,2.6);
     scale(2,2,0);
     circle(1,1,3);
     popMatrix();
     
     // right eye
     pushMatrix();
     noLights();
     fill(255,255,255);
     translate(-10.5,-3,2.6);
     scale(2,2,0);
     circle(1,1,3);
     popMatrix();
     
          // left eye pupil
     pushMatrix();
     noLights();
     fill(53,81,92);
     translate(-17,-3,2.68);
     scale(1.5,1.5,0);
     circle(1,1,3);
     popMatrix();
     
         // right eye pupil
     pushMatrix();
     noLights();
      fill(53,81,92);
     translate(-9.5,-3,2.68);
     scale(1.5,1.5,0);
     circle(1,1,3);
     popMatrix();
     
               // left eye black pupil
     pushMatrix();
     noLights();
     fill(13,12,12);
     translate(-16,-3,2.69);
     scale(1,1,0);
     circle(1,1,3);
     popMatrix();
     
     // right eye black pupil
     pushMatrix();
     noLights();
      fill(13,12,12);
     translate(-8.5,-3,2.69);
     scale(1,1,0);
     circle(1,1,3);
     popMatrix();
     
       // smile
     pushMatrix();
     translate(-21,-24,2.6);
     //scale(10);
     noFill();
     stroke(0);
     arc(10, 30, 3.5, 3.5, 0, PI);
     popMatrix();
     
     //body
     pushMatrix();
     fill(53,81,92);
     translate(-12.9,14,0);
     box(6,8,2);
     popMatrix();
     
     //right hand
     pushMatrix();
    fill (242,210,189); 
     translate(-7,11,0);
     rotate(-PI/4);
     scale(4,1,0.2);
     cylinder();
     popMatrix();
     
     //left hand
     pushMatrix();
    fill (242,210,189); 
     translate(-17,15,0);
      rotate(-PI/2.5);
     scale(4,1,0.2);
     cylinder();
     popMatrix();
     
      //right leg
     pushMatrix();
    fill (242,210,189); 
     translate(-14,18,1);
     scale(2,2.9,0.2);
     cylinder();
     popMatrix();
     
     //left leg
     pushMatrix();
    fill (242,210,189); 
     translate(-11,22,0);
     scale(2,4,0.5);
     cylinder();
     popMatrix();
     
     //hair
          pushMatrix();
      fill(255,234,0);
          translate(-13,-3,-3);
          box(21,19,8);
          popMatrix();
          
          pushMatrix();
          fill(255,234,0);
          translate(-13,-11,0);
          box(20,3,10);
          popMatrix();
          
          
          //shoe
           pushMatrix();
          fill(13,12,12); 
         
          translate(-12,14,0.8);
           stroke(10);
       arc(1, 10, 3, 4, 0, PI);
       popMatrix();
       
                 pushMatrix();
          fill(13,12,12); 
         
          translate(-15,9,1.3);
           stroke(10);
       arc(1, 10, 3, 4, 0, PI);
       popMatrix();
       
        //skirt
    pushMatrix();
          fill(13,12,12); 
         
          translate(-17.8,11,1.3);
       rect(2,2,5.8,3);
       popMatrix();
       
 
     popMatrix();
 }
//////////////////////////////////////////////////////
//Buttercup
  void buttercup() {
   
    pushMatrix();
     //head
     
     
     pushMatrix();
     noLights();
    fill (242,210,189);
     translate(-13,0,0);
     //
     scale(9,10,2);
     cylinder();
     popMatrix();
     
     // left eye
     pushMatrix();
     noLights();
     fill(255,255,255);
     translate(-18,-3,2.6);
     scale(2,2,0);
     circle(1,1,3);
     popMatrix();
     
     // right eye
     pushMatrix();
     noLights();
     fill(255,255,255);
     translate(-10.5,-3,2.6);
     scale(2,2,0);
     circle(1,1,3);
     popMatrix();
     
          // left eye pupil
     pushMatrix();
     noLights();
    fill(56,93,56);
     translate(-17,-3,2.68);
     scale(1.5,1.5,0);
     circle(1,1,3);
     popMatrix();
     
         // right eye pupil
     pushMatrix();
     noLights();
      fill(56,93,56);
     translate(-9.5,-3,2.68);
     scale(1.5,1.5,0);
     circle(1,1,3);
     popMatrix();
     
               // left eye black pupil
     pushMatrix();
     noLights();
     fill(13,12,12);
     translate(-16,-3,2.69);
     scale(1,1,0);
     circle(1,1,3);
     popMatrix();
     
     // right eye black pupil
     pushMatrix();
     noLights();
      fill(13,12,12);
     translate(-8.5,-3,2.69);
     scale(1,1,0);
     circle(1,1,3);
     popMatrix();
     
       // smile
     pushMatrix();
     translate(-21,-24,2.6);
     //scale(10);
     noFill();
     stroke(0);
     arc(10, 30, 3.5, 3.5, 0, PI);
     popMatrix();
     
     //body
     pushMatrix();
     fill(56,93,56);
     translate(-12.9,14,0);
     box(6,8,2);
     popMatrix();
     
     //right hand
     pushMatrix();
    fill (242,210,189); 
     translate(-7,11,0);
     rotate(-PI/4);
     scale(4,1,0.2);
     cylinder();
     popMatrix();
     
     //left hand
     pushMatrix();
    fill (242,210,189); 
     translate(-17,15,0);
      rotate(-PI/2.5);
     scale(4,1,0.2);
     cylinder();
     popMatrix();
     
      //right leg
     pushMatrix();
    fill (242,210,189); 
     translate(-14,18,1);
     scale(2,2.9,0.2);
     cylinder();
     popMatrix();
     
     //left leg
     pushMatrix();
    fill (242,210,189); 
     translate(-11,22,0);
     scale(2,4,0.5);
     cylinder();
     popMatrix();
     
     //hair
          pushMatrix();
      fill(5,4,4);
          translate(-13,-3,-3);
          box(21,19,8);
          popMatrix();
          
          pushMatrix();
      fill(5,4,4);
          translate(-13,-11,0);
          box(20,3,10);
          popMatrix();
          
          
          //shoe
           pushMatrix();
          fill(13,12,12); 
         
          translate(-12,14,0.8);
           stroke(10);
       arc(1, 10, 3, 4, 0, PI);
       popMatrix();
       
                 pushMatrix();
          fill(13,12,12); 
         
          translate(-15,9,1.3);
           stroke(10);
       arc(1, 10, 3, 4, 0, PI);
       popMatrix();
       
        //skirt
    pushMatrix();
          fill(13,12,12); 
         
          translate(-17.8,11,1.3);
       rect(2,2,5.8,3);
       popMatrix();
       
 
     popMatrix();
 }
 
 void conversation1() {
 pushMatrix();
 fill(255,255,255);
 translate(-3,5,0);
 rect(3,3,26,15);
  popMatrix();
  
  pushMatrix();
  translate(0, 12, 0);
  scale(0.1, 0.1, 0.1);
  fill(0);
  textSize(30); 
  text("Professor Utonium:", 0, 0);
  popMatrix();
  
  pushMatrix();
  translate(0, 16, 0);
  scale(0.1, 0.1, 0.1);
  fill(0);
  //textAlign(CENTER);
  textSize(30); 
  text("Girls!", 0, 0);
  popMatrix();
  
  pushMatrix();
  translate(0, 20, 0);
  scale(0.1, 0.1, 0.1);
  fill(0);
  //textAlign(CENTER);
  textSize(30); 
  text("where are you?", 0, 0);
  popMatrix(); 
 }
 
  void conversation2() {
 pushMatrix();
 fill(255,255,255);
 translate(-3,5,0);
 rect(3,3,36,15);
  popMatrix();
  
  pushMatrix();
  translate(0, 12, 0);
  scale(0.1, 0.1, 0.1);
  fill(0);
  //textAlign(CENTER);
  textSize(30); 
  text("Blossom:", 0, 0);
  popMatrix();
 
  
  pushMatrix();
  translate(0, 20, 0);
  scale(0.1, 0.1, 0.1);
  fill(0);
  //textAlign(CENTER);
  textSize(30); 
  text("what happened Professor?", 0, 0);
  popMatrix(); 
 }
 
   void conversation3() {
 pushMatrix();
 fill(255,255,255);
 translate(-3,3,0);
 rect(3,3,44,20);
  popMatrix();
  
  pushMatrix();
  translate(0, 12, 0);
  scale(0.1, 0.1, 0.1);
  fill(0);
  //textAlign(CENTER);
  textSize(30); 
  text("Professo Utonium:", 0, 0);
  popMatrix();
 
  
  pushMatrix();
  translate(0, 16, 0);
  scale(0.1, 0.1, 0.1);
  fill(0);
  //textAlign(CENTER);
  textSize(30); 
  text("Mojo Jojo is attacking us again", 0, 0);
  popMatrix(); 
  
  pushMatrix();
  translate(0, 20, 0);
  scale(0.1, 0.1, 0.1);
  fill(0);
  //textAlign(CENTER);
  textSize(30); 
  text("We need to save", 0, 0);
  popMatrix(); 
  
  pushMatrix();
  translate(0, 24, 0);
  scale(0.1, 0.1, 0.1);
  fill(0);
  //textAlign(CENTER);
  textSize(30); 
  text("the city of Townsville", 0, 0);
  popMatrix(); 
 }
 
 void conversation4() {
 pushMatrix();
 fill(255,255,255);
 translate(-3,3,0);
 rect(3,3,34,20);
  popMatrix();
  
  pushMatrix();
  translate(0, 12, 0);
  scale(0.1, 0.1, 0.1);
  fill(0);
  //textAlign(CENTER);
  textSize(30); 
  text("Blossom:", 0, 0);
  popMatrix();
 
  
  pushMatrix();
  translate(0, 16, 0);
  scale(0.1, 0.1, 0.1);
  fill(0);
  //textAlign(CENTER);
  textSize(30); 
  text("We will protect", 0, 0);
  popMatrix(); 
  
  pushMatrix();
  translate(0, 20, 0);
  scale(0.1, 0.1, 0.1);
  fill(0);
  //textAlign(CENTER);
  textSize(30); 
  text("the city professor", 0, 0);
  popMatrix(); 
  
 }
 
  void conversation5() {
 pushMatrix();
 fill(255,255,255);
 translate(-3,3,0);
 rect(3,3,24,15);
  popMatrix();
  
  pushMatrix();
  translate(0, 12, 0);
  scale(0.1, 0.1, 0.1);
  fill(0);
  //textAlign(CENTER);
  textSize(30); 
  text("Blossom:", 0, 0);
  popMatrix();
 
  
  pushMatrix();
  translate(0, 16, 0);
  scale(0.1, 0.1, 0.1);
  fill(0);
  //textAlign(CENTER);
  textSize(30); 
  text("Lets's go girls!", 0, 0);
  popMatrix(); 
  
 }
 
  void conversation6() {
 pushMatrix();
 fill(255,255,255);
 translate(-3,3,0);
 rect(3,3,24,15);
  popMatrix();
  
  pushMatrix();
  translate(0, 12, 0);
  scale(0.1, 0.1, 0.1);
  fill(0);
  //textAlign(CENTER);
  textSize(30); 
  text("Bubble:", 0, 0);
  popMatrix();
 
  
  pushMatrix();
  translate(0, 16, 0);
  scale(0.1, 0.1, 0.1);
  fill(0);
  //textAlign(CENTER);
  textSize(30); 
  text("Lets's go!!", 0, 0);
  popMatrix(); 
  
 }
 
   void conversation7() {
 pushMatrix();
 fill(255,255,255);
 translate(-3,3,0);
 rect(3,3,28,15);
  popMatrix();
  
  pushMatrix();
  translate(0, 12, 0);
  scale(0.1, 0.1, 0.1);
  fill(0);
  //textAlign(CENTER);
  textSize(30); 
  text("Buttercup:", 0, 0);
  popMatrix();
 
  
  pushMatrix();
  translate(0, 16, 0);
  scale(0.1, 0.1, 0.1);
  fill(0);
  //textAlign(CENTER);
  textSize(30); 
  text("...and save the city!!", 0, 0);
  popMatrix(); 
  
 }
 
 void Professor() {
     // hair
   pushMatrix();
  fill (10,7,7);
  translate (0, -26, 1.4);
  box(7,8,1);
  popMatrix();
  
  pushMatrix();
  fill (10,7,7);
  translate (0, -30,4.5);
  box(7,2,7);
  popMatrix();
  
  pushMatrix();
  fill (10,7,7);
  translate (3.45, -28, 4.5);
  box(0.2,3,7);
  popMatrix();
  
  pushMatrix();
  fill (10,7,7);
  translate (-3.45, -28, 4.5);
  box(0.2,3,7);
  popMatrix();
  
  
  //face
  pushMatrix();
  fill (242,210,189);
  translate (0, -24, 5);
  box(7,10,6);
  popMatrix();
  
  
  //eyes
  pushMatrix();
  fill(250,255,255);
  translate (1, -27, 8.2);
  arc(1,1,2,2,0,PI);
  popMatrix();
  
  pushMatrix();
  fill(250,255,255);
  translate (-3, -27, 8.2);
  arc(1,1,2,2,0,PI);
  popMatrix();
  
  
  //eyeball
  pushMatrix();
  fill(13,12,12);
  translate (-3, -26.5, 8.3);
  circle(1,1,0.8);
  popMatrix();
  
  pushMatrix();
  fill(13,12,12);
  translate (1, -26.5, 8.3);
  circle(1,1,0.8);
  popMatrix();
  
  
  //nose
  pushMatrix();
  fill(13,12,12);
  translate (0, -23.5, 8);
  box(0.2,3,0.4);
  popMatrix();
  
  pushMatrix();
  fill(13,12,12);
  translate (0.4, -22.5, 8);
  rotate(PI/3.0);
  box(0.2,1,0.4);
  popMatrix();
  
  
  //eyebrows
  pushMatrix();
  fill(13,12,12);
  translate (-2.5, -26.5, 8);
  box(1,0.3,0.5);
  popMatrix();
  
   pushMatrix();
  fill(13,12,12);
  translate (2, -26.5, 8);
  box(1,0.3,0.5);
  popMatrix();
  
  
  //smile
  pushMatrix();
  fill(13,12,12);
  translate (1.8, -22, 8.2);
  rotate(PI/2.5);
  arc(0,0,3,5,0,PI/2.0);
  popMatrix();
  
  pushMatrix();
  fill(252,20,20);
  translate (1.2, -21.5, 8.3);
  rotate(PI/2.5);
  arc(0,0,2,3,0,PI/2.0);
  popMatrix();
  
  //ear
  pushMatrix();
  fill (242,210,189);
  translate (4, -24.5, 5.5);
  box(1.3,3.5,2);
  popMatrix();
  
  pushMatrix();
  fill (242,210,189);
  translate (-4, -24.5, 5.5);
  box(1.3,3.5,2);
  popMatrix();
  
  
  //neck
  pushMatrix();
  fill (252,250,250);
  translate (0, -17.5, 4.5);
  box(4,2.7,3);
  popMatrix();
  
  //body
  pushMatrix();
  translate(0,-0.5,0);
  pushMatrix();
  fill (252,250,250);
  translate (0, -3.5, 4.5);
  box(13,25,4);
  popMatrix();
  
  
  //left hand
  pushMatrix();
  fill (252,250,250);
  translate (8, -12.5, 4.5);
  rotate(PI/4);
  box(7,2.5,3);
  popMatrix();
  
  pushMatrix();
  fill (252,250,250);
  translate (6.5, -8, 4.5);
  rotate(-PI/4);
  box(8,2.5,3);
  popMatrix();
  
  
  //right hand
  pushMatrix();
  fill (252,250,250);
  translate (-8, -12.5, 4.5);
  rotate(-PI/4);
  box(7,2.5,3);
  popMatrix();
  
  pushMatrix();
  fill (252,250,250);
  translate (-12, -12.4, 4.5);
  rotate(-2*PI/2.7);
  box(8,2.5,3);
  popMatrix();
  
  
  //right grip
  pushMatrix();
  fill (242,210,189);
  translate (-15.5, -16, 4.5);
  rotate(-2*PI/2.7);
  box(2,2,1);
  popMatrix();
  
  pushMatrix();
  fill (242,210,189);
  translate (-16.9, -18.5, 4.5);
  rotate(-2*PI/2.7);
  box(4,5.3,1);
  popMatrix();
  
  
  //thumb
  pushMatrix();
  fill (242,210,189);
  translate (-14.2, -18.9, 4.5);
  rotate(-2*PI/2.7);
  box(1,4.5,1);
  popMatrix();
  
  //test tube
  pushMatrix();
  fill (31,240,22);
  translate (-16, -18.9, 5.5);
  rotate(-2*PI/2.7);
  box(1,7.5,1);
  popMatrix();
  
  
  //holding fingers
  //first set
  pushMatrix();
  translate (6,0,0);
  
  
  pushMatrix();
  fill (242,210,189);
  translate (-25, -18.9, 5.5);
  rotate(-2*PI/2.7);
  box(1,1,2.5);
  popMatrix();
  
  pushMatrix();
  fill (242,210,189);
  translate (-24, -19.7, 5.5);
  rotate(-2*PI/2.7);
  box(1,1,2.5);
  popMatrix();
  
  pushMatrix();
  fill (242,210,189);
  translate (-23, -20.5, 5.5);
  rotate(-2*PI/2.7);
  box(1,1,2.5);
  popMatrix();
  
  pushMatrix();
  fill (242,210,189);
  translate (-22, -21.3, 5.5);
  rotate(-2*PI/2.7);
  box(1,1,2.5);
  popMatrix();
  popMatrix();
  
  //second set
  pushMatrix();
  translate (6.3,0.8,1.5);
  pushMatrix();
  fill (242,210,189);
  translate (-25, -18.9, 5.5);
  rotate(-2*PI/2.7);
  box(2.5,1,1);
  popMatrix();
  
  pushMatrix();
  fill (242,210,189);
  translate (-24, -19.7, 5.5);
  rotate(-2*PI/2.7);
  box(2.5,1,1);
  popMatrix();
  
  pushMatrix();
  fill (242,210,189);
  translate (-23, -20.5, 5.5);
  rotate(-2*PI/2.7);
  box(2.5,1,1);
  popMatrix();
  
  pushMatrix();
  fill (242,210,189);
  translate (-22, -21.3, 5.5);
  rotate(-2*PI/2.7);
  box(2.5,1,1);
  popMatrix();
  popMatrix();
  
  
  
  
  ////////////////////////////////////////////////////////////////////////////
  //right leg starts
  pushMatrix();
  if( (time>5 && time<25)&&(time%2==0)) {  rotateX(PI/50);
  translate(0,0,-1.3);}
  else   if( (time>290 && time< 710)&&(time%2==0)) {  rotateX(PI/20);
  translate(0,0,-1.5);}
  pushMatrix();
  fill (17,18,17);
  translate (-3.5, 12, 4.5);
  box(4,6,3);
  popMatrix();
  
  //right shoes
  pushMatrix();
  fill (17,18,17);
  translate (-3.5, 16, 6.5);
  box(4,2,8);
  popMatrix();
  
  popMatrix();
  //right leg ends
  
  //left leg starts
  pushMatrix();
  if( (time>5 && time<25)&&(time%2==1)) {  rotateX(PI/20);
  translate(0,0,-1.5);}
  else if( (time>290 && time<710)&&(time%2==1)) {  rotateX(PI/20);
  translate(0,0,-1.5);}
  pushMatrix();
  fill (17,18,17);
  translate (3.5, 12, 4.5);
  box(4,6,3);
  popMatrix();
  
  //left shoe
  pushMatrix();
  fill (17,18,17);
  translate (3.5, 16, 6.5);
  box(4,2,8);
  popMatrix();
  popMatrix();
  // left leg ends
  ////////////////////////////////////////////
  
  //Tie
  pushMatrix();
  fill (242,210,189);
  translate (0, -18.8, 6.2);
  triangle(-2.2,0,2.2,0,0,2.2);
  popMatrix();
  
  pushMatrix();
  translate (14,10,-1.3);
  pushMatrix();
  fill (23,21,21);
  translate (-15, -23, 8.2);
  rotate(PI/3);
  box(6,0.2,0.2);
  popMatrix();
  
  pushMatrix();
  fill (23,21,21);
  translate (-12, -23, 8.2);
  rotate(-PI/3);
  box(6,0.2,0.2);
  popMatrix();
  popMatrix();
  
  pushMatrix();
  fill (23,21,21);
  translate (-6, -14, 6.8);
  rotate(-PI/4);
  rect(4,4,1,1);
  popMatrix();
  
  
  pushMatrix();
  fill (23,21,21);
  translate (-3.6, -16, 6.8);
  ellipse(4,4,1,3);
  popMatrix();
  
  //Pocket
  pushMatrix();
  fill (23,21,21);
  translate (4, -9.5, 6.8);
  scale(1);
  box(3,0.2,0.2);
  popMatrix();
  
  //Pen
  fill (23,21,21);
  pushMatrix();
  translate (3.5, -10.5, 6.5); 
  scale (0.2,1,0.3);
  rotateX(PI/2);
  cylinder();
  popMatrix();
  
  fill (23,21,21);
  pushMatrix();
  translate (4.7, -10.2, 6.5); 
  scale (0.2,0.7,0.3);
  rotateX(PI/2);
  cylinder();
  popMatrix();
  popMatrix();
  
 }
 
 
 void windowsWithStar(){
   window();
  pushMatrix();
  translate(4,3,0);
  star();
  popMatrix();
  pushMatrix();
  translate(15,3,0);
  star();
  popMatrix();
  pushMatrix();
  translate(13,18,0);
  star();
  popMatrix();
 
 }
 
 
  void conversation8() {
 pushMatrix();
 fill(255,255,255);
 translate(-3,5,0);
 rect(3,3,28,15);
  popMatrix();
  
  pushMatrix();
  translate(0, 12, 0);
  scale(0.1, 0.1, 0.1);
  fill(0);
  textSize(30); 
  text("After Valiant Fighting", 0, 0);
  popMatrix();
  
  pushMatrix();
  translate(0, 16, 0);
  scale(0.1, 0.1, 0.1);
  fill(0);
  //textAlign(CENTER);
  textSize(30); 
  text("!!!!", 0, 0);
  popMatrix(); 
 }
 
   void conversation9() {
 pushMatrix();
 fill(255,255,255);
 translate(-3,5,0);
 rect(3,3,35,15);
  popMatrix();
  
  pushMatrix();
  translate(0, 12, 0);
  scale(0.1, 0.1, 0.1);
  fill(0);
  textSize(30); 
  text("Thank you Girls!!", 0, 0);
  popMatrix();
  
  pushMatrix();
  translate(0, 16, 0);
  scale(0.1, 0.1, 0.1);
  fill(0);
  //textAlign(CENTER);
  textSize(30); 
  text("For saving the townsville", 0, 0);
  popMatrix(); 
 }
 
  void conversation10() {
 pushMatrix();
 fill(255,255,255);
 translate(-3,5,0);
 rect(3,3,35,15);
  popMatrix();
  
  pushMatrix();
  translate(0, 12, 0);
  scale(0.1, 0.1, 0.1);
  fill(0);
  textSize(30); 
  text("Thank you!!", 0, 0);
  popMatrix();
  
  pushMatrix();
  translate(0, 16, 0);
  scale(0.1, 0.1, 0.1);
  fill(0);
  //textAlign(CENTER);
  textSize(30); 
  text("Professor!!", 0, 0);
  popMatrix(); 
 }
