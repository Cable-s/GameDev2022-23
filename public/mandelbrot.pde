import org.gicentre.utils.spatial.*;
import org.gicentre.utils.network.*;
import org.gicentre.utils.network.traer.physics.*;
import org.gicentre.utils.geom.*;
import org.gicentre.utils.move.*;
import org.gicentre.utils.stat.*;
import org.gicentre.utils.gui.*;
import org.gicentre.utils.colour.*;
import org.gicentre.utils.text.*;
import org.gicentre.utils.*;
import org.gicentre.utils.network.traer.animation.*;
import org.gicentre.utils.io.*;

color c = color(0, 0, 0);
ZoomPan zoomer;
void setup() {
  zoomer = new ZoomPan(this);
  size(200, 200);
  colorMode(RGB, 1);
}

void draw() {
  
zoomer.transform();
background(0);
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
      
      if (abs(a + b) > 16.0) {
        break;
      }
      n++;
      //print(n + "  ");
    }
  
                    switch(n % 16) {
                          case 0:
                              c = color(255, 0, 0);
                                                                  //print(0 + "  ");
                              break;
                          case 1:
                              c = color(66, 30, 15);
                                                                  //print(1 + "  ");
                              break;
                          case 2:
                              c = color(25, 7, 26);
                                                                  //print(2 + "  ");
                              break;
                          case 3:
                              c = color(9, 1, 47);
                                                                  //print(3 + "  ");
                              break;
                          case 4:
                              c = color(4, 4, 73);
                                                                  //print(4 + "  ");
                              break;
                          case 5:
                              c = color(12, 44, 138);
                                                                  //print(5 + "  ");
                              break;
                          case 6:
                              c = color(24, 82, 177);
                                                                  //print(6 + "  ");
                              break;
                          case 7:
                              c = color(57, 125, 209);
                                                                  //print(7 + "  ");
                              break;
                          case 8:
                             c = color(134, 181, 229);
                                                                 //print(8 + "  ");
                              break;
                          case 9:
                              c = color(211, 236, 248);
                                                                  //print(9 + "  ");
                              break;
                          case 10:
                              c = color(241, 233, 191);
                                                                  //print(10 + "  ");
                              break;
                          case 11:
                              c = color(248, 201, 95);
                                                                  //print(11 + "  ");
                              break;
                          case 12:
                              c = color(255, 170, 0);
                                                                  //print(12 + "  ");
                              break;
                          case 13:
                              c = color(204, 128, 0);
                                                                  //print(13 + "  ");
                              break;
                          case 14:
                              c = color(153, 87, 0);
                                                                  //print(14 + "  ");
                              break;
                          case 15:
                              c = color(106, 52, 3);
                                    //print(15 + "  ");
                              break;
                    }     
    if (n == maxIterations) {
      pixels[i+j*width] = (0);
    } else {
      pixels[i+j*width] = c;  //color(sqrt(float(n) / maxIterations));
      print(c + "   ");

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
noLoop();
}
