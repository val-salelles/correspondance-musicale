Keys keys;
ArrayList<Sound> sons;
Caractere caractere;
float pan = 0;

void setup()
{
  //fullScreen();
  size(500,500);
  background(255);
  caractere = new Caractere();
  sons = new ArrayList<Sound>();
  keys = new Keys();
  pan = 0; 
}

void draw()
{
  if(keys.getPressed()) 
    {
      if(keyCode != 16 && caractere.isValidKey())
      {
        if(keys.getClean())
        {
          background(255);
          keys.offClean();
        }
        caractere.draw();
        sons.get(sons.size()-1).playSound(this);
      }
      keys.offPressed();
    }
    
    if(!sons.isEmpty())
      removeEndedSound();
}

void keyPressed() 
{
  //println(key+" "+keyCode);
  //println(son.getBypassEffect());
  if(keyCode != 16 && keyCode != UP && keyCode != LEFT && keyCode != RIGHT)
    {
       caractere.setValue(key+"");
       if(caractere.isValidKey())
       { 
          caractere.setColor();
          caractere.setFont();
          keys.addKey(caractere.getValue());
          keys.onPressed();
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
             keys.onClean();
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
