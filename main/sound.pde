import processing.sound.*;
/**
* @author Valentin Salelles
* @version 1
* @since 1
* Classe permettant de définir le son associé au caractère alphanumérique recueilli
**/
class Sound
{
  /**
  * @since 1
  * Fichier son
  **/
  private SoundFile file;
  
  /**
  * @since 1
  * Nombre flotant définissant la panoramique du son
  **/
  private float pan;
  
  /**
  * @since 1
  * Chaîne de caratère définissant le nom du fichier audio san l'extension.
  **/
  private String name;
  
  /**
  * @since 1
  * Booléen définissant si l'attribut name est un caractère alphabétique
  **/
  private boolean isAlpha;
  
  /**
  * @since 1
  * @param name Chaîne de caractère définissant le nom du fichier audio
  * @param isAlpha Booléen définissant si l'attribut name est un caractère alphabétique
  * @param pan Nombre flotant permetant de définir la panoramique du son
  * Constructeur de la classe
  **/
  public Sound(String name, boolean isAlpha, float pan)
  {
    this.pan = (pan >= -1 || pan <= 1)? pan : 0;
    this.name = name;
    this.isAlpha = isAlpha;
  }
  
  /**
  * @since 1
  * @param parent Objet de type PApplet permettant de définir le context dans lequel va être joué le son
  * Méthode permettant de joué le son une fois
  **/
  public void playSound(PApplet parent)
  {
    this.file = null;
    if(!name.equals(" "))
    {
      if(this.isAlpha)
        {
          this.file = new SoundFile(parent,"son/"+name.toLowerCase()+".mp3");
        }
        else
        {
            this.file = new SoundFile(parent,"son/"+name+".mp3");
        }
    }
    else
    {
      this.file = new SoundFile(parent,"son/espace.mp3");
    }
      
    if(file != null)
    {
      if(file.channels() <2)
        file.pan(this.pan);
      
      this.file.play(1,1.0);
    }
  }
  
  /**
  * @since 1
  * @return Retourne un booléen
  * Méthode permettant de savoir si la lecture du son est terminée
  **/
  public boolean onEnded()
  {
    if(this.file != null)
    {
      return !this.file.isPlaying();
    }
    return true;  
  }
  
}
