#include <iostream>
#include <fstream>
#include <conio.h>
using namespace std;
void B_maker( int , int b[13] ) ;
void O_maker( int , int b[13] ) ;
void H_maker( int , char H[5] ) ;

int B , c[13] , count ;
char ch[5] ;
ofstream bout( "binary.txt" ) ;
ofstream oout( "octal.txt" ) ;
ofstream hout( "hexadecimal.txt" ) ;
int main()
{
	B = 12 ;
	B_maker( 0 , c ) ;
	
	B = 4 , count = 0 ;
	O_maker( 0 , c ) ;
	
	B = 3 , count = 0 ;
	H_maker( 0 , ch ) ;
	
	cout << "your output is ready! for binary number please visit file : 'binary.txt' " << endl << "for octal number please visit file : 'octal.txt' " << endl << "for hexadecimal number please visit file : 'hexadecimal.txt '" << endl ;
	
	getch() ;
	return 0 ;
}
//********************** binary maker *********************
void B_maker( int i , int b[13] ) 
{
     if ( i == B )
	 {
	 	bout << count << ": " ;
	 	count++ ;
	 	
     	for(int k = 0 ; k < i ; k++)
            bout << b[k] ;
     	bout << endl ;
     
     	return;
     }
     
     else
	 {
        b[i] = 0 , B_maker( i+1 , b );
        b[i] = 1 , B_maker( i+1 , b );
	 }
}
//********************* octal maker ***********************
void O_maker( int i , int b[13] ) 
{
     if ( i == B )
	 {
	 	oout << count << ": " ;
	 	count++ ;
	 	
     	for(int k = 0 ; k < i ; k++)
            oout << b[k] ;
     	oout << endl ;
     
     	return;
     }
     
     else
	 	for( int j = 0 ; j < 8 ; j++ )
	 		b[i] = j , O_maker( i+1 , b ) ;
}
//******************* hexadecimal maker ********************
void H_maker( int i , char H[5] )
{
	if( i == B )
	{
		hout << count << ": " ;
		count++ ;
		
		for( int k = 0 ; k < i ; k++ )
			hout << H[k] ;
		hout << endl ;
		
		return ;
	}
	
	else
	{
		H[i] = '0' , H_maker( i+1 , H ) ;
		H[i] = '1' , H_maker( i+1 , H ) ;
		H[i] = '2' , H_maker( i+1 , H ) ;
		H[i] = '3' , H_maker( i+1 , H ) ;
		H[i] = '4' , H_maker( i+1 , H ) ;
		H[i] = '5' , H_maker( i+1 , H ) ;
		H[i] = '6' , H_maker( i+1 , H ) ;
		H[i] = '7' , H_maker( i+1 , H ) ;
		H[i] = '8' , H_maker( i+1 , H ) ;
		H[i] = '9' , H_maker( i+1 , H ) ;
		H[i] = 'A' , H_maker( i+1 , H ) ;
		H[i] = 'B' , H_maker( i+1 , H ) ;
		H[i] = 'C' , H_maker( i+1 , H ) ;
		H[i] = 'D' , H_maker( i+1 , H ) ;
		H[i] = 'E' , H_maker( i+1 , H ) ;
		H[i] = 'F' , H_maker( i+1 , H ) ;
	}
}
