import processing.sound.*;

class Sound
{
  private SoundFile file;
  private float pan;
  private String name;
  private boolean isAlpha;
  
  public Sound(String name, boolean isAlpha, float pan)
  {
    this.pan = pan;
    this.name = name;
    this.isAlpha = isAlpha;
  }
  
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
  
  public boolean onEnded()
  {
    if(this.file != null)
    {
      return !this.file.isPlaying();
    }
    return true;  
  }
  
}
