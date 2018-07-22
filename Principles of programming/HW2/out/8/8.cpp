#include <iostream>
#include <fstream>
#include <conio.h>
using namespace std;
void BT( int a1 , int a2 , int a3 , int a4 , int controller ) ;
int N ;
ofstream fout( "output.txt" ) ;
int main()
{
	cout << "Pls enter input" << endl ;
	cin >> N ;

	BT( 0 , 0 , 0 , 0 , 1 ) ;
	
	cout << "your output is ready! Pls check output.txt " << endl ;
	
	getch();
	return 0 ;
	
}
//******** situations that can be possible by coins ***************
void BT( int a1 , int a2 , int a3 , int a4 , int controller )
{
	
	if( ( a1*1 + a2*2 + a3*5 + a4*10 ) == N )
		fout << " situation is : " << a1 << "\t" << a2 << "\t" << a3 << "\t" << a4 << endl ;
	
	else if ( a1*1 + a2*2 + a3*5 + a4*10 < N )
	{
		if( controller <= 1 )	controller = 1 , BT( a1 , a2 , a3 , a4 + 1 , controller ) ;
		if( controller <= 2 )	controller = 2 , BT( a1 , a2 , a3 + 1 , a4 , controller ) ;
		if( controller <= 3 )	controller = 3 , BT( a1 , a2 + 1 , a3 , a4 , controller ) ;
		if( controller <= 4 )	controller = 4 , BT( a1 + 1 , a2 , a3 , a4 , controller ) ;
	}
}
