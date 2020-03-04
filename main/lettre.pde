/**
 * @author Valentin Salelles
 * @version 1
 * @since 1
 * Classe permettant de définir un caractère alphanumériques
 * */
class Lettre
{
  /**
  * @since 1 
  * Caratère alphanumérique
  **/
  protected String value;
 
  /**
  * @since 1
  * Constructeur de base de la classe
  **/
  public Lettre()
  {
    this.value = "";
  }
  
  /**
  * @since 1 
  * @param val Chaîne de caratères permettant d'initilaliser le caratère alphanumérique
  * Surcharge du constructeur de base de la classe
  **/
  public Lettre(String val)
  {
    this.value = val;
  }

  /**
  * @since 1 
  * @return Retourne un booléen
  * Méthode permettant de tester si le caratère alphanumérique est valide
  **/
  public boolean isValidKey()
  {    
    return this.isAlpha() || this.isNumber() || this.value.equals(" ");
  }
  
  /**
  * @since 1 
  * @return Retourne un booléen
  * Méthode permettant de tester si le caratère alphanumérique est un caractère alphabétique
  **/
  public boolean isAlpha()
  {
    if(match(this.value,"[A-Z a-z]") != null)
      return true;
    
    return false;
  }
  
  /**
  * @since 1 
  * @return Retourne un booléen
  * Méthode permettant de tester si le caratère alphanumérique est un nombre
  **/
  public boolean isNumber()
  {
    if(match(this.value,"[0-9]") != null)
      return true;
    
    return false;
  }
  
  /**
  * @since 1 
  * @return Retourne un booléen
  * Méthode permettant de tester si le caratère alphanumérique est une voyelle
  **/
  public boolean isVoyelle()
  {
    if(match(this.value,"[A E I O U Y a e i o u y]") != null)
      return true;

    return false;
  }

  /**
  * @since 1 
  * @return Retourne un booléen
  * Méthode permettant de tester si le caratère alphanumérique est un nombre pair
  **/
  public boolean isPair()
  {
    if(this.isNumber())
      if(int(Float.parseFloat(this.value)%2) == 0)
        return true;
        
    return false;
  }
  
  /**
  * @since 1 
  * @return Retourne un booléen
  * Méthode permettant de tester si le caratère alphanumérique est un nombre ou une voyelle
  **/
  public boolean isVoyelleOrNumber()
  {
    return this.isVoyelle() || this.isNumber();
  }
  
  /**
  * @since1
  * @param val Chaîne de caratères représentant le nouveau caratère alphanumérique
  * Setter du caractère alphanumérique
  **/
  public void setValue(String val)
  {
    this.value = val;
  }
  
  /**
  * @since1
  * @return Retourne une chaîne de caractères
  * Getter du caractère alphanumérique
  **/
  public String getValue()
  {
    return this.value;
  }
}
