// Global Variables
int myCount = 0;

void setup() {
  Serial.begin(115200);
  
  // I don't like the following
  while (!Serial){} // blocks the code until the serial monitor is loaded
  // but when you code without the serial monitor your code does not work!
}


void loop() {
  myCount += 1;
  Serial.println("myCount: " + String(myCount) );
  Serial.println("The Factors are: ");
  Serial.println("only Factors up to 100");

   
  Serial.println(String(myCount) + ", 1");
  
    if (myCount % 2 == 0){   // remainder after dividing by 2 
     Serial.println((String(myCount / 2 )) + ", 2");
  }
    if (myCount % 3 == 0){   // remainder after dividing by 2 
     Serial.println((String(myCount / 3 )) + ", 3");
  }
    if (myCount % 4 == 0){   // remainder after dividing by 2 
     Serial.println((String(myCount / 4 )) + ", 4");
  }
    if (myCount % 5 == 0){   // remainder after dividing by 2 
     Serial.println((String(myCount / 5 )) + ", 5");
  }
    if (myCount % 6 == 0){   // remainder after dividing by 2 
     Serial.println((String(myCount / 6 )) + ", 6");
  }
    if (myCount % 7 == 0){   // remainder after dividing by 2 
     Serial.println((String(myCount / 7 )) + ", 7");
  }
    if (myCount % 8 == 0){   // remainder after dividing by 2 
     Serial.println((String(myCount / 8 )) + ", 8");
  }
    if (myCount % 9 == 0){   // remainder after dividing by 2 
     Serial.println((String(myCount / 9 )) + ", 9");
  }
    if (myCount % 10 == 0){   // remainder after dividing by 2 
     Serial.println((String(myCount / 10 )) + ", 10");
  }
    if (myCount % 11 == 0){   // remainder after dividing by 2 
     Serial.println((String(myCount / 11 )) + ", 11");
  }
    if (myCount % 12 == 0){   // remainder after dividing by 2 
     Serial.println((String(myCount / 12 )) + ", 12");
  }
    if (myCount % 13 == 0){   // remainder after dividing by 2 
     Serial.println((String(myCount / 13 )) + ", 13");
  }
    if (myCount % 14 == 0){   // remainder after dividing by 2 
     Serial.println((String(myCount / 14 )) + ", 14");
  }
    if (myCount % 15 == 0){   // remainder after dividing by 2 
     Serial.println((String(myCount / 15 )) + ", 15");
  }
    if (myCount % 16 == 0){   // remainder after dividing by 2 
     Serial.println((String(myCount / 16 )) + ", 16");
  }
    if (myCount % 17 == 0){   // remainder after dividing by 2 
     Serial.println((String(myCount / 17 )) + ", 17");
  }
    if (myCount % 18 == 0){   // remainder after dividing by 2 
     Serial.println((String(myCount / 18 )) + ", 18");
  }
    if (myCount % 19 == 0){   // remainder after dividing by 2 
     Serial.println((String(myCount / 19 )) + ", 19");
  }
    if (myCount % 20 == 0){   // remainder after dividing by 2 
     Serial.println((String(myCount / 20 )) + ", 20");
  }
    if (myCount % 21 == 0){   // remainder after dividing by 2 
     Serial.println((String(myCount / 21 )) + ", 21");
  }
    if (myCount % 22 == 0){   // remainder after dividing by 2 
     Serial.println((String(myCount / 22 )) + ", 22");
  }
    if (myCount % 23 == 0){   // remainder after dividing by 2 
     Serial.println((String(myCount / 23 )) + ", 23");
  }
    if (myCount % 24 == 0){   // remainder after dividing by 2 
     Serial.println((String(myCount / 24 )) + ", 24");
  }
    if (myCount % 25 == 0){   // remainder after dividing by 2 
     Serial.println((String(myCount / 25 )) + ", 25");
  }
    if (myCount % 26 == 0){   // remainder after dividing by 2 
     Serial.println((String(myCount / 26 )) + ", 26");
  }
    if (myCount % 27 == 0){   // remainder after dividing by 2 
     Serial.println((String(myCount / 27 )) + ", 27");
  }
    if (myCount % 28 == 0){   // remainder after dividing by 2 
     Serial.println((String(myCount / 28 )) + ", 28");
  }
    if (myCount % 29 == 0){   // remainder after dividing by 2 
     Serial.println((String(myCount / 29 )) + ", 29");
  }
    if (myCount % 30 == 0){   // remainder after dividing by 2 
     Serial.println((String(myCount / 30 )) + ", 30");
  }
    if (myCount % 31 == 0){   // remainder after dividing by 2 
     Serial.println((String(myCount / 31 )) + ", 31");
  }
    if (myCount % 32 == 0){   // remainder after dividing by 2 
     Serial.println((String(myCount / 32 )) + ", 32");
  }
    if (myCount % 33 == 0){   // remainder after dividing by 2 
     Serial.println((String(myCount / 33 )) + ", 33");
  }
    if (myCount % 34 == 0){   // remainder after dividing by 2 
     Serial.println((String(myCount / 34 )) + ", 34");
  }
    if (myCount % 35 == 0){   // remainder after dividing by 2 
     Serial.println((String(myCount / 35 )) + ", 35");
  }
    if (myCount % 36 == 0){   // remainder after dividing by 2 
     Serial.println((String(myCount / 36 )) + ", 36");
  }
    if (myCount % 37 == 0){   // remainder after dividing by 2 
     Serial.println((String(myCount / 37 )) + ", 37");
  }
    if (myCount % 38 == 0){   // remainder after dividing by 2 
     Serial.println((String(myCount / 38 )) + ", 38");
  }
    if (myCount % 39 == 0){   // remainder after dividing by 2 
     Serial.println((String(myCount / 39 )) + ", 39");
  }
    if (myCount % 40 == 0){   // remainder after dividing by 2 
     Serial.println((String(myCount / 40 )) + ", 40");
  }
    if (myCount % 41 == 0){   // remainder after dividing by 2 
     Serial.println((String(myCount / 41 )) + ", 41");
  }
    if (myCount % 42 == 0){   // remainder after dividing by 2 
     Serial.println((String(myCount / 42 )) + ", 42");
  }
    if (myCount % 43 == 0){   // remainder after dividing by 2 
     Serial.println((String(myCount / 43 )) + ", 43");
  }
    if (myCount % 44 == 0){   // remainder after dividing by 2 
     Serial.println((String(myCount / 44 )) + ", 44");
  }
    if (myCount % 45 == 0){   // remainder after dividing by 2 
     Serial.println((String(myCount / 45 )) + ", 45");
  }
    if (myCount % 46 == 0){   // remainder after dividing by 2 
     Serial.println((String(myCount / 46 )) + ", 46");
  }
    if (myCount % 47 == 0){   // remainder after dividing by 2 
     Serial.println((String(myCount / 47 )) + ", 47");
  }
    if (myCount % 48 == 0){   // remainder after dividing by 2 
     Serial.println((String(myCount / 48 )) + ", 48");
  }
    if (myCount % 49 == 0){   // remainder after dividing by 2 
     Serial.println((String(myCount / 49 )) + ", 49");
  }
    if (myCount % 50 == 0){   // remainder after dividing by 2 
     Serial.println((String(myCount / 50 )) + ", 50");
  }
    if (myCount > 50) {
        Serial.println("1 ," + String(myCount));
      }

  Serial.println("-------------------------------" );
    
      if (myCount >= 100) {
        exit(0);
      }
        delay(1000);
}
