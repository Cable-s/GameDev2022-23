
float ca;
float cb;

void setup() {
  size(1920, 1080);
  colorMode(RGB, 1);
}

void draw() {
  

background(255);
float w = 5;
float h = (w * height) / width;

//amin: -1.5, bmin: 1.5
//amin: -0.65, bmin: 0.4
//amin: -0.544, bmin: 0.544
float xmin = -w/2;    //regular -w/2
float ymin = -h/2;    //regular -h/2

loadPixels();

int maxIterations = 100;
float xmax = xmin + w;
float ymax = ymin + h;
float dx = (xmax - xmin) / width;
float dy = (ymax - ymin) / height;

float y = ymin;
for (int j = 0; j < height; j++) {
  float x = xmin;
  for (int i = 0; i < width; i++) {
    float a = x;
    float b = y;
    int n = 0;
    
    
    if (mousePressed && (mouseButton == LEFT)) {
      ca = map(mouseX, 0, width, -1, 1);
      cb = map(mouseY, 0, height, -1, 1);
    }else if (mousePressed && (mouseButton == RIGHT)) {
      ca = x;
      cb = y;
    }else {
      ca = x;
      cb = y;
    }
    
    
    while (n < maxIterations) {
      a = abs(a);
      b = abs(b);
      float aa = a * a;
      float bb = b * b;
      float twoab = 2.0 * a * b;
      a = aa - bb + ca;
      b = twoab + cb;
      
      if (aa*aa + bb*bb > 100.0) {
        break;
      }
      n++;
    }
  
    if (n == maxIterations) {
      pixels[i+j*width] = color(0,0,0);
    }else if (n > 0 && n < (maxIterations / 6)) {
      pixels[i+j*width] = color(0,0,0);
      
    } else if (n > (maxIterations / 6) && n < ((2 * maxIterations) / 6)) {
      pixels[i+j*width] = color(255, 0, 0);
      
    } else if (n > ((2 * maxIterations) / 6) && n < ((3 * maxIterations) / 6)) {
      pixels[i+j*width] = color(255, 255, 0);
      
    } else if (n > ((3 * maxIterations) / 6) && n < ((4 * maxIterations) / 6)) {
      pixels[i+j*width] = color(0, 255, 0);
      
    } else if (n > ((4 * maxIterations) / 6) && n < ((5 * maxIterations) / 6)) {
      pixels[i+j*width] = color(0, 255, 255);
      
    } else {
      pixels[i+j*width] = color(0, 0, 255);
    }
    x += dx;
  }
  y += dy;
}
updatePixels();

}
