void arbol_rama(float px, float py) {
  push();
  translate(px, py );  
    text("|", 0, 0);  
  pop();
}

void arbol_hoja_alt(float px, float py) {
  push();
  translate(px, py ); 
    text("|", 0, 0);
  pop();
}

void arbol_hoja_anch(float px, float py) {
  push();
  translate(px, py );  
    text("_", 0, 0);  
  pop();
}

void anch_linea(float px, float py, float espacio, float cantidad) {
  push();
  translate(px, py );
  for (int i=0; i<cantidad; i=i+1) {
    text("~", i*espacio, 0);
  }
  pop();
}

void alt_linea(float px, float py) {
  push();
  translate(px, py ); 
    text("|", 0, 0);
  pop();
}

void hierba(float px, float py, float espacio, float cantidad) {
  push();
  translate(px, py );
  for (int i=0; i<cantidad; i=i+1) {
    text("/", i*espacio, 0);
  }
  pop();
}
void croac(float px, float py) {
  push();
  translate(px, py );
  textLeading(13);
  for (int i=0; i<1; i=i+1) {
    text(Croac, 0, 0);
  }
  pop();
}

void pio(float px, float py) {
  push();
  translate(px, py );
  textLeading(13);
    text(Pio, 0, 0);  
  pop();
}

void sol(float px, float py) {
 push();
 translate(px, py );
 for (int i=0; i<8; i=i+1) {
 rotate(radians(45));
 text("(", 10,0);
 }
 pop();
 }
 
 void circulos(float px, float py) {
 push();
 translate(px, py );
 for (int i=0; i<8; i=i+1) {
 rotate(radians(45));
 text(">", 10,0);
 }
 pop();
 endRecord();
 }
 
