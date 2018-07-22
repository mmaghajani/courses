#include <iostream>
#include <math.h>
#include <fstream>
using namespace std;
void digit( int ) ;
void roman( int ) ;

ofstream fout( "roaman_num.txt" ) ;

int main()
{
	for( int i = 1 ; i <= 3999 ; i++ )
		fout << i << ": " , digit( i ) , fout << endl ;
	
	cout << "your output is ready ! Pls visit file : 'roman_num.txt' " << endl ;
	
	return 0 ;
}
//********************* convert number to digits *******************
void digit( int x )
{
	for( int i = 3 ; i >= 0 ; i-- )
	{
		int temp = x%((int)pow(10 , i+1)) ;
	//	fout << temp << endl ;
		roman( ( temp/( (int)pow(10 , i) ) ) * pow(10 , i) ) ;
	}
}
//******************** generate roman number ***********************
void roman( int x )
{
//	fout << x << endl ;
	if( x < 10 && x > 0 )
	{
		if( x == 9 )	fout << "IX" ;
		else if( x == 8 )	fout << "VIII" ;
		else if( x == 7 )	fout << "VII" ;
		else if( x == 6 )	fout << "VI" ;
		else if( x == 5 )	fout << "V" ;
		else if( x == 4 )	fout << "IV" ;
		else if( x == 3 )	fout << "III" ;
		else if( x == 2 )	fout << "II" ;
		else if( x == 1 )	fout << "I" ;
	}
	
	if( x >= 10 && x < 50 )
	{
		if( x == 40 )	fout << "XL" ;
		else
			for( int i = 1 ; i <= x/10 ; i++ )
				fout << "X" ;
	}
	
	if( x >= 50 && x < 100 )
	{
		if( x == 90 )	fout << "XC" ;
		else
		{
			fout << "L" ;
			for( int i = 1 ; i <= (x-50)/10 ; i++ )
				fout << "X" ;
		}
	}
	
	if( x >= 100 && x < 500 )
	{
		if( x == 400 )	fout << "CD" ;
		else
			for( int i = 1 ; i <= x/100 ; i++ )
				fout << "C" ;
	}
	
	if( x >= 500 && x < 1000 )
	{
		if( x == 900 )	fout << "CM" ;
		else
		{
			fout << "D" ;
			for( int i = 1 ; i <= (x-500)/100 ; i++ )
				fout << "C" ;
		}
	}
	
	if( x > 1000 )
	{
		for( int i = 1 ; i <= x/1000 ; i++ )
			fout << "M" ;
	}
}
