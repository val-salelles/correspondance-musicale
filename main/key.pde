class Keys
{

  private ArrayList<Lettre> tabKeys;
  private int maxSize;
  private boolean clean;
  private boolean pressed;

  public Keys()
  {
    this.maxSize = 40 ;
    this.tabKeys = new ArrayList<Lettre>();
    this.clean = false;
    this.pressed = false;
  }
  


  public void addKey(String k)
  {
    if(this.tabKeys.size() >= this.maxSize)
    {
      this.tabKeys.clear();
      
    }
    Lettre l = new Lettre(k);
    this.tabKeys.add(l);
    
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
