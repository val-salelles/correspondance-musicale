class Keys
{

  private ArrayList<Lettre> tabKeys;
  private int maxSize;
  private boolean clean;
  private boolean pressed;
  private int countVoyelle;
  private int countNumber;
  private int countAlpha;
  private int countPair;

  public Keys()
  {
    this.maxSize = 40 ;
    this.tabKeys = new ArrayList<Lettre>();
    this.clean = false;
    this.pressed = false;
    this.resetCounter();
  }
  
  private void resetCounter()
  {
    this.countVoyelle = 0;
    this.countNumber = 0;
    this.countAlpha = 0;
    this.countPair = 0;
  }

  public void addKey(String k)
  {
    if(this.tabKeys.size() >= this.maxSize)
    {
      this.tabKeys.clear();
      this.resetCounter();
    }
    Lettre l = new Lettre(k);
    this.tabKeys.add(l);
    
    
    if(l.isAlpha())
    {
      this.countAlpha ++;
      if(l.isVoyelle())
      {
        this.countVoyelle ++;
      }
    }
    else  if(l.isNumber())
    {
      this.countNumber ++;
       if(l.isPair())
        {
          this.countPair ++;
        }
    }
  }
  
  public <U extends Presset> U  getEffect()
  {
    int impair = this.countNumber - this.countPair;
    int comsonne = this.countAlpha - this.countVoyelle; 
    if(this.tabKeys.get(Function.getRandomIntInclusive(0,this.tabKeys.size()-1)).isVoyelleOrNumber())
    {
      float tmp = Function.roundPrecision((comsonne*1.5+this.countAlpha)/(this.maxSize*2) + (this.countVoyelle*1.5+this.countPair)/(this.maxSize*0.8),1);
      tmp = (tmp>1)?tmp%1 : tmp;
      return (U) new DelayPresset(tmp,((impair*1.5+this.countNumber)/(this.maxSize*2))+0.1,tmp*10);
    }
    
    float tmpR = Function.roundPrecision((comsonne*1.5+this.countAlpha)/(this.maxSize*2), 1);
    return (U) new ReverbPresset((tmpR>1)?tmpR%1 : tmpR,((impair*1.5+this.countNumber)/(this.maxSize*2))+0.1,(this.countVoyelle*1.5+this.countPair)/(this.maxSize*2));
  }
  
  public void onClean()
  {
    this.clean = true;
  }
  
  public void onPressed()
  {
    this.pressed = true;
  }
  
  public void offClean()
  {
    this.clean = false;
  }
  
  public void offPressed()
  {
    this.pressed = false;
  }
  
  public boolean getClean()
  {
    return this.clean;
  }
  
  public boolean getPressed()
  {
    return this.pressed;
  }
  
}
