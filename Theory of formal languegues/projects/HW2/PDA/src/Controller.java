import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;

public class Controller {

	private ArrayList<Machine> machines;
	private File outputFile;
	private Machine currentMachine;

	private boolean flag = false;

	public Controller(ArrayList<Machine> machines, File output) {
		this.machines = machines;
		outputFile = output;
	}

	public void control() {
		try {
			outputFile.createNewFile();
			FileWriter writer = new FileWriter(outputFile);
			int index = 0;
			for (Machine machine : machines) {
				index++;
				// System.out.println(index) ;

				currentMachine = machine;
				if (index == 9)
					System.out.println(currentMachine.getFinalStates());
				control(machine, writer);
				try {
					writer.write("-----");
					writer.write(System.getProperty("line.separator"));
				} catch (IOException e) {
					// TODO Auto-generated catch block
					System.out.println("Error");
				}

			}

			writer.close();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			System.out.println("File output error");
		}

	}

	private void control(Machine machine, FileWriter writer) {
		int index = 0;
		for (String string : machine.getTestString()) {
			index++;
			if (index == 4)
				flag = true;
			// System.out.println( " string : " + index ) ;
			if (isAccepted(string, machine.getStartState()))
				try {
					writer.write("YES");
				} catch (IOException e) {
					// TODO Auto-generated catch block
					System.out.println("Error");
				}
			else
				try {
					writer.write("NO");
				} catch (IOException e) {
					// TODO Auto-generated catch block
					System.out.println("Error");
				}

			try {
				writer.write(System.getProperty("line.separator"));
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}

	private boolean isAccepted(String string, String startState) {

		String s = determine(string, startState) ;
		if (flag == true){
			System.out.println(s);
		}
		if (currentMachine.getFinalStates().contains(s))
			return true;
		else
			return false;
	}

	private String determine(String string, String currentState) {
		// if (flag == true)
		// System.out.println(string + " " + currentState);

		if (string.equals("") || string == null || string.equals(" ")) {
			if (flag == true)
				System.out.println("oooommmmadada" + " " + currentState);
			return currentState;
		} else {
			char firstChar = string.charAt(0);
			// System.out.println(currentMachine.getAlphabet()) ;
			ArrayList<String> nextStates = currentMachine.getSigma()
					.get(currentMachine.getStates().indexOf(currentState))
					.get(currentMachine.getAlphabet().indexOf(firstChar));

			for (String nextState : nextStates) {
				return determine(string.substring(1), nextState);
			}
		}

		return "";
	}
}