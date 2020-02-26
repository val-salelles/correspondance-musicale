class Font
{
    private PFont[] tabFonts;
    public Font(Function f)
    {
      JSONArray jsonFont = loadJSONArray("font/font.json");
      this.tabFonts = new PFont[jsonFont.size()];
      for(int i = 0; i < jsonFont.size(); i++)
      {
        this.tabFonts[i] = createFont(jsonFont.getJSONObject(i).getString("fontname"), f.DEPLAC);
      }
      
    }
    
    public PFont getFont(int id)
    {
      return this.tabFonts[id];
    }
    
    public int getSize()
    {
      return this.tabFonts.length;
    }
    
}
