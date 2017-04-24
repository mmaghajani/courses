import java.awt.BorderLayout;
import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.Image;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.FocusEvent;
import java.awt.event.FocusListener;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.util.Calendar;

import javax.swing.BorderFactory;
import javax.swing.ImageIcon;
import javax.swing.JButton;
import javax.swing.JCheckBox;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JPasswordField;
import javax.swing.JTextField;
import javax.swing.JToolBar;
import javax.swing.UIManager;
import javax.swing.UnsupportedLookAndFeelException;


public class StartPage extends JFrame{
	
	private int heightScreen = (int)getToolkit().getScreenSize().getHeight() ;
	private int widthScreen = (int)getToolkit().getScreenSize().getWidth();
	private int width ;
	private int height ;
	private MyButton signIn ;
	private JButton signUp ;
	private JTextField userName ;
	private JPasswordField passWord ;
	private JCheckBox saveMe ;
	private MyLabel title ;
	private MyButton exit ;
	private JToolBar exitBar ;
	 
	public StartPage(){
		super() ;
		this.setUndecorated(true);
		//this.setShape(new RoundRectangle2D.Double(0,0, widthScreen/4, heightScreen/2, 40, 40));
		this.setSize(widthScreen/4, heightScreen/2);
		this.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		this.setLocation(widthScreen/2 - widthScreen/8, heightScreen/2 - heightScreen/4);
		this.setResizable(false);
		this.setLayout(null);
		width = widthScreen / 4 ;
		height = heightScreen / 2 ;

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
		
		ImageIcon icon = new ImageIcon(getClass().getResource("icon1.png"));
		this.setIconImage(icon.getImage());
		//first panel
		ImageIcon image = new ImageIcon( getClass().getResource("icon1.png")) ;
		title = new MyLabel("JNotes", image, JLabel.CENTER ) ;
		title.setLocation(0, 0);
		title.setSize(width, height/6);
		title.setForeground(Color.WHITE);
		title.setFont(new Font("FantasticFont", Font.PLAIN, 40));
		
		userName = new JTextField() ;
		userName.setLocation(width/4, height/5);
		userName.setSize(width/2, height/12);
		userName.setBorder(BorderFactory.createBevelBorder(0));
		userName.setOpaque(true);
		userName.setText("User Name");
		userName.setForeground(Color.decode("#a5a4a7"));
		userName.addFocusListener(new FocusListener() {
			
			@Override
			public void focusLost(FocusEvent arg0) {
				// TODO Auto-generated method stub
				if( userName.getText().equals("")){
					userName.setForeground(Color.decode("#a5a4a7"));
					userName.setText("User Name");
				}
			}
			
			@Override
			public void focusGained(FocusEvent arg0) {
				// TODO Auto-generated method stub
				if( userName.getText().equals( "User Name" ) ){
					userName.setForeground(Color.blue);
					userName.setText("");
				}
			}
		});
		
		passWord = new JPasswordField() ;
		passWord.setLocation(width/4, height/3);
		passWord.setSize(width/2, height/12);
		passWord.setBorder(BorderFactory.createBevelBorder(0));
		passWord.setText("Password") ;
		passWord.setForeground(Color.decode("#a5a4a7"));
		char s = passWord.getEchoChar() ;
		passWord.setEchoChar((char) 0 ); 
		passWord.addFocusListener(new FocusListener() {
			
			@Override
			public void focusLost(FocusEvent arg0) {
				// TODO Auto-generated method stub
				if( passWord.getText().equals("") ){
					passWord.setEchoChar((char) 0 ); 
					passWord.setForeground(Color.decode("#a5a4a7"));
					passWord.setText("Password");
				}
			}
			
			@Override
			public void focusGained(FocusEvent arg0) {
				// TODO Auto-generated method stub
				if( passWord.getText().equals("Password") ){
					passWord.setEchoChar(s); 
					passWord.setForeground(Color.BLUE);
					passWord.setText("");
				}
			}
		});
		
		saveMe = new JCheckBox() ;
		saveMe.setLocation(width/4 + 14, height*3/7 + 2);
		saveMe.setSize(15, 15);
		saveMe.setEnabled(true);
		saveMe.setBorder(BorderFactory.createEmptyBorder());
		
		signIn = new MyButton("Sign In") ;
		signIn.setLocation(width/4, height*4/8);
		signIn.setSize(width/2, height/12);
		signIn.setBackground(Color.BLUE);
		signIn.setFont(new Font( "Segoe Print" , Font.BOLD , 18 ));
		signIn.setForeground(Color.WHITE);
		signIn.addActionListener(new ActionListener() {
			
			@Override
			public void actionPerformed(ActionEvent arg0) {
				// TODO Auto-generated method stub
				if( !isExistUser() ){
					JOptionPane.showMessageDialog(null, "This user does not exist!");
				}
				else{
					if( !isValidPassword() ){
						JOptionPane.showMessageDialog(null, "Inavalid password");
					}
					else{
						try {
						//	JOptionPane.showMessageDialog(null, "Entering...") ;
							Thread.sleep(800);
							StartPage.this.setVisible(false);
						} catch (InterruptedException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						}
						
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
						
						ManagingPanel mp = new ManagingPanel( userName.getText() , StartPage.this ) ;
						Runnable good = ()->{
							while ( true )
							{
								if( mp == null )
									setVisible(true);
								try {
									Thread.sleep(50);
								} catch (InterruptedException e) {
									// TODO Auto-generated catch block
									e.printStackTrace();
								}
							}
						};
							
						Thread th = new Thread(good) ;
						th.setPriority(10);
						th.start() ;
					}
				}
				
			}
		});
		
		signUp = new MyButton("Sign Up") ;
		signUp.setLocation(width/4, height*10/13);
		signUp.setSize(width/2, height/12);
		signUp.setBackground(Color.MAGENTA);
		signUp.setFont(new Font( "Segoe Print" , Font.BOLD , 18 ));
		signUp.setForeground(Color.WHITE);
		signUp.addActionListener(new ActionListener() {
			
			@Override
			public void actionPerformed(ActionEvent arg0) {
				// TODO Auto-generated method stub
				EnrollmentPage enrollmentPage = new EnrollmentPage() ;
				//getContentPane().add( enrollmentPage ) ;
			}
		});
		
		exit = new MyButton("exit.jpg" , 1 ) ;
		exit.setLocation(width/70, height*11/12);
		exit.setSize(28 , 28 );
		exit.setIcon( new ImageIcon(getClass().getResource("exit.png")) );
		exit.setBorder(BorderFactory.createEmptyBorder());
		exit.setBackground(Color.decode("#01aaeb"));
		exit.setToolTipText("Exit");
		exit.addActionListener(new ActionListener() {
			
			@Override
			public void actionPerformed(ActionEvent arg0) {
				// TODO Auto-generated method stub
				dispose();
			}
		});
		
		exitBar = new JToolBar() ;
		exitBar.setLocation(0 , height*11/12);
		exitBar.setSize(width, 28);
		exitBar.setBorder(BorderFactory.createEmptyBorder());
		exitBar.add(exit) ;
		/*pan0.setLayout(new BorderLayout());
		pan0.add( title , BorderLayout.NORTH) ;
		pan0.add( userName , BorderLayout.CENTER) ;
		pan0.add( passWord , BorderLayout.SOUTH) ;
		*/
		getContentPane().add( title) ;
		getContentPane().add( userName ) ;
		getContentPane().add( passWord) ;
		getContentPane().add( saveMe ) ;
		getContentPane().add( signIn ) ;
		getContentPane().add( signUp ) ;
		getContentPane().add( exitBar ) ;
		
		
		
		setVisible(true);
	}

	@Override
	public void paint( Graphics g ){
		super.paint(g);
		
		Image image = new ImageIcon(getClass().getResource("images.jpg")).getImage() ;
		g.drawImage(image, 0, 0, width , height,null) ;
		
		g.setFont(new Font("Segoe Print", Font.PLAIN , 13));
		g.setColor(Color.WHITE);
		g.drawString("Remember me!", width/4 + 45 , height*6/13);
		g.drawString("Don't have an account ? ", width/4 + 8 , height*9/13);
		
		userName.repaint();
		passWord.repaint();
		title.repaint();
		saveMe.repaint();
		signIn.repaint();
		signUp.repaint();
		exit.repaint();
		
	}
	
	private boolean isExistUser(){
		File users = new File("C:\\Users\\mahdi\\workspace\\JNotes\\Users") ;
		for (File file : users.listFiles()) {
			if( file.getName().equals(userName.getText()))
				return true ;
		}
		return false ;
		
	}
	
	private boolean isValidPassword(){
		File users = new File("C:\\Users\\mahdi\\workspace\\JNotes\\Users") ;
		for (File file : users.listFiles()) {
			if( file.getName().equals(userName.getText())){
				try {
					BufferedReader reader = new BufferedReader(new FileReader("C:\\Users\\mahdi\\workspace\\JNotes\\Users" + "\\" + file.getName() + "\\" + "ID.txt"));
					try {
						reader.readLine() ;
					} catch (IOException e1) {
						// TODO Auto-generated catch block
						e1.printStackTrace();
					}
					try {
						if( passWord.getText().equals(reader.readLine()))
							return true ;
					} catch (IOException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
				} catch (FileNotFoundException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
				return false ;
			}
		}
		
		return false ;
	}
}
