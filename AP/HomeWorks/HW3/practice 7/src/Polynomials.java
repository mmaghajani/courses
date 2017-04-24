import java.util.ArrayList;
import java.util.Scanner;


public class Polynomials {

	private ArrayList<Double> factor ;
	
	public Polynomials( int degree ){
		factor = new ArrayList<Double>() ;
		getInput(degree) ;	
	}
	
	private void getInput( int degree ){
		Scanner sc = new Scanner( System.in ) ;
		
		for( int i = 0 ; i <= degree ; i++ ){
			System.out.println( "Pls enter coefficient x^" + i ) ;
			double x = 0 ;
			x = sc.nextDouble() ;
			factor.add(x) ;
		}
	}
	
	public double output( double x ){
		double sum = 0 ;
		
		for( int i = 0 ; i < factor.size() ; i++){
			sum += ( Math.pow(x , i) * factor.get(i) );
		}
		
		return sum ;
	}
}
