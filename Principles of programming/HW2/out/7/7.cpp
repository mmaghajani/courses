#include <iostream>
#include <conio.h>
using namespace std;
int GCD( int x , int y ) ;
int LCM( int x , int y ) ;
int main()
{
	int a,b ;
	cout << "Pls enter two number !" << endl ;
	cin >> a >> b ;
	
	cout << "GCD is :" << GCD( a , b ) << endl ;
	cout << "LCM is :" << LCM( a , b ) << endl ;
	
	getch() ;
	return 0 ;
	
}
//******************  Greatest Common Divisor *************************
int GCD( int x , int y )
{
	if( x == y )	return x ;
	else
	{
		if( x > y )				GCD( y , x-y ) ;
		else if( x < y )		GCD( x , y-x ) ;
	}
}
//***************** Least Common Multiple ******************************
int LCM( int x , int y )
{
	return (x*y) / GCD( x , y ) ;
}
