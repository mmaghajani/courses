import java.awt.Graphics;
import java.awt.Image;

import javax.swing.ImageIcon;
import javax.swing.JToolBar;


public class MyToolBar extends JToolBar {
	
	public MyToolBar(){
		super() ;
	}
	
	@Override
	public void paintComponent( Graphics g ){
		super.paintComponent(g);
		
		Image image = new ImageIcon(getClass().getResource("images.jpg")).getImage() ;
		g.drawImage(image, 0, 0, this.getWidth() , this.getHeight(),null) ;
	}
}
