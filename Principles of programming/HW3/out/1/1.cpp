#include <iostream>
#include <cstring>
#include <conio.h>
using namespace std;
int main()
{
	double sales[6] ;
	sales[1] = 2.96 ;
	sales[2] = 4.50 ;
	sales[3] = 9.96 ;
	sales[4] = 4.96 ;
	sales[5] = 6.87 ;
	
	double sum = 0 , y ;
	char c ;
	int x ; 
	
	do
	{
		cout << "Pls enter product number 1-5 : " << endl ;
		do
		{
			cin >> x ;
			if( x > 5 || x < 1 )	cout << "invalid data . Pls enter product number 1-5 : " << endl ;	
		}while( x > 5 || x < 1 ) ;
		
		cout << "Pls enter quantity ( int num ) : " ;
		cin >> y ;
		sum += ( y*sales[x] ) ;
		
		cout << "press any key to continue.for exit press 0 " << endl  ;
		
		cin >> c ;		
	}while( c != '0' ) ;
	
	cout << endl << sum << endl ;
	
	getch();
	
	return 0 ; 
}
