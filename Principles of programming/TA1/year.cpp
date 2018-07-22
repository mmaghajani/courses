#include <iostream>
using namespace std ;
int Ok( int x ) ;
int N ;
int main()
{
	cin >> N ;
	
	int key = 0 ;
	while( key == 0 )
	{
		N++ ;
		if( Ok( N ) == 1 )	key = 1 ;
	}
	
	cout << N << endl ;
	
	return 0 ;
}
//***************** ok ***************
int Ok( int x )
{
	int check[10] ;
	for( int i = 0 ; i <= 9 ; i++ )		check[i] = 0 ;
	
	while( x > 0 )
	{
		if( check[ x%10 ] == 1 )	return 0 ;
		check[ x%10 ] = 1 ;
		x /= 10 ;
	}
	
	return 1 ;
}
