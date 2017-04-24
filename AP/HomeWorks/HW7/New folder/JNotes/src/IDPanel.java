import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.Image;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;

import javax.swing.ImageIcon;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.UIManager;
import javax.swing.UnsupportedLookAndFeelException;


public class IDPanel extends JFrame {
	
	private int heightScreen = (int)getToolkit().getScreenSize().getHeight() ;
	private int widthScreen = (int)getToolkit().getScreenSize().getWidth();
	private int width ;
	private int height ;
	private String[] ID ;
	private JButton ok ;
	public IDPanel( String user ){
		super() ;
		
		try {
			UIManager
					.setLookAndFeel("javax.swing.plaf.nimbus.NimbusLookAndFeel");
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
		
		//this.setShape(new RoundRectangle2D.Double(0,0, widthScreen/4, heightScreen/2, 40, 40));
		this.setSize(widthScreen/3, heightScreen/5);
		//this.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		this.setLocation(widthScreen/2 - widthScreen/8, heightScreen/2 - heightScreen/4);
		this.setResizable(false);
		this.setLayout(null);
		width = widthScreen / 3 ;
		height = heightScreen / 5 ;
		
		ImageIcon icon = new ImageIcon(getClass().getResource("icon1.png"));
		this.setIconImage(icon.getImage());
		
		ID = new String[4] ;
		
		File file = new File( "C:\\Users\\mahdi\\workspace\\JNotes\\Users\\" + user + "\\ID.txt" ) ;
		try {
			BufferedReader reader = new BufferedReader(new FileReader(file)) ;
			try {
				ID[0] = reader.readLine();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			try {
				reader.readLine() ;
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			try {
				ID[1] = reader.readLine() ;
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			try {
				ID[2] = reader.readLine() ;
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} 
			
			try {
				reader.readLine() ;
			} catch (IOException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
			try {
				ID[3] = reader.readLine() ;
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			try {
				reader.close();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} catch (FileNotFoundException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		
		
		ok = new JButton("OK" ) ;
		ok.setSize(width/5 , height/5);
		ok.setForeground(Color.decode("#3f82c6"));
		ok.setFont(new Font("Segoe Print" , Font.BOLD , 18 ));
		ok.setLocation(width*4/7 + width/5 + 5, height*8/11);
		ok.addActionListener(new ActionListener() {
			
			@Override
			public void actionPerformed(ActionEvent arg0) {
				// TODO Auto-generated method stub
				try {
					UIManager
							.setLookAndFeel("com.jtattoo.plaf.aluminium.AluminiumLookAndFeel");
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
				dispose() ;
			}
		});
		getContentPane().add(ok) ;
		
		setVisible(true);
	}
	
	public void paint( Graphics g ){
		super.paint(g);
		Image image = new ImageIcon(getClass().getResource("s.jpg")).getImage() ;
		g.drawImage(image, 0, 0, width , height,null) ;
		
		g.setFont(new Font("Comic Sans MS", Font.ITALIC, 15));
		g.setColor(Color.white);
		
		g.drawString("First Name : " + ID[1], width/20 , height/8);
		g.drawString("Last Name : " + ID[2], width/20 , height/8*3);
		g.drawString("User Name : " + ID[0], width/20 , height/8*5);
		g.drawString("Birth Day : " + ID[3], width/20 , height/8*7);
	}
}
