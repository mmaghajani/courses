#include <iostream>
#include <conio.h>
using namespace std ;
int main()
{
	int large1 , large2 , n ;		
	for( int i = 1 ; i <= 10 ; i++ )
	{
		cout << " Pls Enter Number " << i << ":";
		
		cin >> n ;
		if( i == 1 )	large1 = n ;
		if( i == 2 )	large2 = n ;
		
		if( n > large1 )	large2  = large1 , large1 = n ;
		else if( i != 1 && n <= large1 && n >= large2 )	large2 = n ;
	}
	
	cout << " First largest number is : " << large1 << endl ;
	cout << " Second largest number is : " << large2 << endl ;
	
	getch() ;
	return 0 ;
}
