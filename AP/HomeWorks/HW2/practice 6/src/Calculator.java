
public class Calculator {
	
	public int fibonacci( int n ){
		int current ;
		int last ;
		
		current = 1 ;
		last = 0 ;
		
		for( int i = 1 ; i <= n-2 ; i++ )
		{
			int temp1 ;
			int temp2 ;
			temp1 = last + current ;
			temp2 = current ;
			current = temp1 ;
			last = temp2 ;
		}
		
		return current ;
	}

}
