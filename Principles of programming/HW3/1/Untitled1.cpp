#include <iostream>
#include <cstring>
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
	cout << "Pls enter product number and quantity sold for one day!" << endl  ;
	int x ; 
	
	do
	{
		cin >> x >> y ;
		sum += ( y*sales[x] ) ;
		
		cout << "press any key to continue.for exit press 0 " << endl  ;
		
		cin >> c ;		
	}while( c != '0' ) ;
	
	cout << endl << sum << endl ;
	
	return 0 ; 
}
