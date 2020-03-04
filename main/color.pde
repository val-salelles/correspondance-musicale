/**
* @author Valentin Salelles
* @version 1
* @since 1
* Classe permettant de gérer les couleurs.
**/
class Color
{
  
  /**
  * @since 1
  * Composante rouge de la couleur
  **/  
  private int r;
  
  /**
  * @since 1
  * Composante verte de la couleur
  **/ 
  private int v;
  
  /**
  * @since 1
  * Composante bleu de la couleur
  **/ 
  private int b;
  
  /**
  * @since 1
  * Constructeur de base de la classe
  **/
  public Color()
  {
    this.r = 0;
    this.v = 0;
    this.b = 0;
  }
  
  /**
  * @since 1
  * @param r Entier définissant la composante rouge de la couleur
  * @param v Entier définissant la composante verte de la couleur
  * @param b Entier définissant la composante bleu de la couleur
  * Surcharge du constructeur de base de la classe
  **/
  public Color(int r, int v, int b)
  {
    this.r = r;
    this.v = v;
    this.b = b;
  }
  
  /**
  * @since 1
  * @param r Entier définissant la composante rouge de la couleur
  * @param v Entier définissant la composante verte de la couleur
  * @param b Entier définissant la composante bleu de la couleur
  * Méthode permettant de mettre à jour les composantes rouge, verte et bleu de la couleur
  **/
  public void setValue(int r, int v, int b)
  {
    this.r = r;
    this.v = v;
    this.b = b;
  }
  
  /**
  * @since 1
  * Méthode permettant dedéfinir une couleur aléatoire
  **/
  public void setAleaColor()
  {
    this.r = Function.getRandomIntInclusive(0, 253);
    this.v = Function.getRandomIntInclusive(0, 253); 
    this.b = Function.getRandomIntInclusive(0, 253);
  }
  
  /**
  * @since 1
  * @return Retourne un entier
  * Getter de la composante Rouge de la couleur
  **/
  public int getR()
  {
    return this.r;
  }
  
  /**
  * @since 1
  * @return Retourne un entier
  * Getter de la composante verte de la couleur
  **/
  public int getV()
  {
    return this.v;
  }
  
  /**
  * @since 1
  * @return Retourne un entier
  * Getter de la composante bleu de la couleur
  **/
  public int getB()
  {
    return this.b;
  }
  
  /**
  * @since 1
  * @return Retourne une variable de type color
  * Méthode permettant de créer une couleur à partir des composantes rouge, verte et bleu
  **/
  public color getCol()
  {
    return color(r,v,b);
  }
}
