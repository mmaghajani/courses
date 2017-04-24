import java.awt.Graphics;
import java.awt.Graphics2D;
import java.awt.Image;
import java.awt.Toolkit;
import java.awt.event.KeyEvent;
import java.awt.event.KeyListener;
import java.awt.image.BufferedImage;
import java.util.Random;

import javax.swing.ImageIcon;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JPanel;

public class GamePanel extends JPanel {
	private Tank tank1;
	private Tank tank2;
	private int height = Toolkit.getDefaultToolkit().getScreenSize().height;
	private int width = Toolkit.getDefaultToolkit().getScreenSize().width;
	private int key ;
	private int x ;
	private int y ;
	private int v0 ;
	private int flag ;
	private int joon1 = 100 ;
	private int joon2 = 100 ;
	private JPanel infoPanel ;
	private int end ;
	private int imageNum ;
	//private int nobat ;
	public GamePanel( JPanel pan) {
		
		infoPanel = pan ;
		
		new Thread(){
    		public void run() {
    			while ( true )
    			{
    				GamePanel.this.repaint();
    				try {
						Thread.sleep(100);
					} catch (InterruptedException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
    			}
    		};
    	}.start();
		Image image11 = new ImageIcon(getClass().getResource("tank11.png"))
				.getImage();
		Image image12 = new ImageIcon(getClass().getResource("tank12.png"))
				.getImage();
		tank1 = new Tank(image11, image12, width / 8, height * 2 / 3, 120, 80 , true);

		Image image21 = new ImageIcon(getClass().getResource("tank21.png"))
				.getImage();
		Image image22 = new ImageIcon(getClass().getResource("tank22.png"))
		.getImage();
		tank2 = new Tank(image21,image22 , width * 7 / 8, height * 2 / 3, 120, 80 , false);

		Random rand = new Random();
		imageNum = Math.abs(rand.nextInt() ) % 3;

		setLayout(null);
		// add(tank1) ;
		// add(tank2) ;
		setVisible(true);
	}

	@Override
	public void paint(Graphics g) {
		// JOptionPane.showMessageDialog(null, "salam");
		super.paint(g);
		

		BufferedImage buf = new BufferedImage(GamePanel.this.getWidth(), GamePanel.this.getHeight(),  BufferedImage.TYPE_INT_ARGB ) ;
		Graphics2D g2d = buf.createGraphics() ;
		
		Image image ;
		if( imageNum == 0 ){
			image = new ImageIcon(getClass().getResource("1.jpg")).getImage();
		}
		else if( imageNum == 1 ){
			image = new ImageIcon(getClass().getResource("2.jpg")).getImage();
		}
		else{
			image = new ImageIcon(getClass().getResource("3.jpg")).getImage();
		}
		g2d.drawImage(image, 0, 0, GamePanel.this.getWidth(),
				GamePanel.this.getHeight(), null);

		tank1.paint(g2d);
		tank2.paint(g2d);
		
		if( key == 1 ){
		//	JOptionPane.showMessageDialog(null, v);
			
			
			
			
			tank1.getMissile().paint(g2d);
			//	missile.setY((int) (5*t*t - v * t * Math.sin(tank1.getAngle()) + y));
			//tank1.getMissile().setY( ((10/(2*v0*v0*Math.cos(tank1.getAngle()*Math.cos(tank1.getAngle()))) ) * tank1.getMissile().getX() *tank1.getMissile().getX())+Math.tan(tank1.getAngle()*tank1.getMissile().getX() + y) );
			if( tank1.getMissile().getY() < 300 - 3/2 * v0){
				 flag = -1 ;
			}
			tank1.getMissile().setY( tank1.getMissile().getY() -flag* Math.tan(tank1.getAngle())*10);
			
			tank1.getMissile().setX( tank1.getMissile().getX() + 10 );
			//	System.out.println(missile.getX());
				//t += 0.01 ;
			//	if( t > 10000)
				//	break ;
			
			
			//missile.setIsVisible(true);
			if( tank1.getMissile().getY() > tank1.getYpos() + 40 )
				tank1.getMissile().setIsVisible(false);
			if( tank1.getMissile().getX() > width )
				tank1.getMissile().setIsVisible(false);
			
			if (collide(1)) {
				String s = "";
				s = ((JLabel) ((JPanel) ((JPanel) infoPanel.getComponent(2))
						.getComponent(2)).getComponent(1)).getText();
				int x = Integer.parseInt(s);
				x -= 1;
				if( x <= 0 )
					end = 1 ;
				((JLabel) ((JPanel) ((JPanel) infoPanel.getComponent(2))
						.getComponent(2)).getComponent(1)).setText(Integer
						.toString(x));

			}
		}
			
			if( key == 2 ){
				//	JOptionPane.showMessageDialog(null, v);
					
					
					
				//	System.out.println(tank2.getMissile().getX());
					tank2.getMissile().paint(g2d);
					//	missile.setY((int) (5*t*t - v * t * Math.sin(tank1.getAngle()) + y));
					//tank1.getMissile().setY( ((10/(2*v0*v0*Math.cos(tank1.getAngle()*Math.cos(tank1.getAngle()))) ) * tank1.getMissile().getX() *tank1.getMissile().getX())+Math.tan(tank1.getAngle()*tank1.getMissile().getX() + y) );
					if( tank2.getMissile().getY() < 300 - 3/2 * v0){
						 flag = -1 ;
					}
					tank2.getMissile().setY( tank2.getMissile().getY() -flag* Math.tan(tank2.getAngle())*10);
					
					tank2.getMissile().setX( tank2.getMissile().getX() - 10 );
					//	System.out.println(missile.getX());
						//t += 0.01 ;
					//	if( t > 10000)
						//	break ;
					
					
					//missile.setIsVisible(true);
					if( tank2.getMissile().getY() > tank2.getYpos() + 40 )
						tank2.getMissile().setIsVisible(false);
					if( tank2.getMissile().getX() < 0 )
						tank2.getMissile().setIsVisible(false);
					
					if (collide(2)) {
						String s = "";
						s = ((JLabel) ((JPanel) ((JPanel) infoPanel.getComponent(2))
								.getComponent(1)).getComponent(1)).getText();
						int x = Integer.parseInt(s);
						x -= 1;
						if( x <= 0 )
							end = 1 ;
						((JLabel) ((JPanel) ((JPanel) infoPanel.getComponent(2))
								.getComponent(1)).getComponent(1)).setText(Integer
								.toString(x));

					}
			}
		
		
		
		
		g.drawImage(buf,0,0,null) ;

	}

	public Tank getTank1() {
		return tank1;
	}

	public Tank getTank2() {
		return tank2;
	}
	
	public void setKey( int x ){
		key = x ;
	}
	
	public void setRequirment( int x , int y , int v0 , int flag ){
		this.x = x ;
		this.y = y ;
		this.v0 = v0 ;
		this.flag = flag ;
	}
	
	public int getJoon1(){
		return joon1 ;
	}
	
	public int getJoon2(){
		return joon2 ;
	}
	
	private boolean collide(int x) {
		if (x == 1) {
			if (getTank1().getMissile().getX() >= 
					getTank2().getXpos()
					&& getTank1().getMissile().getX() <= 
							getTank2().getXpos()
							+ getTank2().getXSize() && getTank1().getMissile().getY() >= 
									getTank2().getYpos()
									&& getTank1().getMissile().getY() <= 
											getTank2().getYpos()
											+ getTank2().getYSize()) {
				getTank1().getMissile().setIsVisible(false);
				return true ;

			}
		}
		else{
			if (getTank2().getMissile().getX() >= 
					getTank1().getXpos()
					&& getTank2().getMissile().getX() <= 
							getTank1().getXpos()
							+ getTank1().getXSize() && getTank2().getMissile().getY() >= 
									getTank1().getYpos()
									&& getTank2().getMissile().getY() <= 
											getTank1().getYpos()
											+ getTank1().getYSize()) {
				getTank1().getMissile().setIsVisible(false);
				return true ;

			}
		}
		
		return false ;
	}
	
	private boolean isEnd(){
		String s1 = "";
		s1 = ((JLabel) ((JPanel) ((JPanel) infoPanel.getComponent(2))
				.getComponent(2)).getComponent(1)).getText();
		String s2 = "";
		s2 = ((JLabel) ((JPanel) ((JPanel) infoPanel.getComponent(2))
				.getComponent(1)).getComponent(1)).getText();
		int x1 = Integer.parseInt(s1) ;
		int x2 = Integer.parseInt(s2) ;
		if( x1 <= 0 ){
			//dispose();
			JOptionPane.showMessageDialog(null, "first person is winner");
			return true ;
		}
		if( x2 <= 0 ){
			//dispose();
			JOptionPane.showMessageDialog(null, "second person is winner");
			return true ;
		}
		
		return false ;
	}
	
	public int getEnd(){
		return end ;
	}
}
