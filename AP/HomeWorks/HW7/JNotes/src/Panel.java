import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.Image;

import javax.swing.ImageIcon;
import javax.swing.JPanel;


public class Panel extends JPanel {

	private int width ;
	private int height ;
	private String[] ID ;
	private String keyWords ;
	public Panel(int x , int y , String[] s , String k){
		super() ;
		width = x ;
		height = y ;
		ID = s ;
		keyWords = k ;
	}
	
	@Override
	public void paintComponent( Graphics g ){
		super.paintComponent(g);
		Image image = new ImageIcon(getClass().getResource("s.jpg")).getImage() ;
		g.drawImage(image, 0, 0, width , height,null) ;
		
		g.setFont(new Font("Comic Sans MS", Font.ITALIC, 15));
		g.setColor(Color.white);
		
		g.drawString("Title : " + ID[1], width/20 , height/8);
		g.drawString("Key Words : " + keyWords, width/20 , height/8*2);
		g.drawString("Date : " + ID[3], width/20 , height/8*3);
		g.drawString("Number : " + ID[0], width/20 , height/8*4);
	}
}
