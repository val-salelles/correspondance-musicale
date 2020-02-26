/**
 * @classdesc Classe définissant un poitn par ses coordonnées x et y
 * @class Point
 * @property {integer} x Coordonnée x du point
 * @property {integer} y Coordonnée y du point
 * */

class Point
{
  
  private int x;
  private int y;
  
  /**
   * Fonction permettant d'initialiser une nouvelle instance de la classe.
   * @func constructor
   * @param {integer} x coordonnée x du point
   * @param {integer} y coordonnée y du point
   * @memberof Point
   * */
  public Point(int x, int y)
  {
      this.x = x;
      this.y = y;
  }
  
  public int getX()
  {
    return this.x;
  }
  
  public int getY()
  {
    return this.y;
  }
}
