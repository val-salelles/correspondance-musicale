import processing.sound.*;
import java.util.Arrays;
class Sound
{
  private SoundFile file;
  private ArrayList<String> alphabet;
  public Sound()
  {
    this.alphabet = new ArrayList<String>();
    this.alphabet.addAll(Arrays.asList("a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z","0","1","2","3","4","5","6","7","8","9"));
  }
  
  public void analysedKey(String k, PApplet parent, Keys ks)
  {
    this.file = null;
    
    for(int i = 0; i < this.alphabet.size(); i++)
    {
      if(ks.isAlpha(k) && (k.equals(this.alphabet.get(i)) || k.equals(this.alphabet.get(i).toUpperCase())))
        {
          this.file = new SoundFile(parent,"son/"+this.alphabet.get(i)+".mp3");
        }
      else
      {
        if(k.equals(this.alphabet.get(i)))
        {
          this.file = new SoundFile(parent,"son/"+this.alphabet.get(i)+".mp3");
        } 
      }
        
        if(file != null)
        {
          file.play(1,1.0);
          break;
        }
    }
    
    
  }
  
}
