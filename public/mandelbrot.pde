
void setup() {
  size(1920, 1080);
  colorMode(RGB, 1);
}

void draw() {
  
background(0);
float r = 0;
float bl = 0;
float g = 0;
int counta = 0;
int countb = 0;
int countc = 0;
int countd = 0;
int counte = 0;
int countf = 0;
int countg = 0;
int counth = 0;
int counti = 0;
int countj = 0;
int countk = 0;
int countl = 0;
int countm = 0;
int countn = 0;
int counto = 0;
int countp = 0;

float w = 5;
float h = (w * height) / width;

//amin: -1.5, bmin: 1.5
//amin: -0.65, bmin: 0.4
//amin: -0.544, bmin: 0.544
float xmin = -w/2;    //regular -w/2
float ymin =  -h/2;    //regular -h/2

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
    
    while (n < maxIterations) {
      float aa = a * a;
      float bb = b * b;
      float twoab = 2.0 * a * b;
      a = aa - bb + x;
      b = twoab + y;
      
      //print(abs(a + b) + "    ");
      if (abs(a + b) > 100.0) {
        break;
      }
      n++;
      //print(n + "  ");
    }
  
    switch(n % 16) {
      case 0:
        r = 255; 
        g = 0;
        bl = 0;
        counta++;
        //print(0 + "  ");
        break;
      case 1:
        r = 66;
        g = 30;
        bl = 15;        
        countb++;
        //print(1 + "  ");
        break;
      case 2:
        r = 25;
        g = 7;
        bl = 26;
        countc++;
        //print(2 + "  ");
        break;
      case 3:
        r = 9;
        g = 1;
        bl = 47;
        countd++;
        //print(3 + "  ");
        break;
      case 4:
        r = 4;
        g = 4;
        bl = 73;
        counte++;
        //print(4 + "  ");
        break;
      case 5:
        r = 12;
        g = 44;
        bl = 138;
        countf++;
        //print(5 + "  ");
        break;
      case 6:
        r = 24;
        g = 82;
        bl = 177;
        countg++;
        //print(6 + "  ");
        break;
      case 7:
        r = 57;
        g = 125;
        bl = 209;
        counth++;
        //print(7 + "  ");
        break;
      case 8:
        r = 134;
        g = 181;
        bl = 229;
        counti++;
        //print(8 + "  ");
        break;
      case 9:
        r = 211;
        g = 236;
        bl = 248;
        countj++;
        //print(9 + "  ");
        break;
      case 10:
        r = 241;
        g = 233;
        bl = 191;
        countk++;
        //print(10 + "  ");
        break;
      case 11:
        r = 248;
        g = 201;
        bl = 95;
        countl++;
        //print(11 + "  ");
        break;
      case 12:
        r = 255;
        g = 170;
        bl = 0;
        countm++;
        //print(12 + "  ");
        break;
      case 13:
        r = 204;
        g = 128;
        bl = 0;
        countn++;
        //print(13 + "  ");
        break;
      case 14:
        r = 153;
        g = 87;
        bl = 0;
        counto++;
        //print(14 + "  ");
        break;
      case 15:
        r = 106;
        g = 52;
        bl = 3;
        countp++;
        //print(15 + "  ");
        break;
    }     
    if (n == maxIterations) {
      pixels[i+j*width] = (0);
    } else {
      pixels[i+j*width] = color(sqrt(int(r) / maxIterations), sqrt(int(g) / maxIterations), sqrt(int(bl) / maxIterations));

    }
    //if (n == maxIterations) {
    //color(0);
    //rect(i, j, i+1, j+1);
    //}else {
    //color(sqrt(float(n) / maxIterations));
    //rect(i, j, i+1, j+1);
    //}
    x += dx;
  }
  y += dy;
}
updatePixels();
println("done");
println("0:" + counta);
println("1:" + countb);
println("2:" + countc);
println("3:" + countd);
println("4:" + counte);
println("5:" + countf);
println("6:" + countg);
println("7:" + counth);
println("8:" + counti);
println("9:" + countj);
println("10:" + countk);
println("11:" + countl);
println("12:" + countm);
println("13:" + countn);
println("14:" + counto);
println("15:" + countp);


noLoop();
}
