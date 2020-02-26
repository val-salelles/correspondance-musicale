class Function
{
  public Function()
  {}
  
 /**
 * Fonction permettant de renvoyer un entier aléatoire entre une valeur minimale et une valeur maximale comprise.
 * @func getRandomIntInclusive
 * @param {integer} min valeur minimale
 * @param {integer} max valeur maximale
 * */
 public int getRandomIntInclusive(int min, int max)
  {
    return floor(random(0,1) * (max - min + 1)) + min;
  }
  
 /**
 * Constante de l'intervalle entre chaque caractère lors de l'affichage.
 * \@const {integer} DEPLAC
 * */
 public final int DEPLAC = 25;  
}
