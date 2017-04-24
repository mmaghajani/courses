#include <iostream>
#include <conio.h>
using namespace std ;
int flag1 , flag2 , flag3 , flag4 ;
int main()
{
	cout << "! ( x < 5 ) && ! ( y >= 7 ) equal to !( x < 5 || y >= 7 ) " << endl ;
	cout << "! ( a == b ) || ! ( g != 5 ) equal to !( a == b && g != 5 ) " << endl ;
	cout << "! ( ( x <= 8 ) && ( y > 4 ) ) equal to !( x <= 8 ) || !( y > 4 ) " << endl ;
	cout << "! ( ( i > 4 ) || ( j <= 6 ) ) equal to  !( i > 4 ) && !( j <= 6 ) " << endl ;
	
	for( int x = 4 ; x <= 6 ; x++ )
		for( int y = 6 ; y <= 8 ; y++ )
			if( (!( x < 5 ) && ! ( y >= 7 ) ) != !( x < 5 || y >= 7 ) )	flag1 = 1 ;
			
	for( int a = 1 ; a <= 3 ; a++ )
		for( int b = 1 ; b <= 3 ; b++ )
			for( int g = 5 ; g <= 6 ; g++ )
				if( ( !( a == b ) || ! ( g != 5 ) ) != !( a == b && g != 5 ) )	flag2 = 1 ;
				
	for( int x = 7 ; x <= 9 ; x++ )
		for( int y = 3 ; y <= 5 ; y++ )
			if( ! ( ( x <= 8 ) && ( y > 4 ) ) != ( !( x <= 8 ) || !( y > 4 ) )  )	flag3 = 1 ;
			
	for( int i = 3 ; i <= 5 ; i++ )
		for( int j = 5 ; j >= 7 ; j++ )
			if( ! ( ( i > 4 ) || ( j <= 6 ) ) != ( !( i > 4 ) && !( j <= 6 ) ) ) 	flag4 = 1 ;
			
	if( flag1 == 0 )	cout << " De Morgan's Law is correct for case 1 ! " << endl ;
	else 				cout << " De Morgan's Law is incorrect for case 1 ! " << endl ;
	
	if( flag2 == 0 )	cout << " De Morgan's Law is correct for case 2 ! " << endl ;
	else 				cout << " De Morgan's Law is incorrect for case 2 ! " << endl ;
	
	if( flag3 == 0 )	cout << " De Morgan's Law is correct for case 3 ! " << endl ;
	else 				cout << " De Morgan's Law is incorrect for case 3 ! " << endl ;
	
	if( flag4 == 0 )	cout << " De Morgan's Law is correct for case 4 ! " << endl ;
	else 				cout << " De Morgan's Law is incorrect for case 4 ! " << endl ;
	
	getch() ;
	return 0 ;
				
}
