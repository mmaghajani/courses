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


public class ShowList extends JFrame {

	private JTable table;
	private int widthScreen = (int) getToolkit().getScreenSize().getWidth();
	private int heightScreen = (int) getToolkit().getScreenSize().getHeight();
	private int height;
	private int width;
	//private String userName;
	private JToolBar manage;
	private ArrayList<String[]> files;
	private int numOfNotes = 0;

	public ShowList( ArrayList<String[]> f , int kelid) {
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
		this.setSize(widthScreen * 3 / 5, heightScreen * 2 / 3);
		// this.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		this.setLocation(widthScreen / 2 - widthScreen * 1 / 5, heightScreen
				/ 2 - heightScreen * 1 / 3);
		this.setResizable(false);
		this.setLayout(null);
		width = widthScreen * 3 / 5;
		height = heightScreen * 2 / 3;
	//	this.userName = userName;

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
		table.getColumnModel().getColumn(3).setPreferredWidth(width / 3);
		table.getColumnModel().getColumn(0).setPreferredWidth(width / 12);
		table.getColumnModel().getColumn(1).setPreferredWidth(width / 12);
		table.getColumnModel().getColumn(2).setPreferredWidth(width / 2);


		files = f ;

		for (int i = 0; i < files.size(); i++) {
			model.addRow(new JPanel[] {});
			table.setRowHeight(i + 1, height / 20);
		}

		table.setSize(width * 5 / 6, height / 15 + files.size() * height / 20);
		table.setLocation(width / 12, height / 15);
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
				
				 JLabel j = new JLabel("Title");
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
					j.setText("No.");
					pane.add(j, BorderLayout.CENTER);
				}

				else if (row == 0 && column == 2) {
					j.setText("Date");
					pane.add(j, BorderLayout.CENTER);
				}

				else if (row == 0 && column == 3) {
					j.setText("Author");
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
		manage.setSize(width / 20, height / 12);
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
				for (int i = 0; i < files.size(); i++) {
					if (s.equals(files.get(i)[0])) {
						File file = new File(
								"C:\\Users\\mahdi\\workspace\\JNotes\\Users\\"
										+ getUser( files.get(i)[3]) + "\\notes" + "\\"
										+ files.get(i)[1]);
						for (File f : file.listFiles()) {
							f.delete();
						}
						file.delete();
						files.remove(i);
						
						table.setSize(width * 4 / 5, height / 15 + files.size()
								* height / 20);
						table.repaint();
						((DefaultTableModel) table.getModel()).removeRow(i + 1);
					}
				}

			}
		});

		JButton show = new JButton(new ImageIcon(getClass().getResource(
				"show.png")));
		show.setSize(manage.getWidth(), manage.getHeight() );
		show.setLocation(0, 0);
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
				for (int i = 0; i < files.size(); i++) {
					String keyWord = "";
					if (s.equals(files.get(i)[1])) {
						File file = new File(
								"C:\\Users\\mahdi\\workspace\\JNotes\\Users\\"
										+ getUser( files.get(i)[3]) + "\\notes" + "\\"
										+ files.get(i)[0] + "\\"
										+ "keyWords.doc");

						try {
							BufferedReader reader = new BufferedReader(
									new FileReader(file));
							String temp = "";
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
							} while (!temp.equals(""));

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

						String[] tempo = new String[4] ;
						tempo[0] = files.get(i)[1] ;
						tempo[1] = files.get(i)[0] ;
						tempo[2] = files.get(i)[3] ;
						tempo[3] = files.get(i)[2] ;
						InfoPanel IP = new InfoPanel(tempo , keyWord,
								getUser(files.get(i)[3]) , kelid );

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

	//	manage.add(delete);
		manage.add(show);

		getContentPane().add(table);
		getContentPane().add(manage);
		setVisible(true);
	}
	
	private String getUser( String s ){
		File file = new File( "C:\\Users\\mahdi\\workspace\\JNotes\\Users") ;
		String user = "" ; 
		for( File f : file.listFiles() ){
			for( File f2 : f.listFiles() ){
				if( f2.getName().equals("ID.txt") ){
					try {
						BufferedReader reader = new BufferedReader( new FileReader(f2) ) ;
						try {
							user = reader.readLine() ;
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
						
						String name = "" ;
						try {
							name += reader.readLine() ;
						} catch (IOException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						}
						
						name += " " ;
						
						try {
							name += reader.readLine() ;
						} catch (IOException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						}
						
						if( name.equals(s))
							return user ;
						
					} catch (FileNotFoundException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
				}
			}
		}
		
		return "" ;
	}

}
