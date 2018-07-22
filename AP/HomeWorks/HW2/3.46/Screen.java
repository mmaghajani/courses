
/**
 * Write a description of class Screen here.
 * 
 * @author (your name) 
 * @version (a version number or a date)
 */
public class Screen
{
    private int xRes ;
    private int yRes ;
    
    public Screen( int x , int y )
    {
        xRes = x ;
        yRes = y ;
    }
    
    public int numberOfPixels()
    {
        return xRes*yRes ;
    }
    
    public void clear()
    {
        xRes = 0 ;
        yRes = 0 ;
    }  
}
