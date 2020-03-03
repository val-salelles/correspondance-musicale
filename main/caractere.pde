class Caractere extends Lettre
{
  private Point position;  
  private Color couleur;
  private Font tabFonts;
  private int idFont;
  
  public Caractere(String k)
  {
    super(k);
    this.position = new Point(0, Function.DEPLAC);
    this.couleur = new Color();
    this.idFont = 0;
    this.tabFonts = new Font();
  }
  
  public Caractere()
  {
    super();
    this.position = new Point(0, Function.DEPLAC);
    this.couleur = new Color();
    this.idFont = 0;
    this.tabFonts = new Font();
  }
  
  public void setFont()
  {
    this.idFont = Function.getRandomIntInclusive(0,this.tabFonts.getSize()-1);
  }
  
  public void setColor()
  {
    this.couleur.setValue(Function.getRandomIntInclusive(0, 253), Function.getRandomIntInclusive(0, 253), Function.getRandomIntInclusive(0, 253));
  }
  
  public Point getPos()
  {
    return this.position;
  }
  
  public void draw()
  {
      fill(this.couleur.getCol());
      textSize(Function.DEPLAC);
      textFont(this.tabFonts.getFont(this.idFont), Function.DEPLAC);
      text(this.value, this.position.x, this.position.y);
  }
}
