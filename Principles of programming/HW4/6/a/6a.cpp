#include <iostream>
using namespace std;
long long fibo( int ) ;
long long fibonacci[10000000] ;
int main()
{
	int n ;
	cin >> n ;
	
	cout << n << "th terms is : " << fibo( n ) << endl ;
	return 0 ;	
}
//***************** fibonacci *******************
long long fibo( int n )
{
	if( n == 1 || n == 2 )	return 1 ;
	else if( fibonacci[n] != 0 )	return fibonacci[n] ;
	else
	{ 
		fibonacci[n] = fibo( n-1 ) + fibo( n-2 ) ;
		return fibonacci[n] ;
	}
}
