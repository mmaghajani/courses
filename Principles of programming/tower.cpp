#include <iostream>
#include <windows.h>
#include <stdio.h>
#include <math.h>
#include <conio.h>
using namespace std;

void drawpile( int , int , int ) ;
void drawdisk( int , int , int ) ;
void transfer( int , int , int , int ) ;
void move( int , int , int ) ;
void gotoxy( int , int ) ;
void fly_v( int , int , int ) ;
void fly_h( int , int , int ) ;

int h1 , h2 , h3 , counter ;
int pile1 = 10 , pile2 = 35 , pile3 = 60 ;
const int wait = 50;
int main()
{
	
	drawpile( pile1 , 13 , 10 ) ;
	drawpile( pile2 , 13 , 10 ) ;
	drawpile( pile3 , 13 , 10 ) ;
	
	int n ;
	cout << endl << endl << "Pls enter number of disk ! ( 1 - 10 ) " << endl ;
	
	gotoxy( 0 , 19 ) ;
	do
	{
		cin >> n ;
		if( !( n <= 10 && n >= 1 ) )	cout << "Invalid input Pls enter valid data : " ;
	
	}while( n > 10 || n < 1 ) ;
		
	h1 = 13 - n , h2 = 13 , h3 = 13 ;
	
	int item = 13 ;
	for( int i = n ; i >= 1 ; i-- )
		drawdisk( pile1 , item , 2*i + 1 ) , item-- ;
	
	gotoxy( 0 , 18 ) ;
	cout << "number of steps : " ;
		
	transfer( n , 1 , 3 , 2 ) ;
	
	gotoxy( 0 , 18 ) ;
	cout << "Animation finished by " << counter << " steps !" << endl ;
	
	getch() ;
	return 0 ;	
}
//****************** drawpiles **********************
void drawpile( int x , int y , int h )
{
	char ch = 219 ;
	int j = y ;
	
	do
	{
		gotoxy( x , j ) ;
		putchar( ch ) ;
		j-- ;
	}while( j > y-h ) ;
	
	gotoxy( pile1-10 , 14 ) ;
	for( int i = 1 ; i <= 72 ; i++ )
		putchar( ch ) ;
}
//****************** drawdisk **********************
void drawdisk( int x , int y , int l )
{
	char ch = 177 ;
	int j = x - ( (l-1) / 2 ) ;
	do
	{
		gotoxy( j , y ) ;
		if( j != pile1 && j != pile2 && j != pile3 )	putchar( ch ) ;
		j++ ;
	}while( j <= x + (l-1)/2 );
}
//****************** transfer ***********************
void transfer( int n , int from , int to , int temp )
{
	if( n == 0 )	return ;
	else
	{
		transfer( n-1 , from , temp , to ) ;
		move( n , from , to ) ;
		switch( from )
		{
			case 1 :
				h1++ ; break ;
			case 2 :
				h2++ ; break ;
			case 3 :
				h3++ ; break ;
		}
		
		switch( to )
		{
			case 1 :
				h1-- ; break ;
			case 2 :
				h2-- ; break ;
			case 3 :
				h3-- ; break ;
		}
		
		counter++ ;
		gotoxy( 19 , 18 ) ;
		cout << counter ;
		
		transfer( n-1 , temp , to , from ) ;
	}
}
//******* move disk n from pile p1 to pile p2 *******
void move( int n , int p1 , int p2 )
{
	fly_v( n , p1 , 1 ) ;
	fly_h( n , p1 , p2 ) ;
	fly_v( n , p2 , -1 ) ;
}
//**************** fly vertically ********************
void fly_v( int n , int p , int key )
{
	char ch1 = ' ' , ch2 = 177 ;
	int x , y ;
	
	switch( p )
	{
		case 1 :
			x = pile1 , y = h1+1 ; break ;
		case 2 :
			x = pile2 , y = h2+1 ; break ;
		case 3 :
			x = pile3 , y = h3+1 ; break ;			
	}
	
	if( key == 1 )
		while( y >= 3 )
		{

			int j = x - n ;
			do
			{
				gotoxy( j , y ) ;
				if( (j != pile1 && j != pile2 && j != pile3 ) || y <= 3 )	putchar( ch1 ) ;
				j++;
			}while( j <= x+n );
	
			y-- ;
			j = x - n ;
	
			do
			{
				gotoxy( j , y ) ;
				if( (j != pile1 && j != pile2 && j != pile3 ) || y <= 3 )	putchar( ch2 ) ;
				j++ ;
			}while( j <= x+n );
		
			Sleep( wait ) ;
		}
	else if( key == -1 )
	{
		int i = 2 ;
		while( i < y-1 )
		{

			int j = x - n ;
			do
			{
				gotoxy( j , i ) ;
				if( ( j != pile1 && j != pile2 && j != pile3 ) || i <= 3 )	putchar( ch1 ) ;
				j++ ;
			}while( j <= x+n );
	
			i++ ;
			j = x - n ;
	
			do
			{
				gotoxy( j , i ) ;
				if( ( j != pile1 && j != pile2 && j != pile3 ) || i <= 3 )	putchar( ch2 ) ;
				j++ ;
			}while( j <= x+n );
	
			Sleep( wait ) ;
		}
	}
}
//****************** fly horizontally ************************
void fly_h( int n , int p1 , int p2 )
{
	char ch1 = ' ' , ch2 = 177 ;
	switch( p1 )
	{
		case 1 :
			if( p2 == 2 )
			{
				int temp = pile1 - n ;
				while( temp < pile2 - n )
				{
					for( int i = temp ; i <= temp + 2*n ; i++ )
						gotoxy( i , 2 ) , putchar( ch1 )  ;
		
					temp++ ;	
		
					for( int i = temp ; i <= temp + 2*n ; i++ )
						gotoxy( i , 2 ) , putchar( ch2 )  ;
					Sleep( wait ) ;
				}
			}
			if( p2 == 3 )
			{
				int temp = pile1 - n ;
				while( temp < pile3 - n )
				{
					for( int i = temp ; i <= temp + 2*n ; i++ )
						gotoxy( i , 2 ) , putchar( ch1 )  ;
		
					temp++ ;	
		
					for( int i = temp ; i <= temp + 2*n ; i++ )
						gotoxy( i , 2 ) , putchar( ch2 )  ;
					Sleep( wait ) ;
				}
			}
			break ;
		case 2 :
			if( p2 == 1 )
			{
				int temp = pile2 - n ;
				while( temp > pile1 - n )
				{
					for( int i = temp ; i <= temp + 2*n ; i++ )
						gotoxy( i , 2 ) , putchar( ch1 )  ;
		
					temp-- ;	
		
					for( int i = temp ; i <= temp + 2*n ; i++ )
						gotoxy( i , 2 ) , putchar( ch2 )  ;
					Sleep( wait ) ;
				}
			}
			if( p2 == 3 )
			{
				int temp = pile2 - n ;
				while( temp < pile3 - n )
				{
					for( int i = temp ; i <= temp + 2*n ; i++ )
						gotoxy( i , 2 ) , putchar( ch1 )  ;
		
					temp++ ;	
		
					for( int i = temp ; i <= temp + 2*n ; i++ )
						gotoxy( i , 2 ) , putchar( ch2 )  ;
					Sleep( wait ) ;
				}
			}
			break ;
		case 3 :
			if( p2 == 2 )
			{
				int temp = pile3 - n ;
				while( temp > pile2 - n )
				{
					for( int i = temp ; i <= temp + 2*n ; i++ )
						gotoxy( i , 2 ) , putchar( ch1 )  ;
		
					temp-- ;	
		
					for( int i = temp ; i <= temp + 2*n ; i++ )
						gotoxy( i , 2 ) , putchar( ch2 )  ;
					Sleep( wait ) ;
				}
			}
			if( p2 == 1 )
			{
				int temp = pile3 - n ;
				while( temp > pile1 - n )
				{
					for( int i = temp ; i <= temp + 2*n ; i++ )
						gotoxy( i , 2 ) , putchar( ch1 )  ;
		
					temp-- ;	
		
					for( int i = temp ; i <= temp + 2*n ; i++ )
						gotoxy( i , 2 ) , putchar( ch2 )  ;
					Sleep( wait ) ;
				}
			}
			break ;
	}
			
}
//******************** direct curser to ( x , y ) position *******************
void gotoxy(int x, int y)
{
	HANDLE hConsole = GetStdHandle(STD_OUTPUT_HANDLE);

	_COORD pos;
	pos.X = x;
	pos.Y = y;

	SetConsoleCursorPosition(hConsole, pos);
}
