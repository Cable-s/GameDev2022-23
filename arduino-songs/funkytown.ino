// Define the notes of the song as constants
const int C4n = 262;
const int D4n = 294;
const int E4n = 330;
const int F4n = 349;
const int G4n = 392;
const int A4n = 440;
const int B4n = 494;
const int C5n = 523;
const int D5n = 587;
const int E5n = 659;
const int F5n = 698;
const int G5n = 784;
const int A5n = 880;
const int B5n = 988;

void setup() {
  // Set the pin that the speaker is connected to as an output
  pinMode(9, OUTPUT);
}

void loop() {
  // Play the intro of the song
  playNote(C4n, 500);
  playNote(D4n, 500);
  playNote(E4n, 500);
  playNote(F4n, 500);
  playNote(G4n, 500);
  playNote(A4n, 500);
  playNote(B4n, 500);
  playNote(C5n, 500);

  // Play the verse of the song
  playNote(C5n, 250);
  playNote(B4n, 250);
  playNote(A4n, 250);
  playNote(G4n, 250);
  playNote(F4n, 250);
  playNote(E4n, 250);
  playNote(D4n, 250);
  playNote(C4n, 250);

  // Play the chorus of the song
  playNote(C4n, 500);
  playNote(D4n, 500);
  playNote(E4n, 500);
  playNote(F4n, 500);
  playNote(G4n, 500);
  playNote(A4n, 500);
  playNote(B4n, 500);
  playNote(C5n, 500);

  // Play the verse of the song
  playNote(C5n, 250);
  playNote(B4n, 250);
  playNote(A4n, 250);
  playNote(G4n, 250);
  playNote(F4n, 250);
  playNote(E4n, 250);
  playNote(D4n, 250);
  playNote(C4n, 250);

  // Play the chorus of the song
  playNote(C4n, 500);
  playNote(D4n, 500);
  playNote(E4n, 500);
  playNote(F4n, 500);
  playNote(G4n, 500);
  playNote(A4n, 500);
  playNote(B4n, 500);
  playNote(C5n, 500);
}

// Function to play a single note for a given duration
void playNote(int note, int duration) {
  tone(9, note, duration);
  delay(duration);
  noTone(9);
  delay(50);
}
