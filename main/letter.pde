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
  private String value;
  private int life;
  private int lifeCount;
  private String fonte;
  
  /**
   * Fonction permettant d'initialiser une nouvelle instance de la classe.
   * @func constructor
   * @param {String} value caractère à afficher
   * @param {String} fonte police d'écriture du caractère.
   * @param {intger} size taille du caratère.
   * @memberof Letter
   * */
  public Letter(String value, String fonte, int size, Function f)
  {
    this.position = new Point(size,f.getRandomIntInclusive(0, height*20/100));
    this.value = value;
    this.couleur = new Color(f.getRandomIntInclusive(2, 254), f.getRandomIntInclusive(2, 254), f.getRandomIntInclusive(2, 254));
    this.life = f.getRandomIntInclusive(20, 60);
    this.lifeCount = 0;
    this.fonte = fonte;
  }

  /**
   * Fonction permettant d'afficher le caractère de la derniére touche appuyée.
   * @func draw
   * @memberof Letter
   * */
  void draw(Function f)
  {
    if(this.lifeCount<this.life)
    {
      fill(this.couleur.getCol(),float(255-(floor(255/this.life)*this.lifeCount)));
      textSize(f.getRandomIntInclusive(20, 30));
      textFont(createFont(this.fonte, 30));
      text(this.value, this.position.x, this.position.y+(f.DEPLAC*this.lifeCount));
      this.lifeCount ++;
    }
  }
}
