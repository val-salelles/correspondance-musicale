/**
* @author Valentin Salelles
* @version 1
* @since 1
* Classe permettant de gérer les polices de caratères.
**/
class Font
{
    /**
    * @since 1
    * Tableau contenant les polices de caractéres
    **/  
    private PFont[] tabFonts;
    
    /**
    * @since 1
    * Constructeur de la classe
    **/
    public Font()
    {
      JSONArray jsonFont = loadJSONArray("font/font.json");
      this.tabFonts = new PFont[jsonFont.size()];
      for(int i = 0; i < jsonFont.size(); i++)
      {
        this.tabFonts[i] = createFont(jsonFont.getJSONObject(i).getString("fontname"), Function.DEPLAC);
      }
      
    }
    
    /**
    * @since 1
    * @param id Entier permettant d'identifier la police dans le tableau
    * @return Retourne une police de caratères
    * Méthode Permettant de retourner une police de caractères identifier par un id passer en paramètre
    **/
    public PFont getFont(int id)
    {
      return this.tabFonts[id];
    }
    
    /**
    * @since 1
    * @return Retourne une police de caractères
    * Méthode permettant de retourner une police de caractère aléatoire
    **/
    public PFont getAleaFont()
    {
      return this.tabFonts[Function.getRandomIntInclusive(0,this.tabFonts.length-1)];
    }
    
    /**
    * @since 1
    * @return Retourne un entier
    * Méthode permettant de retourner la taille du tableau de polices de caractères  
    **/
    public int getSize()
    {
      return this.tabFonts.length;
    }
    
}
