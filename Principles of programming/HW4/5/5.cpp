#include <iostream>
#include <math.h>
using namespace std;
int GCD( int , int ) ;
int main()
{
	int x , y ;
	cin >> x >> y ;
	
	cout << GCD( x , y ) ;
	
	return 0 ;	
}
//******************  Greatest Common Divisor *************************
int GCD( int x , int y )
{
	if( x == y )	return x ;
	else if( abs( x - y ) == 1 )	return 1 ;
	else
	{
		if( x > y )				GCD( y , x-y ) ;
		else if( x < y )		GCD( x , y-x ) ;
	}
}
