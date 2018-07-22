#include <iostream>
#include <math.h>
#include <fstream>
#include <conio.h>
using namespace std;
int flag1 , flag2 , flag3 , flag4 , first1 , first2 , first3 , first4 ;
int main()
{
	ofstream fout( "1.txt" ) ;
	int N = 200000 ;
	
	long double p = 0 ;
	for( int i = 1 ; i <= 2*N ; i += 2 )
	{
		fout << "by " << i/2 + 1 << " terms : " ;
	
		p += ( pow( -1 , i/2 ) * ( 4/double(i) ) ) ;
		
		if( p >= 3.14 && p < 3.15 && flag1 == 0 )		first1 = i/2+1 , flag1 = 1 ;
		if( p >= 3.141 && p < 3.142 && flag2 == 0 )		first2 = i/2+1 , flag2 = 1 ;
		if( p >= 3.1415 && p < 3.1416 && flag3 == 0 )	first3 = i/2+1 , flag3 = 1 ;
		if( p >= 3.14159 && p < 3.14160 && flag4 == 0 )	first4 = i/2+1 , flag4 = 1 ;
		
		fout << p <<" " << i <<  endl ;
	}
	
	fout << "before 3.14 use " << first1 << " terms" << endl ;
	fout << "before 3.141 use " << first2 << " terms" << endl ;
	fout << "before 3.1415 use " << first3 << " terms" << endl ;
	fout << "before 3.14159 use " << first4 << " terms" << endl ;

	getch() ;
	return 0 ;
}
