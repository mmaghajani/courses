#include <iostream>
#include <string>
#include <conio.h>
using namespace std;
int myStrlen( char *s ) ;
int main()
{
	char s[1000] ;
	
	cout << "Pls enter string : " ;
	cin.getline(s , 1000 ) ;

	cout << "length of your string is : " << myStrlen( s ) ;

	getch() ;
	return 0 ;
}
//**************** determine length of string *******************
int myStrlen( char *s )
{
	int index = 0 ;
	while( *(s+index) != '\0' )
		index++ ;

	return index ;
}
