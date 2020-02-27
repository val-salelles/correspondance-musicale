/**
 * @classdesc Classe permettant de définir un caractère à déssiner.
 * @class Letter
 * @property {Point} position Position d'affichage du caratère.
 * @property {String} value Valeur du caractère.
 * @property {integer} red Paramètre définissant la composante rouge de la couleur d'affichage de la lettre choisi de manière aléatoire.
 * @property {integer} verte Paramètre définissant la composante verte de la couleur d'affichage de la lettre choisi de manière aléatoire.
 * @property {integer} bleu Paramètre définissant la composante bleu de la couleur d'affichage de la lettre choisi de manière aléatoire.
 * @property {integer} lifeCount Paramètre permetant de compter le temps d'affichage du caractère.
 * @property {integer} life Paramètre définissant le temps d'affichage du caractère.
 * @property {String} fonte Police d'affichage du caractère.
 * */

class Letter
{
  
  private Point position;  
  private Color couleur;
  private Font tabFonts;
  private Sound son;
  private int idFont;
  private String value;
  
  /**
   * Fonction permettant d'initialiser une nouvelle instance de la classe.
   * @func constructor
   * @param {String} value caractère à afficher
   * @param {String} fonte police d'écriture du caractère.
   * @param {intger} size taille du caratère.
   * @memberof Letter
   * */
  public Letter(String value, Function f, int idFont)
  {
    this.position = new Point(0, f.DEPLAC);
    this.value = value;
    this.couleur = new Color(f.getRandomIntInclusive(0, 253), f.getRandomIntInclusive(0, 253), f.getRandomIntInclusive(0, 253));
    this.idFont = idFont;
    this.tabFonts = new Font(f);
    son = new Sound();
  }
  
public void setColor(Function f)
{
  this.couleur = new Color(f.getRandomIntInclusive(0, 253), f.getRandomIntInclusive(0, 253), f.getRandomIntInclusive(0, 253));
}
  
public void setValue(String val)
{
  this.value = val;
}

public void setFont(Function f)
{
  this.idFont = f.getRandomIntInclusive(0,this.tabFonts.getSize()-1);
}

  /**
   * Fonction permettant d'afficher le caractère de la derniére touche appuyée.
   * @func draw
   * @memberof Letter
   * */
  void draw(Function f,PApplet parent, Keys ks)
  {
      son.analysedKey(this.value,parent,ks);
      fill(this.couleur.getCol());
      textSize(f.DEPLAC);
      textFont(this.tabFonts.getFont(this.idFont), f.DEPLAC);
      text(this.value, this.position.x, this.position.y);
  }
}
