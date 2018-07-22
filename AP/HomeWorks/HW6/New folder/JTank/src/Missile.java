import java.awt.Graphics;
import java.awt.Image;


public class Missile {
	private double x ;
	private double y ;
	private boolean isVisible ;
	private Image image ;
	public Missile(Image image){
		this.image = image ;
		isVisible = false ;
		x = 0 ;
		y = 0 ;
	}
	
	public double getX(){
		return x ;
	}
	
	public double getY(){
		return y ;
	}
	
	public void setX( double x ){
		this.x = x ;
	}
	
	public void setY( double y ){
		this.y = y ;
	}
	
	public void setIsVisible( boolean x ){
		isVisible = x ;
	}
	
	public void paint( Graphics g ){
		if( isVisible == true )
			g.drawImage(image, (int)x,(int)y,null) ;
	}

}
