#include <iostream>
using namespace std;
int modulo( int x , int y ) ;
int main()
{
	int x , y ;
	cin >> x >> y ;
	
	cout << modulo( x , y ) << endl ;
	
	return 0 ;
}
//***************** modulo *******************
int modulo( int x , int y )
{
	if( x < y )	return x ;
	else
		modulo( x-y , y ) ;
}
