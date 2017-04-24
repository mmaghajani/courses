import java.awt.BorderLayout;
import java.awt.Color;
import java.awt.Graphics;
import java.awt.Image;

import javax.swing.BorderFactory;
import javax.swing.ImageIcon;
import javax.swing.JFrame;
import javax.swing.JInternalFrame;
import javax.swing.JLabel;
import javax.swing.JTextField;
import javax.swing.UIManager;
import javax.swing.UnsupportedLookAndFeelException;
import javax.swing.plaf.InternalFrameUI;
import javax.swing.plaf.basic.BasicInternalFrameUI.InternalFrameLayout;


public class EnrollmentPage extends JFrame {

	private int heightScreen = (int) getToolkit().getScreenSize().getHeight(); 
	private int widthScreen = (int)getToolkit().getScreenSize().getWidth();
	private MyPanel backGround ;
	
	public EnrollmentPage(){
		
		super( "Enrollment Form" ) ;
		try {
			UIManager
					.setLookAndFeel("com.jtattoo.plaf.mcwin.McWinLookAndFeel");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (InstantiationException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (UnsupportedLookAndFeelException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		this.setUndecorated(true);
		this.setSize(widthScreen/3, heightScreen*2/3);
		this.setLocation(widthScreen/2 , 40);
		this.setResizable(false);
		this.setLayout(new BorderLayout());
		ImageIcon icon = new ImageIcon(getClass().getResource("icon1.png"));
		this.setIconImage(icon.getImage());
		
		backGround = new MyPanel(this) ;
		
		getContentPane().add( backGround , BorderLayout.CENTER) ;
		
		this.setVisible(true);
	}
	
	@Override
	public void paint( Graphics g ){
		super.paint(g);
		
		backGround.repaint();
		
		//backGroung.getComponent(0).repaint();
		
	}
}
