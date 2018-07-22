import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Set;

public class MachineGenerator {

	private static MachineGenerator instance;
	private File file;

	private MachineGenerator(File file) {
		this.file = file;
	}

	public static MachineGenerator getInstance(File file) {
		if (instance == null) {
			instance = new MachineGenerator(file);
			return instance;
		} else
			return instance;
	}

	public void setFile(File file) {
		this.file = file;
	}

	public ArrayList<Machine> generate() {
		ArrayList<Machine> machines = new ArrayList<Machine>();
		try {
			FileReader reader = new FileReader(file);

			char[] sequence = new char[(int) file.length()];
			try {
				reader.read(sequence);

				String allLines = "";
				for (int i = 0; i < sequence.length; i++) {
					if (sequence[i] != 13 && sequence[i] != 10) {
						allLines += sequence[i];
					}
				}
				 System.out.println(allLines) ;
				int numOfMachines = 0;
				for (String machineInfo : allLines.split("-----")) {
					boolean isDFA = true;
					ArrayList<Character> alphabet = new ArrayList<Character>();
					String startState = null;
					ArrayList<String> finalState = new ArrayList<String>();
					ArrayList<ArrayList<ArrayList<String>>> sigma = new ArrayList<ArrayList<ArrayList<String>>>();
					ArrayList<String> testString = new ArrayList<String>();
					ArrayList<String> states = new ArrayList<String>() ;
					int indexOfPart = 0;
					for (String info : machineInfo.split("#")) {
						switch (indexOfPart) {
						case 0:
							if (info.equals("NDFA"))
								isDFA = false;
							else
								isDFA = true;
							break;
						case 1:
							for (String memberOfAlphabet : info.split(",")) {
								alphabet.add(memberOfAlphabet.charAt(0));
							}
							break;
						case 2:
							int numOfStates = Integer.parseInt(info) ;
							for( int i = 0 ; i < numOfStates ; i++ ){
								String s = "Q" ;
								s += i ;
								states.add(s) ;
							}
							break;
						case 3:
							startState = info;
							break;
						case 4:
							for (String state : info.split(",")) {
								finalState.add(state);
							}
							break;
						case 5:
							for (String instruction : info.split("/")) {
								ArrayList<ArrayList<String>> oneRow = new ArrayList<ArrayList<String>>();
								for (int j = 0; j < alphabet.size(); j++) {
									ArrayList<String> s = new ArrayList<String>();
									oneRow.add(s);
								}
								String[] s = new String[2];
								int i = 0;
								for (String a : instruction.split(";")) {
									switch (i) {
									case 0:
										break;
									case 1:
										s[0] = "";
										for (String b : a.split(",")) {
											s[0] += b;
										}
										break;
									case 2:
										s[1] = "";
										for (String b : a.split(",")) {
											s[1] += b;
										}
										break;
									}
									i++;
								}

								for (int j = 0; j < s[0].length(); j++) {
									if (alphabet.indexOf(s[0].charAt(j)) != -1)
										oneRow.get(
												alphabet.indexOf(s[0].charAt(j)))
												.add(s[1].substring(2 * j,
														2 * j + 2));
								}

								sigma.add(oneRow);
							}
							break;
						case 6:
							for (String test : info.split("/")) {
								testString.add(test);
							}
							break;
						}

						indexOfPart++;
					}

					Machine machine = new Machine(isDFA, alphabet, startState,
							finalState, sigma, states , testString);

					machines.add(machine);
					numOfMachines++;

				}
			} catch (IOException e) {
				// TODO Auto-generated catch block
				System.out.println("Opennig file error");
			}
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			System.out.println("File Read Error");
		}

		return machines;
	}
}
