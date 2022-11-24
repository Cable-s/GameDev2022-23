
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

int maxIterations = 12;
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
    
    while (n < maxIterations) {
      float aa = a * a;
      float bb = b * b;
      float twoab = 2.0 * a * b;
      a = aa - bb + x;
      b = twoab + y;
      
      if (aa*aa + bb*bb > 100.0) {
        break;
      }
      n++;
    }
  
    if (n == maxIterations) {
      pixels[i+j*width] = color(0);
    } else {
      pixels[i+j*width] = color(sqrt(float(n) / maxIterations));
    }
    x += dx;
  }
  y += dy;
}
updatePixels();

}
