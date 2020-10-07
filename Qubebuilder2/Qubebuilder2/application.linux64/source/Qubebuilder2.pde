
void setup() {
  size(800, 800);
  //frameRate(5);
  background(0, 0, 70);
}
int karte=1;
int feld=5;  //3,4,5,6       
int xkarte=1;
int ykarte=1;
int mapfeld=1;
float  mouseovery;
float  mouseoverx;
int[] x= new int[feld+1];
int[] y= new int[feld+1];
int[] z= new int[feld+1];
int qxkarte=2;
int qykarte=2;
int qzkarte=1;
int once=0;
void draw() {
  mouseovery = mouseY;
  mouseoverx = mouseX;
  mapfeld=feld*feld;


  if (once==0)

  { 
   fill(0,0,70);
    rect(0,0,800,800);
    for (int i=0; i<=mapfeld; i++) {
      xkarte++;
      once=2;
      fill(0);
      stroke(0, 255, 0);
      karte=420/feld;



      rect(360+karte*xkarte, 360+karte*ykarte, karte, karte );





      if (xkarte==0) {
        line(karte*xkarte, karte*ykarte, karte*xkarte+360, karte*ykarte+360);
        line(karte*xkarte, karte*ykarte+karte, karte*xkarte+360, karte*ykarte+360+karte);
      }
      if (ykarte==0) {
        line(karte*xkarte, karte*ykarte, karte*xkarte+360, karte*ykarte+360);
        line(karte*xkarte+karte, karte*ykarte, karte*xkarte+360+karte, karte*ykarte+360);
      }



      if (xkarte==feld-1) { 
        ykarte++; 
        xkarte=-1;
      }
      if (ykarte==feld) ykarte=0;
      stroke(0);
    }
  }else once=1;


  if (keyPressed) {
   
      if (key == 'a' ) {
        qxkarte--;
        once=2;
        if (qxkarte<0)qxkarte=0;
        if (qxkarte>feld-1)qxkarte=feld-1;
        x[qxkarte]=1;
        x[qxkarte+1]=0;
      }
      if (key == 'd' ) {
        qxkarte++;
        once=2;
        if (qxkarte<0)qxkarte=0;
        if (qxkarte>feld-1)qxkarte=feld-1;
        x[qxkarte]=1;
        x[qxkarte-1]=0;
      }
      if (key == 'w' ) {
        qykarte--;
        once=2;
        if (qykarte<0)qykarte=0;
        if (qykarte>feld-1)qykarte=feld-1;
        y[qykarte]=1;
        y[qykarte+1]=0;
      }
      if (key == 's' ) {
        qykarte++;
        once=2;
        if (qykarte<0)qykarte=0;
        if (qykarte>feld-1)qykarte=feld-1;
        y[qykarte]=1;
        y[qykarte-1]=0;
      }
      if (key == 'x' ) {
        qzkarte++;
        once=2;
        if (qykarte<0)qykarte=0;
        if (qzkarte>feld)qzkarte=feld;
        z[qzkarte]=1;
        x[qzkarte-1]=0;
      }
    }
  
  if (once==2) {

    once=1;
    stroke(255, 100, 255, 255);

    line(60+karte*qxkarte+karte/2, 60+karte*qykarte+(int)sqrt(2)*karte/2, 
      60+qxkarte*karte+karte/2, 60+(int)sqrt(2)*karte/2); 

    line(60+karte*qxkarte+(int)sqrt(2)*karte/2, 60+karte*qykarte+(int)sqrt(2)*karte/2, 
      60+(int)sqrt(2)*karte/2, 
      60+qykarte*karte+(int)sqrt(2)*karte/2);

    fill(0, 0, 255, 200);
    stroke(0, 0, 0, 60);
    rect(60+karte*qxkarte, 60+karte*qykarte, karte, karte );

    stroke(0, 0, 0, 60);

    rect(60+karte*qxkarte+(int)sqrt(2)*karte/2, 60+karte*qykarte+(int)sqrt(2)*karte/2, karte, karte );
    stroke(255, 100, 255, 255);

    line(60+karte*qxkarte, 60+karte*qykarte, 
      60, 60+qykarte*karte);
    line(60+karte*qxkarte, 60+karte*qykarte+karte, 
      60, 60+qykarte*karte+karte);
    line(60+karte*qxkarte+(int)sqrt(2)*karte/2, 60+karte*qykarte+karte+(int)sqrt(2)*karte/2, 
      60+(int)sqrt(2)*karte/2, 60+qykarte*karte+karte+(int)sqrt(2)*karte/2);

    line(60+(int)sqrt(2)*karte/2-karte, 60+qykarte*karte+(int)sqrt(2)*karte/2, 
      60+(int)sqrt(2)*karte/2, 60+qykarte*karte+karte+(int)sqrt(2)*karte/2);


   // line(70, 60+qykarte*karte, 
   //   60+karte, 60+qykarte*karte);





    line(60+karte*qxkarte, 60+karte*qykarte, 
      60+qxkarte*karte, 60);

    line(60+karte*qxkarte+karte, 60+karte*qykarte, 
      60+qxkarte*karte+karte, 60);



    line(60+karte*qxkarte, 60+karte*qykarte, 
      60+qxkarte*karte, 60+karte);

    line(60+karte*qxkarte+karte+karte/2, 60+karte*qykarte+(int)sqrt(2)*karte/2, 
      60+qxkarte*karte+karte+karte/2, 60+(int)sqrt(2)*karte/2);


    //l<#ine(160+karte*qxkarte, 60+karte*qykarte,
    //60+qxkarte*karte, 60+karte);
    once=1;
    delay(100);

    //line(60+karte*xkarte+(int)sqrt(2)*karte/2, 60+karte*ykarte+(int)sqrt(2)*karte/2,
    //60+xkarte*karte-xkarte*karte+(int)sqrt(2)*karte/2-karte, 60+ykarte*karte+(int)sqrt(2)*karte/2);
    //line(60+karte*xkarte+(int)sqrt(2)*karte/2, 60+karte*ykarte+karte+(int)sqrt(2)*karte/2,
    //60+xkarte*karte-xkarte*karte+(int)sqrt(2)*karte/2, 60+ykarte*karte+karte+(int)sqrt(2)*karte/2);

    //line(60+xkarte*karte-xkarte*karte+(int)sqrt(2)*karte/2-karte, 60+ykarte*karte+(int)sqrt(2)*karte/2,
    //60+xkarte*karte-xkarte*karte+(int)sqrt(2)*karte/2, 60+ykarte*karte+karte+(int)sqrt(2)*karte/2);


    //line(60+xkarte*karte-xkarte*karte, 60+ykarte*karte,60+xkarte*karte+karte-xkarte*karte, 60+ykarte*karte+karte);



    //line();
    //line();



    //  stroke(255,100,255,255);
    //line(60+karte*xkarte, 60+karte*ykarte+karte*ykarte,
    //60+karte*xkarte+(int)sqrt(2)*karte/2+karte*xkarte, 60+karte*ykarte+(int)sqrt(2)*karte/2);
    /*         stroke(0,100,255,255);
     line(60+karte*qxkarte, 60+karte* qykarte,
     60+karte*qxkarte+(int)sqrt(2)*karte/2, 60+karte*qykarte+(int)sqrt(2)*karte/2);
     
     
     stroke(0,100,255,100);
     line(60+karte*qxkarte+karte, 60+karte*qykarte,
     60+karte*qxkarte+(int)sqrt(2)*karte/2+karte, 60+karte*qykarte+(int)sqrt(2)*karte/2);
     
     
     stroke(0,100,255,100);
     line(60+karte*xkarte+karte, 60+karte*ykarte+karte,
     60+karte*qxkarte+(int)sqrt(2)*karte/2+karte, 60+karte*qykarte+(int)sqrt(2)*karte/2+karte);
     
     
     stroke(0,100,255,100);
     
     line(60+karte*xkarte, 60+karte*ykarte+karte,
     60+karte*qxkarte+(int)sqrt(2)*karte/2, 60+karte*qykarte+(int)sqrt(2)*karte/2+karte);
     
     if(once==1){
     fill(0,0,70);
     rect(0,0,800,800);once=2;}*/
  } else once=0;
}
