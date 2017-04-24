import java.awt.Graphics;
import java.awt.Image;

import javax.swing.ImageIcon;
import javax.swing.JTextPane;


public class MyTextPane extends JTextPane {

	public MyTextPane(){
		super() ;
		setOpaque(false);
	}
	
	@Override
	public void paintComponent( Graphics g ){
		
		Image image = new ImageIcon( getClass().getResource("editor.gif")).getImage() ;
		g.drawImage(image, 0, 0, this.getWidth(), this.getHeight(),null) ;
		
		super.paintComponent(g);
	}
}
