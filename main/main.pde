import processing.sound.*;
Function f;

PFont tabFonts;

void preload()
{
  f = new Function();
  tabFonts = loadFont("font/Akronim/Akronim-regular.ttf");
}

void setup()
{
  //fullScreen();
  background(255);
  textFont(tabFonts);
  textSize(30);
  text("test",40,40);
}
