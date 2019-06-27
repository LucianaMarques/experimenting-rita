import rita.*;
import java.util.*;

PFont font;
String[] yaml;
RiGrammar grammar;
String[] lines = {"click to", "generate", "a haiku"}; 

String result;
String[] haiku;

void setup() {
  font = loadFont("../data/IPAGothic-48.vlw");
  yaml = loadStrings("../data/grammar.yaml");
  size(800,400);
  background(255);
  textFont(font, 30);
  textAlign(CENTER);
  grammar = new RiGrammar(yaml);
}

void draw() {

  background(230, 240, 255);
  text(lines[0], width / 2, 75);
  text(lines[1], width / 2, 110);
  text(lines[2], width / 2, 145);
}

void mouseReleased() {

  result = grammar.expand();
  haiku = result.split("%");
  for (int i = 0; i < lines.length; i++)
    lines[i] = haiku[i];
}
