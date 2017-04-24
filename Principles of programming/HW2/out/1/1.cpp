#include <iostream>
#include <conio.h>
using namespace std;
int main()
{
		
	for( int i = 3 ; i <= 12 ; i = i+3 )
	{
		for( int j = 0 ; j <= 6 ; j = j+2 )
			cout << i+j << "\t" ;
		cout << endl ;
	}
	
	getch() ;
	return 0 ;
}
