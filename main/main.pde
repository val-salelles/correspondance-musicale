boolean pressed = false, clean = false;
ArrayList<Sound> sons;
Caractere caractere;
float pan = 0;

void setup()
{
  //fullScreen();
  size(500,500);
  background(255);
  sons = new ArrayList<Sound>();
  caractere = new Caractere();
  pan = 0; 
}

void draw()
{
  if(pressed) 
    {
      if(keyCode != 16 && caractere.isValidKey())
      {
        if(clean)
        {
          background(255);
          clean = false;
        }
        caractere.draw();
        sons.get(sons.size()-1).playSound(this);
      }
      pressed = false;
    }
    
    if(!sons.isEmpty())
      removeEndedSound();
}

void keyPressed() 
{
  if(keyCode != 16 && keyCode != UP && keyCode != LEFT && keyCode != RIGHT)
    {
       caractere.setValue(key+"");
       if(caractere.isValidKey())
       { 
          caractere.setCouleur();
          pressed = true;
          sons.add(new Sound(caractere.getValue(), caractere.isAlpha(),pan));
          
          if(width - (2 * Function.DEPLAC) < caractere.getPos().getX())
           {
             caractere.getPos().setX(Function.DEPLAC);
             caractere.getPos().setY(caractere.getPos().getY()+ Function.DEPLAC);
           }
           else
           {
             caractere.getPos().setX(caractere.getPos().getX()+ Function.DEPLAC);
           }
           
           if(height - Function.DEPLAC < caractere.getPos().getY())
           {
             caractere.getPos().setY(Function.DEPLAC);
             clean = true;
           }
       }
    }
    
    if(keyCode == UP)
      pan = 0;

    if(keyCode == LEFT)
      pan = 1;
    
    if(keyCode == RIGHT)
      pan = -1;
}

void removeEndedSound()
{
  if(!sons.isEmpty())
  {
    ArrayList<Sound> tmp = new ArrayList<Sound>();
    for(Sound s : sons)
      {
        if(s.onEnded())
          tmp.add(s);
      }
      
     if(!tmp.isEmpty())
      {
        sons.removeAll(tmp);
      }
  }
}
