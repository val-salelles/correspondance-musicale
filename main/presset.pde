abstract class Presset
{
  protected float v1;
  protected float v2;
  protected float v3;
  protected boolean isOn;
  
  public Presset()
  {
    this.v1 = 0;
    this.v2 = 0;
    this.v3 = 0;
    this.isOn = false;
  }
  
  public Presset(float v1, float v2, float v3)
  {
    this.v1 = v1;
    this.v2 = v2;
    this.v3 = v3;
    this.isOn = false;
  }
  
  public void setOff()
  {
    this.isOn = false;
  }
  
  public boolean getIsOn()
  {
    return this.isOn;
  }
   
}
