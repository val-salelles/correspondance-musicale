Function f;
Keys keys;
boolean clean, pressed;
Letter lettre;

void setup()
{
  //fullScreen();
  size(500,500);
  background(255);
  f = new Function();
  keys = new Keys();
  clean = false;
  pressed = false;
  lettre = new Letter("",f,0);
}

void draw()
{
  if(pressed) 
  {
    if(keyCode != 16)
    {
      lettre.draw(f,this,keys);
      if(clean)
      {
        background(255);
        clean = false;
      }
    }
    delay(100);
    pressed = false;
  }
}

void keyPressed() 
{
   pressed = true;
   lettre.setColor(f);
   lettre.setFont(f);
   if(keyCode != 16)
    {
       if(keys.isValidKey(key+""))
       {
          lettre.setValue(key+"");
          if(width - (2 * f.DEPLAC) < lettre.position.getX())
           {
             lettre.position.setX(f.DEPLAC);
             lettre.position.setY(lettre.position.getY()+f.DEPLAC);
           }
           else
           {
             lettre.position.setX(lettre.position.getX()+f.DEPLAC);
           }
           if(height - f.DEPLAC < lettre.position.getY())
           {
             lettre.position.setY(f.DEPLAC);
             clean = true;
           }
       }
    }
}
