package sl.docx.app;

import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;


/**
 * This class constructs simple dialog for inserting tables.
 *
 * @author Stanislav Lapitsky
 */
public class InsertTableDialog extends JDialog {

    private JComboBox cbRowCount=new JComboBox(new String[]{"2","3","4"});
    private JComboBox cbColCount=new JComboBox(new String[]{"2","3","4"});
    private JComboBox cbColors;

    private int option=JOptionPane.CANCEL_OPTION;

    /**
     * Constructs new dialog instance with specified parent frame.
     * @param owner parent frame
     */
    public InsertTableDialog(JFrame owner) {
        super(owner);
        init();
    }

    /**
     * Constructs new dialog instance with specified parent dialog.
     * @param owner parent dialog
     */
    public InsertTableDialog(JDialog owner) {
        super(owner);
        init();
    }

    /**
     * Initializes all dialogs' controls (button, edits etc.).
     */
    protected void init() {
        setModal(true);
        this.setTitle("Insert table dialog");

        Color[] colors=new Color[4];
        colors[0]=Color.black;
        colors[1]=Color.red;
        colors[2]=Color.green;
        colors[3]=Color.blue;
        cbColors=new JComboBox(colors);
        cbColors.setRenderer(new ColorComboRenderer());
        this.getContentPane().setLayout(new GridBagLayout());
        this.getContentPane().add(new JLabel("Row count:"),new GridBagConstraints(0,0,1,1,0,0,GridBagConstraints.NORTHWEST,GridBagConstraints.NONE,new Insets(5,5,0,0),0,0));
        this.getContentPane().add(new JLabel("Column count:"),new GridBagConstraints(0,1,1,1,0,0,GridBagConstraints.NORTHWEST,GridBagConstraints.NONE,new Insets(0,5,0,0),0,0));
        this.getContentPane().add(new JLabel("Border color:"),new GridBagConstraints(0,2,1,1,0,0,GridBagConstraints.NORTHWEST,GridBagConstraints.NONE,new Insets(0,5,0,0),0,0));

        this.getContentPane().add(cbRowCount,new GridBagConstraints(1,0,2,1,1,0,GridBagConstraints.NORTHWEST,GridBagConstraints.BOTH,new Insets(5,0,0,5),0,0));
        this.getContentPane().add(cbColCount,new GridBagConstraints(1,1,2,1,1,0,GridBagConstraints.NORTHWEST,GridBagConstraints.BOTH,new Insets(0,0,0,5),0,0));
        this.getContentPane().add(cbColors,new GridBagConstraints(1,2,2,1,1,0,GridBagConstraints.NORTHWEST,GridBagConstraints.BOTH,new Insets(0,0,0,5),0,0));

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

        this.getContentPane().add(p,new GridBagConstraints(2,3,1,1,0,0,GridBagConstraints.NORTHEAST,GridBagConstraints.NONE,new Insets(0,0,0,0),0,0));

        this.getContentPane().add(new JLabel(),new GridBagConstraints(1,4,1,1,0,1,GridBagConstraints.NORTHEAST,GridBagConstraints.NONE,new Insets(0,0,0,0),0,0));

        this.pack();
    }

    /**
     * @return number of rows for table.
     */
    public int getRowCount() {
        return cbRowCount.getSelectedIndex()+2;
    }

    /**
     * @return number of columns for table.
     */
    public int getColumnCount() {
        return cbColCount.getSelectedIndex()+2;
    }

    /**
     * @return color tables' borders.
     */
    public Color getColor() {
        return (Color)cbColors.getSelectedItem();
    }

    /**
     * @return user's selection
     */
    public int getOption() {
        return option;
    }
}