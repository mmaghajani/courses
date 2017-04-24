
/**
 * Write a description of class manager here.
 * 
 * @author (your name) 
 * @version (a version number or a date)
 */
public class manager
{
    private Screen screen ;
    
    public manager( int x , int y )
    {
        screen = new Screen( x , y ) ;
        if( screen.numberOfPixels() > 2000000 )    screen.clear() ;
    }
    
    public Screen getScreen(){
        return screen ;
    }
}
