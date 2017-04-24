#include <iostream>
#include <string>
#include <conio.h>
#include <cstring>
using namespace std;

int WordCount( char [] , char [] ) ;
void cin_string( char * ) ;
int NumWord( char [] ) ;
string thWord( char [] , int ) ;

int main()
{
	char word[40] , sentence[1000] ;
	
	cout << "Pls enter word for search : " ;
	cin >> word ;

	cout << "Pls enter sentence : " ;
	cin_string( sentence ) ;
	
	cout << "The word occures " << WordCount( word , sentence ) << " time" ;
	if( WordCount( word , sentence ) > 1 )	cout << "s" << endl ;
	else									cout << endl ;

	getch() ;
	return 0 ;

}
//************ count number of repeat a word in a sentence ************
int WordCount( char w[] , char s[] )
{
	int count = 0 ;
	for( int i = 1 ; i <= NumWord( s ) ; i++ )
		if( strcmp( w , thWord( s , i ).c_str() ) == 0 )	count++ ; 

	return count ;
}
//******************** input string *********************
void cin_string( char *p )
{
	int i = 0 ;
	char ch ;
	ch = cin.get() ;
	do
	{
		ch = cin.get() ;
		p[i] = ch ;
		i++ ;
	}while( ch != 10 ) ;
	p[i-1] = '\0' ;
}
//*************** determine number of words of a sentence ************
int NumWord( char s[] )
{
	char *p = &s[0] ;

	int i = 0 , counter = 0 ;
	while( *(p+i) != '\0' )
	{
		if( *(p+i) == ' ' )	counter++ ;
		i++ ;
	}

	return counter+1 ;
}
//**************** determine Nth word in a sentence ****************
string thWord( char s[] , int i )
{
	char *p = &s[0] ;
	int c = 0 , index = 0 , head = 0 ;
	string result = "                                                                                                     " ;

	while( c != i-1 )
	{
		if( *( p+index ) == ' ' )	c++ ;
		index++ ;
	}

	while( *( p+index ) != ' ' && *( p+index ) != '\0' )
		result[head] = *( p+index ) , index++ , head++ ;
	result[head] = '\0' ;

	return result ;
}
