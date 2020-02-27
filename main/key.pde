/**
 * @classdesc Classe permettant d"analyser les touches sur lesquelles l"utilisateur appuyent.
 * @class Keys
 * @property {Array} tabKeys Ce paramètre est un tableau contenant les deux dernière touche appuyées.
 * @property {intger} sounPlay Identifiant du son à lancer.
 * @property {boolean} isComplete Paramètre permettant de savoir si le tableau contenant les deux dernière touche appuyées est plein.
 * @property {integer} selectGroupPrecKeyPressed Paramètre permettant de savoir si l"avant dernière touche appuyée est soit une voyelle, ou une consonne, ou un chiffre pair, ou un chiffre impair.
 * */
class Keys
{

  private ArrayList<String> tabKeys;
  private boolean isComplete = false;
  private int maxSize;
 /**
  * Fonction permettantd"initialiser une nouvelle instance de la classe.
  * @func constructor
  * @memberof Keys
  * @return {Keys} new Object Keys
  * */
  public Keys()
  {
    this.maxSize = 26;
    this.tabKeys = new ArrayList<String>();
  }

  /**
   * Fonction permettant de conserver la dernière touche appuyée et de mettre à jour la dernière touche appuyée.
   * @memberof Keys
   * @func getKey
   * @param {System} k dernière touche appuyée.
   * */
  public void setKey(String k)
  {
    if(this.isAlpha(k)|| this.isNumber(k))
    {
      if(this.tabKeys.size() >= this.maxSize)
      {
        this.tabKeys.clear();
      }
      this.tabKeys.add(k);
    }
  }
  
  public boolean isValidKey(String k)
  {    
    return this.isAlpha(k) || this.isNumber(k) || k == " ";
  }

 /**
  * Fonction permetant de savoir si le paramètre passer est une lettre.
  * @func isAlpha
  * @param {String} keyl paramètre à tester.
  * @memberof Keys
  * @return {boolean} retourne un booléen.
  * */
  public boolean isAlpha(String k)
  {
    if(match(k,"[A-Z a-z]") != null)
      return true;
    
    return false;
  }
  
  public boolean isNumber(String k)
  {
    if(match(k,"[0-9]") != null)
      return true;
    
    return false;
  }

  /**
   * Fonction permettant de savoir si l"avant dernière touche apppuyée est une voyelle ou une consonne.
   * @func isVoyelle
   * @memberof Keys
   * @return {boolean} retourne un booléen.
   * */
  public boolean isVoyelle(int id)
  {
   
    if(this.isNumber(this.tabKeys.get(id)))
      if(match(this.tabKeys.get(id),"[A E I O U Y a e i o u y]") != null)
        return true;

    return false;
  }

 /**
  * Fonction permettant de savoir si l"avant dernière touche apppuyée est un chiffre impair ou pair.
  * @func isPair
  * @memberof Keys
  * @return {boolean} retourne un booléen.
  * */
  public boolean isPair(int id)
  {
    if(this.isNumber(this.tabKeys.get(id)))
      if(int(Float.parseFloat(this.tabKeys.get(id))%2) == 0)
        return true;
        
    return false;
  }
}
