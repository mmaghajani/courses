import java.util.Scanner;


public class Main {
	static int[][] table ;
	static int number = 0 ;
	public static void main( String args[] ){
		
		Scanner sc = new Scanner( System.in ) ;
		int n = sc.nextInt() ;
		
		table = new int[n+1][n+1] ;
		
		for( int i = 1 ; i <= n ; i++ ){
			System.out.println( "Pls enter row " + i ) ;
			for( int j = 1 ; j <= n ; j++ )
				table[i][j] = sc.nextInt() ;
		}
		
		System.out.println( "Pls enter key for search : ") ;
		int x = sc.nextInt() ;
		
		for( int i = 1 ; i <= n ; i++){
			int index = binSearch( i , 1 , n , x ) ;
			if( index != 0 )
				System.out.println( "Row is :" + i + " Column is :" + index ) ;
		}
		
		System.out.println( "Number of Comparison is : " + number ) ;
	}
	
	public static int binSearch( int k , int s , int e , int x ){
		int mid = (s+e)/2 ;
		while( table[k][mid] != x && e > s )
		{
			mid = (s+e)/2 ;
			if( table[k][mid] > x ){
				number++ ; 
				e = mid ;
			}
			else{
				number++ ;
				s = mid ;
			}
		}
		
		if( e <= s )	return 0 ;
		else 			return mid ;
		/*int mid = (s+e)/2 ;
		if( table[k][ mid ] == x )		return mid ;
		else if( e <= s )				return 0 ;
		else if( table[k][ mid ] > x )	binSearch( k , s , mid , x ) ;
		else							binSearch( k , mid+1 , e , x ) ;
		return 0 ;
	
	*/
	}
	
	

}
