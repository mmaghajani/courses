import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.Image;

import javax.swing.ImageIcon;
import javax.swing.JPanel;


public class SearchPanel extends JPanel {
	private int width ;
	private int height ;
	
	public SearchPanel(int x , int y){
		super() ;
		width = x ;
		height = y ;
	}
	
	@Override
	public void paintComponent( Graphics g ){
		super.paintComponent(g);
		
		Image image = new ImageIcon(getClass().getResource("bluaBack.jpg")).getImage() ;
		g.drawImage(image, 0, 0, width ,height ,null) ;
		
		g.setFont(new Font("Comic Sans MS", Font.BOLD, 15));
		g.setColor(Color.decode("#dbe2e6"));
		g.drawString("Notes Search" , width/20, height/10);
	}
}
