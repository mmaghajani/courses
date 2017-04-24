package sl.docx.app;

import javax.swing.*;
import javax.swing.border.EtchedBorder;
import javax.swing.border.TitledBorder;
import javax.swing.text.*;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.FocusEvent;
import java.awt.event.FocusListener;

/**
 * This class implements a paragraph settings functionality. Such as alignment,
 * indentation, spacing and other paragraph attributes.
 * @author	Stanislav Lapitsky
 */
public class ParagraphDialog extends JDialog
{
  /**
   * return option value
   */
  protected int m_option = JOptionPane.CLOSED_OPTION;
  /**
   * Paragraph attributes
   */
  protected MutableAttributeSet m_attributes;
  /**
   * contains line spacing value
   */
  protected DoubleSpinEdit m_lineSpacing;
  /**
   * contains value of above spacing
   */
  protected DoubleSpinEdit m_spaceAbove;
  /**
   * contains value of below spacing
   */
  protected DoubleSpinEdit m_spaceBelow;
  /**
   * contains value of indent of first line of paragraph text
   */
  protected DoubleSpinEdit m_firstIndent;
  /**
   * contains value of left paragraph indent
   */
  protected DoubleSpinEdit m_leftIndent;
  /**
   * contains value of right paragraph indent
   */
  protected DoubleSpinEdit m_rightIndent;
  /**
   * if button is pressed then paragraph alignment sets to the left
   */
  protected JToggleButton m_btLeft;
  /**
   * if button is pressed then paragraph alignment sets to the center
   */
  protected JToggleButton m_btCenter;
  /**
   * if button is pressed then paragraph alignment sets to the right
   */
  protected JToggleButton m_btRight;
  /**
   * if button is pressed then paragraph alignment sets to the justify
   */
  protected JToggleButton m_btJustified;

  /**
   * reflects paragraph with specified attributes view
   */
  protected JEditorPane m_preview;


  /**
   * constructs instance of dialog
   * @param	parent parent window frame
   */
  public ParagraphDialog(JFrame parent) {
    super(parent, "Paragraph properties", true);
    setModal(true);
    getContentPane().setLayout(new BoxLayout(getContentPane(),BoxLayout.Y_AXIS));

    JPanel p = new JPanel(new GridLayout(1, 2, 5, 2));

    JPanel ps = new JPanel(new GridLayout(3, 2, 10, 2));
    ps.setBorder(new TitledBorder(new EtchedBorder(), "Space"));
    ps.add(new JLabel("Line spacing"));
    //space between lines
    m_lineSpacing = new DoubleSpinEdit();
      m_lineSpacing.setMinValue(1);
      m_lineSpacing.setMaxValue(5);
    ps.add(m_lineSpacing);
    ps.add(new JLabel("Space above"));
    //space above the paragraph
    m_spaceAbove = new DoubleSpinEdit();
      m_spaceAbove.setMinValue(0);
      m_spaceAbove.setMaxValue(500);
    ps.add(m_spaceAbove);
    ps.add(new JLabel("Space below"));
    //space below the paragraph
    m_spaceBelow = new DoubleSpinEdit();
      m_spaceBelow.setMinValue(0);
      m_spaceBelow.setMaxValue(500);
    ps.add(m_spaceBelow);
    p.add(ps);

    JPanel pi = new JPanel(new GridLayout(3, 2, 10, 2));
    pi.setBorder(new TitledBorder(new EtchedBorder(), "Indent"));
    pi.add(new JLabel("First line indent"));
    // ident before first line
    m_firstIndent = new DoubleSpinEdit();
      m_firstIndent.setMinValue(-500);
      m_firstIndent.setMaxValue(500);
    pi.add(m_firstIndent);
    pi.add(new JLabel("Left indent"));
    //left paragraph ident
    m_leftIndent = new DoubleSpinEdit();
      m_leftIndent.setMinValue(0);
      m_leftIndent.setMaxValue(500);
    pi.add(m_leftIndent);
    pi.add(new JLabel("Right indent"));
    //right paragraph ident
    m_rightIndent = new DoubleSpinEdit();
      m_rightIndent.setMinValue(0);
      m_rightIndent.setMaxValue(500);
    pi.add(m_rightIndent);
    p.add(pi);
    getContentPane().add(p);

    p = new JPanel();
    p.setLayout(new BoxLayout(p, BoxLayout.X_AXIS));
    p.add(new JLabel("Alignment"));

    ButtonGroup bg = new ButtonGroup();
    m_btLeft = new JToggleButton("Left");
    bg.add(m_btLeft);
    p.add(m_btLeft);
    m_btCenter = new JToggleButton("Center");
    bg.add(m_btCenter);
    p.add(m_btCenter);
    m_btRight = new JToggleButton("Right");
    bg.add(m_btRight);
    p.add(m_btRight);
    m_btJustified = new JToggleButton("Justified");
    bg.add(m_btJustified);
    p.add(m_btJustified);
    getContentPane().add(p);

    p = new JPanel();
    p.setLayout(new BorderLayout());
    p.setBorder(new TitledBorder(new EtchedBorder(), "Preview"));
    m_preview = new JEditorPane();
    m_preview.setEditorKit(new StyledEditorKit());
    m_preview.setEnabled(false);
    m_preview.setText("Previous paragraph\nParagraph preview, paragraph preview, paragraph preview, paragraph preview\nNext paragraph");

    StyledDocument styled= (StyledDocument)m_preview.getDocument();
    SimpleAttributeSet attr=new SimpleAttributeSet();
    StyleConstants.setFontSize(attr,6);
    styled.setCharacterAttributes(0,styled.getLength(),attr,false);

    JScrollPane scroll=new JScrollPane(m_preview);
    p.add(scroll, BorderLayout.CENTER);
    getContentPane().add(p);

    p = new JPanel(); //new FlowLayout());
    //JPanel p1 = new JPanel(new GridLayout(1, 2, 10, 2));
    JButton btOK = new JButton("Ok");
    ActionListener lst = new ActionListener() {
      public void actionPerformed(ActionEvent e) {
          /*
           * processing OK button pressing
           */
        m_option = JOptionPane.OK_OPTION;
        setVisible(false);
      }
    };
    btOK.addActionListener(lst);
    //p1.add(btOK);
    p.add(btOK);

    JButton btCancel = new JButton("Cancel");
    lst = new ActionListener() {
      public void actionPerformed(ActionEvent e) {
          /*
           * processing CANCEL button pressing
           */
        m_option = JOptionPane.CANCEL_OPTION;
        setVisible(false);
      }
    };
    btCancel.addActionListener(lst);
    //p1.add(btCancel);
    //p.add(p1);
    p.add(btCancel);

    getContentPane().add(p);

    pack();
    /*
     * place dialog in the center of container
     */
    Dimension d1 = getSize();
    Dimension d2 = parent.getSize();
    int x = Math.max((d2.width-d1.width)/2, 0);
    int y = Math.max((d2.height-d1.height)/2, 0);
    setBounds(x, y, d1.width, d1.height + 50);

    /*
     * when we lost focus of paragraph properties controls we should update
     * paragraph preview.
     */
    FocusListener flst = new FocusListener() {
      public void focusGained(FocusEvent e) {}

      public void focusLost(FocusEvent e) { updatePreview(); }
    };
    m_lineSpacing.addFocusListener(flst);
    m_spaceAbove.addFocusListener(flst);
    m_spaceBelow.addFocusListener(flst);
    m_firstIndent.addFocusListener(flst);
    m_leftIndent.addFocusListener(flst);
    m_rightIndent.addFocusListener(flst);

    lst = new ActionListener() {
      public void actionPerformed(ActionEvent e) {
        updatePreview();
      }
    };
    m_btLeft.addActionListener(lst);
    m_btCenter.addActionListener(lst);
    m_btRight.addActionListener(lst);
    m_btJustified.addActionListener(lst);
  }

  /**
   * Set paragraph attributes and reflect their in the dialog
   * @param	a settable attributes
   */
  public void setAttributes(AttributeSet a) {
    m_attributes = new SimpleAttributeSet(a);

    float newValue;

    double value = StyleConstants.getLineSpacing(a);
    if (value<1)
        value=1;
    m_lineSpacing.setValue(value);

    newValue = StyleConstants.getSpaceAbove(a);
    m_spaceAbove.setValue(Test.converPixelsToInches((int)newValue));

    newValue = StyleConstants.getSpaceBelow(a);
    m_spaceBelow.setValue(Test.converPixelsToInches((int)newValue));

    newValue = StyleConstants.getFirstLineIndent(a);
    m_firstIndent.setValue(Test.converPixelsToInches((int)newValue));

    newValue = StyleConstants.getLeftIndent(a);
    m_leftIndent.setValue(Test.converPixelsToInches((int)newValue));

    newValue = StyleConstants.getRightIndent(a);
    m_rightIndent.setValue(Test.converPixelsToInches((int)newValue));

    int alignment = StyleConstants.getAlignment(a);
    if (alignment == StyleConstants.ALIGN_LEFT)
      m_btLeft.setSelected(true);
    else if (alignment == StyleConstants.ALIGN_CENTER)
      m_btCenter.setSelected(true);
    else if (alignment == StyleConstants.ALIGN_RIGHT)
      m_btRight.setSelected(true);
    else if (alignment == StyleConstants.ALIGN_JUSTIFIED)
      m_btJustified.setSelected(true);

    updatePreview();
  }

  /**
   * @return current paragraph attributes
   */
  public AttributeSet getAttributes() {
    if (m_attributes == null) return null;

    double newValue;

    newValue = (double)m_lineSpacing.getValue();
    StyleConstants.setLineSpacing(m_attributes, (float)newValue);

    newValue = (double)m_spaceAbove.getValue();
    StyleConstants.setSpaceAbove(m_attributes, Test.converInchesToPixels(newValue));

    newValue = (double)m_spaceBelow.getValue();
    StyleConstants.setSpaceBelow(m_attributes, Test.converInchesToPixels(newValue));

    newValue = (double)m_firstIndent.getValue();
    StyleConstants.setFirstLineIndent(m_attributes, Test.converInchesToPixels(newValue));

    newValue = (double)m_leftIndent.getValue();
    StyleConstants.setLeftIndent(m_attributes, Test.converInchesToPixels(newValue));

    newValue = (double)m_rightIndent.getValue();
    StyleConstants.setRightIndent(m_attributes, Test.converInchesToPixels(newValue));

    StyleConstants.setAlignment(m_attributes, getAlignment());

    return m_attributes;
  }

  /**
   * return how user closed the dialog
   */
  public int getOption() {
    return m_option;
  }

  /**
   * @repaint preview paragraph object to reflect changed attribute set
   */
  protected void updatePreview() {
    AttributeSet a=getAttributes();
    StyledDocument styled = (StyledDocument)m_preview.getDocument();
    styled.setParagraphAttributes(20,0,a,false);
//    m_preview.repaint();
  }

  /**
   * @return paragraph alignment
   * */
  protected int getAlignment() {
    if (m_btLeft.isSelected())
      return StyleConstants.ALIGN_LEFT;
    if (m_btCenter.isSelected())
      return StyleConstants.ALIGN_CENTER;
    else if (m_btRight.isSelected())
      return StyleConstants.ALIGN_RIGHT;
    else
      return StyleConstants.ALIGN_JUSTIFIED;
  }
}
