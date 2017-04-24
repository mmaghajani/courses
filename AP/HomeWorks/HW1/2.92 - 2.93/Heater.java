
/**
 * Write a description of class Heater here.
 * 
 * @author (your name) 
 * @version (a version number or a date)
 */
public class Heater
{
    private double temperature ;
    private double min ;
    private double max ;
    private double increment ;
    
    public Heater( double min , double max ){
        temperature = 15.0 ;
        this.min = min ;
        this.max = max ;
        increment = 5.0 ;
    }
    
    public void warmer(){
        if( temperature + increment > max )
            System.out.println( "Temperature is very high" ) ;
        else
            temperature += increment ;
    }
    
    public void cooler(){
        if( temperature - increment < min )
            System.out.println( "Temperature is very low" ) ;
        else
            temperature -= increment ;
    }
    
    public double getTemperature(){
        return temperature ;
    }
    
    public void setIncrement( double increment ){
        if( increment < 0 )
            System.out.println(" Increment value is negative ! " ) ;
        else
            this.increment = increment ;
    }
}
