#include <iostream>
#include <math.h>
using namespace std;
int main()
{
	int N ;
	cin >> N ;
	
	cout << 2*N - pow( 2 , int( log10( N ) / log10( 2 ) ) + 1 ) + 1 << endl ;
	
	return 0 ;
}
