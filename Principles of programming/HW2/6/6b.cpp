#include <iostream>
using namespace std;
double fact( int ) ;
int main()
{
	int n ;
	double e = 1 ;
	cout <<"Pls enter estimate level :" ;
	cin >> n ;
	
	for( int i = 1 ; i <= n ; i++ )
	{
	//	cout << fact( i ) << endl ;
		e += 1 / fact( i ) ;
	}
		
	cout << e << endl ;
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
