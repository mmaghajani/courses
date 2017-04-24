package sl.docx.app;

import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.FocusEvent;
import java.awt.event.FocusListener;

/**
 * This class implements spinedit functionality with double format of value.
 * @author	Stanislav Lapitsky
 */
public class DoubleSpinEdit extends JPanel{

  /**
   * Text field to user's input.
   */
  protected JTextField m_textValue;

  /**
   * current value.
   */
  protected double value=0;
  /**
   * least value of SpinEdit.
   */
  protected double minValue=0;
  /**
   * greatest value of SpinEdit.
   */
  protected double maxValue=0;
  /**
   * step value to increase/decrease.
   */
  protected double step=1;

  /**
   * if user press this button value is increased.
   */
  protected JButton m_bUp;
  /**
   * if user press this button value is decreased.
   */
  protected JButton m_bDown;

  /**
   * Constructs new instance with specified minimum and maximum values.
   * @param min minimum value.
   * @param max maximum value.
   */
  public DoubleSpinEdit(double min,double max) {
      this();
      setMaxValue(max);
      setMinValue(min);
  }

  /**
   * Constructs new instance with specified minimum and maximum values and
   * current value.
   * @param min minimum value.
   * @param max maximum value.
   * @param value current value.
   */
  public DoubleSpinEdit(double min,double max,double value) {
      this();
      setMaxValue(max);
      setMinValue(min);
      setValue(value);
  }
  /**
   * Constructs an instance of class. By default value=0
   * minValue and max Value=0 the same.
   * It means that user can set value field without restrictions to any number.
   */
  public DoubleSpinEdit() {
    super(new BorderLayout());
    ActionListener lst;
    FocusListener lst_;

    m_textValue=new JTextField("0");
      lst_=new FocusListener() {
        public void focusLost(FocusEvent e) {
          try {
            double v=new Double(m_textValue.getText()).doubleValue();
            if ((v<=maxValue) && (v>=minValue) && (minValue<maxValue)) {
                value=v;
            }
            else if (v>maxValue) {
                value=maxValue;
            }
            else if (v<minValue) {
                value=minValue;
            }
          }
          catch (Exception ex) {
          }
          draw();
        }
        public void focusGained(FocusEvent e) {
        }
      };
    m_textValue.addFocusListener(lst_);
    this.add(m_textValue,BorderLayout.CENTER);

    JPanel p=new JPanel(new GridLayout(2,1));
      m_bUp=new UpButton();
      m_bUp.setMargin(new Insets(0,0,0,0));
      m_bUp.setPreferredSize(new Dimension(20,5));
      lst=new ActionListener() {
        public void actionPerformed(ActionEvent e) {
          if ((value+step<=maxValue) && (value+step>=minValue) && (minValue<maxValue)) {
            value+=step;
            draw();
          }
        }
      };
      m_bUp.addActionListener(lst);
      p.add(m_bUp);

      m_bDown=new DownButton();
      m_bDown.setMargin(new Insets(0,0,0,0));
      m_bDown.setPreferredSize(new Dimension(20,5));
      lst=new ActionListener() {
        public void actionPerformed(ActionEvent e) {
          if ((value-step<=maxValue) && (value-step>=minValue) && (minValue<maxValue)) {
            value-=step;
            draw();
          }
        }
      };
      m_bDown.addActionListener(lst);
      p.add(m_bDown);
    this.add(p,BorderLayout.EAST);
  }

  /**
   * repaint text presentation of double value.
   */
  private void draw() {
    m_textValue.setText(Double.toString(value));
  }

  /**
   * @return current selected value.
   */
  public double getValue() {
    return value;
  }
  /**
   * Set current value to specified parameter.
   * @param	newValue
   */
  public void setValue(double newValue) {
    value=newValue;
    draw();
  }

  /**
   * @return minimum SpinEdit value.
   */
  public double getMinValue() {
    return minValue;
  }
  /** set minimum SpinEdit value to specified parameter.
   * @param	newValue
   */
  public void setMinValue(double newValue) {
    minValue=newValue;
  }

  /**
   * @return maximum SpinEdit value.
   */
  public double getMaxValue() {
    return maxValue;
  }
  /**
   * set maximum SpinEdit value to specified parameter.
   * @param	newValue
   */
  public void setMaxValue(double newValue) {
    maxValue=newValue;
  }

  /**
   * @return value of increase/decrease step.
   */
  public double getStep() {
    return step;
  }
  /**
   * set value of increase/decrease step.
   * @param	newValue
   */
  public void setStep(double newValue) {
    step=newValue;
  }

  public void setEnabled(boolean enabled) {
      super.setEnabled(enabled);
      m_textValue.setEnabled(enabled);
      m_bUp.setEnabled(enabled);
      m_bDown.setEnabled(enabled);
  }
//--- inner classes ------------------------------------------------------------
  protected class UpButton extends JButton {
      public void paint (Graphics g) {
          super.paint(g);
          Color old=g.getColor();
          g.setColor(Color.black);
          Rectangle clip=g.getClipBounds();
          int x=(int)(clip.getX()+clip.getWidth()/2);
          int y=(int)(clip.getY()+clip.getHeight()/2);
          g.fillPolygon(new int[] {x-6,x+5,x}
                       ,new int[] {y+3,y+3,y-3},3);
          g.setColor(old);
      }
  }
  protected class DownButton extends JButton {
      public void paint (Graphics g) {
          super.paint(g);
          Color old=g.getColor();
          g.setColor(Color.black);
          Rectangle clip=g.getClipBounds();
          int x=(int)(clip.getX()+clip.getWidth()/2);
          int y=(int)(clip.getY()+clip.getHeight()/2);
          g.fillPolygon(new int[] {x-6,x+5,x}
                       ,new int[] {y-3,y-3,y+3},3);
          g.setColor(old);
      }
  }
}