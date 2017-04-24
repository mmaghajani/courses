import java.io.File;

import javax.swing.UIManager;
import javax.swing.UnsupportedLookAndFeelException;


public class Main {
	public static void main( String args[]){
		
		
		StartPage startPage = new StartPage() ;
		
		//File current = new File("C:\\Users\\mahdi\\workspace\\JNotes\\Users" ) ;
		File workingFolder = new File("Users");
        if (!workingFolder.exists()) {
            workingFolder.mkdir();
        }
        
		
	/*	try {
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
		
		
	*/	
		
	}

}
