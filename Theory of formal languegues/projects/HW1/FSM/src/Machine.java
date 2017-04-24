import java.util.ArrayList;
import java.util.Set;

public class Machine {

	private boolean isDFA = true;
	private ArrayList<Character> alphabet;
	private String startState;
	private ArrayList<String> finalState;
	private ArrayList<ArrayList<ArrayList<String>>> sigma;
	private ArrayList<String> testString;
	private ArrayList<String> states ;

	public Machine(boolean isDFA, ArrayList<Character> alphabet,
			String startState, ArrayList<String> finalState,
			ArrayList<ArrayList<ArrayList<String>>> sigma,
			ArrayList<String> states ,
			ArrayList<String> testString) {
		this.isDFA = isDFA;
		this.alphabet = alphabet;
		this.startState = startState;
		this.finalState = finalState;
		this.sigma = sigma;
		this.states = states ;
		this.testString = testString;
	}
	
	public boolean isDFA(){
		return isDFA ;
	}
	
	public ArrayList<Character> getAlphabet(){
		return alphabet ;
	}
	
	public String getStartState(){
		return startState ;
	}
	
	public ArrayList<String> getFinalStates(){
		return finalState ;
	}
	
	public ArrayList<ArrayList<ArrayList<String>>> getSigma(){
		return sigma ;
	}
	
	public ArrayList<String> getTestString(){
		return testString ;
	}
	
	public ArrayList<String> getStates(){
		return states ;
	}
	

}
