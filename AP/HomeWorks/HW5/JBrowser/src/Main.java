import java.awt.GraphicsEnvironment;

import javax.swing.UIManager;
import javax.swing.UnsupportedLookAndFeelException;


public class Main {
	public static void main(String[] args) {
		// TODO Auto-generated method stub  
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
		TestedFrame frame = new TestedFrame("JBrowser");
		frame.setSize(800, 400);
		frame.setExtendedState(TestedFrame.MAXIMIZED_BOTH);
		frame.setVisible(true);
	}

}
