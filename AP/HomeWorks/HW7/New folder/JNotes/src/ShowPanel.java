import java.awt.Color;
import java.awt.Font;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.IOException;
import java.io.ObjectOutputStream;
import java.io.PrintWriter;
import java.io.Writer;
import java.util.Calendar;

import javax.swing.BorderFactory;
import javax.swing.ImageIcon;
import javax.swing.JButton;
import javax.swing.JColorChooser;
import javax.swing.JComboBox;
import javax.swing.JFrame;
import javax.swing.JOptionPane;
import javax.swing.JTextPane;
import javax.swing.JToolBar;
import javax.swing.text.AttributeSet;
import javax.swing.text.BadLocationException;
import javax.swing.text.Element;
import javax.swing.text.SimpleAttributeSet;
import javax.swing.text.Style;
import javax.swing.text.StyleConstants;
import javax.swing.text.StyleContext;
import javax.swing.text.StyledDocument;
import javax.swing.text.html.HTMLEditorKit;

import sl.docx.DocxEditorKit;

public class ShowPanel extends JFrame {

	private JTextPane note;
//	private JToolBar toolBar;
	private int widthScreen = (int) getToolkit().getScreenSize().getWidth();
	private int heightScreen = (int) getToolkit().getScreenSize().getHeight();
	private int height;
	private int width;
	private JTextPane note2;

	public ShowPanel(String userName , String title) {

		super(title) ;
		this.setUndecorated(true);
		
		this.setSize(widthScreen * 2 / 5, heightScreen * 2 / 3);
	
		this.setLocation(widthScreen / 2 + widthScreen * 1 / 5, heightScreen
				/ 2 - heightScreen * 1 / 3);
		this.setResizable(false);
		
		width = widthScreen * 2 / 5;
		height = heightScreen * 2 / 3;
		this.setLayout(null);
		

		ImageIcon icon = new ImageIcon(getClass().getResource("icon1.png"));
		this.setIconImage(icon.getImage());



		note = new MyTextPane();
		note.setSize(width, height);
		note.setLocation(0, 0);
	
		note.setFont(new Font("Arial", Font.PLAIN, 25));
		
		note.setEditable(false);
		getContentPane().add(note);

		this.setVisible(true);

	}

	
	
	public JTextPane getNote(){
		return note ;
	}
}
