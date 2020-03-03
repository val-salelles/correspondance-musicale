class Lettre
{
  
  protected String value;
 
  public Lettre()
  {
    this.value = "";
  }
  
  public Lettre(String val)
  {
    this.value = val;
  }

  public boolean isValidKey()
  {    
    return this.isAlpha() || this.isNumber() || this.value.equals(" ");
  }
  
  public boolean isAlpha()
  {
    if(match(this.value,"[A-Z a-z]") != null)
      return true;
    
    return false;
  }
  
  public boolean isNumber()
  {
    if(match(this.value,"[0-9]") != null)
      return true;
    
    return false;
  }

  public boolean isVoyelle()
  {
    if(match(this.value,"[A E I O U Y a e i o u y]") != null)
      return true;

    return false;
  }

  public boolean isPair()
  {
    if(this.isNumber())
      if(int(Float.parseFloat(this.value)%2) == 0)
        return true;
        
    return false;
  }
  
  public boolean isVoyelleOrNumber()
  {
    return this.isVoyelle() || this.isNumber();
  }
  
  public void setValue(String val)
  {
    this.value = val;
  }
  
  public String getValue()
  {
    return this.value;
  }
}
