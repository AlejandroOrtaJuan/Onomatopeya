import processing.pdf.*;

PFont myfont;
String Pio="pio\npio";
String Croac="croac\ncroac\ncroac";

void setup() {
  background(#FFFFFF);
  size(420, 590);
  frameRate(2);
  beginRecord(PDF, "sketch_CartelOnomatopeya_251023.pdf");
  myfont=createFont("IBM Plex Sans-Regular.ttf", 14);
}

void draw() {
  background(#FFFFFF);
  fill(0);
  textFont(myfont);

  float ample_hierba=40;
  float ample_linea=70;
  float alt_arbol=25;
  float alt_linea=25;

  for ( float posy=alt_arbol; posy<height/20*7.5; posy=posy+alt_arbol) {
    if (posy>height/20*5) {
      arbol_rama(width/15*4, posy);
      arbol_rama(width/15*5, posy);
      arbol_rama(width/15*10, posy);
      arbol_rama(width/15*11, posy);
    }
  }

  for (int i=0; i<10; i=i+1) {
    arbol_hoja_alt(width/15*2, random(height/20*1.5, height/20*4.5));
    arbol_hoja_alt(width/15*7, random(height/20*1.5, height/20*4.5));
    arbol_hoja_alt(width/15*8, random(height/20*1.5, height/20*4.5));
    arbol_hoja_alt(width/15*13, random(height/20*1.5, height/20*4.5));
  }

  for (int i=0; i<12; i=i+1) {
    arbol_hoja_anch(random(width/15*2, width/15*7), height/20*1);
    arbol_hoja_anch(random(width/15*2, width/15*7), height/20*4.5);
    arbol_hoja_anch(random(width/15*8, width/15*13), height/20*1);
    arbol_hoja_anch(random(width/15*8, width/15*13), height/20*4.5);
  }



  for (float posx=ample_hierba/2; posx<width-ample_hierba/2; posx=posx+ample_hierba) {
    hierba( posx, height/20*19, 5, 6);
    hierba( posx, height/20*18, 5, 6);
    hierba( posx, height/20*8, 5, 6);
    hierba( posx, height/20*9, 5, 6);
    if (posx<width/15*5) {
      hierba( posx, height/20*10, 5, 6);
      hierba( posx, height/20*11, 5, 6);
      hierba( posx, height/20*12, 5, 6);
      hierba( posx, height/20*13, 5, 6);
      hierba( posx, height/20*14, 5, 6);
      hierba( posx, height/20*15, 5, 6);
      hierba( posx, height/20*16, 5, 6);
      hierba( posx, height/20*17, 5, 6);
    }
  }

  for (float posx=ample_linea; posx<width-ample_linea; posx=posx+ample_linea) {
    anch_linea(posx+(width/15*2.5)+random(0, 10), height/20*10, 10, 6);
    anch_linea(posx+(width/15*2.5)+random(0, 10), height/20*17, 10, 6);
  }

  for ( float posy=alt_linea; posy<height/20*17; posy=posy+alt_arbol) {
    if (posy>height/20*10) {
      alt_linea(width/15*5, posy);
    }
  }
  for (int i=0; i<2; i=i+1) {
    croac(random(width/15*5, width/15*12), random(height/20*10, height/20*16));
  }

  for (int i=0; i<3; i=i+1) {
    pio(random(width/15*2, width/15*6), random(height/20*2, height/20*4));
  }
  for (int i=0; i<2; i=i+1) {
    pio(random(width/15*8, width/15*12), random(height/20*2, height/20*4));
  }
  
  sol(width/15*1,height/20*1);
  
  
  circulos(random(width/15*6, width/15*14), random(height/20*11, height/20*16));
  circulos(random(width/15*6, width/15*14), random(height/20*11, height/20*16));
  
  
}
