#include <iostream>
using namespace std;
int JZS( int x ) ;
int N ;
int main()
{
	cin >> N ;
	cout << JZS( N ) << endl ;
	
	return 0 ;
}
//*************** chandomin nafar zendeh mimanad **********************
int JZS( int x )
{
	if( x == 1 || x == 2 )	return 1 ;
	else
	{
		if( x % 2 == 0 )
			return 2*JZS( x/2 ) - 1 ;
		else
			return 2*JZS( x/2 ) + 1 ;
	}
}
