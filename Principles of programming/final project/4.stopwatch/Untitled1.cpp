#include <iostream>
#include <Windows.h>
#include <cstdlib>
#include <iostream>
#include <string>
#include <math.h>
#include <conio.h>
#include <windows.h>
#include <Wincon.h>
#include <ctime>    
#include <cstdlib> 

using namespace std;
typedef struct Time
{
	int one_tenth ;
	int second  ;
	int minute ;
	int hour ;
}Time ;

void PrintTime( Time ) ;
void gotoxy( int , int ) ;
void DrawCadr() ;
void printbig( int , int , int ) ;
void make_BigNum() ;
void ClearLine( int , int ) ;

char BigNum[15][10][10] ;
int main()
{
	make_BigNum() ;
	Time stopwatch ;
	stopwatch.hour = 0 ;
	stopwatch.minute = 0 ;
	stopwatch.second = 0 ;
	stopwatch.one_tenth = 0 ;

	DrawCadr() ; 
	PrintTime( stopwatch ) ;

	gotoxy( 0 , 11 ) ;
	char ch = 'a' ;

	int num = 0 , line = 0 ;
	while( true )
	{
		
		if( kbhit() )
			ch = getch() ;

		if( ch == 'e' )
			break ;
		else
		{
			switch( ch )
			{
				case 's' :
					Sleep( 73.25 ) ;
					stopwatch.one_tenth++ ;
					stopwatch.second += stopwatch.one_tenth / 10 ;
					stopwatch.one_tenth = stopwatch.one_tenth % 10 ;
					stopwatch.minute += stopwatch.second / 60 ;
					stopwatch.second = stopwatch.second % 60 ;
					stopwatch.hour += stopwatch.minute / 60 ;
					stopwatch.minute = stopwatch.minute % 60 ; 
				
					PrintTime( stopwatch ) ;
					break ;

				case 'p' :
					gotoxy( 0 , 11 ) ;
					break ;

				case 'r' :
					stopwatch.hour = 0 ;
					stopwatch.minute = 0 ;
					stopwatch.second =  0 ;
					stopwatch.one_tenth = 0 ;
					PrintTime( stopwatch ) ;

					for( int i = 13 ; i < 25 ; i++ )
						ClearLine( i , 78 ) ;
					num = 0 , line = 0 ;
					ch = 'p' ;
					break ;

				case 'l' :
					if(  num < 48 )
					{
						num++ ;
						gotoxy( (line/12)*20 , (line%12) + 13 ) ;
						cout << "Lap " << num ;
					
						gotoxy( (line/12)*20 + 10 , (line%12) + 13 ) ;
						cout << stopwatch.hour << ":" ;
						if( stopwatch.minute < 10 )
							cout << "0" ;
						cout << stopwatch.minute << ":" ;
						if( stopwatch.second < 10 )
							cout << "0" ;
						cout << stopwatch.second << "." << stopwatch.one_tenth ;
					
						line++ ;
					}
					ch = 's' ;

			}	
		}
		
	}

	return 0 ;

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
//******************* Print stopwatch **********************
void PrintTime( Time s )
{

	if( s.hour < 10 )
	{
		printbig( 0 , 23 , 3) ;
		printbig( s.hour , 27 , 3 ) ;
	}
	else
	{
		printbig( s.hour/10 , 23 , 3 ) ;
		printbig( s.hour%10 , 27 , 3 ) ;
	}

	printbig( 10 , 30 , 3 ) ;

	if( s.minute < 10 )
	{
		printbig( 0 , 33 , 3 ) ;
		printbig( s.minute , 37 , 3 ) ;
	}
	else
	{
		printbig( s.minute/10 , 33 , 3 ) ;
		printbig( s.minute%10 , 37 , 3 ) ;
	}

	printbig( 10 , 40 , 3 ) ;

	if( s.second < 10 )	
	{
		printbig( 0 , 43 , 3 ) ;
		printbig( s.second , 47 , 3 ) ;
	}
	else
	{
		printbig( s.second/10 , 43 , 3 ) ;
		printbig( s.second%10 , 47 , 3 ) ;
	}

	printbig( 11 , 50 , 3 ) ;
	printbig( s.one_tenth , 53 , 3 ) ;
}
//******************* draw cadr ********************
void DrawCadr()
{
	gotoxy( 0 , 10 ) ;

	for( int i = 1 ; i <= 79 ; i++ )
		cout << "-" ;

	gotoxy( 0 , 11 ) ;
	cout << "start : s " ;

	gotoxy( 18 , 11 ) ;
	cout << "pause : p " ;

	gotoxy( 36 , 11 ) ;
	cout << "reset : r " ;

	gotoxy( 54 , 11 ) ;
	cout << "lap : l " ;

	gotoxy( 72 , 11 ) ;
	cout << "exit : e " ;

}
//********************** print number in big size *******************
void printbig( int num , int x , int y ) 
{
	for( int i = 1 ; i <= 5 ; i++ )
	{
		gotoxy( x , y+i-1 ) ;
		for( int j = 1 ; j <= 3 ; j++ )
			cout << BigNum[num][i][j] ;
	}
}
//********************* make big number in array *****************
void make_BigNum()
{
	char ch = 219 ;
	memset( BigNum , (char)(0) , sizeof(BigNum) ) ;

	//make zero
	BigNum[0][1][1] = 219 ;
	BigNum[0][1][2] = 219 ;
	BigNum[0][1][3] = 219 ;

	BigNum[0][2][1] = 219 ;
	BigNum[0][2][3] = 219 ;

	BigNum[0][3][1] = 219 ;
	BigNum[0][3][3] = 219 ;

	BigNum[0][4][1] = 219 ;
	BigNum[0][4][3] = 219 ;

	BigNum[0][5][1] = 219 ;
	BigNum[0][5][2] = 219 ;
	BigNum[0][5][3] = 219 ;

	//make one
	BigNum[1][1][2] = 219 ;
	BigNum[1][1][3] = 219 ;

	BigNum[1][2][3] = 219 ;

	BigNum[1][3][3] = 219 ;

	BigNum[1][4][3] = 219 ;

	BigNum[1][5][3] = 219 ;

	//make two
	BigNum[2][1][1] = 219 ;
	BigNum[2][1][2] = 219 ;
	BigNum[2][1][3] = 219 ;

	BigNum[2][2][3] = 219 ;

	BigNum[2][3][1] = 219 ;
	BigNum[2][3][2] = 219 ;
	BigNum[2][3][3] = 219 ;

	BigNum[2][4][1] = 219 ;

	BigNum[2][5][1] = 219 ;
	BigNum[2][5][2] = 219 ;
	BigNum[2][5][3] = 219 ;

	//make three
	BigNum[3][1][1] = 219 ;
	BigNum[3][1][2] = 219 ;
	BigNum[3][1][3] = 219 ;

	BigNum[3][2][3] = 219 ;

	BigNum[3][3][1] = 219 ;
	BigNum[3][3][2] = 219 ;
	BigNum[3][3][3] = 219 ;

	BigNum[3][4][3] = 219 ;

	BigNum[3][5][1] = 219 ;
	BigNum[3][5][2] = 219 ;
	BigNum[3][5][3] = 219 ;

	//make four
	BigNum[4][1][1] = 219 ;
	BigNum[4][1][3] = 219 ;

	BigNum[4][2][1] = 219 ;
	BigNum[4][2][3] = 219 ;

	BigNum[4][3][1] = 219 ;
	BigNum[4][3][2] = 219 ;
	BigNum[4][3][3] = 219 ;

	BigNum[4][4][3] = 219 ;

	BigNum[4][5][3] = 219 ;

	//make five
	BigNum[5][1][1] = 219 ;
	BigNum[5][1][2] = 219 ;
	BigNum[5][1][3] = 219 ;

	BigNum[5][2][1] = 219 ;

	BigNum[5][3][1] = 219 ;
	BigNum[5][3][2] = 219 ;
	BigNum[5][3][3] = 219 ;

	BigNum[5][4][3] = 219 ;

	BigNum[5][5][1] = 219 ;
	BigNum[5][5][2] = 219 ;
	BigNum[5][5][3] = 219 ;

	//make six
	BigNum[6][1][1] = 219 ;
	BigNum[6][1][2] = 219 ;
	BigNum[6][1][3] = 219 ;

	BigNum[6][2][1] = 219 ;

	BigNum[6][3][1] = 219 ;
	BigNum[6][3][2] = 219 ;
	BigNum[6][3][3] = 219 ;

	BigNum[6][4][1] = 219 ;
	BigNum[6][4][3] = 219 ;

	BigNum[6][5][1] = 219 ;
	BigNum[6][5][2] = 219 ;
	BigNum[6][5][3] = 219 ;

	//make seven
	BigNum[7][1][1] = 219 ;
	BigNum[7][1][2] = 219 ;
	BigNum[7][1][3] = 219 ;

	BigNum[7][2][1] = 219 ;
	BigNum[7][2][3] = 219 ;

	BigNum[7][3][3] = 219 ;

	BigNum[7][4][3] = 219 ;

	BigNum[7][5][3] = 219 ;

	//make eight
	BigNum[8][1][1] = 219 ;
	BigNum[8][1][2] = 219 ;
	BigNum[8][1][3] = 219 ;

	BigNum[8][2][1] = 219 ;
	BigNum[8][2][3] = 219 ;

	BigNum[8][3][1] = 219 ;
	BigNum[8][3][2] = 219 ;
	BigNum[8][3][3] = 219 ;

	BigNum[8][4][1] = 219 ;
	BigNum[8][4][3] = 219 ;

	BigNum[8][5][1] = 219 ;
	BigNum[8][5][2] = 219 ;
	BigNum[8][5][3] = 219 ;

	//make nine
	BigNum[9][1][1] = 219 ;
	BigNum[9][1][2] = 219 ;
	BigNum[9][1][3] = 219 ;

	BigNum[9][2][1] = 219 ;
	BigNum[9][2][3] = 219 ;

	BigNum[9][3][1] = 219 ;
	BigNum[9][3][2] = 219 ;
	BigNum[9][3][3] = 219 ;

	BigNum[9][4][3] = 219 ;

	BigNum[9][5][1] = 219 ;
	BigNum[9][5][2] = 219 ;
	BigNum[9][5][3] = 219 ;

	//make doubble dot
	BigNum[10][2][2] = 219 ;
	BigNum[10][4][2] = 219 ;

	//make dot
	BigNum[11][5][2] =219 ;
}
//********************* Clear line x from 0 to y *********************
void ClearLine( int x , int y )
{
	char ch = 0 ;
	for( int i = 0 ; i <= y ; i++ )
		gotoxy( i , x ) , putch( ch ) ;
}
