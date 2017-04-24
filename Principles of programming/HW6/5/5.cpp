#include <iostream>
#include <conio.h>
#include <cstring>
using namespace std;
void cin_string( char *p ) ; 
int main()
{
	char s1[1000] , s2[1000] , *p1 , *p2 ;
	cin_string( s1 ) ;
	int index = 0 ;

	p1 = &s1[0] , p2 = &s2[0] ;

	for( int i = strlen( s1 ) - 1 ; i >= 0 ; i-- )
		*( p2 + index ) = *( p1 + i ) , index++ ;

	*( p2 + index ) = '\0' ;

	cout << s2 << endl ;

	getch() ;
	return 0;
}
//******************** input string *********************
void cin_string( char *p )
{
	int i = 0 ;
	char ch ;
	do
	{
		ch = cin.get() ;
		p[i] = ch ;
		i++ ;
	}while( ch != 10 ) ;
	p[i-1] = '\0' ;
}
