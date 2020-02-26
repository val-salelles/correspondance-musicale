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

  private String[] tabKeys;
  private int soundPlay;
  private boolean isComplete = false;
  private int selectGroupPrecKeyPressed;
  
 /**
  * Fonction permettantd"initialiser une nouvelle instance de la classe.
  * @func constructor
  * @memberof Keys
  * @return {Keys} new Object Keys
  * */
  public Keys()
  {
    this.tabKeys = new String[2];
    this.soundPlay = 0;
    this.isComplete = false;
    this.selectGroupPrecKeyPressed = 0;
  }

  /**
   * Fonction permettant de conserver la dernière touche appuyée et de mettre à jour la dernière touche appuyée.
   * @memberof Keys
   * @func getKey
   * @param {System} k dernière touche appuyée.
   * */
  public void setKey(String k)
  {
    if(isAlpha(k)|| !Float.isNaN(Float.parseFloat(k)))
    {
      if(this.isComplete)
      {
        this.tabKeys[0] = this.tabKeys[1];
        this.tabKeys[1] = k;
      }
      else
      {
        this.isComplete = true;
        this.tabKeys[0] = k;
        this.tabKeys[1] = k;
      }
    }
  }

 /**
  * Fonction permetant de savoir si le paramètre passer est une lettre.
  * @func isAlpha
  * @param {String} keyl paramètre à tester.
  * @memberof Keys
  * @return {boolean} retourne un booléen.
  * */
  public boolean isAlpha(String keyl)
  {
    if(match(keyl,"/[A-Z]/gi").length <= 1)
      return true;
    
    return false;
  }

  /**
   * Fonction permettant de savoir si l"avant dernière touche apppuyée est une voyelle ou une consonne.
   * @func isVoyelle
   * @memberof Keys
   * @return {boolean} retourne un booléen.
   * */
  public boolean isVoyelle()
  {
   
    if(Float.isNaN(Float.parseFloat(this.tabKeys[0])))
      if(match(this.tabKeys[0],"/[A E I O U Y]/gi") != null)
        return true;

    return false;
  }

 /**
  * Fonction permettant de savoir si l"avant dernière touche apppuyée est un chiffre impair ou pair.
  * @func isPair
  * @memberof Keys
  * @return {boolean} retourne un booléen.
  * */
  public boolean isPair()
  {
    if(!Float.isNaN(Float.parseFloat(this.tabKeys[0])))
      if(int(Float.parseFloat(this.tabKeys[0])%2) == 0)
        return true;
        
    return false;
  }

 /**
  * Fonction permettant de mettre à jour le paramètre selectGroupPrecKeyPressed.
  * @func selectGroupNumber
  * @memberof Keys
  * */
  public void selectGroupNumber()
  {
    if(!Float.isNaN(Float.parseFloat(this.tabKeys[0])))
    {
      if(this.isPair())
      {
        this.selectGroupPrecKeyPressed = floor(random(0,1)*60*2)%3;
      }
      else
      {
        this.selectGroupPrecKeyPressed = floor(random(0,1)*60*2)%3;
      }
    }
    else
    {
      if(this.isVoyelle())
      {
        this.selectGroupPrecKeyPressed = floor(random(0,1)*60*3)%3;
      }
      else
      {
        this.selectGroupPrecKeyPressed = floor(random(0,1)*60*4)%3;
      }
    }
  }

 /**
  * Fonction permettant de mettre à jour le paramètre soundPlay.
  * @func analyseKeyPressed
  * @memberof Keys
  * */
  public void analyseKeyPressed()
  {
    switch(this.tabKeys[1])
    {
      case "a":
        this.soundPlay = 0;

      break;
      case "b":
        this.soundPlay = 1;

      break;
      case "c":
        this.soundPlay = 2;

      break;
      case "d":
        this.soundPlay = 3;

      break;
      case "e":
        this.soundPlay = 4;

      break;
      case "f":
        this.soundPlay = 5;

      break;
      case "g":
        this.soundPlay = 6;

      break;
      case "h":
        this.soundPlay = 7;

      break;
      case "i":
        this.soundPlay = 8;

      break;
      case "j":
        this.soundPlay = 9;

      break;
      case "k":
        this.soundPlay = 10;

      break;
      case "l":
        this.soundPlay = 11;

      break;
      case "m":
        this.soundPlay = 12;

      break;
      case "n":
        this.soundPlay = 13;

      break;
      case "o":
        this.soundPlay = 14;

      break;
      case "p":
        this.soundPlay = 15;

      break;
      case "q":
        this.soundPlay = 16;

      break;
      case "r":
        this.soundPlay = 17;

      break;
      case "s":
        this.soundPlay = 18;

      break;
      case "t":
        this.soundPlay = 19;

      break;
      case "u":
        this.soundPlay = 20;

      break;
      case "v":
        this.soundPlay = 21;

      break;
      case "w":
        this.soundPlay = 22;

      break;
      case "x":
        this.soundPlay = 23;

      break;
      case "y":
        this.soundPlay = 24;

      break;
      case "z":
        this.soundPlay = 25;

      break;
      case "A":
        this.soundPlay = 0;

      break;
      case "B":
        this.soundPlay = 1;

      break;
      case "C":
        this.soundPlay = 2;

      break;
      case "D":
        this.soundPlay = 3;

      break;
      case "E":
        this.soundPlay = 4;

      break;
      case "F":
        this.soundPlay = 5;

      break;
      case "G":
        this.soundPlay = 6;

      break;
      case "H":
        this.soundPlay = 7;

      break;
      case "I":
        this.soundPlay = 8;

      break;
      case "J":
        this.soundPlay = 9;

      break;
      case "K":
        this.soundPlay = 10;

      break;
      case "L":
        this.soundPlay = 11;

      break;
      case "M":
        this.soundPlay = 12;

      break;
      case "N":
        this.soundPlay = 13;

      break;
      case "O":
        this.soundPlay = 14;

      break;
      case "P":
        this.soundPlay = 15;

      break;
      case "Q":
        this.soundPlay = 16;

      break;
      case "R":
        this.soundPlay = 17;

      break;
      case "S":
        this.soundPlay = 18;

      break;
      case "T":
        this.soundPlay = 19;

      break;
      case "U":
        this.soundPlay = 20;

      break;
      case "V":
        this.soundPlay = 21;

      break;
      case "W":
        this.soundPlay = 22;

      break;
      case "X":
        this.soundPlay = 23;

      break;
      case "Y":
        this.soundPlay = 24;

      break;
      case "Z":
        this.soundPlay = 25;

      break;
      case "0":
        this.soundPlay = 26;

      break;
      case "1":
        this.soundPlay = 27;

      break;
      case "2":
        this.soundPlay = 28;

      break;
      case "3":
        this.soundPlay = 29;

      break;
      case "4":
        this.soundPlay = 30;

      break;
      case "5":
        this.soundPlay = 31;

      break;
      case "6":
        this.soundPlay = 32;

      break;
      case "7":
        this.soundPlay = 33;

      break;
      case "8":
        this.soundPlay = 34;

      break;
      case "9":
        this.soundPlay = 35;

      break;
      default:
    }
  }
}
