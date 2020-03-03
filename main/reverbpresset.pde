class ReverbPresset extends Presset
{  
  public ReverbPresset()
  {
    super();
  }
  
  public ReverbPresset(float r, float d, float w)
  {
    super(r,d,w);
    this.isOn = true;
  }
  
  public void setValue(float r, float d, float w)
  {
    this.isOn = true;
    this.v1= r;
    this.v2 = d;
    this.v3 = w;
  }
  
  public float getRoom()
  {
    return this.v1;
  }
  
  public float getDamp()
  {
    return this.v2;
  }
  
  public float getWet()
  {
    return this.v3;
  }
  
}
