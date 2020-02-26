class Color
{
  private int r;
  private int v;
  private int b;
  
  public Color(int r, int v, int b)
  {
    this.r = r;
    this.v = v;
    this.b = b;
  }
  
  public int getR()
  {
    return this.r;
  }
  
  public int getV()
  {
    return this.v;
  }
  
  public int getB()
  {
    return this.b;
  }
  
  public color getCol()
  {
    return color(r,v,b);
  }
}
