package sl.docx.app;

import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;


/**
 * Represents simple dialog for editing tables' margins.
 *
 * @author Stanislav Lapitsky
 */
public class MarginsDialog extends JDialog {

    private int option=JOptionPane.CANCEL_OPTION;

    private DoubleSpinEdit top=new DoubleSpinEdit(0,100);
    private DoubleSpinEdit bottom=new DoubleSpinEdit(0,100);
    private DoubleSpinEdit left=new DoubleSpinEdit(0,100);
    private DoubleSpinEdit right=new DoubleSpinEdit(0,100);

    /**
     * Constructs new dialog instance with specified parent frame.
     * @param owner parent frame
     */
    public MarginsDialog(JFrame owner) {
        super(owner);
        init();
    }

    /**
     * Constructs new dialog instance with specified parent dialog.
     * @param owner parent dialog
     */
    public MarginsDialog(JDialog owner) {
        super(owner);
        init();
    }

    /**
     * Initializes all dialogs' controls (button, edits etc.).
     */
    protected void init() {
        setModal(true);
        this.setTitle("Document margins");

        this.getContentPane().setLayout(new GridBagLayout());
        this.getContentPane().add(new JLabel("Top:"),new GridBagConstraints(0,0,1,1,0,0,GridBagConstraints.NORTHWEST,GridBagConstraints.NONE,new Insets(5,5,0,0),0,0));
        this.getContentPane().add(new JLabel("Bottom:"),new GridBagConstraints(0,1,1,1,0,0,GridBagConstraints.NORTHWEST,GridBagConstraints.NONE,new Insets(0,5,0,0),0,0));
        this.getContentPane().add(new JLabel("Left:"),new GridBagConstraints(0,2,1,1,0,0,GridBagConstraints.NORTHWEST,GridBagConstraints.NONE,new Insets(0,5,0,0),0,0));
        this.getContentPane().add(new JLabel("Right:"),new GridBagConstraints(0,3,1,1,0,0,GridBagConstraints.NORTHWEST,GridBagConstraints.NONE,new Insets(0,5,0,0),0,0));

        this.getContentPane().add(top,new GridBagConstraints(1,0,2,1,1,0,GridBagConstraints.NORTHWEST,GridBagConstraints.BOTH,new Insets(5,0,0,5),0,0));
        this.getContentPane().add(bottom,new GridBagConstraints(1,1,2,1,1,0,GridBagConstraints.NORTHWEST,GridBagConstraints.BOTH,new Insets(0,0,0,5),0,0));
        this.getContentPane().add(left,new GridBagConstraints(1,2,2,1,1,0,GridBagConstraints.NORTHWEST,GridBagConstraints.BOTH,new Insets(0,0,0,5),0,0));
        this.getContentPane().add(right,new GridBagConstraints(1,3,2,1,1,0,GridBagConstraints.NORTHWEST,GridBagConstraints.BOTH,new Insets(0,0,0,5),0,0));

        JPanel p=new JPanel();
        JButton b=new JButton("Ok");
        p.add(b);
        ActionListener lst=new ActionListener() {
            public void actionPerformed(ActionEvent e) {
                option=JOptionPane.OK_OPTION;
                setVisible(false);
            }
        };
        b.addActionListener(lst);

        b=new JButton("Cancel");
        lst=new ActionListener() {
                    public void actionPerformed(ActionEvent e) {
                        option=JOptionPane.CANCEL_OPTION;
                        setVisible(false);
                    }
        };
        b.addActionListener(lst);
        p.add(b);

        this.getContentPane().add(p,new GridBagConstraints(2,4,1,1,0,0,GridBagConstraints.EAST,GridBagConstraints.NONE,new Insets(0,0,0,0),0,0));

        this.getContentPane().add(new JLabel(),new GridBagConstraints(1,5,1,1,0,1,GridBagConstraints.NORTHEAST,GridBagConstraints.NONE,new Insets(0,0,0,0),0,0));
        pack();
    }

    /**
     * @return user's selection
     */
    public int getOption() {
        return option;
    }

    /**
     * @return margins which was set.
     */
    public Insets getMargins() {
        return new Insets(Test.converInchesToPixels(top.getValue())
                          ,Test.converInchesToPixels(left.getValue())
                          ,Test.converInchesToPixels(bottom.getValue())
                          ,Test.converInchesToPixels(right.getValue()));
    }

    /**
     * Sets margins and reflect them in the dialog.
     *
     * @param margins margins values.
     */
    public void setMargins(Insets margins) {
        top.setValue(Test.converPixelsToInches(margins.top));
        bottom.setValue(Test.converPixelsToInches(margins.bottom));
        left.setValue(Test.converPixelsToInches(margins.left));
        right.setValue(Test.converPixelsToInches(margins.right));
    }
}