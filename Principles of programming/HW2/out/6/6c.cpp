#include <iostream>
#include <math.h>
#include <conio.h>
using namespace std;
double fact( int ) ;
int main()
{
	int n ;
	double e = 1 , x ;
	cout <<"Pls enter estimate level :" ;
	cin >> n ;
	
	cout <<"Pls enter X :" ;
	cin >> x ;
	
	for( int i = 1 ; i <= n ; i++ )
		e += pow(x,i-1) / fact( i ) ;
		
	cout << e << endl ;
	
	getch() ;
	return 0 ;
}
//**************** factorial **************
double fact( int x )
{
	int	product = 1 ; 
	
	for( int i = 1 ; i <= x ; i++ )
		product *= i ;
		
	return product ;
}
