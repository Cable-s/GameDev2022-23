// refer to 
// https://www.arduino.cc/reference/en/#variables


// Global Variables
bool myBool01 = false;
int myInt01 = 1;
int myInt02 = 1;
int mysrq02 = 1;
long myLong01 = 3;
float myFloat01 = 34.23;
char myChar01 = 'F';
String myChar02 = "RED";
String myChar03 = "";
String myString = "Fred";
// many more types of variables including advanced arrays and structs

void setup() {
  // put your setup code here, to run once:
  Serial.begin(115200);
  int myLocal = 5;
}

void loop() {
  // put your main code here, to run repeatedly:
  int myLocal = 99;
  myInt01 += 1;
  myBool01 = !myBool01;
  myFloat01 = myFloat01 + myInt01;
  if (myBool01 == true) {
    myInt02 += 1;
    } else {
      myInt02 += 10;
      };
  if (myBool01 == true) {
    myChar03 = myChar01;
    } else {
      myChar03 = myChar02;
      };
  mysrq02 = sq(myInt01);

  
  Serial.println("Counting myInt01: " + String(myInt01) );
  Serial.println("myBool01: " + String(myBool01) );
  Serial.println("myLong01 : " + String(myLong01) );
  Serial.println("myFloat01 + myInt01 : " + String(myFloat01,3) );
  Serial.println("myChar01: " + String(myChar01) );
  Serial.println("myString: " + myString );  
  Serial.println("Why doesn't myLocal = 5 when it equals: " + String(myLocal) );
  Serial.println("alternating counting by 1 then 10: " + String(myInt02) );
  Serial.println("Alternating 'f' and 'red' :" + String(myChar03) );
  Serial.println("All the perfect squares :" + String(mysrq02) );



  Serial.println("------------------------------------");
  Serial.println();
  delay(2000);
}
