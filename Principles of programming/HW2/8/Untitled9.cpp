#include <iostream>
#include <fstream>
#include <conio.h>
using namespace std;
void BT( int a1 , int a2 , int a3 , int a4 ) ;
int N ;
bool check[600][300][120][60] ;
ofstream fout( "output.txt" ) ;
int main()
{
	cout << "Pls enter input that less than 600 ! " << endl ;
	cin >> N ;

	BT( 0 , 0 , 0 , 0 ) ;
	
//	cout << "your output is ready! Pls check output.txt " << endl ;
	
//	getch();
	return 0 ;
	
}
//******** situations that can be possible by coins ***************
void BT( int a1 , int a2 , int a3 , int a4 )
{

	if( check[a1][a2][a3][a4] == 0 )
	{
		check[a1][a2][a3][a4] = 1 ;
	
		if( ( a1*1 + a2*2 + a3*5 + a4*10 ) == N )
			fout << " situation is : " << a1 << " " << a2 << " " << a3 << " " << a4 << endl ;
	
		else if ( a1*1 + a2*2 + a3*5 + a4*10 < N )
		{
			BT( a1 , a2 , a3 , a4 + 1 ) ;
			BT( a1 , a2 , a3 + 1 , a4 ) ;
			BT( a1 , a2 + 1 , a3 , a4 ) ;
			BT( a1 + 1 , a2 , a3 , a4 ) ;
		}
	}
}
