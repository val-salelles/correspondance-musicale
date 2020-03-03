/**
* @author Valentin Salelles
* @version 1
* @since 1
* Classe permettant de définir les paramètres d'un delay audio
**/
class DelayPresset extends Presset 
{
  /**
  * @since 1
  **/
  public DelayPresset()
  {
    super();
  }
  
  public DelayPresset(float f, float t, float mt)
  {
    super(f,t,mt);
    this.isOn = true;
  }
  
  /**
  * @since 1
  **/
  public void setValue(float f, float t, float mt)
  {
    this.isOn = true;
    this.v1 = f;
    this.v2 = t;
    this.v3 = mt;
  }

  /**
  * @since 1
  **/
  public float getFeedback()
  {
    return this.v1;
  }
  
  /**
  * @since 1
  **/
  public float getTime()
  {
    return this.v2;
  }
  
  /**
  * @since 1
  **/
  public float getMaxTime()
  {
    return this.v3;
  }
  
}
