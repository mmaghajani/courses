import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.Graphics2D;
import java.awt.Image;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.FocusEvent;
import java.awt.event.FocusListener;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.IOException;
import java.io.PrintWriter;

import javax.swing.BorderFactory;
import javax.swing.ImageIcon;
import javax.swing.JButton;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.JPasswordField;
import javax.swing.JTextField;
import javax.swing.UIManager;
import javax.swing.UnsupportedLookAndFeelException;

public class MyPanel extends JPanel {
	private int width;
	private int height;
	private int heightScreen = (int) getToolkit().getScreenSize().getHeight();
	private int widthScreen = (int) getToolkit().getScreenSize().getWidth();
	private JTextField user;
	private JPasswordField pass;
	private JTextField firstName;
	private JTextField lastName;
	private JTextField degree;
	private JTextField birthDay;
	private JLabel title;
	private JButton create;
	private EnrollmentPage e ;
	
	public MyPanel(EnrollmentPage en ) {
		super();
		this.e = en ;
		
		try {
			UIManager.setLookAndFeel("com.jtattoo.plaf.aluminium.AluminiumLookAndFeel");
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

		width = widthScreen / 3;
		height = heightScreen / 2;
		this.setLayout(null);

		firstName = new JTextField();
		firstName.setForeground(Color.decode("#a5a4a7"));
		firstName.setSize(width * 2 / 5, height / 12);
		firstName.setLocation(width / 10, height / 5);
		firstName.setBorder(BorderFactory.createBevelBorder(0));
		firstName.setOpaque(true);
		firstName.setText("First Name");
		firstName.addFocusListener(new FocusListener() {

			@Override
			public void focusLost(FocusEvent arg0) {
				// TODO Auto-generated method stub
				if (firstName.getText().equals("")) {
					firstName.setForeground(Color.decode("#a5a4a7"));
					firstName.setText("First Name");
				}
			}

			@Override
			public void focusGained(FocusEvent arg0) {
				// TODO Auto-generated method stub
				if (firstName.getText().equals("First Name")) {
					firstName.setForeground(Color.black);
					firstName.setText("");
				}
			}
		});
		this.add(firstName);

		lastName = new JTextField();
		lastName.setForeground(Color.decode("#a5a4a7"));
		lastName.setSize(width * 2 / 5, height / 12);
		lastName.setLocation(width / 2 + 14, height / 5);
		lastName.setBorder(BorderFactory.createBevelBorder(0));
		lastName.setOpaque(true);
		lastName.setText("Last Name");
		lastName.addFocusListener(new FocusListener() {

			@Override
			public void focusLost(FocusEvent arg0) {
				// TODO Auto-generated method stub
				if (lastName.getText().equals("")) {
					lastName.setForeground(Color.decode("#a5a4a7"));
					lastName.setText("Last Name");
				}
			}

			@Override
			public void focusGained(FocusEvent arg0) {
				// TODO Auto-generated method stub
				if (lastName.getText().equals("Last Name")) {
					lastName.setForeground(Color.black);
					lastName.setText("");
				}
			}
		});
		this.add(lastName);

		user = new JTextField();
		user.setForeground(Color.decode("#a5a4a7"));
		user.setSize(width * 5 / 6, height / 12);
		user.setLocation(width / 10, height / 3);
		user.setBorder(BorderFactory.createBevelBorder(0));
		user.setOpaque(true);
		user.setText("User Name");
		user.addFocusListener(new FocusListener() {

			@Override
			public void focusLost(FocusEvent arg0) {
				// TODO Auto-generated method stub
				if (user.getText().equals("")) {
					user.setForeground(Color.decode("#a5a4a7"));
					user.setText("User Name");
				}
			}

			@Override
			public void focusGained(FocusEvent arg0) {
				// TODO Auto-generated method stub
				if (user.getText().equals("User Name")) {
					user.setForeground(Color.black);
					user.setText("");
				}
			}
		});
		this.add(user);

		pass = new JPasswordField();
		pass.setForeground(Color.decode("#a5a4a7"));
		pass.setSize(width * 5 / 6, height / 12);
		pass.setLocation(width / 10, height * 5 / 11);
		pass.setBorder(BorderFactory.createBevelBorder(0));
		pass.setOpaque(true);
		pass.setText("Password");
		char s = pass.getEchoChar() ;
		pass.setEchoChar((char) 0 ); ;
		pass.addFocusListener(new FocusListener() {

			@Override
			public void focusLost(FocusEvent arg0) {
				// TODO Auto-generated method stub
				if (pass.getText().equals("")) {
					pass.setForeground(Color.decode("#a5a4a7"));
					pass.setEchoChar((char) 0 ); ;
					pass.setText("Password");
				}
			}

			@Override
			public void focusGained(FocusEvent arg0) {
				// TODO Auto-generated method stub
				if (pass.getText().equals("Password")) {
					pass.setForeground(Color.black);
					pass.setText("");
					pass.setEchoChar(s); ;
				}
			}
		});
		this.add(pass);

		degree = new JTextField();
		degree.setForeground(Color.decode("#a5a4a7"));
		degree.setSize(width * 2 / 5, height / 12);
		degree.setLocation(width / 2 + 14, height * 7 / 12);
		degree.setBorder(BorderFactory.createBevelBorder(0));
		degree.setOpaque(true);
		degree.setText("Degree");
		degree.addFocusListener(new FocusListener() {

			@Override
			public void focusLost(FocusEvent arg0) {
				// TODO Auto-generated method stub
				if (degree.getText().equals("")) {
					degree.setForeground(Color.decode("#a5a4a7"));
					degree.setText("Degree");
				}
			}

			@Override
			public void focusGained(FocusEvent arg0) {
				// TODO Auto-generated method stub
				if (degree.getText().equals("Degree")) {
					degree.setForeground(Color.black);
					degree.setText("");
				}
			}
		});
		this.add(degree);

		birthDay = new JTextField();
		birthDay.setForeground(Color.decode("#a5a4a7"));
		birthDay.setSize(width * 2 / 5, height / 12);
		birthDay.setLocation(width / 10, height * 7 / 12);
		birthDay.setBorder(BorderFactory.createBevelBorder(0));
		birthDay.setOpaque(true);
		birthDay.setText("Birth Day: YYYY/MM/DD");
		birthDay.addFocusListener(new FocusListener() {

			@Override
			public void focusLost(FocusEvent arg0) {
				// TODO Auto-generated method stub
				if (birthDay.getText().equals("")) {
					birthDay.setForeground(Color.decode("#a5a4a7"));
					birthDay.setText("Birth Day: YYYY/MM/DD");
				}
			}

			@Override
			public void focusGained(FocusEvent arg0) {
				// TODO Auto-generated method stub
				if (birthDay.getText().equals("Birth Day: YYYY/MM/DD")) {
					birthDay.setForeground(Color.black);
					birthDay.setText("");
				}
			}
		});
		this.add(birthDay);

		create = new JButton("Create Account");
		create.setSize(width * 2 / 5, height / 12);
		create.setLocation(width / 10, height * 11 / 15);
		create.setFont(new Font("Segoe Print", Font.BOLD, 18));
		create.setBackground(Color.decode("#68b4f5"));
		create.setForeground(Color.white);
		create.addActionListener(new ActionListener() {

			@Override
			public void actionPerformed(ActionEvent arg0) {
				// TODO Auto-generated method stub
				if (!isValidInformation()){
					
				}
					
				else {
					if (!isValidUsername())
						JOptionPane.showMessageDialog(null,
								"this user name is already exist!", "Message",
								JOptionPane.WARNING_MESSAGE);
					else {
						File current = new File(
								"C:\\Users\\mahdi\\workspace\\JNotes\\Users");
						File workingFolder = new File(current, user.getText());
						if (!workingFolder.exists()) {
							workingFolder.mkdir();
						}

						File myUser = new File(
								"C:\\Users\\mahdi\\workspace\\JNotes\\Users"
										+ "\\" + user.getText());
						File ID = new File("ID.txt");
						File noteNum = new File("noteNum.txt") ;
						File notes = new File( myUser , "notes" ) ;
						
						if( !notes.exists() )
							notes.mkdir() ;
						try {
							PrintWriter writer = new PrintWriter(
									new FileOutputStream(
											"C:\\Users\\mahdi\\workspace\\JNotes\\Users"
													+ "\\"
													+ user.getText() + "\\"
													+ "ID.txt"));
							writer.println(user.getText());
							writer.println(pass.getText());
							writer.println(firstName.getText());
							writer.println(lastName.getText());
							writer.println(degree.getText());
							writer.println(birthDay.getText());
							writer.close();
							JOptionPane.showMessageDialog(null,
									"Enrollment was successfully!");
							e.dispose();
						} catch (FileNotFoundException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						}
						
						try {
							PrintWriter writer = new PrintWriter(
									new FileOutputStream(
											"C:\\Users\\mahdi\\workspace\\JNotes\\Users"
													+ "\\"
													+ user.getText() + "\\"
													+ "noteNum.txt"));
							writer.println("0") ;
							
							writer.close() ;
						} catch (FileNotFoundException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						}

					}

				}
			}
		});
		this.add(create);

		this.setVisible(true);
	}

	@Override
	public void paintComponent(Graphics g) {
		super.paintComponent(g);

		Image image = new ImageIcon(getClass().getResource("blue.jpg"))
				.getImage();
		g.drawImage(image, 0, 0, this.getWidth(), this.getHeight(), null);

		Graphics2D g2d = (Graphics2D) g;
		g2d.setFont(new Font("Arial Black", Font.PLAIN, 21));
		g2d.setColor(Color.white);
		g2d.drawString("Sign Up", this.getWidth() / 10, this.getHeight() / 8);

		create.repaint();
		firstName.repaint();
		lastName.repaint();
		user.repaint();
		pass.repaint();
		degree.repaint();
		birthDay.repaint();

	}

	private boolean isValidUsername() {
		File superFile = new File("C:\\Users\\mahdi\\workspace\\JNotes\\Users");
		for (File file : superFile.listFiles()) {
			String s = file.getAbsolutePath();
			s += "\\ID.txt";

			try {
				BufferedReader reader = new BufferedReader(new FileReader(s));
				try {
					if (user.getText().equals(reader.readLine())) {
						return false;
					}
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			} catch (FileNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		}

		return true;
	}

	
	private boolean isValidInformation(){
	  if( firstName.getText().equals("First Name") ){
		  JOptionPane.showMessageDialog(null, "Please enter first name" ,"Message" , JOptionPane.WARNING_MESSAGE );
		  return false ;
	  }
	  if( lastName.getText().equals("Last Name") ){
		  JOptionPane.showMessageDialog(null, "Please enter last name" ,"Message" , JOptionPane.WARNING_MESSAGE );
		  return false ;
	  }
	  if( user.getText().equals("User Name") ){
		  JOptionPane.showMessageDialog(null, "Please enter user name" ,"Message" , JOptionPane.WARNING_MESSAGE );
		  return false ;
	  }
	  if( pass.getText().equals("Password") ){
		  JOptionPane.showMessageDialog(null, "Please enter password" ,"Message" , JOptionPane.WARNING_MESSAGE );
		  return false ;
	  }
	  if( birthDay.getText().equals("Birth Day: YYYY/MM/DD") ){
		  JOptionPane.showMessageDialog(null, "Please enter birth day" ,"Message" , JOptionPane.WARNING_MESSAGE );
		  return false ;
	  }
	  if( degree.getText().equals("Degree") ){
		  JOptionPane.showMessageDialog(null, "Please enter degree" ,"Message" , JOptionPane.WARNING_MESSAGE );
		  return false ;
	  }
	  
	  return true ;
	}
	 
}
