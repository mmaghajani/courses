import java.awt.BorderLayout;
import java.awt.Color;
import java.awt.Component;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.Image;
import java.awt.Insets;
import java.awt.TextField;
import java.awt.Toolkit;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.BorderFactory;
import javax.swing.ButtonGroup;
import javax.swing.ImageIcon;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.JRadioButton;
import javax.swing.JTextField;
import javax.swing.UIManager;
import javax.swing.UnsupportedLookAndFeelException;
import javax.swing.border.Border;

public class Menu extends JFrame{

    private JButton start , exit ;
    private int height = Toolkit.getDefaultToolkit().getScreenSize().height;
    private int width = Toolkit.getDefaultToolkit().getScreenSize().width;
    private JPanel player1 ;
    private JPanel player2 ;
   // private MyPanel frame ;
   // private JPanel frame ;
    
    public Menu() {
    	new Thread(){
    		public void run() {
    			while ( true )
    			{
    				Menu.this.repaint();
    				try {
						Thread.sleep(500);
					} catch (InterruptedException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
    			}
    		};
    	}.start();
    	
    
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
    	
    
    	setSize(width , height);
    	setResizable(false);
    	setLocation(0, 0);
        setDefaultCloseOperation(EXIT_ON_CLOSE);
        setTitle("JTank");
        setLayout(new BorderLayout());
        setLayout(null);
        getContentPane().setLayout(null);
 
        exit = new JButton("Quit Game");
        exit.setSize(130,35);
        exit.setLocation(50,height*7/8);
        exit.setBackground(Color.BLACK);
        exit.setForeground(Color.WHITE);
        exit.setBorder(BorderFactory.createEmptyBorder());
        exit.addActionListener(new ActionListener() {
			
			@Override
			public void actionPerformed(ActionEvent arg0) {
				// TODO Auto-generated method stub
				dispose() ;				
			}
		});
        
        start = new JButton("start");
        start.setSize(130,35);
        start.setLocation(50,height*5/6*49/50);
        start.setBackground(Color.BLACK);
        start.setForeground(Color.WHITE);
        start.setBorder(BorderFactory.createEmptyBorder());
        start.addActionListener(new ActionListener() {
			
			@Override
			public void actionPerformed(ActionEvent arg0) {
				// TODO Auto-generated method stub
				String s = "";
				if (((TextField) ((JPanel) player1.getComponent(1))
						.getComponent(1)).getText().isEmpty()) {
					s = "Please enter Player1 name\n";
				}
				if (((TextField) ((JPanel) player2.getComponent(1))
						.getComponent(1)).getText().isEmpty()) {
					s += "Please enter Player2 name\n";
				}
				if (((JRadioButton) ((JPanel) player1.getComponent(2))
						.getComponent(1)).isSelected() == false
						&& ((JRadioButton) ((JPanel) player1.getComponent(2))
								.getComponent(2)).isSelected() == false
						&& ((JRadioButton) ((JPanel) player1.getComponent(2))
								.getComponent(3)).isSelected() == false)
					s += "Please enter Player1 color\n";
				
				if (((JRadioButton) ((JPanel) player2.getComponent(2))
						.getComponent(1)).isSelected() == false
						&& ((JRadioButton) ((JPanel) player2.getComponent(2))
								.getComponent(2)).isSelected() == false
						&& ((JRadioButton) ((JPanel) player2.getComponent(2))
								.getComponent(3)).isSelected() == false)
					s += "Please enter Player2 color\n";
				
				if( s.equals("") == false ){
				//	Menu.this.repaint();
					JOptionPane.showMessageDialog(Menu.this, s);
					//Menu.this.repaint();
				}
				else{
					String player1Name ;
				    String player1Color ;
				    String player2Name ;
				    String player2Color ;
				    
					player1Name = ((TextField) ((JPanel) player1.getComponent(1))
							.getComponent(1)).getText() ;
					player2Name = ((TextField) ((JPanel) player2.getComponent(1))
							.getComponent(1)).getText() ;
					
					if( ((JRadioButton) ((JPanel) player1.getComponent(2))
						.getComponent(1)).isSelected() == true )
							player1Color = "green" ;
					else if( ((JRadioButton) ((JPanel) player1.getComponent(2))
						.getComponent(2)).isSelected() == true )
							player1Color = "red" ;
					else
						player1Color = "blue" ;
					
					if( ((JRadioButton) ((JPanel) player2.getComponent(2))
							.getComponent(1)).isSelected() == true )
								player2Color = "green" ;
						else if( ((JRadioButton) ((JPanel) player2.getComponent(2))
							.getComponent(2)).isSelected() == true )
								player2Color = "red" ;
						else
							player2Color = "blue" ;
					
					Menu.this.setVisible(false);
					Game game = new Game( player1Name , player1Color , player2Name , player2Color) ;
				}
				
				Menu.this.repaint();
			}
		});
        
        makePlayer1Panel() ;
        makePlayer2Panel() ;
        
       // frame = new MyPanel() ;
       // frame.setLayout(null);
        getContentPane().add(start) ;
        getContentPane().add(player2) ;
        getContentPane().add(player1) ;
        getContentPane().add(exit); 
        
        
     //   frame = new MyPanel(width , height) ;
     //   getContentPane().add( frame , BorderLayout.CENTER) ;
        setVisible(true);
    }

    @Override
    public void paint(Graphics g){
        super.paint(g);
        Image image = new ImageIcon(getClass().getResource("jtank.jpg")).getImage() ;
        g.drawImage(image,0,0,Menu.this.getWidth() , Menu.this.getHeight() , null);
        repaintComponents(g);
    }
 

    private  void repaintComponents(Graphics g){
    	//frame.repaint();
    	start.repaint();
        exit.repaint();
        player1.repaint();
        player2.repaint();
    }

    private void makePlayer1Panel(){
    	
    	//player1
        player1 = new JPanel() ;
        player1.setSize(200, 100);
        player1.setLocation(width*1/7, height*2/3);
        player1.setBackground(Color.decode("#7c7778"));
        player1.setLayout(new BorderLayout() );
        JPanel pan0 = new JPanel() ;
        JPanel pan1 = new JPanel() ;
        JPanel pan2 = new JPanel() ;
        
        pan0.setBackground(Color.decode("#7c7778"));
        pan1.setBackground(Color.decode("#7c7778"));
        pan2.setBackground(Color.decode("#7c7778"));
        
        JLabel label = new JLabel("Player1") ;
        pan0.add(label) ;
       
        TextField tex = new TextField(15) ;
        JLabel lab = new JLabel("Name :") ;     
        pan1.add( lab ) ;
        pan1.add( tex ) ;
        
        JLabel label2 = new JLabel("Color : ") ;
        JRadioButton r1 = new JRadioButton() ;
        JRadioButton r2 = new JRadioButton() ;
        JRadioButton r3 = new JRadioButton() ;
        ButtonGroup radioGroup = new ButtonGroup() ; 
        r1.setBackground(Color.green);
        r2.setBackground(Color.RED);
        r3.setBackground(Color.BLUE);
        radioGroup.add(r1) ;
        radioGroup.add(r2) ;
        radioGroup.add(r3) ;
        pan2.add( label2 );
        pan2.add( r1 ) ;
        pan2.add(r2 ) ;
        pan2.add(r3) ;
        
        player1.add( pan0, BorderLayout.NORTH) ;
        player1.add( pan1 , BorderLayout.CENTER) ;
        player1.add( pan2 , BorderLayout.SOUTH) ;
        
        
    }

    private void makePlayer2Panel(){
    	 player2 = new JPanel();
         player2.setBackground(Color.decode("#7c7778"));
         player2.setSize(200, 100);
         player2.setLocation(width*1/3, height*2/3);
         player2.setLayout(new BorderLayout() );
         JPanel pan0 = new JPanel() ;
         pan0.setBackground(Color.decode("#7c7778"));
         JLabel label = new JLabel("Player2") ;
         pan0.add(label) ;
         TextField tex = new TextField(15) ;
         JLabel lab = new JLabel("Name :") ;
         JLabel label2 = new JLabel("Color : ") ;
         JPanel pan1 = new JPanel() ;
         pan1.setBackground(Color.decode("#7c7778"));
         pan1.add( lab ) ;
         pan1.add( tex ) ;
         JPanel pan2 = new JPanel() ;
         JRadioButton r1 = new JRadioButton() ;
         JRadioButton r2 = new JRadioButton() ;
         JRadioButton r3 = new JRadioButton() ;
         ButtonGroup radioGroup = new ButtonGroup() ; 
         r1.setBackground(Color.green);
         r2.setBackground(Color.RED);
         r3.setBackground(Color.BLUE);
         pan2.setBackground(Color.decode("#7c7778"));
         radioGroup.add(r1) ;
         radioGroup.add(r2) ;
         radioGroup.add(r3) ;
         pan2.add( label2 ); 
         pan2.add( r1 ) ;
         pan2.add(r2 ) ;
         pan2.add(r3) ;
         player2.add(pan0, BorderLayout.NORTH) ;
         player2.add( pan1 , BorderLayout.CENTER) ;
         player2.add( pan2 , BorderLayout.SOUTH) ;
    }
    
    private void changeFonts(Font sf){
		UIManager.put("Button.font",sf); 
		UIManager.put("ToggleButton.font",sf); 
		UIManager.put("RadioButton.font",sf); 
		UIManager.put("CheckBox.font",sf); 
		UIManager.put("ColorChooser.font",sf); 
		UIManager.put("ToggleButton.font",sf); 
		UIManager.put("ComboBox.font",sf); 
		UIManager.put("ComboBoxItem.font",sf); 
		UIManager.put("InternalFrame.titleFont",sf); 
		UIManager.put("Label.font",sf); 
		UIManager.put("List.font",sf); 
		UIManager.put("MenuBar.font",sf); 
		UIManager.put("Menu.font",sf); 
		UIManager.put("MenuItem.font",sf); 
		UIManager.put("RadioButtonMenuItem.font",sf); 
		UIManager.put("CheckBoxMenuItem.font",sf); 
		UIManager.put("PopupMenu.font",sf); 
		UIManager.put("OptionPane.font",sf); 
		UIManager.put("Panel.font",sf); 
		UIManager.put("ProgressBar.font",sf); 
		UIManager.put("ScrollPane.font",sf); 
		UIManager.put("Viewport",sf); 
		UIManager.put("TabbedPane.font",sf); 
		UIManager.put("TableHeader.font",sf); 
		UIManager.put("TextField.font",sf); 
		UIManager.put("PasswordFiled.font",sf); 
		UIManager.put("TextArea.font",sf); 
		UIManager.put("TextPane.font",sf); 
		UIManager.put("EditorPane.font",sf); 
		UIManager.put("TitledBorder.font",sf); 
		UIManager.put("ToolBar.font",sf); 
		UIManager.put("ToolTip.font",sf); 
		UIManager.put("Tree.font",sf); 
		UIManager.put("Button.font.color",Color.blue) ;
		//config.applyLookAndFeel(config.LOOK_AND_FEEL);
		}
}