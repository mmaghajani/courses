#include <iostream>
#include <math.h>
using namespace std;
int diff_to_12( int , int , int ) ;
int main()
{
	int h , m , s , h1 , m1 , s1 ;
	cin >> h >> m >> s >> h1 >> m1 >> s1 ;
	
	cout << abs( diff_to_12( h , m , s ) - diff_to_12( h1 , m1 , s1 ) ) << endl ;
	
	return 0 ;
	
}
//**************** calculate diffrence between data to 12 o'clock *******************
int diff_to_12( int hours , int minutes , int seconds )
{
	return ( hours * 3600 ) + ( minutes * 60 ) + seconds ;
}
