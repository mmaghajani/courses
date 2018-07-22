#include <iostream>
#include <conio.h>
using namespace std;
double fact( int ) ;
int main()
{
	double n ;
	double e = 1 ;
	cout <<"Pls enter floating digits:" ;
	cin >> n ;
	
	for( int i = 1 ; i <= n ; i++ )
		e += 1 / fact( i ) ;
			
	cout << e << endl ;
	
	getch() ; 
	return 0 ;
}
//**************** factorial **************
double fact( int x )
{
	double	product = 1 ; 
	
	for( int i = 1 ; i <= x ; i++ )
		product *= i ;
		
	return product ;
}
