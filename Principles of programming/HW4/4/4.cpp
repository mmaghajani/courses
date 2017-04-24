#include <iostream>
#include <time.h>
#include <stdlib.h>
using namespace std;
int toss();
int main()
{
	int tail = 0 , head = 0 ;
	for( int i = 1 ; i <= 100 ; i++ )
	{		
		int x = toss() ;
		cout << x << endl ;
		
		if( x == 0 )	tail++ ;
		else			head++ ;
		
	}
	
	cout << "number of tails is : " << tail << endl << "number of heads is : " << head << endl ;
	
	return 0 ;
}
//******************************
int toss()
{
//	srand( time( NULL ) ) ;
	return rand()%2 ;
}
