#include <iostream>
#include <math.h>
using namespace std;
int main()
{
	long long n , i = 0 , sum = 0 , temp ;
	cout << "Pls enter binary number :" ;
	cin >> n ;
	temp = n ;

	while( temp > 0 )
	{
		sum += (temp%10) * pow( 2 , i) ;
		i++ ;
		temp /= 10 ;
	}
	
	cout << "(" << n << ")2" << " = " << "(" << sum << ")10" << endl ;
	
	return 0 ;
}


