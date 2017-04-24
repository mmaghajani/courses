import java.awt.BorderLayout;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.Image;
import java.awt.TextField;
import java.awt.Toolkit;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.KeyEvent;
import java.awt.event.KeyListener;
import java.awt.event.TextEvent;
import java.awt.event.TextListener;
import java.util.Random;

import javax.swing.ImageIcon;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.JSlider;

public class Game extends JFrame {

	private GamePanel gamePanel;
	private JPanel infoPanel;
	private int height = Toolkit.getDefaultToolkit().getScreenSize().height;
	private int width = Toolkit.getDefaultToolkit().getScreenSize().width;
	private int nobat;

	public Game(String player1Name, String player1Color, String player2Name,
			String player2Color) {
		
		infoPanel = new JPanel();
		gamePanel = new GamePanel( infoPanel );
		
		new Thread(){
    		public void run() {
    			while ( true )
    			{
    				//GamePanel.this.repaint();
    				if( gamePanel.getEnd() == 1 ){
    					Menu f = new Menu() ;
    					dispose();
    					JOptionPane.showMessageDialog(null, "");
    					
    				}
    				try {
						Thread.sleep(100);
					} catch (InterruptedException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
    			}
    		};
    	}.start();
		setSize(width, height);
		setResizable(false);
		setLocation(0, 0);
		setDefaultCloseOperation(EXIT_ON_CLOSE);
		setTitle("JTank");
		getContentPane().setLayout(new BorderLayout());
		nobat = 1;
		/*
		 * GraphicsDevice window =
		 * GraphicsEnvironment.getLocalGraphicsEnvironment
		 * ().getScreenDevices()[0];
		 * 
		 * this.dispose(); this.setUndecorated(true);
		 * window.setFullScreenWindow(this); this.setVisible(true);
		 */

		

		infoPanel.setLayout(new BorderLayout());
		JSlider kikePower = new JSlider(0, 100);
		JSlider kikePower1 = new JSlider(0, 100);
		JButton fire = new JButton("Fire");
		fire.setFont(new Font("Gabriola", Font.PLAIN, 30));
		fire.addActionListener(new ActionListener() {

			@Override
			public void actionPerformed(ActionEvent arg0) {
				// TODO Auto-generated method stub
				if (nobat == 1) {
					int x = (int) (gamePanel.getTank1().getXpos()
							+ gamePanel.getTank1().getXSize() / 2 + 80 * Math
							.cos(gamePanel.getTank1().getAngle()));

					int y = (int) (gamePanel.getTank1().getYpos()
							+ gamePanel.getTank1().getYSize() / 5 - 80 * Math
							.sin(gamePanel.getTank1().getAngle()));

					gamePanel.getTank1().getMissile().setY(y);
					gamePanel.getTank1().getMissile().setX(x);
					gamePanel.setRequirment(x, y, kikePower.getValue(), 1);
					gamePanel.getTank1().getMissile().setIsVisible(true);
					gamePanel.setKey(1);
					// gamePanel.getTank1().shot(1 , kikePower.getValue()*5 ,
					// width , gamePanel) ;
					nobat = 2;
				} else {
					//System.out.println("1");
					// gamePanel.getTank2().shot(2 , kikePower1.getValue()*5 ,
					// width) ;
					int x = (int) (gamePanel.getTank2().getXpos()
							+ gamePanel.getTank2().getXSize() / 2 - 80 * Math
							.cos(gamePanel.getTank2().getAngle()));

					int y = (int) (gamePanel.getTank2().getYpos()
							+ gamePanel.getTank2().getYSize() / 5 - 80 * Math
							.sin(gamePanel.getTank2().getAngle()));

					gamePanel.getTank2().getMissile().setY(y);
					gamePanel.getTank2().getMissile().setX(x);
					gamePanel.setRequirment(x, y, kikePower1.getValue(), 1);
					gamePanel.getTank2().getMissile().setIsVisible(true);
					gamePanel.setKey(2);
					// gamePanel.getTank1().shot(1 , kikePower.getValue()*5 ,
					// width , gamePanel) ;

					nobat = 1;
				}
			}
		});
		
		fire.addKeyListener(new KeyListener() {
			
			@Override
			public void keyTyped(KeyEvent arg0) {
				// TODO Auto-generated method stub
				
			}
			
			@Override
			public void keyReleased(KeyEvent arg0) {
				// TODO Auto-generated method stub
				
			}
			
			@Override
			public void keyPressed(KeyEvent event) {
				// TODO Auto-generated method stub
				if (event.getKeyCode() == 37) {
					if (nobat == 1) {
						if (gamePanel.getTank1().getXpos() > 3) {
							gamePanel.getTank1().setXpos(
									gamePanel.getTank1().getXpos() - 3);
							gamePanel.repaint();
						}
					}

					if (nobat == 2) {
						if (gamePanel.getTank2().getXpos() > width * 3 / 4) {
							gamePanel.getTank2().setXpos(
									gamePanel.getTank2().getXpos() - 3);
							gamePanel.repaint();
						}
					}
				}

				if (event.getKeyCode() == 39) {
					if (nobat == 1) {
						if (gamePanel.getTank1().getXpos() < width / 5) {
							gamePanel.getTank1().setXpos(
									gamePanel.getTank1().getXpos() + 3);
							gamePanel.repaint();
						}
					}

					if (nobat == 2) {
						if (gamePanel.getTank2().getXpos() < width - 120) {
							gamePanel.getTank2().setXpos(
									gamePanel.getTank2().getXpos() + 3);
							gamePanel.repaint();
						}
					}
				}
				
				if( event.getKeyCode() == 10 ){
					if (nobat == 1) {
						int x = (int) (gamePanel.getTank1().getXpos()
								+ gamePanel.getTank1().getXSize() / 2 + 80 * Math
								.cos(gamePanel.getTank1().getAngle()));

						int y = (int) (gamePanel.getTank1().getYpos()
								+ gamePanel.getTank1().getYSize() / 5 - 80 * Math
								.sin(gamePanel.getTank1().getAngle()));

						gamePanel.getTank1().getMissile().setY(y);
						gamePanel.getTank1().getMissile().setX(x);
						gamePanel.setRequirment(x, y, kikePower.getValue(), 1);
						gamePanel.getTank1().getMissile().setIsVisible(true);
						gamePanel.setKey(1);
						// gamePanel.getTank1().shot(1 , kikePower.getValue()*5 ,
						// width , gamePanel) ;
						nobat = 2;
					} else {
						//System.out.println("1");
						// gamePanel.getTank2().shot(2 , kikePower1.getValue()*5 ,
						// width) ;
						int x = (int) (gamePanel.getTank2().getXpos()
								+ gamePanel.getTank2().getXSize() / 2 - 80 * Math
								.cos(gamePanel.getTank2().getAngle()));

						int y = (int) (gamePanel.getTank2().getYpos()
								+ gamePanel.getTank2().getYSize() / 5 - 80 * Math
								.sin(gamePanel.getTank2().getAngle()));

						gamePanel.getTank2().getMissile().setY(y);
						gamePanel.getTank2().getMissile().setX(x);
						gamePanel.setRequirment(x, y, kikePower1.getValue(), 1);
						gamePanel.getTank2().getMissile().setIsVisible(true);
						gamePanel.setKey(2);
						// gamePanel.getTank1().shot(1 , kikePower.getValue()*5 ,
						// width , gamePanel) ;

						nobat = 1;
					}

				}
				
			}
		});
		// infoPanel.add( fire , BorderLayout.CENTER) ;
		JPanel pan0 = new JPanel(new BorderLayout());
		JPanel pan01 = new JPanel();
		JPanel pan03 = new JPanel(new BorderLayout());
		JPanel pan030 = new JPanel(new BorderLayout());
		JPanel pan031 = new JPanel(new BorderLayout());
		JLabel label1 = new JLabel(player1Name);
		label1.setFont(new Font("Arial Black", Font.PLAIN, 14));
		pan01.add(label1);
		pan030.add(kikePower);
		TextField kikeAngle = new TextField(50);
		kikeAngle.setText("Angle");
		kikeAngle.setFont(new Font("Arial", Font.ITALIC, 14));
		kikeAngle.addTextListener(new TextListener() {

			@Override
			public void textValueChanged(TextEvent event) {
				// TODO Auto-generated method stub
				try {
					gamePanel.getTank1().setAngle(
							Double.parseDouble(kikeAngle.getText()));
					gamePanel.repaint();
				} catch (Exception e) {

				}
				Game.this.setFocusable(true);
			}
		});
		kikeAngle.addKeyListener(new KeyListener() {

			@Override
			public void keyTyped(KeyEvent event) {
				// TODO Auto-generated method stub
				// JOptionPane.showMessageDialog(null, event.getKeyCode());
			}

			@Override
			public void keyReleased(KeyEvent event) {
				// TODO Auto-generated method stub

			}

			@Override
			public void keyPressed(KeyEvent event) {
				// TODO Auto-generated method stub
				// JOptionPane.showMessageDialog(null, event.getKeyCode());
				if (event.getKeyCode() == 37) {
					if (nobat == 1) {
						if (gamePanel.getTank1().getXpos() > 3) {
							gamePanel.getTank1().setXpos(
									gamePanel.getTank1().getXpos() - 3);
							gamePanel.repaint();
						}
					}

					if (nobat == 2) {
						if (gamePanel.getTank2().getXpos() > width * 3 / 4) {
							gamePanel.getTank2().setXpos(
									gamePanel.getTank2().getXpos() - 3);
							gamePanel.repaint();
						}
					}
				}

				if (event.getKeyCode() == 39) {
					if (nobat == 1) {
						if (gamePanel.getTank1().getXpos() < width / 5) {
							gamePanel.getTank1().setXpos(
									gamePanel.getTank1().getXpos() + 3);
							gamePanel.repaint();
						}
					}

					if (nobat == 2) {
						if (gamePanel.getTank2().getXpos() < width - 120) {
							gamePanel.getTank2().setXpos(
									gamePanel.getTank2().getXpos() + 3);
							gamePanel.repaint();
						}
					}
				}
				
				if( event.getKeyCode() == 10 ){
					if (nobat == 1) {
						int x = (int) (gamePanel.getTank1().getXpos()
								+ gamePanel.getTank1().getXSize() / 2 + 80 * Math
								.cos(gamePanel.getTank1().getAngle()));

						int y = (int) (gamePanel.getTank1().getYpos()
								+ gamePanel.getTank1().getYSize() / 5 - 80 * Math
								.sin(gamePanel.getTank1().getAngle()));

						gamePanel.getTank1().getMissile().setY(y);
						gamePanel.getTank1().getMissile().setX(x);
						gamePanel.setRequirment(x, y, kikePower.getValue(), 1);
						gamePanel.getTank1().getMissile().setIsVisible(true);
						gamePanel.setKey(1);
						// gamePanel.getTank1().shot(1 , kikePower.getValue()*5 ,
						// width , gamePanel) ;
						nobat = 2;
					} else {
						//System.out.println("1");
						// gamePanel.getTank2().shot(2 , kikePower1.getValue()*5 ,
						// width) ;
						int x = (int) (gamePanel.getTank2().getXpos()
								+ gamePanel.getTank2().getXSize() / 2 - 80 * Math
								.cos(gamePanel.getTank2().getAngle()));

						int y = (int) (gamePanel.getTank2().getYpos()
								+ gamePanel.getTank2().getYSize() / 5 - 80 * Math
								.sin(gamePanel.getTank2().getAngle()));

						gamePanel.getTank2().getMissile().setY(y);
						gamePanel.getTank2().getMissile().setX(x);
						gamePanel.setRequirment(x, y, kikePower1.getValue(), 1);
						gamePanel.getTank2().getMissile().setIsVisible(true);
						gamePanel.setKey(2);
						// gamePanel.getTank1().shot(1 , kikePower.getValue()*5 ,
						// width , gamePanel) ;

						nobat = 1;
					}

				}
			}
		});
		pan031.add(kikeAngle);
		pan03.add(pan030, BorderLayout.NORTH);
		pan03.add(pan031, BorderLayout.SOUTH);

		pan0.add(pan01, BorderLayout.NORTH);
		pan0.add(pan03, BorderLayout.SOUTH);
		infoPanel.add(pan0, BorderLayout.WEST);

		JPanel pan1 = new JPanel(new BorderLayout());
		JPanel pann01 = new JPanel();
		JPanel pann03 = new JPanel(new BorderLayout());
		JPanel pann030 = new JPanel(new BorderLayout());
		JPanel pann031 = new JPanel(new BorderLayout());
		JLabel labell1 = new JLabel(player2Name);
		labell1.setFont(new Font("Arial Black", Font.PLAIN, 14));
		pann01.add(labell1);
		pann030.add(kikePower1);
		TextField kikeAngle1 = new TextField(50);
		kikeAngle1.setText("Angle");
		kikeAngle1.setFont(new Font("Arial", Font.ITALIC, 14));
		kikeAngle1.addTextListener(new TextListener() {

			@Override
			public void textValueChanged(TextEvent event) {
				// TODO Auto-generated method stub
				try {
					gamePanel.getTank2().setAngle(
							Double.parseDouble(kikeAngle1.getText()));
					gamePanel.repaint();
				} catch (Exception e) {

				}
				Game.this.setFocusable(true);
			}
		});

		kikeAngle1.addKeyListener(new KeyListener() {

			@Override
			public void keyTyped(KeyEvent event) {
				// TODO Auto-generated method stub
				// JOptionPane.showMessageDialog(null, event.getKeyCode());
			}

			@Override
			public void keyReleased(KeyEvent event) {
				// TODO Auto-generated method stub

			}

			@Override
			public void keyPressed(KeyEvent event) {
				// TODO Auto-generated method stub
				// System.out.println(event.getKeyCode());
				if (event.getKeyCode() == 37) {
					if (nobat == 1) {
						if (gamePanel.getTank1().getXpos() > 3) {
							gamePanel.getTank1().setXpos(
									gamePanel.getTank1().getXpos() - 3);
							gamePanel.repaint();
						}
					}

					if (nobat == 2) {
						if (gamePanel.getTank2().getXpos() > width * 3 / 4) {
							gamePanel.getTank2().setXpos(
									gamePanel.getTank2().getXpos() - 3);
							gamePanel.repaint();
						}
					}
				}

				if (event.getKeyCode() == 39) {
					if (nobat == 1) {
						if (gamePanel.getTank1().getXpos() < width / 5) {
							gamePanel.getTank1().setXpos(
									gamePanel.getTank1().getXpos() + 3);
							gamePanel.repaint();
						}
					}

					if (nobat == 2) {
						if (gamePanel.getTank2().getXpos() < width - 120) {
							gamePanel.getTank2().setXpos(
									gamePanel.getTank2().getXpos() + 3);
							gamePanel.repaint();
						}
					}
				}
				
				if( event.getKeyCode() == 10 ){
					if (nobat == 1) {
						int x = (int) (gamePanel.getTank1().getXpos()
								+ gamePanel.getTank1().getXSize() / 2 + 80 * Math
								.cos(gamePanel.getTank1().getAngle()));

						int y = (int) (gamePanel.getTank1().getYpos()
								+ gamePanel.getTank1().getYSize() / 5 - 80 * Math
								.sin(gamePanel.getTank1().getAngle()));

						gamePanel.getTank1().getMissile().setY(y);
						gamePanel.getTank1().getMissile().setX(x);
						gamePanel.setRequirment(x, y, kikePower.getValue(), 1);
						gamePanel.getTank1().getMissile().setIsVisible(true);
						gamePanel.setKey(1);
						// gamePanel.getTank1().shot(1 , kikePower.getValue()*5 ,
						// width , gamePanel) ;
						nobat = 2;
					} else {
						//System.out.println("1");
						// gamePanel.getTank2().shot(2 , kikePower1.getValue()*5 ,
						// width) ;
						int x = (int) (gamePanel.getTank2().getXpos()
								+ gamePanel.getTank2().getXSize() / 2 - 80 * Math
								.cos(gamePanel.getTank2().getAngle()));

						int y = (int) (gamePanel.getTank2().getYpos()
								+ gamePanel.getTank2().getYSize() / 5 - 80 * Math
								.sin(gamePanel.getTank2().getAngle()));

						gamePanel.getTank2().getMissile().setY(y);
						gamePanel.getTank2().getMissile().setX(x);
						gamePanel.setRequirment(x, y, kikePower1.getValue(), 1);
						gamePanel.getTank2().getMissile().setIsVisible(true);
						gamePanel.setKey(2);
						// gamePanel.getTank1().shot(1 , kikePower.getValue()*5 ,
						// width , gamePanel) ;

						nobat = 1;
					}

				}
			}
		});
		
		kikePower.addKeyListener(new KeyListener() {
			
			@Override
			public void keyTyped(KeyEvent arg0) {
				// TODO Auto-generated method stub
				
			}
			
			@Override
			public void keyReleased(KeyEvent arg0) {
				// TODO Auto-generated method stub
				
			}
			
			@Override
			public void keyPressed(KeyEvent event) {
				// TODO Auto-generated method stub

				// TODO Auto-generated method stub
				// System.out.println(event.getKeyCode());
				if (event.getKeyCode() == 37) {
					if (nobat == 1) {
						if (gamePanel.getTank1().getXpos() > 3) {
							gamePanel.getTank1().setXpos(
									gamePanel.getTank1().getXpos() - 3);
							gamePanel.repaint();
						}
					}

					if (nobat == 2) {
						if (gamePanel.getTank2().getXpos() > width * 3 / 4) {
							gamePanel.getTank2().setXpos(
									gamePanel.getTank2().getXpos() - 3);
							gamePanel.repaint();
						}
					}
				}

				if (event.getKeyCode() == 39) {
					if (nobat == 1) {
						if (gamePanel.getTank1().getXpos() < width / 5) {
							gamePanel.getTank1().setXpos(
									gamePanel.getTank1().getXpos() + 3);
							gamePanel.repaint();
						}
					}

					if (nobat == 2) {
						if (gamePanel.getTank2().getXpos() < width - 120) {
							gamePanel.getTank2().setXpos(
									gamePanel.getTank2().getXpos() + 3);
							gamePanel.repaint();
						}
					}
				}
				
				if( event.getKeyCode() == 10 ){
					if (nobat == 1) {
						int x = (int) (gamePanel.getTank1().getXpos()
								+ gamePanel.getTank1().getXSize() / 2 + 80 * Math
								.cos(gamePanel.getTank1().getAngle()));

						int y = (int) (gamePanel.getTank1().getYpos()
								+ gamePanel.getTank1().getYSize() / 5 - 80 * Math
								.sin(gamePanel.getTank1().getAngle()));

						gamePanel.getTank1().getMissile().setY(y);
						gamePanel.getTank1().getMissile().setX(x);
						gamePanel.setRequirment(x, y, kikePower.getValue(), 1);
						gamePanel.getTank1().getMissile().setIsVisible(true);
						gamePanel.setKey(1);
						// gamePanel.getTank1().shot(1 , kikePower.getValue()*5 ,
						// width , gamePanel) ;
						nobat = 2;
					} else {
						//System.out.println("1");
						// gamePanel.getTank2().shot(2 , kikePower1.getValue()*5 ,
						// width) ;
						int x = (int) (gamePanel.getTank2().getXpos()
								+ gamePanel.getTank2().getXSize() / 2 - 80 * Math
								.cos(gamePanel.getTank2().getAngle()));

						int y = (int) (gamePanel.getTank2().getYpos()
								+ gamePanel.getTank2().getYSize() / 5 - 80 * Math
								.sin(gamePanel.getTank2().getAngle()));

						gamePanel.getTank2().getMissile().setY(y);
						gamePanel.getTank2().getMissile().setX(x);
						gamePanel.setRequirment(x, y, kikePower1.getValue(), 1);
						gamePanel.getTank2().getMissile().setIsVisible(true);
						gamePanel.setKey(2);
						// gamePanel.getTank1().shot(1 , kikePower.getValue()*5 ,
						// width , gamePanel) ;

						nobat = 1;
					}

				}
			
			}
		});
		
		kikePower1.addKeyListener(new KeyListener() {
			
			@Override
			public void keyTyped(KeyEvent arg0) {
				// TODO Auto-generated method stub
				
			}
			
			@Override
			public void keyReleased(KeyEvent arg0) {
				// TODO Auto-generated method stub
				
			}
			
			@Override
			public void keyPressed(KeyEvent event) {
				// TODO Auto-generated method stub

				// TODO Auto-generated method stub
				// System.out.println(event.getKeyCode());
				if (event.getKeyCode() == 37) {
					if (nobat == 1) {
						if (gamePanel.getTank1().getXpos() > 3) {
							gamePanel.getTank1().setXpos(
									gamePanel.getTank1().getXpos() - 3);
							gamePanel.repaint();
						}
					}

					if (nobat == 2) {
						if (gamePanel.getTank2().getXpos() > width * 3 / 4) {
							gamePanel.getTank2().setXpos(
									gamePanel.getTank2().getXpos() - 3);
							gamePanel.repaint();
						}
					}
				}

				if (event.getKeyCode() == 39) {
					if (nobat == 1) {
						if (gamePanel.getTank1().getXpos() < width / 5) {
							gamePanel.getTank1().setXpos(
									gamePanel.getTank1().getXpos() + 3);
							gamePanel.repaint();
						}
					}

					if (nobat == 2) {
						if (gamePanel.getTank2().getXpos() < width - 120) {
							gamePanel.getTank2().setXpos(
									gamePanel.getTank2().getXpos() + 3);
							gamePanel.repaint();
						}
					}
				}
				
				if( event.getKeyCode() == 10 ){
					if (nobat == 1) {
						int x = (int) (gamePanel.getTank1().getXpos()
								+ gamePanel.getTank1().getXSize() / 2 + 80 * Math
								.cos(gamePanel.getTank1().getAngle()));

						int y = (int) (gamePanel.getTank1().getYpos()
								+ gamePanel.getTank1().getYSize() / 5 - 80 * Math
								.sin(gamePanel.getTank1().getAngle()));

						gamePanel.getTank1().getMissile().setY(y);
						gamePanel.getTank1().getMissile().setX(x);
						gamePanel.setRequirment(x, y, kikePower.getValue(), 1);
						gamePanel.getTank1().getMissile().setIsVisible(true);
						gamePanel.setKey(1);
						// gamePanel.getTank1().shot(1 , kikePower.getValue()*5 ,
						// width , gamePanel) ;
						nobat = 2;
					} else {
						//System.out.println("1");
						// gamePanel.getTank2().shot(2 , kikePower1.getValue()*5 ,
						// width) ;
						int x = (int) (gamePanel.getTank2().getXpos()
								+ gamePanel.getTank2().getXSize() / 2 - 80 * Math
								.cos(gamePanel.getTank2().getAngle()));

						int y = (int) (gamePanel.getTank2().getYpos()
								+ gamePanel.getTank2().getYSize() / 5 - 80 * Math
								.sin(gamePanel.getTank2().getAngle()));

						gamePanel.getTank2().getMissile().setY(y);
						gamePanel.getTank2().getMissile().setX(x);
						gamePanel.setRequirment(x, y, kikePower1.getValue(), 1);
						gamePanel.getTank2().getMissile().setIsVisible(true);
						gamePanel.setKey(2);
						// gamePanel.getTank1().shot(1 , kikePower.getValue()*5 ,
						// width , gamePanel) ;

						nobat = 1;
					}

				}
			
			}
		});
		pann031.add(kikeAngle1);
		pann03.add(pann030, BorderLayout.NORTH);
		pann03.add(pann031, BorderLayout.SOUTH);

		pan1.add(pann01, BorderLayout.NORTH);
		pan1.add(pann03, BorderLayout.SOUTH);
		infoPanel.add(pan1, BorderLayout.EAST);

		JPanel pan2 = new JPanel(new BorderLayout());
		JPanel panel1 = new JPanel(new BorderLayout());
		JPanel panel2 = new JPanel(new BorderLayout());
		pan2.add(fire, BorderLayout.CENTER);

		JLabel lab1 = new JLabel("Stamina");
		lab1.setFont(new Font("Monotype Corsiva", Font.BOLD, 15));
		panel1.add(lab1, BorderLayout.NORTH);
		JLabel lab2 = new JLabel("100");
		lab2.setFont(new Font("Monotype Corsiva", Font.BOLD, 13));
		panel1.add(lab2, BorderLayout.SOUTH);
		pan2.add(panel1, BorderLayout.WEST);

		JLabel labb1 = new JLabel("Stamina");
		labb1.setFont(new Font("Monotype Corsiva", Font.BOLD, 15));
		panel2.add(labb1, BorderLayout.NORTH);
		JLabel labb2 = new JLabel("100");
		labb2.setFont(new Font("Monotype Corsiva", Font.BOLD, 13));
		panel2.add(labb2, BorderLayout.SOUTH);
		pan2.add(panel2, BorderLayout.EAST);

		infoPanel.add(pan2, BorderLayout.CENTER);

		add(infoPanel, BorderLayout.NORTH);

		add(gamePanel, BorderLayout.CENTER);

		this.setAlwaysOnTop(true);
		this.setFocusable(true);
		this.addKeyListener(new KeyListener() {

			@Override
			public void keyTyped(KeyEvent event) {
				// TODO Auto-generated method stub
				// JOptionPane.showMessageDialog(null, event.getKeyCode());
			}

			@Override
			public void keyReleased(KeyEvent event) {
				// TODO Auto-generated method stub

			}

			@Override
			public void keyPressed(KeyEvent event) {
				// TODO Auto-generated method stub
				// JOptionPane.showMessageDialog(null, event.getKeyCode());
				if (event.getKeyCode() == 37) {
					if (nobat == 1) {
						if (gamePanel.getTank1().getXpos() > 3) {
							gamePanel.getTank1().setXpos(
									gamePanel.getTank1().getXpos() - 3);
							gamePanel.repaint();
						}
					}

					if (nobat == 2) {
						if (gamePanel.getTank2().getXpos() > width * 3 / 4) {
							gamePanel.getTank2().setXpos(
									gamePanel.getTank2().getXpos() - 3);
							gamePanel.repaint();
						}
					}
				}

				if (event.getKeyCode() == 39) {
					if (nobat == 1) {
						if (gamePanel.getTank1().getXpos() < width / 5) {
							gamePanel.getTank1().setXpos(
									gamePanel.getTank1().getXpos() + 3);
							gamePanel.repaint();
						}
					}

					if (nobat == 2) {
						if (gamePanel.getTank2().getXpos() < width - 120) {
							gamePanel.getTank2().setXpos(
									gamePanel.getTank2().getXpos() + 3);
							gamePanel.repaint();
						}
					}
				}
			}
		});

		setVisible(true);

		start();
	}

	private void start() {

	/*	while (!isEnd()) {
			if (nobat == 1 && collide(1)) {
				String s = "";
				s = ((JLabel) ((JPanel) ((JPanel) infoPanel.getComponent(2))
						.getComponent(2)).getComponent(1)).getText();
				int x = Integer.parseInt(s);
				x -= 8;
				((JLabel) ((JPanel) ((JPanel) infoPanel.getComponent(2))
						.getComponent(2)).getComponent(1)).setText(Integer
						.toString(x));

			}
			if (nobat == 2 && collide(2)) {
				String s = "";
				s = ((JLabel) ((JPanel) ((JPanel) infoPanel.getComponent(2))
						.getComponent(1)).getComponent(1)).getText();
				int x = Integer.parseInt(s);
				x -= 8;
				((JLabel) ((JPanel) ((JPanel) infoPanel.getComponent(2))
						.getComponent(1)).getComponent(1)).setText(Integer
						.toString(x));

			}
			
			try {
				Thread.sleep(50);
			} catch (InterruptedException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
*/
	}

	private boolean collide(int x) {
		if (x == 1) {
			if (gamePanel.getTank1().getMissile().getX() >= gamePanel
					.getTank2().getXpos()
					&& gamePanel.getTank1().getMissile().getX() <= gamePanel
							.getTank2().getXpos()
							+ gamePanel.getTank2().getXSize() && gamePanel.getTank1().getMissile().getY() >= gamePanel
									.getTank2().getYpos()
									&& gamePanel.getTank1().getMissile().getY() <= gamePanel
											.getTank2().getYpos()
											+ gamePanel.getTank2().getYSize()) {
				gamePanel.getTank1().getMissile().setIsVisible(false);
				return true ;

			}
		}
		else{
			if (gamePanel.getTank2().getMissile().getX() >= gamePanel
					.getTank1().getXpos()
					&& gamePanel.getTank2().getMissile().getX() <= gamePanel
							.getTank1().getXpos()
							+ gamePanel.getTank1().getXSize() && gamePanel.getTank2().getMissile().getY() >= gamePanel
									.getTank1().getYpos()
									&& gamePanel.getTank2().getMissile().getY() <= gamePanel
											.getTank1().getYpos()
											+ gamePanel.getTank1().getYSize()) {
				gamePanel.getTank1().getMissile().setIsVisible(false);
				return true ;

			}
		}
		
		return false ;
	}
	
	private boolean isEnd(){
		String s1 = "";
		s1 = ((JLabel) ((JPanel) ((JPanel) infoPanel.getComponent(2))
				.getComponent(2)).getComponent(1)).getText();
		String s2 = "";
		s2 = ((JLabel) ((JPanel) ((JPanel) infoPanel.getComponent(2))
				.getComponent(1)).getComponent(1)).getText();
		int x1 = Integer.parseInt(s1) ;
		int x2 = Integer.parseInt(s2) ;
		if( x1 <= 0 ){
			//dispose();
			JOptionPane.showMessageDialog(null, "first person is winner");
			return true ;
		}
		if( x2 <= 0 ){
			//dispose();
			JOptionPane.showMessageDialog(null, "second person is winner");
			return true ;
		}
		
		return false ;
	}
}
