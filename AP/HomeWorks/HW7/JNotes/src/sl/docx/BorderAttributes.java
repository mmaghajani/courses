package sl.docx;

import java.awt.*;
import java.io.Serializable;

/**
 * This class implements a border attributes set. Such as border color,
 * border style etc.
 *
 * @author	Stanislav Lapitsky
 */
public class BorderAttributes implements Serializable {
  /**
   * top border value
   */
  public static final int TOP=1;
  /**
   * horizontal middle  border value
   */
  public static final int HORIZONTAL=2;
  /**
   * bottom border value
   */
  public static final int BOTTOM=4;
  /**
   * left border value
   */
  public static final int LEFT=8;
  /**
   * vertical middle border value
   */
  public static final int VERTICAL=16;
  /**
   * right border value
   */
  public static final int RIGHT=32;
  /**
   * Top border presence
   */
  public int borderTop=0;
  /**
   * Horizontal inner border presence
   */
  public int borderHorizontal=0;
  /**
   * Bottom border presence
   */
  public int borderBottom=0;

  /**
   * Left border presence
   */
  public int borderLeft=0;
  /**
   * Vertical inner border presence
   */
  public int borderVertical=0;
  /**
   * Right border presence
   */
  public int borderRight=0;

  /**
   * Color of border line
   */
  public Color lineColor=Color.BLACK;

  /**
   * Set values of table borders
   * @param	borders   Binary symbol rank corresponds to appropriate border
   * 1 - top border
   * 2 - horizontal inner border
   * 3 - bottom border
   * 4 - left border
   * 5 - vertical inner border
   * 6 - right border
   */
  public void setBorders(int borders) {
    int val=borders;

    borderTop=val % 2;
    val=val/2;
    borderHorizontal=val % 2;
    val=val/2;
    borderBottom=val % 2;
    val=val/2;

    borderLeft=val % 2;
    val=val/2;
    borderVertical=val % 2;
    val=val/2;
    borderRight=val % 2;
    val=val/2;
  }
  /**
   * @return numeric representation of the borders
   */
  public int getBorders() {
    int result=0;
    result+=borderTop;
    result+=borderHorizontal*2;
    result+=borderBottom*4;

    result+=borderLeft*8;
    result+=borderVertical*16;
    result+=borderRight*32;
    return result;
  }
}