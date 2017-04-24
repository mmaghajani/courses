import java.awt.BorderLayout;
import java.awt.Color;
import java.awt.Component;
import java.awt.Dimension;
import java.awt.Font;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Scanner;

import javax.swing.BorderFactory;
import javax.swing.ImageIcon;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.JTable;
import javax.swing.JToolBar;
import javax.swing.UIManager;
import javax.swing.UnsupportedLookAndFeelException;
import javax.swing.table.DefaultTableModel;
import javax.swing.table.TableCellRenderer;

public class NotesView extends JFrame {

	private JTable table;
	private int widthScreen = (int) getToolkit().getScreenSize().getWidth();
	private int heightScreen = (int) getToolkit().getScreenSize().getHeight();
	private int height;
	private int width;
	private String userName;
	private JToolBar manage;
	private ArrayList<String[]> files;
	private int numOfNotes = 0;

	public NotesView(String userName) {

		super("Notes");
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
		this.setSize(widthScreen * 2 / 5, heightScreen * 2 / 3);
		// this.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		this.setLocation(widthScreen / 2 - widthScreen * 1 / 5, heightScreen
				/ 2 - heightScreen * 1 / 3);
		this.setResizable(false);
		this.setLayout(null);
		width = widthScreen * 2 / 5;
		height = heightScreen * 2 / 3;
		this.userName = userName;

		ImageIcon icon = new ImageIcon(getClass().getResource("icon1.png"));
		this.setIconImage(icon.getImage());

		DefaultTableModel model = new DefaultTableModel();

		// Create a couple of columns
		model.addColumn("Col1");
		model.addColumn("Col2");
		model.addColumn("Col2");
		model.addColumn("Col2");
		// model.addColumn("Col2");

		// Append a row
		model.addRow(new JPanel[] {});
		table = new JTable(model);
		// table.setEnabled(false);
		table.setRowHeight(0, height / 15);
		// table.getColumnModel().getColumn(4).setPreferredWidth(width/200);
		table.getColumnModel().getColumn(3).setPreferredWidth(width / 6);
		table.getColumnModel().getColumn(0).setPreferredWidth(width / 100);
		table.getColumnModel().getColumn(1).setPreferredWidth(width / 100);
		table.getColumnModel().getColumn(2).setPreferredWidth(width / 4);

		File notes = new File("C:\\Users\\mahdi\\workspace\\JNotes\\Users\\"
				+ userName + "\\notes");
		for (File file : notes.listFiles()) {
			numOfNotes++;
		}

		loadFile(notes, numOfNotes);

		for (int i = 0; i < numOfNotes; i++) {
			model.addRow(new JPanel[] {});
			table.setRowHeight(i + 1, height / 20);
		}

		table.setSize(width * 4 / 5, height / 15 + numOfNotes * height / 20);
		table.setLocation(width / 8, height / 15);
		table.setShowGrid(false);
		table.setShowVerticalLines(false);
		table.setShowHorizontalLines(false);

		table.setIntercellSpacing(new Dimension(0, 0));

		table.setDefaultRenderer(Object.class, new TableCellRenderer() {
			@Override
			public Component getTableCellRendererComponent(JTable table,
					Object value, boolean isSelected, boolean hasFocus,
					int row, int column) {

				JPanel pane = new JPanel();
				// pane.setLayout(new BorderLayout());
				/*
				 * JToolBar j = new JToolBar() ; j.setLayout(new
				 * BorderLayout());
				 * j.setBorder(BorderFactory.createEmptyBorder());
				 * j.setOpaque(false); JButton but = new JButton(new ImageIcon(
				 * getClass().getResource("delete.png"))) ;
				 * but.setToolTipText("asd"); // j.add( but ,
				 * BorderLayout.CENTER) ; pane.add( but , BorderLayout.CENTER) ;
				 * // table.setFont(new Font( "Arial" , Font.BOLD , 16));
				 */JLabel j = new JLabel("No.");
				j.setFont(new Font("Arial", Font.BOLD, 15));
				j.setForeground(Color.white);

				int indexOfNotes = 0;
				if (row % 2 == 0 && row != 0)
					pane.setBackground(Color.decode("#16b1f1"));
				else
					pane.setBackground(Color.decode("#ddf1f9"));

				if (row == 0)
					pane.setBackground(Color.decode("#0390fd"));

				if (row == 0 && column == 0)
					pane.add(j, BorderLayout.CENTER);

				else if (row == 0 && column == 1) {
					j.setText("Title");
					pane.add(j, BorderLayout.CENTER);
				}

				else if (row == 0 && column == 2) {
					j.setText("Content");
					pane.add(j, BorderLayout.CENTER);
				}

				else if (row == 0 && column == 3) {
					j.setText("Date");
					pane.add(j, BorderLayout.CENTER);

				} else if (column == 0) {
					j.setFont(new Font("Arial", Font.BOLD, 13));
					if (row % 2 == 1)
						j.setForeground(Color.decode("#16b1f1"));
					else
						j.setForeground(Color.decode("#ddf1f9"));
					j.setText(files.get(row - 1)[0]);
					pane.add(j, BorderLayout.CENTER);

				} else if (column == 1) {
					j.setFont(new Font("Arial", Font.BOLD, 13));
					if (row % 2 == 1)
						j.setForeground(Color.decode("#16b1f1"));
					else
						j.setForeground(Color.decode("#ddf1f9"));
					j.setText(files.get(row - 1)[1]);
					pane.add(j, BorderLayout.CENTER);
				} else if (column == 2) {
					j.setFont(new Font("Arial", Font.BOLD, 13));
					if (row % 2 == 1)
						j.setForeground(Color.decode("#16b1f1"));
					else
						j.setForeground(Color.decode("#ddf1f9"));
					j.setText(files.get(row - 1)[2]);
					pane.add(j, BorderLayout.CENTER);
				} else if (column == 3) {
					j.setFont(new Font("Arial", Font.BOLD, 13));
					if (row % 2 == 1)
						j.setForeground(Color.decode("#16b1f1"));
					else
						j.setForeground(Color.decode("#ddf1f9"));
					j.setText(files.get(row - 1)[3]);
					pane.add(j, BorderLayout.CENTER);
				}

				// table.setValueAt("man", 1, 1);
				table.repaint();
				return pane;
			}
		});

		// table.setValueAt("man", 1, 1);
		// table.addRowSelectionInterval(1, 1);
		// table.repaint();

		manage = new MyToolBar();
		manage.setSize(width / 15, height / 6);
		manage.setLocation(0, height / 4);
		manage.setBorder(BorderFactory.createEmptyBorder());
		JButton delete = new JButton(new ImageIcon(getClass().getResource(
				"delete.png")));
		delete.setSize(manage.getWidth(), manage.getHeight() / 2);
		manage.setLayout(null);
		delete.setLocation(0, 0);
		delete.addActionListener(new ActionListener() {

			@Override
			public void actionPerformed(ActionEvent arg0) {
				// TODO Auto-generated method stub
				String s = JOptionPane
						.showInputDialog("Please enter note number to remove");
				for( int i = 0 ; i < numOfNotes ; i++ ){
					if( s.equals(files.get(i)[0])){
						File file = new File(
								"C:\\Users\\mahdi\\workspace\\JNotes\\Users\\"
										+ userName + "\\notes" + "\\" + files.get(i)[1] );
						for (File f : file.listFiles()) {
							f.delete() ;
						}
						file.delete() ;
						files.remove(i) ;
						numOfNotes-- ;
						table.setSize(width * 4 / 5, height / 15 + numOfNotes * height / 20);
						table.repaint();
						((DefaultTableModel) table.getModel()).removeRow(i+1);
					}
				}
				
				

			}
		});

		JButton show = new JButton(new ImageIcon(getClass().getResource(
				"show.png")));
		show.setSize(manage.getWidth(), manage.getHeight() / 2);
		show.setLocation(0, manage.getHeight() / 2);
		show.addActionListener(new ActionListener() {
			
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
				
				
				String s = JOptionPane
						.showInputDialog("Please enter note number to show");
				for( int i = 0 ; i < numOfNotes ; i++ ){
					String keyWord = "" ;
					if( s.equals(files.get(i)[0])){
						File file = new File(
								"C:\\Users\\mahdi\\workspace\\JNotes\\Users\\"
										+ userName + "\\notes" + "\\" + files.get(i)[1] +"\\" + "keyWords.doc");
						
						try {
							BufferedReader reader = new BufferedReader( new FileReader(file));
							String temp = "" ;
							do {
								try {
									temp = reader.readLine();
								} catch (IOException e) {
									// TODO Auto-generated catch block
									e.printStackTrace();
								}

								if (temp == null)
									temp = "";
								
								keyWord += temp;

								if (!keyWord.equals(""))
									keyWord += ",";
							}while( !temp.equals("") ) ;
								
						} catch (FileNotFoundException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						}
						
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
						
						InfoPanel IP = new InfoPanel( files.get(i) , keyWord , userName , 0);
						
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
				}
			}
		});
		
		manage.add(delete);
		manage.add(show);

		
		getContentPane().add(table);
		getContentPane().add(manage);
		setVisible(true);
	}

	private void loadFile(File notes, int num) {
		files = new ArrayList<String[]>();
		int index = 0;
		for (File file : notes.listFiles()) {
			files.add(new String[4]) ;
			try {
				BufferedReader reader0 = new BufferedReader(new FileReader(
						"C:\\Users\\mahdi\\workspace\\JNotes\\Users\\"
								+ userName + "\\notes" + "\\" + file.getName()
								+ "\\num.doc"));

				try {
					files.get(index)[0] = reader0.readLine();
					reader0.close();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}

			} catch (FileNotFoundException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}

			try {
				BufferedReader reader1 = new BufferedReader(new FileReader(
						"C:\\Users\\mahdi\\workspace\\JNotes\\Users\\"
								+ userName + "\\notes" + "\\" + file.getName()
								+ "\\content.doc"));
				try {
					files.get(index)[1] = reader1.readLine();
					reader1.close();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			} catch (FileNotFoundException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}

			try {
				BufferedReader reader2 = new BufferedReader(new FileReader(
						"C:\\Users\\mahdi\\workspace\\JNotes\\Users\\"
								+ userName + "\\notes" + "\\" + file.getName()
								+ "\\content.doc"));
				String strLine = "";
				String name = "";

				try {
					reader2.readLine();
					while ((strLine = reader2.readLine()) != null) {
						// save first 10 chars to name
						name += strLine;
						if (name.length() > 10)
							break;
						name += " ";
					}
					reader2.close();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}

				boolean flag = false;
				if (name.length() > 10) {
					name = name.substring(0, 10);
					flag = true;
				}
				if (flag == true)
					name += "...";

				files.get(index)[2] = name;
			} catch (FileNotFoundException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}

			try {
				BufferedReader reader = new BufferedReader(new FileReader(
						"C:\\Users\\mahdi\\workspace\\JNotes\\Users\\"
								+ userName + "\\notes" + "\\" + file.getName()
								+ "\\date.doc"));
				try {
					files.get(index)[3] = reader.readLine();
					reader.close();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			} catch (FileNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

			index++;
		}
	}
}
