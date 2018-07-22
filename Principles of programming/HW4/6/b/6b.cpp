#include <iostream>
using namespace std;
long long fibo( int ) ;
long long fibonacci[100000] ;
int main()
{
	int i = 1 , n , x ;
	cin >> n ;
	do
	{
		x = fibo( i ) ;
		if( x == n )
		{
			cout << "the number is a term of fibonacci sequence"<< endl ;
			return 0 ;
		}
		i++ ;
		
	}while( n > x) ;
	
	cout << "the number is not term of fibonacci sequence ! " << endl ;
	
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
