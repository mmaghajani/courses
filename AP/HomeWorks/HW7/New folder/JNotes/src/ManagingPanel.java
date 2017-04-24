import java.awt.BorderLayout;
import java.awt.Color;
import java.awt.Font;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.util.Calendar;

import javax.swing.BorderFactory;
import javax.swing.ImageIcon;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JToolBar;
import javax.swing.UIManager;
import javax.swing.UnsupportedLookAndFeelException;
import javax.swing.text.StyledDocument;


public class ManagingPanel extends JFrame {
	private MyLabel title ;
	private JLabel date ;
	private MyToolBar toolBar ;
	private JToolBar toolBar1 ;
	private JToolBar toolBar2 ;
	private JLabel subTitle ;
	private StartPage parent ;
	private int widthScreen = (int) getToolkit().getScreenSize().getWidth() ;
	private int heightScreen = (int) getToolkit().getScreenSize().getHeight();
	private int height ;
	private int width ;
	
	public ManagingPanel( String userName , StartPage sp){
		
		super("JNotes") ;
		
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
		
		this.setUndecorated(true);
		//this.setShape(new RoundRectangle2D.Double(0,0, widthScreen/4, heightScreen/2, 40, 40));
		this.setSize(widthScreen*2/5, heightScreen*2/3);
		this.setDefaultCloseOperation(DISPOSE_ON_CLOSE);
		this.setLocation(widthScreen/2 - widthScreen*1/5 , heightScreen/2 - heightScreen*1/3);
		this.setResizable(false);
		this.setLayout(null);
		width = widthScreen*2/5 ;
		height = heightScreen*2/3;
		
		ImageIcon icon = new ImageIcon(getClass().getResource("icon1.png"));
		this.setIconImage(icon.getImage());
		parent = sp ;
		
		ImageIcon image = new ImageIcon( getClass().getResource("icon1.png")) ;
		title = new MyLabel("JNotes", image, JLabel.LEFT ) ;
		title.setLocation(0, 0);
		title.setSize(width, height/8);
		title.setForeground(Color.WHITE);
		title.setFont(new Font("FantasticFont", Font.PLAIN, 60));
		
		//System.out.println( cal.getTimeZone() ) ;
		
		JPanel pan = new JPanel() ;
		pan.setLocation(width/10, height/8);
		pan.setSize(width*9/10, height/12);
		//pan.setForeground(Color.WHITE);
		pan.setBackground(Color.decode("#2685ef"));
		pan.setLayout(new BorderLayout());
		
		date = new JLabel("1" , JLabel.CENTER ) ;

		int t = 50 ;
		new javax.swing.Timer(t , new ActionListener() {
		     private int index = 0;
		     private int maxIndex = 100;
		     public void actionPerformed(ActionEvent e) {
		    	 Calendar cal = Calendar.getInstance();
					date.setText(cal.getTime().toString());
					date.setForeground(Color.WHITE);
					date.setFont(new Font("FantasticFont", Font.PLAIN, 35));
					pan.add( date , BorderLayout.CENTER) ;
					getContentPane().add(pan) ;
		     }
		  }).start();
		
		toolBar = new MyToolBar() ;
		toolBar.setLocation(0, height/8);
		toolBar.setSize( width/10 , height*7/8 );
		toolBar.setBorder(BorderFactory.createEmptyBorder());
		toolBar.setLayout(null);
		
		ImageIcon image1 = new ImageIcon( getClass().getResource("myID.png")) ;
		JButton myID = new JButton(image1) ;
		myID.setSize(width/10, height/8);
		myID.setToolTipText("My ID");
		myID.addActionListener(new ActionListener() {
			
			@Override
			public void actionPerformed(ActionEvent arg0) {
				// TODO Auto-generated method stub
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
				IDPanel idp = new IDPanel( userName) ;
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
			}
		});
		toolBar.add(myID) ;
		
		ImageIcon image2 = new ImageIcon( getClass().getResource("add.png")) ;
		JButton add = new JButton(image2) ;
		add.setSize(width/10, height/8);
		add.setLocation(0, height/8);
		add.setToolTipText("Add Note");
		add.addActionListener(new ActionListener() {
			
			@Override
			public void actionPerformed(ActionEvent arg0) {
				// TODO Auto-generated method stub
				TextPanel textPan = new TextPanel(userName , "JNotes") ;
			}
		});
		toolBar.add(add) ;
		
		ImageIcon image3 = new ImageIcon( getClass().getResource("manage.png")) ;
		JButton manage = new JButton(image3) ;
		manage.setSize(width/10, height/8);
		manage.setLocation(0, height*2/8);
		manage.setToolTipText("Manage Notes");
		manage.addActionListener(new ActionListener() {
			
			@Override
			public void actionPerformed(ActionEvent arg0) {
				// TODO Auto-generated method stub
				NotesView NW = new NotesView(userName) ;
			}
		});
		toolBar.add(manage) ;
		
		ImageIcon image4 = new ImageIcon( getClass().getResource("search.png")) ;
		JButton search = new JButton(image4) ;
		search.setSize(width/10, height/8);
		search.setLocation(0, height*3/8);
		search.setToolTipText("Search");
		search.addActionListener(new ActionListener() {
			
			@Override
			public void actionPerformed(ActionEvent arg0) {
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
				// TODO Auto-generated method stub
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
				
				SearchFrame sf = new SearchFrame() ;
			}
		});
		toolBar.add(search);
		
		ImageIcon image5 = new ImageIcon( getClass().getResource("exit2.png")) ;
		JButton exit = new JButton(image5) ;
		exit.setSize(width/10, height/8);
		exit.setLocation(0, height*7/10);
		exit.setToolTipText("Exit");
		exit.addActionListener(new ActionListener() {
			
			@Override
			public void actionPerformed(ActionEvent arg0) {
				// TODO Auto-generated method stub
				dispose();
				parent.setVisible(true);
			}
		});
		toolBar.add(exit);
		
		subTitle = new JLabel("Recent Notes" ) ;
		subTitle.setFont(new Font( "Capture it" , Font.PLAIN , 20 ));
		subTitle.setForeground(Color.BLACK);
		subTitle.setLocation(width/9, height/12);
		subTitle.setSize(width/3, height/3);
		
		File file = new File("C:\\Users\\mahdi\\workspace\\JNotes\\Users\\" + userName + "\\notes") ;
		
		toolBar1 = new JToolBar() ;
		toolBar1.setLocation(width/10, height/3);
		toolBar1.setSize( width*9/10 , height/5 );
		toolBar1.setBorder(BorderFactory.createEmptyBorder());
		toolBar1.setLayout(null);
		
		int index = 0 ;
		for (File files : file.listFiles() ) {
			ImageIcon images = new ImageIcon(getClass().getResource("notes.png")) ;
			JButton button = new JButton( files.getName(), images) ;
			button.setSize(width/4, height/5);
			button.setLocation(width/4 * index , 0 );
			button.addActionListener(new ActionListener() {
				
				@Override
				public void actionPerformed(ActionEvent arg0) {
					// TODO Auto-generated method stub

					// TODO Auto-generated method stub
						TextPanel t = new TextPanel(userName , files.getName() ) ;
					try {
						
						BufferedReader reader = new BufferedReader(new FileReader("C:\\Users\\mahdi\\workspace\\JNotes\\Users\\" + userName + "\\notes\\" + files.getName() + "\\content.doc"));
						String s = "" ;
						String ss = "" ;
						try {
							int index = 0 ;
							
							do{
								ss = reader.readLine() ;
								if( ss != null )
									s += ss ;
								s+= "\n" ;
							}while( ss != null );
						} catch (IOException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						}
					
						t.getNote().setText(s);
					} catch (FileNotFoundException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
					
					StyledDocument s = null ;
					
					try {
						ObjectInputStream ois = new ObjectInputStream(new FileInputStream(
								"C:\\Users\\mahdi\\workspace\\JNotes\\Users"
										+ "\\"
										+ userName + "\\"
										+ "notes\\"
										+files.getName()
										+ "\\"
										+files.getName()
										+ ".txt")) ;
						try {
							s = (StyledDocument) ois.readObject() ;
						} catch (ClassNotFoundException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						}
						
						t.getNote().setStyledDocument(s);
					} catch (FileNotFoundException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					} catch (IOException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
					
					
				
				}
			});
			toolBar1.add(button) ;
			index++ ;
			if( index == 3 )
				break ;
		}
		
		toolBar2 = new JToolBar() ;
		toolBar2.setLocation(width/10, height*2/3);
		toolBar2.setSize( width*9/10 , height/5 );
		toolBar2.setBorder(BorderFactory.createEmptyBorder());
		toolBar2.setLayout(null);
	
		index = 0 ;
		for (File files : file.listFiles() ) {
			if (index > 2) {
				ImageIcon images = new ImageIcon(getClass().getResource(
						"notes.png"));
				JButton button = new JButton(files.getName(), images);
				button.setSize(width / 4, height / 5);
				button.setLocation(width / 4 *( index-3) , 0);
				button.addActionListener(new ActionListener() {
					
					@Override
					public void actionPerformed(ActionEvent arg0) {
						// TODO Auto-generated method stub

						// TODO Auto-generated method stub

						// TODO Auto-generated method stub
							TextPanel t = new TextPanel(userName , files.getName() ) ;
						try {
							
							BufferedReader reader = new BufferedReader(new FileReader("C:\\Users\\mahdi\\workspace\\JNotes\\Users\\" + userName + "\\notes\\" + files.getName() + "\\content.doc"));
							String s = "" ;
							String ss = "" ;
							try {
								int index = 0 ;
								
								do{
									ss = reader.readLine() ;
									if( ss != null )
										s += ss ;
									s+= "\n" ;
								}while( ss != null );
							} catch (IOException e) {
								// TODO Auto-generated catch block
								e.printStackTrace();
							}
						
							t.getNote().setText(s);
						} catch (FileNotFoundException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						}
						
						StyledDocument s = null ;
						
						try {
							ObjectInputStream ois = new ObjectInputStream(new FileInputStream(
									"C:\\Users\\mahdi\\workspace\\JNotes\\Users"
											+ "\\"
											+ userName + "\\"
											+ "notes\\"
											+files.getName()
											+ "\\"
											+files.getName()
											+ ".txt")) ;
							try {
								s = (StyledDocument) ois.readObject() ;
							} catch (ClassNotFoundException e) {
								// TODO Auto-generated catch block
								e.printStackTrace();
							}
							
							t.getNote().setStyledDocument(s);
						} catch (FileNotFoundException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						} catch (IOException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						}
						
						
					
					
					}
				});
				toolBar2.add(button);
				//index++;
				if (index == 5)
					break;
			}
			index++ ;
		}
		
		getContentPane().add(toolBar1) ;
		getContentPane().add(toolBar2)	;
		getContentPane().add(title) ;
		getContentPane().add(toolBar) ;
		getContentPane().add( subTitle) ;
		
		this.setVisible(true);
	}
	
/*	@Override
	public void paint( Graphics g ){
		//super.paint(g);
		
		g.setColor(Color.blue);
		g.setFont(new Font( "FantasticFont" , Font.PLAIN , 30 ));
		g.drawString("Recent Notes" , width/2 , height/2);
	}*/
}
