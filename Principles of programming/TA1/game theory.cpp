#include <iostream>
using namespace std;
int bit_counter( int x ) ;
int main()
{
	start: ;
	int N ;
	cin >> N ;
	
	if( bit_counter( N ) % 2 == 0 )		cout << "first is winner ! " << endl ;
	else 								cout << "second is winner ! " << endl ;
	
	goto start;
}
//**************** bti counter **********************
int bit_counter( int x )
{
	int counter = 0 ; 
	while( x > 0 )
	{
		if( x % 2 == 0 )	counter++ ;
		x /= 2 ;
	}
	
	return counter ;
}
