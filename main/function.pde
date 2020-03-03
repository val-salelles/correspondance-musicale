/**
* @author Valentin Salelles
* @version 1
* @since 1
* Classe static contenant diverse fonctions générales
**/
static class Function
{
  
  /**
  * @since 1
  * @param v nombre flottant à tronquer
  * @param p entier indiquant la précision de la troncature
  * @return retourne un nombre flottant
  * Méthode static permettant de retourner un nombre flottant tronqué à une précision p
  **/
  public static float roundPrecision(float v, int p)
  {
    float prec = 1;
    for(int i = 0; i<p; i++)
      prec /= 10;
    return v = v - v % prec;
  }
  
  /**
  * @since 1
  * @param min entier définissant la borne inférieur du nombre aléatoire renvoyé
  * @param max entier définissant la borne supérieur du nombre aléatoire renvoyé
  * @return retourne un entier aléatoire
  * Méthode static permettant de retourner un entier aléatoire dnas cette intervalle [min, max]
  **/
  public static int getRandomIntInclusive(int min, int max)
  {
    Double res = new Double(Math.floor(Math.random() * (max - min + 1)) + min);
    return res.intValue();
  }
  
  /**
  * @since 1
  * Entier static et constant définissant l'espace entre chaque caractère lors de l'affichage.
  **/
  public static final int DEPLAC = 25;  
}
