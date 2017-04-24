import java.awt.Graphics;
import java.awt.Image;

import javax.swing.ImageIcon;
import javax.swing.JButton;


public class MyButton extends JButton {

	private Image image = null ;
	
	public MyButton( String s ){
		super(s) ;
	}
	
	public MyButton( String text , String name ) {
		// TODO Auto-generated constructor stub
		super(text) ;
		this.image = new ImageIcon(getClass().getResource(name)).getImage() ;
	}
	
	public MyButton( String name , int khali ) {
		// TODO Auto-generated constructor stub
		super() ;
		this.image = new ImageIcon(getClass().getResource(name)).getImage() ;
	}
	
	public MyButton() {
		// TODO Auto-generated constructor stub
		super() ;
	}
	@Override
	public void paint( Graphics g ){
		
		
		if (this.image == null) {
			Image image = new ImageIcon(getClass().getResource("button.jpg"))
					.getImage();
			g.drawImage(image, 0, 0, this.getWidth(), this.getHeight(), null);
		}
		else{
			Image image = new ImageIcon(getClass().getResource("exit.jpg"))
			.getImage();
			g.drawImage(image, 0, 0, this.getWidth(), this.getHeight(), null);
		}
		
		super.paint(g);
		
	}
}
