package sl.docx.app;

import sl.docx.BorderAttributes;
import sl.docx.DocxDocument;
import sl.docx.DocxEditorKit;

import javax.swing.*;
import javax.swing.text.*;
import javax.swing.tree.TreeNode;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.image.BufferedImage;
import java.io.FileInputStream;
import java.io.FileOutputStream;

/**
 * This class represent test application for showing all DocxEditorKit features.
 *
 * @author Stanislav Lapitsky
 */
public class Test {

    private JFrame mainFrame;
    private JTextPane edit;
    private JMenuBar mainMenu;
    private JSplitPane split;
    private JTree tree;
    private JCheckBoxMenuItem splittingMenuItem;

    /**
     * Constructs new application instance.
     */
    public Test() {
        mainFrame=new JFrame("DocxEditorKit test");
        mainFrame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);

        mainFrame.getContentPane().setLayout(new BorderLayout());

        initMenuBar();
        mainFrame.setJMenuBar(mainMenu);

        edit=new JTextPane();
        edit.setEditorKit(new DocxEditorKit());
        showFeatures();
        JScrollPane scrollEdit=new JScrollPane(edit);

        tree=new JTree((TreeNode)edit.getDocument().getDefaultRootElement());
        JScrollPane scrollTree=new JScrollPane(tree);
        split=new JSplitPane(JSplitPane.HORIZONTAL_SPLIT,scrollEdit,scrollTree);
        split.setDividerLocation(520);
        mainFrame.getContentPane().add(split,BorderLayout.CENTER);


        mainFrame.setSize(new Dimension(820,450));
        Dimension d=Toolkit.getDefaultToolkit().getScreenSize();
        int x=(d.width-mainFrame.getWidth())/2;
        int y=(d.height-mainFrame.getHeight())/2;
        mainFrame.setBounds(x,y,mainFrame.getWidth(),mainFrame.getHeight());

        JButton b=new JButton("test");
        ActionListener lst=new ActionListener() {
            public void actionPerformed(ActionEvent e) {
                DocxDocument doc=(DocxDocument)edit.getDocument();
                doc.refresh();
            }
        };
        b.addActionListener(lst);
        mainFrame.getContentPane().add(b,BorderLayout.SOUTH);
        mainFrame.setVisible(true);
    }

    /**
     * Initialize application menu.
     */
    protected void initMenuBar() {
        mainMenu=new JMenuBar();
        JMenu fileMenu=new JMenu("File");
        mainMenu.add(fileMenu);
            fileMenu.add(new JMenuItem(saveAction()));
            fileMenu.add(new JMenuItem(loadAction()));
            fileMenu.add(new JMenuItem(reloadAction()));
        JMenu editMenu=new JMenu("Edit");
        mainMenu.add(editMenu);
            editMenu.add(new JMenuItem(copyAction()));
            editMenu.add(new JMenuItem(pasteAction()));
            editMenu.addSeparator();
            editMenu.add(new JMenuItem(insertImageAction()));
            editMenu.add(new JMenuItem(paragraphAttributesAction()));
            editMenu.add(new JMenuItem(setMarginsAction()));

        JMenu tableMenu=new JMenu("Table");
            JMenu insert=new JMenu("Insert");
                insert.add(new JMenuItem(insertTableAction()));
                insert.addSeparator();
                insert.add(new JMenuItem(insertRowAction(true)));
                insert.add(new JMenuItem(insertRowAction(false)));
                insert.addSeparator();
                insert.add(new JMenuItem(insertColumnAction(true)));
                insert.add(new JMenuItem(insertColumnAction(false)));
            tableMenu.add(insert);

            JMenu delete=new JMenu("Delete");
                delete.add(new JMenuItem(deleteTableAction()));
                delete.add(new JMenuItem(deleteRowAction()));
                delete.add(new JMenuItem(deleteColumnAction()));
            tableMenu.add(delete);
        mainMenu.add(tableMenu);

        JMenu print=new JMenu("Print");
            print.add(new JMenuItem(printAction()));
        mainMenu.add(print);

        JMenu properties=new JMenu("Properties");
            properties.add(new JMenuItem(tablePropertiesAction()));
            properties.add(new JMenuItem(rowPropertiesAction()));
            properties.add(new JMenuItem(cellPropertiesAction()));
        mainMenu.add(properties);
    }

    /**
     * Return an Action which inserts image into document.
     * Used for creating menu item.
     *
     * @return
     */
    protected Action insertImageAction() {
        Action a = new AbstractAction("Insert image") {
            public void actionPerformed(ActionEvent e) {
                JFileChooser fc = new JFileChooser();
                if (fc.showOpenDialog(mainFrame) != JFileChooser.APPROVE_OPTION)
                    return;
                ImageIcon icon = new ImageIcon(fc.getSelectedFile().getPath());
                int w = icon.getIconWidth();
                int h = icon.getIconHeight();
                if (w <= 0 || h <= 0) {
                    JOptionPane.showMessageDialog(mainFrame, "Invalid image!");
                    return;
                }
                DocxDocument doc=(DocxDocument)edit.getDocument();
                doc.insertPicture(icon,edit.getCaretPosition());
            }
        };
        return a;
    }

    /**
     * Return an Action which setVisible(true)s paragraph attributes.
     * Used for creating menu item.
     *
     * @return
     */
    protected Action paragraphAttributesAction() {
        Action a = new AbstractAction("Paragraph...") {
            public void actionPerformed(ActionEvent e) {
                ParagraphDialog pd=new ParagraphDialog(mainFrame);
                AttributeSet attrs=((DocxDocument)edit.getDocument()).getParagraphElement(edit.getCaretPosition()).getAttributes();
                pd.setAttributes(attrs);
                pd.setVisible(true);
                if (pd.getOption()==JOptionPane.OK_OPTION) {
                    DocxDocument doc=(DocxDocument)edit.getDocument();
                    AttributeSet attr=pd.getAttributes();
                    doc.setParagraphAttributes(edit.getSelectionStart(),edit.getSelectionEnd()-edit.getSelectionStart(),attr,false);
                }
            }
        };
        return a;
    }

    /**
     * Return an Action which inserts table into document.
     * Used for creating menu item.
     *
     * @return
     */
    protected Action insertTableAction() {
        Action a = new AbstractAction("Table...") {
            public void actionPerformed(ActionEvent e) {
                InsertTableDialog dlg=new InsertTableDialog(mainFrame);
                dlg.setVisible(true);
                if (dlg.getOption()==JOptionPane.OK_OPTION) {
                    int pos=edit.getCaretPosition();
                    DocxDocument doc=(DocxDocument)edit.getDocument();
                    Element cell=doc.getCell(pos);
                    SimpleAttributeSet attrs=new SimpleAttributeSet();
                    BorderAttributes ba=new BorderAttributes();
                    ba.setBorders(1+2+4+8+16+32);
                    ba.lineColor=dlg.getColor();
                    attrs.addAttribute("BorderAttributes",ba);
                    int[] widths=new int[dlg.getColumnCount()];
                    if (cell==null) {
                        for (int i=0; i<widths.length; i++) {
                            widths[i]=100;
                        }
                    }
                    else {
                        int width=((DocxDocument.CellElement)cell).getWidth()-4;
                        for (int i=0; i<widths.length; i++) {
                            widths[i]=width/dlg.getColumnCount();
                        }
                    }
                    int[] heights=new int[dlg.getRowCount()];
                    for (int i=0; i<heights.length; i++) {
                        heights[i]=1;
                    }
                    doc.insertTable(pos,dlg.getRowCount(),dlg.getColumnCount(),attrs,widths,heights);
                }
            }
        };
        return a;
    }

    /**
     * Return an Action which inserts row into document's table.
     * Used for creating menu item.
     *
     * @param above if true new row will be inserted above current row.
     * @return
     */
    protected Action insertRowAction(final boolean above) {
        String label="Row";
        if (above) {
            label+=" above";
        }
        else {
            label+=" below";
        }
        Action a = new AbstractAction(label) {
            public void actionPerformed(ActionEvent e) {
                DocxDocument doc=(DocxDocument)edit.getDocument();
                doc.insertRow(edit.getCaretPosition(),above);
            }
        };
        return a;
    }

    /**
     * Return an Action which inserts column into document's table.
     * Used for creating menu item.
     *
     * @param beforeove if true new column will be inserted before current
     * column.
     * @return
     */
    protected Action insertColumnAction(final boolean before) {
        String label="Column";
        if (before) {
            label+=" to the left";
        }
        else {
            label+=" to the right";
        }
        Action a = new AbstractAction(label) {
            public void actionPerformed(ActionEvent e) {
                DocxDocument doc=(DocxDocument)edit.getDocument();
                doc.insertColumn(edit.getCaretPosition(),50,before);
            }
        };
        return a;
    }

    /**
     * Return an Action which removes table from document.
     * Used for creating menu item.
     *
     * @return
     */
    protected Action deleteTableAction() {
        Action a = new AbstractAction("Table") {
            public void actionPerformed(ActionEvent e) {
                DocxDocument doc=(DocxDocument)edit.getDocument();
                doc.deleteTable(edit.getCaretPosition());
            }
        };
        return a;
    }

    /**
     * Return an Action which removes row from document's table.
     * Used for creating menu item.
     *
     * @return
     */
    protected Action deleteRowAction() {
        Action a = new AbstractAction("Row") {
            public void actionPerformed(ActionEvent e) {
                DocxDocument doc=(DocxDocument)edit.getDocument();
                doc.deleteRow(edit.getCaretPosition());
            }
        };
        return a;
    }

    /**
     * Return an Action which removes column from document's table.
     * Used for creating menu item.
     *
     * @return
     */
    protected Action deleteColumnAction() {
        Action a = new AbstractAction("Column") {
            public void actionPerformed(ActionEvent e) {
                DocxDocument doc=(DocxDocument)edit.getDocument();
                doc.deleteColumn(edit.getCaretPosition());
            }
        };
        return a;
    }

    /**
     * Return an Action which sets margins of document.
     * Used for creating menu item.
     *
     * @return
     */
    protected Action setMarginsAction() {
        Action a = new AbstractAction("Margins...") {
            public void actionPerformed(ActionEvent e) {
                DocxDocument doc=(DocxDocument)edit.getDocument();
                MarginsDialog dlg=new MarginsDialog(mainFrame);
                dlg.setMargins(doc.getDocumentMargins());
                dlg.setVisible(true);
                if (dlg.getOption()==JOptionPane.OK_OPTION) {
                    doc.setDocumentMargins(dlg.getMargins());
                }
            }
        };
        return a;
    }

    /**
     * Return an Action which saves document.
     * Used for creating menu item.
     *
     * @return
     */
    protected Action saveAction() {
        Action a = new AbstractAction("Save...") {
            public void actionPerformed(ActionEvent e) {
                JFileChooser fc = new JFileChooser();
                if (fc.showSaveDialog(mainFrame) != JFileChooser.APPROVE_OPTION)
                    return;
                String filePath=fc.getSelectedFile().getPath();
                if (!filePath.endsWith(".docx")) {
                    filePath+=".docx";
                }
                try {
                    FileOutputStream writer = new FileOutputStream(filePath);
                    edit.getEditorKit().write(writer, edit.getDocument(), 0, edit.getDocument().getLength());

                    writer.flush();
                    writer.close();
                } catch (Exception ex) {
                    ex.printStackTrace();
                    System.err.println(ex.getMessage());
                    JOptionPane.showMessageDialog(null, ex.getMessage(), "Writing error!", JOptionPane.ERROR_MESSAGE);
                }
            }
        };
        return a;
    }

    /**
     * Return an Action which loads document.
     * Used for creating menu item.
     *
     * @return
     */
    protected Action loadAction() {
        Action a = new AbstractAction("Load...") {
            public void actionPerformed(ActionEvent e) {
                JFileChooser fc = new JFileChooser();
                if (fc.showOpenDialog(mainFrame) != JFileChooser.APPROVE_OPTION)
                    return;
                String filePath=fc.getSelectedFile().getPath();
                try {
                    FileInputStream in=new FileInputStream(filePath);
                    edit.setEditorKit(new DocxEditorKit());
                    edit.getEditorKit().read(in, edit.getDocument(),0);
                    in.close();
                } catch (Exception ex) {
                    ex.printStackTrace();
                    System.err.println(ex.getMessage());
                    JOptionPane.showMessageDialog(edit, ex.getMessage(), "Writing error!", JOptionPane.ERROR_MESSAGE);
                }
            }
        };
        return a;
    }
    /**
     * Return an Action which perform copying
     * Used for creating menu item.
     *
     * @return
     */
    protected Action copyAction() {
        Action a = new AbstractAction("Copy CTRL+C") {
            public void actionPerformed(ActionEvent e) {
                edit.copy();
            }
        };
        return a;
    }
    /**
     * Return an Action which performs pasting
     * Used for creating menu item.
     *
     * @return
     */
    protected Action pasteAction() {
        Action a = new AbstractAction("Paste CTRL+V") {
            public void actionPerformed(ActionEvent e) {
                edit.paste();
            }
        };
        return a;
    }

    /**
     * Starts application.
     *
     * @param args
     */
    public static void main(final String[] args) {
        SwingUtilities.invokeLater(new Runnable() {
            public void run() {
                Test app=new Test();
                if (args.length>0) {
                    String filePath=args[0];
                    app.loadFile(filePath);
                }
            }
        });
    }
    String oldFilePath;
    public void loadFile(String filePath) {
        try {
            oldFilePath=filePath;
            FileInputStream in=new FileInputStream(filePath);
            edit.getEditorKit().read(in, edit.getDocument(), 0);
            edit.setCaretPosition(0);
            in.close();
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }

    public void reload() {
        loadFile(oldFilePath);
    }


    /**
     * setVisible(true)s all implemented features.
     */
    public void showFeatures() {
        DocxDocument doc=(DocxDocument)edit.getDocument();
        try {
            //margins support
            doc.setDocumentMargins(new Insets(50,50,50,50));

            //paragraph features
            String paragraph="Usual paragraph text ";
            for (int i=0; i<4; i++) {
                paragraph+=paragraph;
            }
            doc.insertString(0,paragraph+"\n ",null);

            paragraph="Show paragraph features support. Alignment justified, first line indent is 50, line spacing is 1.5. ";
            paragraph+=paragraph;
            MutableAttributeSet attrs=new SimpleAttributeSet();
            StyleConstants.setAlignment(attrs,StyleConstants.ALIGN_JUSTIFIED);
            StyleConstants.setFirstLineIndent(attrs,50);
            StyleConstants.setLineSpacing(attrs,1.5f);
            StyleConstants.setLeftIndent(attrs,10);
            StyleConstants.setRightIndent(attrs,10);
            doc.insertString(0,paragraph+"\n",null);
            doc.setParagraphAttributes(0,paragraph.length(),attrs,false);
            doc.insertString(0,"\n",null);
            doc.setParagraphAttributes(0,1,new SimpleAttributeSet(),true);

            //tables
            BorderAttributes ba=new BorderAttributes();
            ba.setBorders(1+2+4+8+16+32);
            ba.lineColor=Color.black;
            int[] widths=new int[] {150,100,50};
            int[] heights=new int[] {1,50};
            attrs=new SimpleAttributeSet();
            attrs.addAttribute("BorderAttributes",ba);
            doc.insertTable(1,2,3,attrs,widths,heights);
            doc.insertString(2,"Tables support",null);

            //nested tables
            ba=new BorderAttributes();
            ba.setBorders(1+2+4+8+16+32);
            ba.lineColor=Color.blue;
            widths=new int[] {70,50};
            heights=new int[] {1,50,1};
            attrs=new SimpleAttributeSet();
            attrs.addAttribute("BorderAttributes",ba);
            StyleConstants.setAlignment(attrs,StyleConstants.ALIGN_RIGHT);
            doc.insertTable(1,3,2,attrs,widths,heights);
            doc.insertString(1,"Nested tables support",null);

            //images
            BufferedImage bi=new BufferedImage(100,50,BufferedImage.TYPE_INT_RGB);
            Graphics g=bi.getGraphics();
            Color old=g.getColor();
            g.setColor(Color.yellow);
            g.fillRect(0,0,100,50);
            g.setColor(Color.blue);
            g.fillOval(15,15,70,30);
            g.setFont(new Font("Arial",Font.BOLD,16));
            g.setColor(Color.red);
            g.drawString("Image test",10,10);
            g.setColor(old);
            doc.insertPicture(new ImageIcon(bi),doc.getLength()-1);

MutableAttributeSet attrss=new SimpleAttributeSet();
StyleConstants.setFontSize(attrss,14);
StyleConstants.setItalic(attrss,true);
            doc.insertString(0,"1111111111111111111\n2222222222222222222\n3333333333333333333",attrss);

            attrs=new SimpleAttributeSet();
            StyleConstants.setFontFamily(attrs,"Arial");
            doc.setCharacterAttributes(0,20,attrs,false);

            StyleConstants.setFontFamily(attrs,"Serif");
            doc.setCharacterAttributes(20,20,attrs,false);

            attrs=new SimpleAttributeSet();
            StyleConstants.setAlignment(attrs,StyleConstants.ALIGN_RIGHT);
            doc.setParagraphAttributes(0,60,attrs,false);


        }
        catch (Exception ex) {
            ex.printStackTrace();
        }
    }

    /**
     * Calculate size (inches) for given size in pixels.
     * @param pixSize size in pixels.
     * @return
     */
    public static double converPixelsToInches(int pixSize) {
        int factor = (int) Math.pow(10, 5);
        double result = ((double) Math.round(((double)pixSize)/72 * factor)) / factor;
        return result;
    }

    /**
     * Calculate size (pixels) for given size in inches.
     * @param inchSize size in inches.
     * @return
     */
    public static int converInchesToPixels(double inchSize) {
        return (int)Math.round(inchSize*72);
    }

    /**
     * Return an Action which performs printing test
     * Used for creating menu item.
     *
     * @return
     */
    protected Action printAction() {
        Action a = new AbstractAction("Print test") {
            public void actionPerformed(ActionEvent e) {
            }
        };
        return a;
    }

    /**
     * Return an Action which setVisible(true)s table's properties
     * Used for creating menu item.
     *
     * @return
     */
    protected Action tablePropertiesAction() {
        Action a = new AbstractAction("Table...") {
            public void actionPerformed(ActionEvent e) {
                DocxDocument doc=(DocxDocument)edit.getDocument();
                Element table=doc.getTable(edit.getCaretPosition());
                if (table==null) {
                    JOptionPane.showMessageDialog(null, "Invalid table offset!");
                    return;
                }
                TableProperties tp=new TableProperties();
                tp.setTable(table);
                tp.setVisible(true);
            }
        };
        return a;
    }

    /**
     * Return an Action which setVisible(true)s row's properties
     * Used for creating menu item.
     *
     * @return
     */
    protected Action rowPropertiesAction() {
        Action a = new AbstractAction("Row...") {
            public void actionPerformed(ActionEvent e) {
                DocxDocument doc=(DocxDocument)edit.getDocument();
                Element row=doc.getRow(edit.getCaretPosition());
                if (row==null) {
                    JOptionPane.showMessageDialog(null, "Invalid row offset!");
                    return;
                }
                TableProperties tp=new TableProperties();
                tp.setRow(row);
                tp.setVisible(true);
            }
        };
        return a;
    }

    /**
     * Return an Action which setVisible(true)s cell's properties
     * Used for creating menu item.
     *
     * @return
     */
    protected Action cellPropertiesAction() {
        Action a = new AbstractAction("Cell...") {
            public void actionPerformed(ActionEvent e) {
                DocxDocument doc=(DocxDocument)edit.getDocument();
                Element cell=doc.getCell(edit.getCaretPosition());
                if (cell==null) {
                    JOptionPane.showMessageDialog(null, "Invalid cell offset!");
                    return;
                }
                TableProperties tp=new TableProperties();
                tp.setCell(cell);
                tp.setVisible(true);
            }
        };
        return a;
    }

    protected Action reloadAction() {
        Action a = new AbstractAction("Reload") {
            public void actionPerformed(ActionEvent e) {
                reload();
            }
        };
        return a;
    }
}