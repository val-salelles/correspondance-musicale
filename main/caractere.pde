/**
* @author Valentin Salelles
* @version 1
* @since 1
* @see Lettre
* @see Font
* @see Color
* Classe permettant de gérer les couleurs.
**/
class Caractere extends Lettre
{
  
  /**
  * @since 1
  * Position du caractère dans la fenêtre d'affichage
  **/
  private Point position;  
  
  /**
  * @since 1
  * Couleur d'affichage du caractère
  **/
  private Color couleur;
  
  /**
  * @since 1
  * Tableau des polices de caractères.
  **/
  private Font tabFont;
  
  /**
  * @since 1
  * Constructeur de la classe
  **/
  public Caractere()
  {
    super("");
    this.position = new Point(0, Function.DEPLAC);
    this.couleur = new Color();
    this.tabFont = new Font();
    this.couleur.setAleaColor();
  }
  
  /**
  * @since 1
  * Méthode permettant de mettre à jour la couleur du caratère
  **/
  public void setCouleur()
  {
    this.couleur.setAleaColor();
  }
  
  /**
  * @since 1
  * @return Retourne un point
  * Getter de l'attribut position
  **/
  public Point getPos()
  {
    return this.position;
  }
  
  /**
  * @since 1
  * Méthode permettant l'affichage du caratère.
  **/
  public void draw()
  {
      fill(this.couleur.getCol());
      textSize(Function.DEPLAC);
      textFont(this.tabFont.getAleaFont(), Function.DEPLAC);
      text(this.value, this.position.x, this.position.y);
  }
}
