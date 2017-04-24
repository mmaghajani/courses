import java.awt.Color;
import java.awt.Font;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.io.ObjectInputStream;

import javax.swing.ImageIcon;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.UIManager;
import javax.swing.UnsupportedLookAndFeelException;
import javax.swing.text.StyledDocument;


public class InfoPanel extends JFrame {

	private int heightScreen = (int)getToolkit().getScreenSize().getHeight() ;
	private int widthScreen = (int)getToolkit().getScreenSize().getWidth();
	private int width ;
	private int height ;
	private Panel back ;
	private JButton edit ;
	private JButton ok ;
	private String[] ID ;
	private JButton show ;
	public InfoPanel(String[] s , String k , String userName , int kelid){
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
		
		ID = s ;
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
		
		back = new Panel(width , height , s , k) ;
		back.setLocation(0, 0);
		back.setSize(width, height);
		back.setLayout(null);
		
		if (kelid != 1) {
			edit = new JButton("Edit");
			edit.setFont(new Font("Segoe Print", Font.BOLD, 18));
			edit.setForeground(Color.decode("#3f82c6"));
			edit.setSize(width / 5, height / 5);
			edit.setLocation(width * 4 / 7, height * 8 / 11);
			edit.addActionListener(new ActionListener() {

				@Override
				public void actionPerformed(ActionEvent arg0) {
					// TODO Auto-generated method stub
					TextPanel t = new TextPanel(userName, ID[1]);
					try {

						BufferedReader reader = new BufferedReader(
								new FileReader(
										"C:\\Users\\mahdi\\workspace\\JNotes\\Users\\"
												+ userName + "\\notes\\"
												+ ID[1] + "\\content.doc"));
						String s = "";
						String ss = "";
						try {
							int index = 0;

							do {
								ss = reader.readLine();
								if (ss != null)
									s += ss;
								s += "\n";
							} while (ss != null);
						} catch (IOException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						}

						t.getNote().setText(s);
					} catch (FileNotFoundException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}

					StyledDocument s = null;

					try {
						ObjectInputStream ois = new ObjectInputStream(
								new FileInputStream(
										"C:\\Users\\mahdi\\workspace\\JNotes\\Users"
												+ "\\" + userName + "\\"
												+ "notes\\" + ID[1] + "\\"
												+ ID[1] + ".txt"));
						try {
							s = (StyledDocument) ois.readObject();
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
					InfoPanel.this.dispose();

				}
			});
			back.add(edit);
		}
		else{

			show = new JButton("Show");
			show.setFont(new Font("Segoe Print", Font.BOLD, 18));
			show.setForeground(Color.decode("#3f82c6"));
			show.setSize(width / 5, height / 5);
			show.setLocation(width * 4 / 7, height * 8 / 11);
			show.addActionListener(new ActionListener() {

				@Override
				public void actionPerformed(ActionEvent arg0) {
					// TODO Auto-generated method stub
					ShowPanel t = new ShowPanel(userName, ID[1]);
					try {

						BufferedReader reader = new BufferedReader(
								new FileReader(
										"C:\\Users\\mahdi\\workspace\\JNotes\\Users\\"
												+ userName + "\\notes\\"
												+ ID[1] + "\\content.doc"));
						String s = "";
						String ss = "";
						try {
							int index = 0;

							do {
								ss = reader.readLine();
								if (ss != null)
									s += ss;
								s += "\n";
							} while (ss != null);
						} catch (IOException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						}

						t.getNote().setText(s);
					} catch (FileNotFoundException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}

					StyledDocument s = null;

					try {
						ObjectInputStream ois = new ObjectInputStream(
								new FileInputStream(
										"C:\\Users\\mahdi\\workspace\\JNotes\\Users"
												+ "\\" + userName + "\\"
												+ "notes\\" + ID[1] + "\\"
												+ ID[1] + ".txt"));
						try {
							s = (StyledDocument) ois.readObject();
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
					InfoPanel.this.dispose();

				}
			});
			back.add(show);
		
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
		back.add(ok) ;

		getContentPane().add(back) ;
		setVisible(true);
	}
	
}
