package sl.docx.app;

import javax.swing.*;
import javax.swing.border.CompoundBorder;
import javax.swing.border.LineBorder;
import javax.swing.border.MatteBorder;
import java.awt.*;

/**
 * This class represents a Renderer for color selection combobox
 * If values of combobox elements list are colors then renderer paints apecified
 * color. In other case renderer paints string value of  object.
 *
 * @author	Stanislav Lapitsky
 */
public class ColorComboRenderer extends JLabel implements ListCellRenderer
{
  /**
   * Current color value for combobox element painting
   */
  protected Color m_color = Color.black;
  /**
   * color for the focused element
   */
  protected Color m_focusColor=(Color)UIManager.get("List.selectionBackground");
  /**
   * color for non focused element
   */
  protected Color m_nonFocusColor = Color.white;

  /**
   * constructs an instance of renderer
   */
  public ColorComboRenderer() {
      setOpaque(true);
  }

  /**
   * Return a component that has been configured to display the specified
   * value. That component's paint method is then called to
   * "render" the cell.  If it is necessary to compute the dimensions
   * of a list because the list cells do not have a fixed size, this method
   * is called to generate a component on which getPreferredSize
   * can be invoked.
   *
   * @param list The JList we're painting.
   * @param	obj The value returned by list.getModel().getElementAt(index).
   * @param	row The cells index.
   * @param	sel True if the specified cell was selected.
   * @param	hasFocus True if the specified cell has the focus.
   * @return A component whose paint() method will render the specified value.
   */
  public Component getListCellRendererComponent(JList list,Object obj, int row,
          boolean sel, boolean hasFocus) {
    if (hasFocus || sel)
      setBorder(new CompoundBorder(
        new MatteBorder(2, 10, 2, 10, m_focusColor),
        new LineBorder(Color.black)));
    else
      setBorder(new CompoundBorder(
        new MatteBorder(2, 10, 2, 10, m_nonFocusColor),
        new LineBorder(Color.black)));

    if (obj instanceof Color) {
      m_color = (Color) obj;
      setBackground(m_color);
      setText(" ");
    }
    else {
      setText(obj.toString());
      setBackground(Color.white);
      m_color=Color.white;
    }

    return this;
  }

  /**
   * paints elements
   * @param	g  graphics context
   */
  public void paintComponent(Graphics g) {
    setBackground(m_color);

    super.paintComponent(g);
  }

}
