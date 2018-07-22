import java.util.ArrayList;
import java.util.Set;

public class Machine {

	private ArrayList<ArrayList<ArrayList<String>>> sigma;
	private ArrayList<String> testString;

	public Machine(ArrayList<ArrayList<ArrayList<String>>> sigma , ArrayList<String> testString) {
		this.sigma = sigma;
		this.testString = testString;
	}
	
	public ArrayList<ArrayList<ArrayList<String>>> getSigma(){
		return sigma ;
	}
	
	public ArrayList<String> getTestString(){
		return testString ;
	}
	
}
