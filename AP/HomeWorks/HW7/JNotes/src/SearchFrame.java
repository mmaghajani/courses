import java.awt.Color;
import java.awt.Font;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Set;

import javax.swing.JButton;
import javax.swing.JComboBox;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JProgressBar;
import javax.swing.JTextField;
import javax.swing.UIManager;
import javax.swing.UnsupportedLookAndFeelException;
import javax.swing.text.html.HTMLDocument.Iterator;

public class SearchFrame extends JFrame {
	private int heightScreen = (int) getToolkit().getScreenSize().getHeight();
	private int widthScreen = (int) getToolkit().getScreenSize().getWidth();
	private int width;
	private int height;
	private SearchPanel sp;
	private ArrayList<String[]> s6 = new ArrayList<String[]>();

	public SearchFrame() {
		super();

		this.setUndecorated(true);
		// this.setShape(new RoundRectangle2D.Double(0,0, widthScreen/4,
		// heightScreen/2, 40, 40));
		this.setSize(widthScreen / 3, heightScreen / 3);
		// this.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		this.setLocation(widthScreen / 2 - widthScreen / 8, heightScreen / 2
				- heightScreen / 4);
		this.setResizable(false);
		this.setLayout(null);
		width = widthScreen / 3;
		height = heightScreen / 3;

		sp = new SearchPanel(width, height);
		sp.setSize(width, height);
		sp.setLocation(0, 0);
		sp.setLayout(null);

		JLabel author = new JLabel("Author Name");
		author.setSize(width / 4, height / 12);
		author.setLocation(width / 20, height / 6);
		author.setFont(new Font("Comic Sans MS", Font.PLAIN, 15));
		author.setForeground(Color.decode("#dbe2e6"));
		sp.add(author);

		JComboBox<String> authorName = new JComboBox<String>();
		authorName.setSize(width / 3, height / 10);
		authorName.setLocation(width / 20, height / 4);
		authorName.setFont(new Font("Comic Sans MS", Font.PLAIN, 13));
		authorName.setForeground(Color.decode("#104e79"));
		authorName.setBackground(Color.decode("#dbe2e6"));
		authorName.addItem("None");

		File users = new File("C:\\Users\\mahdi\\workspace\\JNotes\\Users");
		for (File file : users.listFiles()) {
			String s = "";
			for (File file1 : file.listFiles()) {
				if (file1.getName().equals("ID.txt")) {
					try {
						BufferedReader reader = new BufferedReader(
								new FileReader(file1));
						for (int i = 0; i < 2; i++)
							try {
								reader.readLine();
							} catch (IOException e) {
								// TODO Auto-generated catch block
								e.printStackTrace();
							}

						try {
							s = reader.readLine();
						} catch (IOException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						}
						s += " ";
						try {
							s += reader.readLine();
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
					} catch (FileNotFoundException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
				}
			}

			authorName.addItem(s);
		}
		sp.add(authorName);

		JLabel title = new JLabel("Title");
		title.setSize(width / 4, height / 12);
		title.setLocation(width / 2, height / 6);
		title.setFont(new Font("Comic Sans MS", Font.PLAIN, 15));
		title.setForeground(Color.decode("#dbe2e6"));
		sp.add(title);

		JTextField titleBox = new JTextField();
		titleBox.setSize(width / 3, height / 10);
		titleBox.setLocation(width / 2, height / 4);
		titleBox.setFont(new Font("Comic Sans MS", Font.PLAIN, 13));
		titleBox.setForeground(Color.decode("#104e79"));
		titleBox.setBackground(Color.decode("#dbe2e6"));
		sp.add(titleBox);

		JLabel Date = new JLabel("Date");
		Date.setSize(width / 4, height / 12);
		Date.setLocation(width / 20, height * 2 / 5);
		Date.setFont(new Font("Comic Sans MS", Font.PLAIN, 15));
		Date.setForeground(Color.decode("#dbe2e6"));
		sp.add(Date);

		JTextField DateBox = new JTextField();
		DateBox.setToolTipText("YYYY/MM/DD");
		DateBox.setSize(width / 3, height / 10);
		DateBox.setLocation(width / 20, height / 2);
		DateBox.setFont(new Font("Comic Sans MS", Font.PLAIN, 13));
		DateBox.setForeground(Color.decode("#104e79"));
		DateBox.setBackground(Color.decode("#dbe2e6"));
		sp.add(DateBox);

		JLabel keyWord = new JLabel("Key Word");
		
		keyWord.setSize(width / 4, height / 12);
		keyWord.setLocation(width / 2, height * 2 / 5);
		keyWord.setFont(new Font("Comic Sans MS", Font.PLAIN, 15));
		keyWord.setForeground(Color.decode("#dbe2e6"));
		sp.add(keyWord);

		JTextField keyWordBox = new JTextField();
		keyWordBox.setToolTipText("KeyWord1,KeyWord2");
		keyWordBox.setSize(width / 3, height / 10);
		keyWordBox.setLocation(width / 2, height / 2);
		keyWordBox.setFont(new Font("Comic Sans MS", Font.PLAIN, 13));
		keyWordBox.setForeground(Color.decode("#104e79"));
		keyWordBox.setBackground(Color.decode("#dbe2e6"));
		sp.add(keyWordBox);

		JProgressBar bar = new JProgressBar( 0 , 100 ) ;
		bar.setSize(width / 3, height / 9);
		bar.setLocation(width * 3 / 9, height * 9 / 11);
		// bar.setValue(20);
		sp.add(bar);
		bar.setVisible(false);
		//int zaman = 500 ;
		
		JButton search = new JButton("Search");
		search.setSize(width / 5, height / 8);
		search.setLocation(width * 10 / 13, height * 9 / 11);
		search.setFont(new Font("Comic Sans MS", Font.PLAIN, 13));
		search.setForeground(Color.decode("#1823b6"));
		search.setBackground(Color.decode("#e6b155"));
		search.addActionListener(new ActionListener() {

			@Override
			public void actionPerformed(ActionEvent arg0) {
				// TODO Auto-generated method stub
				
				if (!authorName.getSelectedItem().equals("None")) {
					
					File file = new File(
							"C:\\Users\\mahdi\\workspace\\JNotes\\Users");
				
						
					
					for (File files : file.listFiles()) {
						String s = "";
						String s2 = "";
						File f = new File(
								"C:\\Users\\mahdi\\workspace\\JNotes\\Users\\"
										+ files.getName() + "\\ID.txt");
						try {
							BufferedReader reader = new BufferedReader(
									new FileReader(f));

							try {
								s = reader.readLine();
								String s1 = reader.readLine();

								s2 += reader.readLine();
								s2 += " ";
								s2 += reader.readLine();

								reader.close();
							} catch (IOException e) {
								// TODO Auto-generated catch block
								e.printStackTrace();
							}

							if (s2.equals(authorName.getSelectedItem())) {
								HashMap<String[], String[]> loadedNotes = load(s);

								if (!titleBox.getText().equals("")) {
									
								
									
									String title = titleBox.getText();

									java.util.Iterator<String[]> iter = loadedNotes
											.keySet().iterator();
									while (iter.hasNext()) {
										String[] a = iter.next();
										if (!title.equals(a[0])) {
											iter.remove();
										}
									}
									/*
									 * for (String[] a : loadedNotes.keySet()) {
									 * if (!title.equals(a[0])) {
									 * loadedNotes.remove(a); } }
									 */
									if (!DateBox.getText().equals("")) {
										
										String date = DateBox.getText();

										java.util.Iterator<String[]> iter1 = loadedNotes
												.keySet().iterator();
										while (iter1.hasNext()) {
											String[] a = iter1.next();
											if (!isEqual(date, a[2])) {
												iter1.remove();
											}
										}


										if (!keyWordBox.getText().equals("")) {
											
											String key = keyWordBox.getText();

											String[] keys = new String[2];
											keys = seperate(key);

											if (keys[1].equals("")) {
												for (String[] a : loadedNotes
														.values()) {
													int flag = 0;
													for (String b : a) {
														if (b.equals(keys[0]))
															flag = 1;
													}
													if (flag == 0) {
														loadedNotes.remove(a);
													}
												}
											} else {
												java.util.Iterator<String[]> iter2 = loadedNotes
														.values().iterator();
												while (iter2.hasNext()) {
													String[] a = iter2.next() ;
													int flag = 0, flag1 = 1, flag2 = 0;
													for (String b : a) {
														if (b.equals(keys[0]))
															flag = 1;
													}
													if (flag == 1) {
														flag1 = 1;
													}

													flag = 0;
													for (String b : a) {
														if (b.equals(keys[1]))
															flag = 1;
													}
													if (flag == 1) {
														flag2 = 1;
													}

													if (!(flag1 == 1 && flag2 == 1))
														iter2.remove();
												}
												

											}

											int t = 100 ;
											bar.setVisible(true);
											bar.repaint();
											new javax.swing.Timer(t , new ActionListener() {
											     private int index = 0;
											     private int maxIndex = 100;
											     public void actionPerformed(ActionEvent e) {
											        if (index < maxIndex) {
											           bar.setValue(index);
											           index++;
											        } else {
											           
											           ((javax.swing.Timer)e.getSource()).stop(); // stop the timer
											           showResult( loadedNotes) ;
											        }
											     }
											  }).start();
										} else {
											int t = 100 ;
											bar.setVisible(true);
											bar.repaint();
											new javax.swing.Timer(t , new ActionListener() {
											     private int index = 0;
											     private int maxIndex = 100;
											     public void actionPerformed(ActionEvent e) {
											        if (index < maxIndex) {
											           bar.setValue(index);
											           index++;
											        } else {
											           
											           ((javax.swing.Timer)e.getSource()).stop(); // stop the timer
											           showResult( loadedNotes) ;
											        }
											     }
											  }).start();
										}

									}else {
										
										if (!keyWordBox.getText().equals("")) {
											

											String key = keyWordBox.getText();

											String[] keys = new String[2];
											keys = seperate(key);

											if (keys[1].equals("")) {
												for (String[] a : loadedNotes
														.values()) {
													int flag = 0;
													for (String b : a) {
														if (b.equals(keys[0]))
															flag = 1;
													}
													if (flag == 0) {
														loadedNotes.remove(a);
													}
												}
											} else {
												java.util.Iterator<String[]> iter2 = loadedNotes
														.values().iterator();
												while (iter2.hasNext()) {
													String[] a = iter2.next() ;
													int flag = 0, flag1 = 1, flag2 = 0;
													for (String b : a) {
														if (b.equals(keys[0]))
															flag = 1;
													}
													if (flag == 1) {
														flag1 = 1;
													}

													flag = 0;
													for (String b : a) {
														if (b.equals(keys[1]))
															flag = 1;
													}
													if (flag == 1) {
														flag2 = 1;
													}

													if (!(flag1 == 1 && flag2 == 1))
														iter2.remove();
												}
												

											}
											
											int t = 100 ;
											bar.setVisible(true);
											bar.repaint();
											new javax.swing.Timer(t , new ActionListener() {
											     private int index = 0;
											     private int maxIndex = 100;
											     public void actionPerformed(ActionEvent e) {
											        if (index < maxIndex) {
											           bar.setValue(index);
											           index++;
											        } else {
											           
											           ((javax.swing.Timer)e.getSource()).stop(); // stop the timer
											           showResult( loadedNotes) ;
											        }
											     }
											  }).start();

										} else {
											
											int t = 100 ;
											bar.setVisible(true);
											bar.repaint();
											new javax.swing.Timer(t , new ActionListener() {
											     private int index = 0;
											     private int maxIndex = 100;
											     public void actionPerformed(ActionEvent e) {
											        if (index < maxIndex) {
											           bar.setValue(index);
											           index++;
											        } else {
											           
											           ((javax.swing.Timer)e.getSource()).stop(); // stop the timer
											           showResult( loadedNotes) ;
											        }
											     }
											  }).start();

										}

									}

								} else {

									
									if (!DateBox.getText().equals("")) {
										
										String date = DateBox.getText();

										java.util.Iterator<String[]> iter1 = loadedNotes
												.keySet().iterator();
										while (iter1.hasNext()) {
											String[] a = iter1.next();
											if (!isEqual(date, a[2])) {
												iter1.remove();
											}
										}


										if (!keyWordBox.getText().equals("")) {
											
											String key = keyWordBox.getText();

											String[] keys = new String[2];
											keys = seperate(key);
											
											if (keys[1].equals("")) {
												
												java.util.Iterator<String[]> iter2 = loadedNotes
														.values().iterator();
												while (iter2.hasNext()) {
													String[] a = iter2.next();
													int flag = 0;
													for (String b : a) {
														if (b.equals(keys[0]))
															flag = 1;
													}
													if (flag == 0) {
														iter2.remove();
													}
												}
												
											
											} else {
												java.util.Iterator<String[]> iter2 = loadedNotes
														.values().iterator();
												while (iter2.hasNext()) {
													String[] a = iter2.next() ;
													int flag = 0, flag1 = 1, flag2 = 0;
													for (String b : a) {
														if (b.equals(keys[0]))
															flag = 1;
													}
													if (flag == 1) {
														flag1 = 1;
													}

													flag = 0;
													for (String b : a) {
														if (b.equals(keys[1]))
															flag = 1;
													}
													if (flag == 1) {
														flag2 = 1;
													}

													if (!(flag1 == 1 && flag2 == 1))
														iter2.remove();
												}


											}

											int t = 100 ;
											bar.setVisible(true);
											bar.repaint();
											new javax.swing.Timer(t , new ActionListener() {
											     private int index = 0;
											     private int maxIndex = 100;
											     public void actionPerformed(ActionEvent e) {
											        if (index < maxIndex) {
											           bar.setValue(index);
											           index++;
											        } else {
											           
											           ((javax.swing.Timer)e.getSource()).stop(); // stop the timer
											           showResult( loadedNotes) ;
											        }
											     }
											  }).start();

										} else {
											int t = 100 ;
											bar.setVisible(true);
											bar.repaint();
											new javax.swing.Timer(t , new ActionListener() {
											     private int index = 0;
											     private int maxIndex = 100;
											     public void actionPerformed(ActionEvent e) {
											        if (index < maxIndex) {
											           bar.setValue(index);
											           index++;
											        } else {
											           
											           ((javax.swing.Timer)e.getSource()).stop(); // stop the timer
											           showResult( loadedNotes) ;
											        }
											     }
											  }).start();
										}

									} else {
										
										if (!keyWordBox.getText().equals("")) {
											
											String key = keyWordBox.getText();

											String[] keys = new String[2];
											keys = seperate(key);
											
											if (keys[1].equals("")) {
												
												java.util.Iterator<String[]> iter2 = loadedNotes
														.values().iterator();
												while (iter2.hasNext()) {
													String[] a = iter2.next();
													int flag = 0;
													for (String b : a) {
														if (b.equals(keys[0]))
															flag = 1;
													}
													if (flag == 0) {
														iter2.remove();
													}
												}
									
											} else {
												java.util.Iterator<String[]> iter2 = loadedNotes
														.values().iterator();
												while (iter2.hasNext()) {
													String[] a = iter2.next() ;
													int flag = 0, flag1 = 1, flag2 = 0;
													for (String b : a) {
														if (b.equals(keys[0]))
															flag = 1;
													}
													if (flag == 1) {
														flag1 = 1;
													}

													flag = 0;
													for (String b : a) {
														if (b.equals(keys[1]))
															flag = 1;
													}
													if (flag == 1) {
														flag2 = 1;
													}

													if (!(flag1 == 1 && flag2 == 1))
														iter2.remove();
												}
												

											}

											int t = 100 ;
											bar.setVisible(true);
											bar.repaint();
											new javax.swing.Timer(t , new ActionListener() {
											     private int index = 0;
											     private int maxIndex = 100;
											     public void actionPerformed(ActionEvent e) {
											        if (index < maxIndex) {
											           bar.setValue(index);
											           index++;
											        } else {
											           
											           ((javax.swing.Timer)e.getSource()).stop(); // stop the timer
											           showResult( loadedNotes) ;
											        }
											     }
											  }).start();

										} else {
											int t = 100 ;
											bar.setVisible(true);
											bar.repaint();
											new javax.swing.Timer(t , new ActionListener() {
											     private int index = 0;
											     private int maxIndex = 100;
											     public void actionPerformed(ActionEvent e) {
											        if (index < maxIndex) {
											           bar.setValue(index);
											           index++;
											        } else {
											           
											           ((javax.swing.Timer)e.getSource()).stop(); // stop the timer
											           showResult( loadedNotes) ;
											        }
											     }
											  }).start();
											
										}

									}

								}
							}
						} catch (FileNotFoundException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						}

					}
					

				} else {
					
					File file = new File(
							"C:\\Users\\mahdi\\workspace\\JNotes\\Users");

					for (File files : file.listFiles()) {
						String s = "";
						String s2 = "";
						File f = new File(
								"C:\\Users\\mahdi\\workspace\\JNotes\\Users\\"
										+ files.getName() + "\\ID.txt");
						try {
							BufferedReader reader = new BufferedReader(
									new FileReader(f));

							try {
								s = reader.readLine();
								String s1 = reader.readLine();

								s2 += reader.readLine();
								s2 += " ";
								s2 += reader.readLine();

								reader.close();
							} catch (IOException e) {
								// TODO Auto-generated catch block
								e.printStackTrace();
							}

								HashMap<String[], String[]> loadedNotes = load(s);

								if (!titleBox.getText().equals("")) {
									
									String title = titleBox.getText();

									java.util.Iterator<String[]> iter = loadedNotes
											.keySet().iterator();
									while (iter.hasNext()) {
										String[] a = iter.next();
										if (!title.equals(a[0])) {
											iter.remove();
										}
									}
									
									if (!DateBox.getText().equals("")) {
										
										String date = DateBox.getText();

										java.util.Iterator<String[]> iter1 = loadedNotes
												.keySet().iterator();
										while (iter1.hasNext()) {
											String[] a = iter1.next();
											if (!isEqual(date, a[2])) {
												iter1.remove();
											}
										}


										if (!keyWordBox.getText().equals("")) {
											
											String key = keyWordBox.getText();

											String[] keys = new String[2];
											keys = seperate(key);

											if (keys[1].equals("")) {
												for (String[] a : loadedNotes
														.values()) {
													int flag = 0;
													for (String b : a) {
														if (b.equals(keys[0]))
															flag = 1;
													}
													if (flag == 0) {
														loadedNotes.remove(a);
													}
												}
											} else {
												java.util.Iterator<String[]> iter2 = loadedNotes
														.values().iterator();
												while (iter2.hasNext()) {
													String[] a = iter2.next() ;
													int flag = 0, flag1 = 1, flag2 = 0;
													for (String b : a) {
														if (b.equals(keys[0]))
															flag = 1;
													}
													if (flag == 1) {
														flag1 = 1;
													}

													flag = 0;
													for (String b : a) {
														if (b.equals(keys[1]))
															flag = 1;
													}
													if (flag == 1) {
														flag2 = 1;
													}

													if (!(flag1 == 1 && flag2 == 1))
														iter2.remove();
												}
												

											}

											showResult2( loadedNotes) ;

										} else {
											
											showResult2( loadedNotes) ;
										}

									} else {
										
										if (!keyWordBox.getText().equals("")) {
											

											String key = keyWordBox.getText();

											String[] keys = new String[2];
											keys = seperate(key);

											if (keys[1].equals("")) {
												for (String[] a : loadedNotes
														.values()) {
													int flag = 0;
													for (String b : a) {
														if (b.equals(keys[0]))
															flag = 1;
													}
													if (flag == 0) {
														loadedNotes.remove(a);
													}
												}
											} else {
												for (String[] a : loadedNotes
														.values()) {
													int flag = 0, flag1 = 1, flag2 = 0;
													for (String b : a) {
														if (b.equals(keys[0]))
															flag = 1;
													}
													if (flag == 1) {
														flag1 = 1;
													}

													flag = 0;
													for (String b : a) {
														if (b.equals(keys[1]))
															flag = 1;
													}
													if (flag == 1) {
														flag2 = 1;
													}

													if (!(flag1 == 1 && flag2 == 1))
														loadedNotes.remove(a);
												}

											}

											showResult2( loadedNotes) ;

										} else {
											
											showResult2( loadedNotes ) ;
										}

									}

								} else {
									

									if (!DateBox.getText().equals("")) {
										
										String date = DateBox.getText();

										java.util.Iterator<String[]> iter1 = loadedNotes
												.keySet().iterator();
										while (iter1.hasNext()) {
											String[] a = iter1.next();
											if (!isEqual(date, a[2])) {
												iter1.remove();
											}
										}

										

										if (!keyWordBox.getText().equals("")) {
											String key = keyWordBox.getText();

											String[] keys = new String[2];
											keys = seperate(key);
											
											if (keys[1].equals("")) {
												
												java.util.Iterator<String[]> iter2 = loadedNotes
														.values().iterator();
												while (iter2.hasNext()) {
													String[] a = iter2.next();
													int flag = 0;
													for (String b : a) {
														if (b.equals(keys[0]))
															flag = 1;
													}
													if (flag == 0) {
														iter2.remove();
													}
												}
												
										
											} else {
												java.util.Iterator<String[]> iter2 = loadedNotes
														.values().iterator();
												while (iter2.hasNext()) {
													String[] a = iter2.next() ;
													int flag = 0, flag1 = 1, flag2 = 0;
													for (String b : a) {
														if (b.equals(keys[0]))
															flag = 1;
													}
													if (flag == 1) {
														flag1 = 1;
													}

													flag = 0;
													for (String b : a) {
														if (b.equals(keys[1]))
															flag = 1;
													}
													if (flag == 1) {
														flag2 = 1;
													}

													if (!(flag1 == 1 && flag2 == 1))
														iter2.remove();
												}

						
											}

											showResult2( loadedNotes) ;

										} else {
											
											showResult2( loadedNotes) ;
										}

									} else {
										
										if (!keyWordBox.getText().equals("")) {
											

											String key = keyWordBox.getText();

											String[] keys = new String[2];
											keys = seperate(key);
											
											if (keys[1].equals("")) {
												
												java.util.Iterator<String[]> iter2 = loadedNotes
														.values().iterator();
												while (iter2.hasNext()) {
													String[] a = iter2.next();
													int flag = 0;
													for (String b : a) {
														if (b.equals(keys[0]))
															flag = 1;
													}
													if (flag == 0) {
														iter2.remove();
													}
												}
												
											} else {
												java.util.Iterator<String[]> iter2 = loadedNotes
														.values().iterator();
												while (iter2.hasNext()) {
													String[] a = iter2.next() ;
													int flag = 0, flag1 = 1, flag2 = 0;
													for (String b : a) {
														if (b.equals(keys[0]))
															flag = 1;
													}
													if (flag == 1) {
														flag1 = 1;
													}

													flag = 0;
													for (String b : a) {
														if (b.equals(keys[1]))
															flag = 1;
													}
													if (flag == 1) {
														flag2 = 1;
													}

													if (!(flag1 == 1 && flag2 == 1))
														iter2.remove();
												}
												

											}

											showResult2( loadedNotes) ;

										} else {
											
											showResult2( loadedNotes) ;
										}

									}

								}
							
						} catch (FileNotFoundException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						}

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
					int t = 50 ;
					bar.setVisible(true);
					
					bar.repaint();
					new javax.swing.Timer(t , new ActionListener() {
					     private int index = 0;
					     private int maxIndex = 100;
					     public void actionPerformed(ActionEvent e) {
					        if (index < maxIndex) {
					           bar.setValue(index);
					           index++;
					        } else {
					           
					           ((javax.swing.Timer)e.getSource()).stop(); // stop the timer
					           ShowList sl = new ShowList(s6 , 1 ) ;
					           dispose();
					        }
					     }
					  }).start();
					
					
				}
				
				//bar.setVisible(false);
			}
		});

		sp.add(search);

		JButton close = new JButton("Close");
		close.setSize(width / 5, height / 8);
		close.setLocation(width / 20, height * 9 / 11);
		close.setFont(new Font("Comic Sans MS", Font.PLAIN, 13));
		close.setForeground(Color.decode("#1823b6"));
		close.setBackground(Color.decode("#e6b155"));
		close.addActionListener(new ActionListener() {

			@Override
			public void actionPerformed(ActionEvent arg0) {
				// TODO Auto-generated method stub
				dispose();
			}
		});
		sp.add(close);

		

		getContentPane().add(sp);

		setVisible(true);

	}

	private HashMap<String[], String[]> load(String s) {
		File file = new File("C:\\Users\\mahdi\\workspace\\JNotes\\Users\\" + s
				+ "\\notes");

		HashMap<String[], String[]> loaded = new HashMap<String[], String[]>();

		for (File f : file.listFiles()) {
			String[] row = new String[4];
			row[0] = f.getName();
			File f1 = new File("C:\\Users\\mahdi\\workspace\\JNotes\\Users\\"
					+ s + "\\notes\\" + f.getName() + "\\num.doc");
			try {
				BufferedReader reader = new BufferedReader(new FileReader(f1));
				try {
					row[1] = reader.readLine();
					reader.close();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			} catch (FileNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

			File f2 = new File("C:\\Users\\mahdi\\workspace\\JNotes\\Users\\"
					+ s + "\\notes\\" + f.getName() + "\\date.doc");
			try {
				BufferedReader reader = new BufferedReader(new FileReader(f2));
				try {
					row[2] = reader.readLine();
					reader.close();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			} catch (FileNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

			File f4 = new File("C:\\Users\\mahdi\\workspace\\JNotes\\Users\\"
					+ s + "\\ID.txt");
			try {
				BufferedReader reader = new BufferedReader(new FileReader(f4));
				try {
					reader.readLine();
					reader.readLine();
					String s5 = "";
					s5 += reader.readLine();
					s5 += " ";
					s5 += reader.readLine();
					row[3] = s5;

					reader.close();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			} catch (FileNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

			String[] keyWord = null;
			File f3 = new File("C:\\Users\\mahdi\\workspace\\JNotes\\Users\\"
					+ s + "\\notes\\" + f.getName() + "\\keyWords.doc");
			try {
				BufferedReader reader = new BufferedReader(new FileReader(f3));

				int index = 0;
				try {
					while (reader.readLine() != null)
						index++;
					reader.close();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}

				if (index == 0) {
					keyWord = new String[1];
					keyWord[0] = "";
				} else {
					BufferedReader reader1 = new BufferedReader(new FileReader(
							f3));
					keyWord = new String[index];
					String temp = "";
					int i = 0;
					do {
						try {
							temp = reader1.readLine();
						} catch (IOException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						}
						keyWord[i] = temp;
						i++;
					} while (i < index);

					try {
						reader1.close();
					} catch (IOException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
				}

			} catch (FileNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

			loaded.put(row, keyWord);

		}

		return loaded;
	}

	private boolean isEqual(String s1, String s2) {

		char[] c1 = new char[s1.length()];
		c1 = s1.toCharArray();
		char[] c2 = new char[s2.length()];
		c2 = s2.toCharArray();

		for (int i = 0; i < s1.length(); i++) {
			if (c1[i] == '/')
				c1[i] = ' ';
		}

		String year = s2.substring(s2.length() - 4, s2.length());
		String day = s2.substring(s2.length() - 21, s2.length() - 19);

		int index = 0;
		while (c2[index] != ' ') {
			index++;
		}

		index++;
		int x = index;

		while (c2[x] != ' ') {
			x++;
		}

		char[] temp = new char[x - index];

		int i = 0;
		while (c2[index] != ' ') {
			temp[i] = c2[index];
			index++;
			i++;
		}

		String month = new String(temp);

		if (month.equals("May") || month.equals("may"))
			month = "05";
		if (month.equals("january") || month.equals("January"))
			month = "01";
		if (month.equals("february") || month.equals("February"))
			month = "02";
		if (month.equals("march") || month.equals("March"))
			month = "03";
		if (month.equals("april") || month.equals("April"))
			month = "04";
		if (month.equals("june") || month.equals("June"))
			month = "06";
		if (month.equals("july") || month.equals("July"))
			month = "07";
		if (month.equals("august") || month.equals("August"))
			month = "08";
		if (month.equals("september") || month.equals("September"))
			month = "09";
		if (month.equals("october") || month.equals("October"))
			month = "10";
		if (month.equals("november") || month.equals("November"))
			month = "11";
		if (month.equals("december") || month.equals("December"))
			month = "12";

		String com = "";
		com += year;
		com += " ";
		com += month;
		com += " ";
		com += day;

		String ss = new String(c1);

		if (ss.equals(com))
			return true;
		else
			return false;
	}

	private String[] seperate(String s) {
		char[] c = s.toCharArray();
		
		char[] temp = new char[s.length()];
		int flag = 0;
		int index = 0;
		char[] temp2 = new char[s.length()];

		for( int i = 0 ; i < s.length() ; i++ ){
			temp[i] = '-' ;
			temp2[i] = '-' ;
		}
		for (int i = 0; i < s.length(); i++) {
			if (c[i] == ',') {
				flag = 1;
				i++;
			}

			if (flag == 1) {
				temp2[index] = c[i];
				index++;
			} else
				temp[i] = c[i];
		}

		
		String s1 = new String(temp);
		String s2 = new String(temp2);
		
		int cut = s1.length() ;
		for( int i = 0 ; i < s1.length() ; i++ )
		{
			if( s1.charAt(i) == '-' ){
				cut = i ;
				break ;
			}
		}
		
		s1 = s1.substring(0, cut) ;
		
		if (flag == 0)
			s2 = "";
		else{
			cut = s2.length() ;
			for( int i = 0 ; i < s2.length() ; i++ )
			{
				if( s2.charAt(i) == '-' ){
					cut = i ;
					break ;
				}
			}
			
			s2 = s2.substring(0, cut) ;
		}

		String[] result = new String[2];
		result[0] = s1;
		result[1] = s2;

		return result;
	}

	private void print(HashMap<String[], String[]> a) {
		for (String[] b : a.keySet()) {
			for (int i = 0; i < 4; i++)
				System.out.print(b[i] + "   ");

			for (String c : a.get(b)) {
				System.out.print(c + "  ");
			}
			System.out.println("");

		}
	}
	
	private void showResult( HashMap<String[], String[]> loadedNotes ){
		
		java.util.Iterator<String[]> iter5 = loadedNotes.keySet().iterator() ;
		while( iter5.hasNext()){
			String[] a = iter5.next() ;
			s6.add(a) ;
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
		
	//	System.out.println( s6 ) ;
		ShowList sl = new ShowList(s6 , 1) ;
	//	print(loadedNotes);
		dispose() ;
	}
	
	private void showResult2( HashMap<String[], String[]> loadedNotes ){
		
		java.util.Iterator<String[]> iter5 = loadedNotes.keySet().iterator() ;
		while( iter5.hasNext()){
			String[] a = iter5.next() ;
			s6.add(a) ;
		}
		
	}
	 
}
