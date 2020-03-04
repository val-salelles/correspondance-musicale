/**
 * @author Valentin Salelles
 * @version 1
 * @since 1
 * Classe permettant de définir un point par ses coordonnées x et y
 * */
class Point
{
  /**
  * @since 1
  * Coordonnée x du point
  **/
  private int x;
  
  /**
  * @since 1
  * Coordonnée y du point
  **/
  private int y;
  
  /**
  * @since 1
  * @param x Entier définissant la coordonnée x du point
  * @param y Entier définissant la coordonnée y du point
  * Constructeur de la classe
  **/
  public Point(int x, int y)
  {
      this.x = x;
      this.y = y;
  }
  
  /**
  * @since 1
  * @return Retourne un entier 
  * Getter de la coordonnée x du point
  **/
  public int getX()
  {
    return this.x;
  }
  
  /**
  * @since 1
  * @return Retourne un entier 
  * Getter de la coordonnée y du point
  **/
  public int getY()
  {
    return this.y;
  }
  
  /**
  * @since 1
  * @param x Entier définissant la nouvelle coordonnée x du point
  * Setter de la coordonnée x du point
  **/
  public void setX(int x)
  {
    this.x = x;
  }
  
  /**
  * @since 1
  * @param y Entier définissant la nouvelle coordonnée y du point
  * Setter de la coordonnée y du point
  **/
  public void setY(int y)
  {
    this.y = y;
  }
}
