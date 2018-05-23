String sentence;
String cap;
int s = 130;
int all;
String Vowels;
String All;
void settings() {
  size(s, s);
}

void setup() {
  background(0, 0, 0);
  textAlign(CENTER);
  textSize(width/5);
  text("=^ v ^=", width/2, height/2);
  sentence = "I,,, shall name him Gerald!!!";
  cap = "[^A-Z]+";
  Vowels = "([^aeiouAEIOU])+";
  All = "[A-z]";
  String[] Caps = sentence.split(cap);
  String[] list = split(sentence, " ");
  String[] vowelCount = sentence.split(Vowels);
  String[] AllCount = sentence.split(All);
  int words = list.length;
  println("Your sentence is, \"" + sentence + "\".");
  println("Your sentence consists of:");
  println(" - " + Caps.length + " capital(s)");
  println(" - " + words + " word(s)");
  println(" - " + numberOfPunctuation(sentence) + " punctuation mark(s)");
  println(" - " + sentence.length() + " character(s)");
  println(" - " + vowelCount.length  + " vowel(s)");
  println("  >  Helpful reminder: Gerald is proud of you!!");
  println(" - " + AllCount.length + " letters");
  println(" - The most used letter in your sentence is " + all + ", appearing " + letter(sentence) + " times.");
  println(AllCount.length);
  println(AllCount);
}
void draw() {
  noLoop();
}

int numberOfPunctuation(String sentence) {
  int amountOfPunctuation = 0;
  char [] punctuation = sentence.toCharArray();
  for (int p = 0; p < punctuation.length; p++) {
    if (punctuation[p] == '.' || punctuation[p] == '\'' || punctuation[p] == ':' || punctuation[p] == ';' || punctuation[p] == ',' || punctuation[p] == '!' || punctuation[p] == '?') {
      amountOfPunctuation += 1;
    }
  }
  return amountOfPunctuation;
}

int letter(String sentence) {
  int letterCount = 0;
  char [] countLetter = sentence.toCharArray();
  for (int p = 0; p < countLetter.length; p++) {
    if (countLetter[p] >= 65 && countLetter[p] <= 90 || countLetter[p] >= 97 && countLetter[p] <= 122) {

      letterCount += 1;
    }
  }
  return letterCount;
}
