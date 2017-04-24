import java.io.IOException;

public class Main {
	public static void main(String args[]) {

		EstimateExpectationTime eet = new EstimateExpectationTime( getNum() );

		System.out.println("Expectation Time is : " + eet.calculate());
	}

	private static int getNum() {
		int x = 0;
		System.out.println("Pls enter number of persons : ");
		try {
			x = System.in.read();
			x -= 48;
		} catch (IOException e1) {
			// TODO Auto-generated catch block
			System.err.append("Pls enter number of persons!");
		}

		return x;
	}
}
