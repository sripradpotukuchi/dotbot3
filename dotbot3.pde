PFont Heading, Text, Answer;
String display_praise, praise, question, display_answer, answer;
int counter, enterpressed;
boolean slash;

void setup() {
  size(700, 300);
  Heading = createFont("Purisa Bold Oblique", 50);
  Text = createFont("Purisa Bold", 25);
  Answer = createFont("Purisa Oblique", 20);
  praise = "dotbot is the best ai in the whole world";
  display_praise = "";
  question = "";
  display_answer = "";
  answer = "";
  counter = 0;
  enterpressed = 0;
  slash = false;
}

void draw() {
  background(#141e23);
  fill(#748e54);
  textFont(Heading);
  text("DOTBOT.", 200, 55);
  textFont(Text);
  text("Praise me-", 30, 110);
  text("Question-", 30, 170);
  text("Answer-", 30, 230);
  textFont(Answer);
  text(display_praise, 210, 110);
  text(question, 190, 170);
  text(display_answer, 170, 230);
  text("*Subscribe to Sriprad Potukuchi", 330, 290);
  text("v3.0.0.1", 470, 30);
}

void keyPressed() {
  if (key == '/') {
    slash = !slash;
  }
  if (key == ENTER) {
    enterpressed++;
  }
  if (enterpressed == 0) {
    if (slash) {
      answer += key;
      display_praise += praise.charAt(counter);
    } else if (key != '/') {
      display_praise += key;
    }
  }
  if ((enterpressed == 1) && (key != ENTER)) {
    question += key;
  }
  if (enterpressed == 2) {
    display_answer = answer.substring(1, answer.length());
  }
  counter++;
}
