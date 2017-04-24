#include <iostream>
#include <time.h>
#include <stdlib.h>
using namespace std ;
int main()
{
	srand( time(NULL) ) ;
	cout << "random number from first set : " << ( rand()%5 + 1 ) * 2 << endl ;
	cout << "random number from second set : " << ( rand()%5 + 1 )*2 + 1 << endl ;
	cout << "random number from third set : " << ( ( rand()%5 + 1 )*2 + 1 ) * 2 << endl ;
	
	return 0 ;
}
