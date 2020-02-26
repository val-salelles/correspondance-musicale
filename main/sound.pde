import processing.sound.*;

class Sound
{
  private SoundFile file;
  private String[] alphabet;
  public Sound()
  {
    this.alphabet = new String[36];
    String [] tmpalphabet = {"a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","x","y","z","0","1","2","3","4","5","6","7","8","9"};
    for(int i = 0; i < tmpalphabet.length;i++)
      this.alphabet[i] = tmpalphabet[i]; 
  }
  
  public void analysedKey(String k, PApplet parent, Keys ks)
  {
    for(int i = 0; i < this.alphabet.length; i++)
    {
      if(ks.isAlpha(k))
        if(k == this.alphabet[i] || k == this.alphabet[i].toUpperCase())
        {
          file = new SoundFile(parent,"son/"+this.alphabet[i]+".wav");
          break;
        }
      else
        if(k == this.alphabet[i])
        {
          file = new SoundFile(parent,"son/"+this.alphabet[i]+".wav");
          break;
        }     
    }
    file.play();
  }
  
}
