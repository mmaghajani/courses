#include <iostream>
#include <math.h>
using namespace std;
int main()
{
	int n , i = 4 , symmetric = 0 ;
	cin >> n ;
	int temp = n ;
	
	while( temp > 0 )
	{
		symmetric += ( temp%10 ) * pow( 10 , i ) ;
		i-- ;
		temp /= 10 ;
	}
	
	if( symmetric == n )	cout << "The number is palindrome ! " << endl ;
	else					cout << "The number is not palindrome ! " << endl ;
	
	return 0 ;
	
}
