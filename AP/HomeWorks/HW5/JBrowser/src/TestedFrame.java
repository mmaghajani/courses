import java.awt.BorderLayout;
import java.awt.Color;
import java.awt.Container;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.HeadlessException;
import java.awt.PrintJob;
import java.awt.TextComponent;
import java.awt.TextField;
import java.awt.Toolkit;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.KeyEvent;
import java.awt.event.KeyListener;
import java.awt.event.MouseEvent;
import java.awt.event.MouseListener;
import java.net.URL;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.swing.BorderFactory;
import javax.swing.ImageIcon;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JMenu;
import javax.swing.JMenuBar;
import javax.swing.JMenuItem;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.JTabbedPane;
import javax.swing.JToolBar;
import javax.swing.KeyStroke;
import javax.swing.UIManager;
import javax.swing.UnsupportedLookAndFeelException;

import org.lobobrowser.html.HtmlRendererContext;
import org.lobobrowser.html.UserAgentContext;
import org.lobobrowser.html.gui.HtmlPanel;
import org.lobobrowser.html.gui.SelectionChangeEvent;
import org.lobobrowser.html.gui.SelectionChangeListener;
import org.lobobrowser.html.test.SimpleHtmlRendererContext;
import org.lobobrowser.html.test.SimpleUserAgentContext;

/**
 * This is JBrowser can show HTML pages with Cobra engine.
 * 
 * @author mahdi aghajani
 */
public class TestedFrame extends JFrame {

	private static final Logger logger = Logger.getLogger(TestedFrame.class
			.getName());
	/**
	 * for rendering HTML pages
	 */
	private SimpleHtmlRendererContext rcontext;

	/**
	 * for show HTML pages
	 */
	private HtmlPanel htmlPanel;

	/**
	 * A Tool Bar for Buttons and Address Bar
	 */
	private JToolBar toolBar;

	private JMenuBar menuBar;

	private JTabbedPane tabbedPane = new JTabbedPane();

	/**
	 * Contains tool bar and html panels
	 */
	private JPanel basicPanel = new JPanel();

	/**
	 * for save shown pages
	 */
	private ArrayList<ArrayList<String>> siteTree = new ArrayList<ArrayList<String>>();
	private ArrayList<Integer> locationCounter = new ArrayList<Integer>();

	/**
	 * for save selected text
	 */
	private String buffer;
	private String temp;

	private String homeAddress;

	public TestedFrame(String title) throws HeadlessException {
		super("JBrowser");
		this.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);

		URL iconURL = getClass().getResource("logo.png");
		ImageIcon icon = new ImageIcon(iconURL);
		TestedFrame.this.setIconImage(icon.getImage());
		
		Container contentPane = this.getContentPane();
		contentPane.setLayout(new BorderLayout());

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

		changeFonts(new Font( "Arial" , Font.PLAIN , 13));
	
		makeMenu();

		tabbedPane.setBackground(Color.LIGHT_GRAY);
		basicPanel.setLayout(new BorderLayout());
		contentPane.add(basicPanel, BorderLayout.CENTER);

		makeToolBar();
		basicPanel.add(toolBar, BorderLayout.NORTH);

		JPanel bottomPanel = new JPanel();
		bottomPanel.setLayout(new BorderLayout());
		bottomPanel.add(tabbedPane, BorderLayout.CENTER);
		basicPanel.add(bottomPanel, BorderLayout.CENTER);

		makeTab();

	}

	/**
	 * getter of rcontext
	 * 
	 * @return HTML renderer
	 */
	public HtmlRendererContext getHtmlRendererContext() {
		return this.rcontext;
	}

	/**
	 * 
	 * @param uri
	 *            site address
	 */
	public void navigate(String uri) {
		((TextField) toolBar.getComponentAtIndex(1)).setText(uri);
		this.process(uri, (HtmlPanel) tabbedPane.getComponent(tabbedPane
				.getSelectedIndex()));
	}

	/**
	 * 
	 * @param uri
	 *            An address for rendering and process
	 * @param panel
	 *            HTML page must be shown at this panel
	 */
	private void process(String uri, HtmlPanel panel) {
		try {
			URL url;
			try {
				url = new URL(uri);
			} catch (java.net.MalformedURLException mfu) {
				int idx = uri.indexOf(':');
				if (idx == -1 || idx == 1) {
					// try file
					url = new URL("file:" + uri);
				} else {
					throw mfu;
				}
			}
			// Call SimpleHtmlRendererContext.navigate()
			// which implements incremental rendering.
			this.rcontext.setHtmlPanel(panel);
			this.rcontext.navigate(url, null);
		} catch (Exception err) {
			logger.log(Level.SEVERE, "Error trying to load URI=[" + uri + "].",
					err);
		}
	}

	private class LocalHtmlRendererContext extends SimpleHtmlRendererContext {
		public LocalHtmlRendererContext(HtmlPanel contextComponent,
				UserAgentContext ucontext) {
			super(contextComponent, ucontext);
		}

		public HtmlRendererContext open(URL url, String windowName,
				String windowFeatures, boolean replace) {
			TestedFrame frame = new TestedFrame("Cobra Test Tool");
			frame.setSize(600, 400);
			frame.setExtendedState(TestedFrame.NORMAL);
			frame.setVisible(true);
			HtmlRendererContext ctx = frame.getHtmlRendererContext();
			ctx.setOpener(this);
			frame.navigate(url.toExternalForm());
			return ctx;
		}
	}

	/**
	 * for making tool bar as a JToolBar
	 */
	private void makeToolBar() {
		toolBar = new JToolBar();
		toolBar.setLayout(new BorderLayout());
		toolBar.setBorderPainted(true);
		toolBar.setOpaque(true);
		toolBar.setEnabled(false);
		toolBar.setFloatable(false);

		JPanel panel1 = new JPanel();
		panel1.setLayout(new BorderLayout());
		JPanel panel2 = new JPanel();
		panel2.setLayout(new BorderLayout());
		JPanel panel3 = new JPanel();
		panel3.setLayout(new BorderLayout());

		JButton back;
		JButton forward;
		JButton refresh;
		JButton go;
		JButton home;
		JButton stop;
		TextField addressBar = new TextField();

		ImageIcon icon = new ImageIcon(getClass().getResource("back.png"));
		back = new JButton();
		back.setIcon(icon);
		back.setToolTipText("Back");
		back.setBorder(BorderFactory.createEmptyBorder());
		back.addActionListener(new ActionListener() {

			@Override
			public void actionPerformed(ActionEvent event) {
				// TODO Auto-generated method stub

				if (siteTree.get(tabbedPane.getSelectedIndex()).get(
						locationCounter.get(tabbedPane.getSelectedIndex()) - 2) != null) {
					process(siteTree.get(tabbedPane.getSelectedIndex())
							.get(locationCounter.get(tabbedPane
									.getSelectedIndex()) - 2),
							(HtmlPanel) tabbedPane.getComponent(tabbedPane
									.getSelectedIndex()));
					addressBar.setText(siteTree.get(
							tabbedPane.getSelectedIndex())
							.get(locationCounter.get(tabbedPane
									.getSelectedIndex()) - 2));
					tabbedPane.setTitleAt(
							tabbedPane.getSelectedIndex(),
							siteTree.get(tabbedPane.getSelectedIndex()).get(
									locationCounter.get(tabbedPane
											.getSelectedIndex()) - 2));
					int temp = locationCounter.get(tabbedPane
							.getSelectedIndex());
					locationCounter.set(tabbedPane.getSelectedIndex(), temp - 1);
				}
				
			}
		});

		icon = new ImageIcon(getClass().getResource("forward.png"));
		forward = new JButton();
		forward.setIcon(icon);
		forward.setToolTipText("Forward");
		forward.setBorder(BorderFactory.createEmptyBorder());
		forward.addActionListener(new ActionListener() {

			@Override
			public void actionPerformed(ActionEvent arg0) {
				// TODO Auto-generated method stub
				if (siteTree.get(tabbedPane.getSelectedIndex()).get(
						locationCounter.get(tabbedPane.getSelectedIndex())) != null) {

					process(siteTree.get(tabbedPane.getSelectedIndex()).get(
							locationCounter.get(tabbedPane.getSelectedIndex())),
							(HtmlPanel) tabbedPane.getComponent(tabbedPane
									.getSelectedIndex()));
					addressBar.setText(siteTree.get(
							tabbedPane.getSelectedIndex()).get(
							locationCounter.get(tabbedPane.getSelectedIndex())));
					tabbedPane.setTitleAt(
							tabbedPane.getSelectedIndex(),
							siteTree.get(tabbedPane.getSelectedIndex()).get(
									locationCounter.get(tabbedPane
											.getSelectedIndex())));
					int temp = locationCounter.get(tabbedPane
							.getSelectedIndex());
					locationCounter.set(tabbedPane.getSelectedIndex(), temp + 1);

				}

			}
		});

		icon = new ImageIcon(getClass().getResource("refresh.png"));
		refresh = new JButton();
		refresh.setIcon(icon);
		refresh.setToolTipText("Refresh");
		refresh.setBorder(BorderFactory.createEmptyBorder());
		refresh.addActionListener(new ActionListener() {

			@Override
			public void actionPerformed(ActionEvent arg0) {
				// TODO Auto-generated method stub
				process(addressBar.getText(), (HtmlPanel) tabbedPane
						.getComponent(tabbedPane.getSelectedIndex()));

			}
		});

		addressBar.setEditable(true);
		addressBar.setBackground(Color.LIGHT_GRAY);

		addressBar.addMouseListener(new MouseListener() {

			@Override
			public void mouseReleased(MouseEvent arg0) {
				// TODO Auto-generated method stub
				temp = addressBar.getSelectedText();
			}

			@Override
			public void mousePressed(MouseEvent arg0) {
				// TODO Auto-generated method stub
				// temp = addressBar.getSelectedText() ;
			}

			@Override
			public void mouseExited(MouseEvent arg0) {
				// TODO Auto-generated method stub

			}

			@Override
			public void mouseEntered(MouseEvent arg0) {
				// TODO Auto-generated method stub

			}

			@Override
			public void mouseClicked(MouseEvent arg0) {
				// TODO Auto-generated method stub

			}
		});
		
		addressBar.addKeyListener(new KeyListener() {
			
			@Override
			public void keyTyped(KeyEvent event) {
				// TODO Auto-generated method stub
				//JOptionPane.showMessageDialog(null, event.getKeyCode());
			}
			
			@Override
			public void keyReleased(KeyEvent arg0) {
				// TODO Auto-generated method stub
				
			}
			
			@Override
			public void keyPressed(KeyEvent event) {
				// TODO Auto-generated method stub
				if (event.getKeyCode() == 10) {
					process(addressBar.getText(), (HtmlPanel) tabbedPane
							.getComponent(tabbedPane.getSelectedIndex()));

					siteTree.get(tabbedPane.getSelectedIndex()).add(
							locationCounter.get(tabbedPane.getSelectedIndex()),
							addressBar.getText());
					int temp = locationCounter.get(tabbedPane
							.getSelectedIndex());
					locationCounter.set(tabbedPane.getSelectedIndex(), temp + 1);

					tabbedPane.setTitleAt(tabbedPane.getSelectedIndex(),
							addressBar.getText());
				}
			}
		});

		icon = new ImageIcon(getClass().getResource("stop.png"));
		stop = new JButton();
		stop.setIcon(icon);
		stop.setToolTipText("Stop");
		stop.setBorder(BorderFactory.createEmptyBorder());
		stop.addActionListener(new ActionListener() {

			@Override
			public void actionPerformed(ActionEvent arg0) {
				// TODO Auto-generated method stub
				process("http://google.com", (HtmlPanel) tabbedPane
						.getComponent(tabbedPane.getSelectedIndex()));
				addressBar.setText("http://google.com");
			}
		});

		icon = new ImageIcon(getClass().getResource("go.png"));
		go = new JButton();
		go.setIcon(icon);
		go.setToolTipText("Go");
		go.setBorder(BorderFactory.createEmptyBorder());
		go.setBackground(Color.DARK_GRAY);
		go.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent event) {
				process(addressBar.getText(), (HtmlPanel) tabbedPane
						.getComponent(tabbedPane.getSelectedIndex()));

				siteTree.get(tabbedPane.getSelectedIndex()).add(
						locationCounter.get(tabbedPane.getSelectedIndex()),
						addressBar.getText());
				int temp = locationCounter.get(tabbedPane.getSelectedIndex());
				locationCounter.set(tabbedPane.getSelectedIndex(), temp + 1);

				tabbedPane.setTitleAt(tabbedPane.getSelectedIndex(),
						addressBar.getText());
			}
		});
		
		

		icon = new ImageIcon(getClass().getResource("home.png"));
		home = new JButton();
		home.setIcon(icon);
		home.setToolTipText("Home");
		home.setBorder(BorderFactory.createEmptyBorder());
		home.addActionListener(new ActionListener() {

			@Override
			public void actionPerformed(ActionEvent arg0) {
				// TODO Auto-generated method stub
				if (homeAddress != null) {
					addressBar.setText(homeAddress);
					process(homeAddress, (HtmlPanel) tabbedPane
							.getComponent(tabbedPane.getSelectedIndex()));

					siteTree.get(tabbedPane.getSelectedIndex()).add(
							locationCounter.get(tabbedPane.getSelectedIndex()),
							addressBar.getText());
					int temp = locationCounter.get(tabbedPane
							.getSelectedIndex());
					locationCounter.set(tabbedPane.getSelectedIndex(), temp + 1);

					tabbedPane.setTitleAt(tabbedPane.getSelectedIndex(),
							addressBar.getText());
				} else {
					homeAddress = JOptionPane
							.showInputDialog("Please Enter Home Address");
				}
			}
		});

		back.setBackground(Color.DARK_GRAY);
		panel1.add(back, BorderLayout.WEST);
		panel1.add(forward, BorderLayout.CENTER);
		panel1.add(refresh, BorderLayout.EAST);
		panel2.add(stop, BorderLayout.CENTER);
		panel2.add(go, BorderLayout.WEST);
		panel2.add(home, BorderLayout.EAST);

		toolBar.add(panel1, BorderLayout.WEST);
		toolBar.add(addressBar, BorderLayout.CENTER);
		toolBar.add(panel2, BorderLayout.EAST);

	}

	/**
	 * for making menu as a JMenu
	 */
	private void makeMenu() {
		JMenu menu;
		JMenuItem menuItem;

		menuBar = new JMenuBar();

		menu = new JMenu("File");
		menu.setMnemonic('F');
		menuBar.add(menu);

		menuItem = new JMenuItem("New Tab");
		menuItem.setAccelerator(KeyStroke.getKeyStroke(KeyEvent.VK_T,
				ActionEvent.CTRL_MASK));
		menu.add(menuItem);
		menuItem.addActionListener(new ActionListener() {

			@Override
			public void actionPerformed(ActionEvent event) {
				makeTab();
			}
		});

		menuItem = new JMenuItem("Close Tab");
		menuItem.setAccelerator(KeyStroke.getKeyStroke(KeyEvent.VK_L,
				ActionEvent.CTRL_MASK));
		menu.add(menuItem);
		menuItem.addActionListener(new ActionListener() {

			@Override
			public void actionPerformed(ActionEvent event) {
				siteTree.remove(tabbedPane.getSelectedIndex());
				tabbedPane.remove(tabbedPane.getSelectedComponent());
			}
		});

		menuItem = new JMenuItem("Print");
		menuItem.setAccelerator(KeyStroke.getKeyStroke(KeyEvent.VK_P,
				ActionEvent.CTRL_MASK));
		menu.add(menuItem);
		menuItem.addActionListener(new ActionListener() {

			@Override
			public void actionPerformed(ActionEvent arg0) {
				// TODO Auto-generated method stub
				Toolkit tkp = tabbedPane.getComponent(
						tabbedPane.getSelectedIndex()).getToolkit();
				PrintJob pjp = tkp.getPrintJob(TestedFrame.this, null, null);
				Graphics g = pjp.getGraphics();
				tabbedPane.getComponent(tabbedPane.getSelectedIndex()).print(g);
				g.dispose();
				pjp.end();

			}
		});

		menuItem = new JMenuItem("History");
		menuItem.setAccelerator(KeyStroke.getKeyStroke(KeyEvent.VK_H,
				ActionEvent.CTRL_MASK));
		menu.add(menuItem);
		menuItem.addActionListener(new ActionListener() {

			@Override
			public void actionPerformed(ActionEvent event) {
				String s = "";
				for (int i = 0; i < siteTree.size(); i++)
					for (int j = 0; j < siteTree.get(i).size(); j++) {
						s += siteTree.get(i).get(j);
						s += "\n";
					}
				JOptionPane.showMessageDialog(null, s, "History", 0);
			}
		});
		
		menuItem = new JMenuItem("Exit");
		menuItem.setAccelerator(KeyStroke.getKeyStroke(KeyEvent.VK_X,
				ActionEvent.CTRL_MASK));
		menu.add(menuItem);
		menuItem.addActionListener(new ActionListener() {

			@Override
			public void actionPerformed(ActionEvent event) {
				dispose();
			}
		});

		menu = new JMenu("Edit");
		menu.setMnemonic('E');
		menuBar.add(menu);

		menuItem = new JMenuItem("Copy");
		menuItem.setAccelerator(KeyStroke.getKeyStroke(KeyEvent.VK_C,
				ActionEvent.CTRL_MASK));
		menu.add(menuItem);
		menuItem.addActionListener(new ActionListener() {

			@Override
			public void actionPerformed(ActionEvent arg0) {
				buffer = temp;
			}
		});

		menuItem = new JMenuItem("Paste");
		menuItem.setAccelerator(KeyStroke.getKeyStroke(KeyEvent.VK_V,
				ActionEvent.CTRL_MASK));
		menu.add(menuItem);
		menuItem.addActionListener(new ActionListener() {

			@Override
			public void actionPerformed(ActionEvent arg0) {
				((TextComponent) toolBar.getComponent(1)).setText(buffer);

			}
		});

		menuItem = new JMenuItem("Edit Home");
		menuItem.setAccelerator(KeyStroke.getKeyStroke(KeyEvent.VK_E,
				ActionEvent.CTRL_MASK));
		menu.add(menuItem);
		menuItem.addActionListener(new ActionListener() {

			@Override
			public void actionPerformed(ActionEvent arg0) {
				// TODO Auto-generated method stub
				homeAddress = JOptionPane
						.showInputDialog("Enter new home address");
			}
		});

		menu = new JMenu("Help");
		menu.setMnemonic('H');
		menuBar.add(menu);

		menuItem = new JMenuItem("About");
		menu.add(menuItem);
		menuItem.addActionListener(new ActionListener() {

			@Override
			public void actionPerformed(ActionEvent arg0) {
				// TODO Auto-generated method stub
				JOptionPane
						.showMessageDialog(
								null,
								"autor name : MohammadMahdi Aghajani \n Email : mma137421@gmail.com \n 2015-2014",
								"About", JOptionPane.INFORMATION_MESSAGE);
			}
		});

		menuItem = new JMenuItem("JavaDoc");
		menuItem.setAccelerator(KeyStroke.getKeyStroke(KeyEvent.VK_J,
				ActionEvent.SHIFT_MASK));
		menu.add(menuItem);
		menuItem.addActionListener(new ActionListener() {

			@Override
			public void actionPerformed(ActionEvent arg0) {
				// TODO Auto-generated method stub
				makeTab();
				process("file:///C:/Users/mahdi/workspace/JBrowser/doc/TestedFrame.html",
						(HtmlPanel) tabbedPane.getComponent(tabbedPane
								.countComponents()-1));
				tabbedPane.setTitleAt(tabbedPane.countComponents()-1, "JavaDoc" );

			}
		});
		

		setJMenuBar(menuBar);
	}

	/**
	 * for making Tab as a HtmlPanel
	 */
	private void makeTab() {
		HtmlPanel panel = new HtmlPanel();
		panel.addSelectionChangeListener(new SelectionChangeListener() {
			public void selectionChanged(SelectionChangeEvent event) {
				if (logger.isLoggable(Level.INFO)) {
					logger.info("selectionChanged(): selection node: "
							+ panel.getSelectionNode());
				}
				siteTree.get(tabbedPane.getSelectedIndex()).add(
						locationCounter.get(tabbedPane.getSelectedIndex()),
						rcontext.getCurrentURL());
				int temp = locationCounter.get(tabbedPane.getSelectedIndex());
				locationCounter.set(tabbedPane.getSelectedIndex(), temp + 1);

				tabbedPane.setTitleAt(tabbedPane.getSelectedIndex(),
						rcontext.getCurrentURL());
				
				((TextComponent) toolBar.getComponent(1)).setText(rcontext.getCurrentURL()) ;
				
				JOptionPane.showInternalMessageDialog(null, rcontext.getCurrentURL());
				
			}
		});
		
		this.htmlPanel = panel ;
		UserAgentContext ucontext = new SimpleUserAgentContext();
		this.rcontext = new LocalHtmlRendererContext(panel, ucontext);
		
		tabbedPane.addTab("New Tab", panel);
		siteTree.add(new ArrayList<String>());
		locationCounter.add(0);
	}

	/**
	 * change font in UI Manager
	 * @param sf A font that replace with previous font
	 */
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

		//config.applyLookAndFeel(config.LOOK_AND_FEEL);
		}
}
