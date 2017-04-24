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

public class TextPanel extends JFrame {

	private JTextPane note;
	private JToolBar toolBar;
	private int widthScreen = (int) getToolkit().getScreenSize().getWidth();
	private int heightScreen = (int) getToolkit().getScreenSize().getHeight();
	private int height;
	private int width;
	private JTextPane note2;

	public TextPanel(String userName , String title) {

		super(title) ;
		this.setUndecorated(true);
		// this.setShape(new RoundRectangle2D.Double(0,0, widthScreen/4,
		// heightScreen/2, 40, 40));
		this.setSize(widthScreen * 2 / 5, heightScreen * 2 / 3);
		// this.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		this.setLocation(widthScreen / 2 + widthScreen * 1 / 5, heightScreen
				/ 2 - heightScreen * 1 / 3);
		this.setResizable(false);
		// this.setLayout(null);
		width = widthScreen * 2 / 5;
		height = heightScreen * 2 / 3;
		this.setLayout(null);
		

		ImageIcon icon = new ImageIcon(getClass().getResource("icon1.png"));
		this.setIconImage(icon.getImage());

/*		JSeparator seperator1 = new JSeparator(JSeparator.HORIZONTAL);
		seperator1.setSize(width * 18 / 19, height / 30);
		seperator1.setLocation(width / 38, height / 26);

		JSeparator seperator2 = new JSeparator(JSeparator.HORIZONTAL);
		seperator2.setSize(width * 18 / 19, height / 30);
		seperator2.setLocation(width / 38, height / 15);
*/
		// note.getT

		note = new MyTextPane();
		note.setSize(width, height * 13 / 14);
		note.setLocation(0, height / 14);
	//	note.add(seperator1);
		//note.add(seperator2);
		note.setFont(new Font("Arial", Font.PLAIN, 25));
		//HTMLEditorKit kit = new HTMLEditorKit() ;
		//note.setEditorKit(kit);
		
		toolBar = new JToolBar();
		toolBar.setSize(width, height / 14);
		toolBar.setLocation(0, 0);
		toolBar.setBorder(BorderFactory.createEmptyBorder());
		toolBar.setLayout(null);

		ImageIcon image1 = new ImageIcon(getClass().getResource("ltr.png"));
		JButton ltr = new JButton(image1);
		ltr.setSize(width / 14, height / 14);
		ltr.setLocation(width / 3, 0);
		ltr.addActionListener(new ActionListener() {

			@Override
			public void actionPerformed(ActionEvent arg0) {
				// TODO Auto-generated method stub
				StyledDocument doc = note.getStyledDocument();
				SimpleAttributeSet left = new SimpleAttributeSet();
				StyleConstants.setAlignment(left, StyleConstants.ALIGN_LEFT);
				doc.setParagraphAttributes(0, doc.getLength(), left, false);
			}
		});
		toolBar.add(ltr);

		ImageIcon image2 = new ImageIcon(getClass().getResource("lcr.png"));
		JButton lcr = new JButton(image2);
		lcr.setSize(width / 14, height / 14);
		lcr.setLocation(width * 6 / 15, 0);
		lcr.addActionListener(new ActionListener() {

			@Override
			public void actionPerformed(ActionEvent arg0) {
				// TODO Auto-generated method stub
				StyledDocument doc = note.getStyledDocument();
				SimpleAttributeSet center = new SimpleAttributeSet();
				StyleConstants
						.setAlignment(center, StyleConstants.ALIGN_CENTER);
				doc.setParagraphAttributes(0, doc.getLength(), center, false);
			}
		});
		toolBar.add(lcr);

		ImageIcon image3 = new ImageIcon(getClass().getResource("rtl.png"));
		JButton rtl = new JButton(image3);
		rtl.setSize(width / 14, height / 14);
		rtl.setLocation(width * 7 / 15, 0);
		rtl.addActionListener(new ActionListener() {

			@Override
			public void actionPerformed(ActionEvent arg0) {
				// TODO Auto-generated method stub
				StyledDocument doc = note.getStyledDocument();
				SimpleAttributeSet right = new SimpleAttributeSet();
				StyleConstants.setAlignment(right, StyleConstants.ALIGN_RIGHT);
				doc.setParagraphAttributes(0, doc.getLength(), right, false);
			}
		});
		toolBar.add(rtl);

		ImageIcon image4 = new ImageIcon(getClass().getResource("bold.png"));
		JButton bold = new JButton(image4);
		bold.setSize(width / 14, height / 14);
		bold.setLocation(width * 8 / 15, 0);
		bold.addActionListener(new ActionListener() {

			@Override
			public void actionPerformed(ActionEvent arg0) {
				// TODO Auto-generated method stub
				note.requestFocusInWindow();
				setFontBoldStyle();
			}
		});
		toolBar.add(bold);

		ImageIcon image5 = new ImageIcon(getClass().getResource("italic.png"));
		JButton italic = new JButton(image5);
		italic.setSize(width / 14, height / 14);
		italic.setLocation(width * 9 / 15, 0);
		italic.addActionListener(new ActionListener() {

			@Override
			public void actionPerformed(ActionEvent arg0) {
				// TODO Auto-generated method stub
				note.requestFocusInWindow();
				setFontItalicStyle();
			}
		});
		toolBar.add(italic);

		ImageIcon image6 = new ImageIcon(getClass()
				.getResource("underline.png"));
		JButton underLine = new JButton(image6);
		underLine.setSize(width / 14, height / 14);
		underLine.setLocation(width * 10 / 15, 0);
		underLine.addActionListener(new ActionListener() {

			@Override
			public void actionPerformed(ActionEvent arg0) {
				// TODO Auto-generated method stub
				note.requestFocusInWindow();
				setFontUnderLineStyle();
			}
		});
		toolBar.add(underLine);

		JComboBox fontSize = new JComboBox<String>();
		fontSize.setSize(width / 13, height / 20);
		fontSize.setLocation(width * 3 / 13, height / 90);
		fontSize.addItem("14");
		fontSize.addItem("16");
		fontSize.addItem("18");
		fontSize.addItem("20");
		fontSize.addItem("22");
		fontSize.addItem("24");
		fontSize.addItem("26");
		fontSize.addItem("28");
		fontSize.addItem("30");
		fontSize.addItem("32");
		fontSize.addItem("34");
		fontSize.addItem("36");
		fontSize.addItem("38");
		fontSize.addItem("40");
		fontSize.addItem("42");
		fontSize.addItem("44");
		fontSize.addItem("46");
		fontSize.addItem("48");
		fontSize.addItem("50") ;
		fontSize.addItem("52");
		fontSize.addActionListener(new ActionListener() {

			@Override
			public void actionPerformed(ActionEvent arg0) {
				// TODO Auto-generated method stub
				if (fontSize.getSelectedItem().equals("14")) {
					note.requestFocusInWindow();
					setFontSizeStyle(14);
				}

				else if (fontSize.getSelectedItem().equals("16")) {
					note.requestFocusInWindow();
					setFontSizeStyle(16);
				}

				else if (fontSize.getSelectedItem().equals("18")) {
					note.requestFocusInWindow();
					setFontSizeStyle(18);
				}

				else if (fontSize.getSelectedItem().equals("20")) {
					note.requestFocusInWindow();
					setFontSizeStyle(20);
				}

				else if (fontSize.getSelectedItem().equals("22")) {
					note.requestFocusInWindow();
					setFontSizeStyle(22);
				}

				else if (fontSize.getSelectedItem().equals("24")) {
					note.requestFocusInWindow();
					setFontSizeStyle(24);
				}

				else if (fontSize.getSelectedItem().equals("26")) {
					note.requestFocusInWindow();
					setFontSizeStyle(26);
				}

				else if (fontSize.getSelectedItem().equals("28")) {
					note.requestFocusInWindow();
					setFontSizeStyle(28);
				}

				else if (fontSize.getSelectedItem().equals("30")) {
					note.requestFocusInWindow();
					setFontSizeStyle(30);
				}

				else if (fontSize.getSelectedItem().equals("32")) {
					note.requestFocusInWindow();
					setFontSizeStyle(32);
				}

				else if (fontSize.getSelectedItem().equals("34")) {
					note.requestFocusInWindow();
					setFontSizeStyle(34);
				}

				else if (fontSize.getSelectedItem().equals("36")) {
					note.requestFocusInWindow();
					setFontSizeStyle(36);
				}

				else if (fontSize.getSelectedItem().equals("38")) {
					note.requestFocusInWindow();
					setFontSizeStyle(38);
				}

				else if (fontSize.getSelectedItem().equals("40")) {
					note.requestFocusInWindow();
					setFontSizeStyle(40);
				}

				else if (fontSize.getSelectedItem().equals("42")) {
					note.requestFocusInWindow();
					setFontSizeStyle(42);
				}

				else if (fontSize.getSelectedItem().equals("44")) {
					note.requestFocusInWindow();
					setFontSizeStyle(44);
				}

				else if (fontSize.getSelectedItem().equals("46")) {
					note.requestFocusInWindow();
					setFontSizeStyle(46);
				}

				else if (fontSize.getSelectedItem().equals("48")) {
					note.requestFocusInWindow();
					setFontSizeStyle(48);
				}

				else if (fontSize.getSelectedItem().equals("50")) {
					note.requestFocusInWindow();
					setFontSizeStyle(50);
				}

				else if (fontSize.getSelectedItem().equals("52")) {
					note.requestFocusInWindow();
					setFontSizeStyle(52);
				}
			}
		});
		toolBar.add(fontSize);

		JComboBox font = new JComboBox<String>();
		font.setSize(width / 5, height / 20);
		font.setLocation(width / 30, height / 90);
		font.addItem("FantasticFont");
		font.addItem("GoodDog");
		font.addItem("Arial");
		font.addItem("Kaushan Script");
		font.addItem("B Nazanin");
		font.addItem("B Hamid");
		font.addItem("B Badr");
		font.addItem("B Tabassom");
		font.addActionListener(new ActionListener() {

			@Override
			public void actionPerformed(ActionEvent arg0) {
				// TODO Auto-generated method stub
				if (font.getSelectedItem().equals(font.getItemAt(0))) {
					// System.out.println( event.getItem() + " 1" ) ;
					note.requestFocusInWindow();
					setFontStyle("FantasticFont");
				}

				else if (font.getSelectedItem().equals(font.getItemAt(1))) {
					// System.out.println( event.getItem() + " 2" ) ;
					note.requestFocusInWindow();
					setFontStyle("GoodDog");
				}

				else if (font.getSelectedItem().equals(font.getItemAt(2))) {
					// System.out.println( event.getItem() + " 3" ) ;
					note.requestFocusInWindow();
					setFontStyle("Arial");
				}

				else if (font.getSelectedItem().equals(font.getItemAt(3))) {
					// System.out.println( event.getItem() + " 4" ) ;
					note.requestFocusInWindow();
					setFontStyle("Kaushan Script");
				}
				
				else if (font.getSelectedItem().equals(font.getItemAt(4))) {
					// System.out.println( event.getItem() + " 4" ) ;
					note.requestFocusInWindow();
					setFontStyle("B Nazanin");
				}
				
				else if (font.getSelectedItem().equals(font.getItemAt(5))) {
					// System.out.println( event.getItem() + " 4" ) ;
					note.requestFocusInWindow();
					setFontStyle("B Hamid");
				}
				
				else if (font.getSelectedItem().equals(font.getItemAt(6))) {
					// System.out.println( event.getItem() + " 4" ) ;
					note.requestFocusInWindow();
					setFontStyle("B Badr");
				}
				
				else if (font.getSelectedItem().equals(font.getItemAt(7))) {
					// System.out.println( event.getItem() + " 4" ) ;
					note.requestFocusInWindow();
					setFontStyle("B Tabassom");
				}
			}
		});
		toolBar.add(font);

		ImageIcon image7 = new ImageIcon(getClass().getResource("pallete.png"));
		JButton pallete = new JButton(image7);
		pallete.setSize(width / 14, height / 14);
		pallete.setLocation(width * 3 / 4, 0);
		pallete.addActionListener(new ActionListener() {

			@Override
			public void actionPerformed(ActionEvent arg0) {
				// TODO Auto-generated method stub
				Color c = JColorChooser.showDialog(null, "Choose a Color",
						note.getForeground());
				if (c != null)
					setFontColorStyle(c);
			}
		});

		toolBar.add(pallete);

		ImageIcon image8 = new ImageIcon(getClass().getResource("save.png"));
		JButton save = new JButton(image8);
		save.setSize(width / 14, height / 14);
		save.setLocation(width * 99 / 120, 0);
		save.addActionListener(new ActionListener() {
			
			@Override
			public void actionPerformed(ActionEvent arg0) {
				// TODO Auto-generated method stub
				String title ="" , keyWord1 = "", keyWord2 = "" , keyWord3 = "" , keyWord4 = "";
				do {
					title = JOptionPane.showInputDialog("Please enter title");
				} while (title.equals(""));

				
					keyWord1 = JOptionPane
							.showInputDialog("Please enter first keyword");

				
					keyWord2 = JOptionPane
							.showInputDialog("Please enter second keyword");
				
					keyWord3 = JOptionPane
							.showInputDialog("Please enter third keyword");
					
					keyWord4 = JOptionPane
							.showInputDialog("Please enter forth keyword");
			
				File myUser = new File(
						"C:\\Users\\mahdi\\workspace\\JNotes\\Users"
								+ "\\" + userName + "\\" + "notes" );
				
				File myNote = new File( myUser , title) ;
				if( !myNote.exists() )
					myNote.mkdir() ;
				
				File note = new File("C:\\Users\\mahdi\\workspace\\JNotes\\Users"
						+ "\\" + userName + "\\" + "notes" + title + "\\content.doc");
				
				try {
					PrintWriter writer = new PrintWriter(
							new FileOutputStream(
									"C:\\Users\\mahdi\\workspace\\JNotes\\Users"
											+ "\\"
											+ userName + "\\"
											+ "notes\\"
											+title
											+"\\content.doc"));
					
					
					writer.println( title ) ;
					writer.println( TextPanel.this.note.getText() );
					writer.close();
					
					
					
				} catch (FileNotFoundException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
				StyledDocument s = TextPanel.this.note.getStyledDocument() ; 
				try {
					ObjectOutputStream oos = new ObjectOutputStream(new FileOutputStream(
									"C:\\Users\\mahdi\\workspace\\JNotes\\Users"
											+ "\\"
											+ userName + "\\"
											+ "notes\\"
											+ title
											+ "\\"
											+ title
											+ ".txt"));
					oos.writeObject(s);
					oos.close();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
				try {
					PrintWriter writer = new PrintWriter(
							new FileOutputStream(
									"C:\\Users\\mahdi\\workspace\\JNotes\\Users"
											+ "\\"
											+ userName + "\\"
											+ "notes\\"
											+title
											+"\\"
											+ "keyWords"
											+ ".doc"));
					
					if( !keyWord1.equals("") )	writer.println(keyWord1) ;
					if( !keyWord2.equals("") )	writer.println(keyWord2) ;
					if( !keyWord3.equals("") )	writer.println(keyWord3) ;
					if( !keyWord4.equals("") )	writer.println(keyWord4) ;
					
					writer.close();
				} catch (FileNotFoundException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
				try {
					PrintWriter writer = new PrintWriter(
							new FileOutputStream(
									"C:\\Users\\mahdi\\workspace\\JNotes\\Users"
											+ "\\"
											+ userName + "\\"
											+ "notes\\"
											+title
											+"\\"
											+ "date"
											+ ".doc"));
					Calendar cal = Calendar.getInstance() ;
					writer.println(cal.getTime().toString() ) ;
					
					writer.close();
				} catch (FileNotFoundException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
				try {
					BufferedReader reader = new BufferedReader(new FileReader("C:\\Users\\mahdi\\workspace\\JNotes\\Users"
												+ "\\"
												+ userName + "\\noteNum.txt")) ;
					
					try {
						int noteNum = Integer.parseInt(reader.readLine()) ;
						reader.close();
						try {
							PrintWriter writer = new PrintWriter(
									new FileOutputStream(
											"C:\\Users\\mahdi\\workspace\\JNotes\\Users"
													+ "\\"
													+ userName + "\\"
													+ "notes\\"
													+title
													+"\\"
													+ "num"
													+ ".doc"));
							writer.println(noteNum+1) ;
							
							writer.close();
							
							PrintWriter writer1 = new PrintWriter(
									new FileOutputStream(
											"C:\\Users\\mahdi\\workspace\\JNotes\\Users"
													+ "\\"
													+ userName + "\\"
													+"noteNum.txt"));
							writer1.println(noteNum+1);
							writer1.close();
							
						} catch (FileNotFoundException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						}
					} catch (NumberFormatException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					} catch (IOException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
					
				} catch (FileNotFoundException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		});
		toolBar.add(save);

		JButton language = new JButton("ENG");
		language.setSize(width / 14, height / 14);
		language.setLocation(width * 9 / 10, 0);
		language.setFont(new Font("Arial", Font.PLAIN, 15));
		toolBar.add(language);

		// getContentPane().add( sp ) ;
		
		
		getContentPane().add(toolBar);
		getContentPane().add(note);

		this.setVisible(true);

	}

	private void setFontBoldStyle() {
		if (note.getSelectedText() != null) {

			StyledDocument doc = (StyledDocument) note.getDocument();
			String text = note.getSelectedText();
			int selectionStart = note.getSelectionStart();
			int selectionEnd = note.getSelectionEnd();

			StyleContext context = new StyleContext();
			Style style;

			Element element = doc.getCharacterElement(selectionStart);
			// Enumeration en= doc.getStyleNames();

			AttributeSet as = element.getAttributes();

			/**
			 * Get style from history...
			 */
			String family = StyleConstants.getFontFamily(as);
			int fontSize = StyleConstants.getFontSize(as);
			Color currentColor = StyleConstants.getForeground(as);
			boolean isBold = StyleConstants.isBold(as) ? false : true;
			boolean isItalic = StyleConstants.isItalic(as);
			boolean isUnderlined = StyleConstants.isUnderline(as);

			String styleName = String.valueOf(Math.random());

			style = context.addStyle(styleName, null);
			// style.addAttribute(StyleConstants.FontSize, fontSize);
			// style.addAttribute(StyleConstants.FontFamily, family);
			style.addAttribute(StyleConstants.Foreground, currentColor);
			style.addAttribute(StyleConstants.FontFamily, family);
			style.addAttribute(StyleConstants.FontSize, fontSize);
			style.addAttribute(StyleConstants.Bold, isBold);
			style.addAttribute(StyleConstants.Italic, isItalic);
			style.addAttribute(StyleConstants.Underline, isUnderlined);

			note.replaceSelection("");

			try {
				note.getStyledDocument().insertString(
						selectionEnd - text.length(), text, style);
			} catch (BadLocationException ex) {

			}

		}// if end...

	}

	private void setFontItalicStyle() {
		if (note.getSelectedText() != null) {

			StyledDocument doc = (StyledDocument) note.getDocument();
			String text = note.getSelectedText();
			int selectionStart = note.getSelectionStart();
			int selectionEnd = note.getSelectionEnd();

			StyleContext context = new StyleContext();
			Style style;

			Element element = doc.getCharacterElement(selectionStart);
			// Enumeration en= doc.getStyleNames();

			AttributeSet as = element.getAttributes();

			/**
			 * Get style from history...
			 */
			String family = StyleConstants.getFontFamily(as);
			int fontSize = StyleConstants.getFontSize(as);
			Color currentColor = StyleConstants.getForeground(as);
			boolean isBold = StyleConstants.isBold(as);
			boolean isItalic = StyleConstants.isItalic(as) ? false : true;
			boolean isUnderlined = StyleConstants.isUnderline(as);

			String styleName = String.valueOf(Math.random());

			style = context.addStyle(styleName, null);
			// style.addAttribute(StyleConstants.FontSize, fontSize);
			// style.addAttribute(StyleConstants.FontFamily, family);
			style.addAttribute(StyleConstants.Foreground, currentColor);
			style.addAttribute(StyleConstants.FontFamily, family);
			style.addAttribute(StyleConstants.FontSize, fontSize);
			style.addAttribute(StyleConstants.Bold, isBold);
			style.addAttribute(StyleConstants.Italic, isItalic);
			style.addAttribute(StyleConstants.Underline, isUnderlined);

			note.replaceSelection("");

			try {
				note.getStyledDocument().insertString(
						selectionEnd - text.length(), text, style);
			} catch (BadLocationException ex) {

			}

		}// if end...

	}

	private void setFontUnderLineStyle() {
		if (note.getSelectedText() != null) {

			StyledDocument doc = (StyledDocument) note.getDocument();
			String text = note.getSelectedText();
			int selectionStart = note.getSelectionStart();
			int selectionEnd = note.getSelectionEnd();

			StyleContext context = new StyleContext();
			Style style;

			Element element = doc.getCharacterElement(selectionStart);
			// Enumeration en= doc.getStyleNames();

			AttributeSet as = element.getAttributes();

			/**
			 * Get style from history...
			 */
			String family = StyleConstants.getFontFamily(as);
			int fontSize = StyleConstants.getFontSize(as);
			Color currentColor = StyleConstants.getForeground(as);
			boolean isBold = StyleConstants.isBold(as);
			boolean isItalic = StyleConstants.isItalic(as);
			boolean isUnderlined = StyleConstants.isUnderline(as) ? false
					: true;

			String styleName = String.valueOf(Math.random());

			style = context.addStyle(styleName, null);
			// style.addAttribute(StyleConstants.FontSize, fontSize);
			// style.addAttribute(StyleConstants.FontFamily, family);
			style.addAttribute(StyleConstants.Foreground, currentColor);
			style.addAttribute(StyleConstants.FontFamily, family);
			style.addAttribute(StyleConstants.FontSize, fontSize);
			style.addAttribute(StyleConstants.Bold, isBold);
			style.addAttribute(StyleConstants.Italic, isItalic);
			style.addAttribute(StyleConstants.Underline, isUnderlined);

			note.replaceSelection("");

			try {
				note.getStyledDocument().insertString(
						selectionEnd - text.length(), text, style);
			} catch (BadLocationException ex) {

			}

		}// if end...

	}

	private void setFontStyle(String s) {
		if (note.getSelectedText() != null) {

			StyledDocument doc = (StyledDocument) note.getDocument();
			String text = note.getSelectedText();
			int selectionStart = note.getSelectionStart();
			int selectionEnd = note.getSelectionEnd();

			StyleContext context = new StyleContext();
			Style style;

			Element element = doc.getCharacterElement(selectionStart);
			// Enumeration en= doc.getStyleNames();

			AttributeSet as = element.getAttributes();

			/**
			 * Get style from history...
			 */
			String family = s;
			int fontSize = StyleConstants.getFontSize(as);
			Color currentColor = StyleConstants.getForeground(as);
			boolean isBold = StyleConstants.isBold(as);
			boolean isItalic = StyleConstants.isItalic(as);
			boolean isUnderlined = StyleConstants.isUnderline(as);

			String styleName = String.valueOf(Math.random());

			style = context.addStyle(styleName, null);
			// style.addAttribute(StyleConstants.FontSize, fontSize);
			// style.addAttribute(StyleConstants.FontFamily, family);
			style.addAttribute(StyleConstants.Foreground, currentColor);
			style.addAttribute(StyleConstants.FontFamily, family);
			style.addAttribute(StyleConstants.FontSize, fontSize);
			style.addAttribute(StyleConstants.Bold, isBold);
			style.addAttribute(StyleConstants.Italic, isItalic);
			style.addAttribute(StyleConstants.Underline, isUnderlined);

			note.replaceSelection("");

			try {
				note.getStyledDocument().insertString(
						selectionEnd - text.length(), text, style);
			} catch (BadLocationException ex) {

			}

		}// if end...

	}

	private void setFontSizeStyle(int size) {
		if (note.getSelectedText() != null) {

			StyledDocument doc = (StyledDocument) note.getDocument();
			String text = note.getSelectedText();
			int selectionStart = note.getSelectionStart();
			int selectionEnd = note.getSelectionEnd();

			StyleContext context = new StyleContext();
			Style style;

			Element element = doc.getCharacterElement(selectionStart);
			// Enumeration en= doc.getStyleNames();

			AttributeSet as = element.getAttributes();

			/**
			 * Get style from history...
			 */
			String family = StyleConstants.getFontFamily(as);
			int fontSize = size;
			Color currentColor = StyleConstants.getForeground(as);
			boolean isBold = StyleConstants.isBold(as);
			boolean isItalic = StyleConstants.isItalic(as);
			boolean isUnderlined = StyleConstants.isUnderline(as);

			String styleName = String.valueOf(Math.random());

			style = context.addStyle(styleName, null);
			// style.addAttribute(StyleConstants.FontSize, fontSize);
			// style.addAttribute(StyleConstants.FontFamily, family);
			style.addAttribute(StyleConstants.Foreground, currentColor);
			style.addAttribute(StyleConstants.FontFamily, family);
			style.addAttribute(StyleConstants.FontSize, fontSize);
			style.addAttribute(StyleConstants.Bold, isBold);
			style.addAttribute(StyleConstants.Italic, isItalic);
			style.addAttribute(StyleConstants.Underline, isUnderlined);

			note.replaceSelection("");

			try {
				note.getStyledDocument().insertString(
						selectionEnd - text.length(), text, style);
			} catch (BadLocationException ex) {

			}

		}// if end...

	}

	private void setFontColorStyle(Color c) {
		if (note.getSelectedText() != null) {

			StyledDocument doc = (StyledDocument) note.getDocument();
			String text = note.getSelectedText();
			int selectionStart = note.getSelectionStart();
			int selectionEnd = note.getSelectionEnd();

			StyleContext context = new StyleContext();
			Style style;

			Element element = doc.getCharacterElement(selectionStart);
			// Enumeration en= doc.getStyleNames();

			AttributeSet as = element.getAttributes();

			/**
			 * Get style from history...
			 */
			String family = StyleConstants.getFontFamily(as);
			int fontSize = StyleConstants.getFontSize(as);
			Color currentColor = c;
			boolean isBold = StyleConstants.isBold(as);
			boolean isItalic = StyleConstants.isItalic(as);
			boolean isUnderlined = StyleConstants.isUnderline(as);

			String styleName = String.valueOf(Math.random());

			style = context.addStyle(styleName, null);
			// style.addAttribute(StyleConstants.FontSize, fontSize);
			// style.addAttribute(StyleConstants.FontFamily, family);
			style.addAttribute(StyleConstants.Foreground, currentColor);
			style.addAttribute(StyleConstants.FontFamily, family);
			style.addAttribute(StyleConstants.FontSize, fontSize);
			style.addAttribute(StyleConstants.Bold, isBold);
			style.addAttribute(StyleConstants.Italic, isItalic);
			style.addAttribute(StyleConstants.Underline, isUnderlined);

			note.replaceSelection("");

			try {
				note.getStyledDocument().insertString(
						selectionEnd - text.length(), text, style);
			} catch (BadLocationException ex) {

			}

		}// if end...

	}
	
	public JTextPane getNote(){
		return note ;
	}
}
