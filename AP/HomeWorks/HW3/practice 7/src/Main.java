import java.io.IOException;
import java.util.Scanner;


public class Main {
	
	
	public static void main( String args[] ){
		double LowerBound = 0 ;
		double UpperBound = 0 ;
		double precision = 0 ;
		int degree ;
		
		Scanner sc = new Scanner( System.in );
		
		System.out.println( "Pls enter lower bound : ") ;
		LowerBound = sc.nextDouble() ;
		
		System.out.println( "Pls enter upper bound : ") ;
		UpperBound = sc.nextDouble() ;
		
		System.out.println( "Pls enter precision : ") ;
		precision = sc.nextDouble() ;
		
		System.out.println( "Pls enter degree : ") ;
		degree = sc.nextInt() ;
	
		RootFinder rf = new RootFinder(LowerBound, UpperBound, precision, degree) ;
		
		System.out.println( rf.find() ) ; 
		
		/*Polynomials poly = new Polynomials(2) ;
		Scanner sc = new Scanner(System.in) ;
		int x = sc.nextInt() ;
		System.out.println( poly.output(x) ) ;*/
	}

}
