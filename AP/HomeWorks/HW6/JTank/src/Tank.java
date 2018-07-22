import java.awt.Graphics;
import java.awt.Graphics2D;
import java.awt.Image;
import java.awt.geom.AffineTransform;
import java.awt.image.AffineTransformOp;
import java.awt.image.BufferedImage;

import javax.swing.ImageIcon;


public class Tank {

	private int xPos ; 
	private int yPos ;
	//private Graphics g ;
	private Image bodyImage ;
	private Image barrelImage ;
	private int xSize ;
	private int ySize ;
	private boolean ltr ;
	private double angle ;
	private Missile missile ;
	public Tank( Image image1,Image image2 ,int  x ,int y ,int xSize ,int ySize , boolean dir){
		bodyImage = image1 ;
		barrelImage = image2 ;
		xPos = x ;
		yPos = y ;
		
		this.xSize = xSize ;
		this.ySize = ySize ;
		ltr = dir ;
		angle = 0 ;
		Image image = new ImageIcon(getClass().getResource("ball.png")).getImage();
		missile = new Missile(image) ;
		//repaint();
	}
	
	public int getXpos(){
		return xPos ;
	}
	
	public int getYpos(){
		return yPos ;
	}
	
	public void setXpos( int x ){
		xPos = x ;
	}
	
	public void setYpos( int y ){
		yPos = y ;
	}
	
	public void setAngle( double angle){
		
		this.angle = Math.toRadians(angle) ;
	}
	/*public void setImage( Image  image){
		this.image = image ;
	}
	*/
	public int getXSize(){
		return xSize ;
	}
	
	public int getYSize(){
		return ySize ;
	}
	
	public double getAngle(){
		return angle ;
	}
	
	public Missile getMissile(){
		return missile ;
	}
	
	public void paint( Graphics g ){
		//JOptionPane.showMessageDialog(null, "salam");
		//JOptionPane.showMessageDialog(null, "boro");
		g.drawImage(bodyImage, xPos,yPos, xSize,ySize, null );
		
		Graphics2D g2d = (Graphics2D) g ;
		
		
		if( ltr == true ){
			int x =  xPos + xSize/2;
			int y = yPos+ySize/5;
			
			g2d.rotate(-angle, x, y);
			g2d.drawImage(barrelImage, x,y, null);
			g2d.rotate(+angle, x, y);
		}
		else{
			int x =  xPos + xSize/2 - xSize/9;
			int y = yPos+ySize/5;
			
			g2d.rotate(angle, x, y);
			g2d.drawImage(barrelImage, x-xSize/2-xSize/9-xSize/10 + xSize/8 + xSize/12,y-ySize/5+ySize/8+ySize/10, null);
			g2d.rotate(-angle, x, y);
			//g2d.drawArc(x, y, 10, 10, 0, 360);
		}
		
	}
	
/*	public void shot( int key , int v , int width , GamePanel g){
		if( key == 1 ){
		//	JOptionPane.showMessageDialog(null, v);
			
			double t = 0 ;
			int x =  (int) ( xPos + xSize/2 + 80*Math.cos(angle));
			
			int y = (int) (yPos+ySize/5 - 80*Math.sin(angle));
			
			missile.setY(y);
			missile.setX(x);
			missile.setIsVisible(true);
			
			while(missile.getX() < width ){
			//	missile.setY((int) (5*t*t - v * t * Math.sin(tank1.getAngle()) + y));
				missile.setX( (missile.getX() + 0.01) );
				System.out.println(missile.getX());
				//t += 0.01 ;
			//	if( t > 10000)
				//	break ;
				g.repaint();
			}
			
			missile.setIsVisible(true);
		}
	}
	*/
}
