import java.io.File;
import java.util.ArrayList;


public class Main {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		File input = new File("input.in") ;
		File output = new File("ouput.out") ;
		
		MachineGenerator machineGenerator = MachineGenerator.getInstance(input) ;
		
		ArrayList<Machine> machines = machineGenerator.generate() ;
		
		//Controller controller = new Controller(machines, output) ;
		//controller.control();
		
	}

}
