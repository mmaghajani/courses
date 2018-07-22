#include <iostream>
#include <cmath>
using namespace std;
int main()
{
	char x ;
	int index = 0 ;
	double y , a[2][10000] ;
	do
	{
		cin >> y ;
		a[0][index] = y ;
		a[1][index] = floor( y + 0.5 ) , index++ ;
		cout << "Press any key to continue, for exit press 0 , then press Enter ! " << endl ;
		
		cin >> x ;
	}while( x != '0' ) ;
	
	for( int i = 0 ; i < index ; i++ )
		cout << a[0][i] << "\t" << a[1][i] << endl ;
		
	return 0 ;
}
