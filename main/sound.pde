import processing.sound.*;

class Sound
{
  private SoundFile file;
  private Delay d;
  private Reverb r;
  private float pan;
  private boolean bypassEffect;
  private Presset effectPresset;
  private String name;
  private boolean isAlpha;
  
  public Sound(String name, boolean isAlpha, boolean bypassEffect, float pan)
  {
    this.pan = pan;
    this.bypassEffect = bypassEffect;
    this.name = name;
    this.isAlpha = isAlpha;
    this.bypassEffect = bypassEffect;
  }
  
  public <U extends Presset> void setEffect(U effect)
  {
    try
    {
      if(split(effect.getClass()+"", '$')[1].equals("DelayPresset"))
      {
         this.effectPresset = new DelayPresset(((DelayPresset)effect).getFeedback(),((DelayPresset)effect).getTime(),((DelayPresset)effect).getMaxTime());
      }
      else if(split(effect.getClass()+"", '$')[1].equals("ReverbPresset"))
      {
         this.effectPresset = new ReverbPresset(((ReverbPresset)effect).getRoom(),((ReverbPresset)effect).getDamp(),((ReverbPresset)effect).getWet());
      }
      else
      {
        throw new Exception("La classe de effect ne correspond à aucune ");
      }
    }
    catch(Exception e)
    {
      println(e.getMessage());
    }  
  }
  
  public boolean getBypassEffect()
  {
    return this.bypassEffect;
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
      
    if(file != null)
    {
      if(file.channels() <2)
        file.pan(this.pan);
      
      if(!this.bypassEffect)
      {
        if(this.effectPresset.getIsOn())
        {
          if(split(this.effectPresset.getClass()+"", '$')[1].equals("DelayPresset"))
          {
             //println("Delay");
             d = new Delay(parent);
             d.set(((DelayPresset) this.effectPresset).getTime(),((DelayPresset) this.effectPresset).getFeedback());
             d.process(this.file,((DelayPresset) this.effectPresset).getMaxTime()); 
          }
          
          if(split(this.effectPresset.getClass()+"", '$')[1].equals("ReverbPresset"))
          {
            //println("Reverb");
            r = new Reverb(parent);
            r.set(((ReverbPresset) this.effectPresset).getRoom(),((ReverbPresset) this.effectPresset).getDamp(),((ReverbPresset) this.effectPresset).getWet());
            r.process(this.file);
          }
        }
      }
      this.file.play(1,1.0);
    }
  }
  
  public boolean onEnded()
  {
    if(this.file != null)
    {
      return !this.file.isPlaying();
    }
    return false;  
  }
  
}
