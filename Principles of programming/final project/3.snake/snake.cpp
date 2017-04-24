#include <iostream>
#include <windows.h>
#include <time.h>
#include <fstream>
#include <string>
#include <conio.h>
using namespace std;
void gotoxy( int , int ) ;
void put_hank() ;
void direct( char ) ;
bool eaten() ;
void add() ;
void clrscr() ;
void drawcadr() ;
void begin() ;
void IsBrokenRecord() ;
int cal_score() ;
int time() ;

long long table[25][80] ;
long long level = 0 , score , x_hank , y_hank , x_head , y_head , x_end , y_end , lose , steps , best_rec ;
char dir_head = 'd' ;

FILE *fp ;
int main()
{	
	cout << "welcome ! " << endl << "use arow key!" << endl ;
	cout << "Is you ready ? " ;
	system( "pause") ;
	clrscr() ;
	
	char ch = 77 ;
	put_hank() ;
	
	begin() ;
	
	drawcadr() ;
	
	while( 1 )
	{
		if( kbhit() )
			getch() , ch = getch() ;
		
		direct( ch ) ;
		
		if( eaten() )	gotoxy( 9 , 24 ) , level++ , score = cal_score() , cout << score ,  add() , put_hank() ;
		
		if( lose == 1 )	break ;
		
		Sleep( 140 - 2*level ) ; 	//calculate snake speed

	} 
	

	gotoxy( 0 , 25 ) ;
	
	cout << "you lose ! your score is : " << score << endl ;

	IsBrokenRecord() ;
	
	fclose( fp ) ;
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
//****************** put hank randomiz ***************************
void put_hank()
{
	srand( time(NULL) ) ;
	do
	{
		x_hank = rand() % 79 ; 
		y_hank = rand() % 23 ;
	}while( table[y_hank][x_hank] != 0 ) ;
	
	gotoxy( x_hank , y_hank ) ;
	char ch = 219 ;
	cout << ch ;
}
//****************** check hank is eaten or not ! ***********************
bool eaten()
{
	if( x_hank == x_head && y_hank == y_head )				return true ;
	else 													return false ;
}
//************************* direct snake ********************************
void direct( char ch )
{
	switch( ch )
	{
		case 72 :
			if( dir_head != 's' )
			{
				if( table[ (y_head + 22)%23 ][ (x_head)%79 ] != 0 )	{	lose = 1 ; return ; }
				
				table[ (y_head + 22)%23 ][ (x_head) ] = steps ;
				long long temp = 	table[ (y_end)%23 ][ (x_end)%79 ] ;
				table[ (y_end)%23 ][ (x_end)%79 ] = 0 ;
				steps++ ;
				
				gotoxy( (x_head)%79 , (y_head + 22)%23 ) ;
				cout << char( 219 ) ;
				gotoxy( (x_end)%79 , (y_end)%23 ) ;
				cout << char( 0 ) ;
				
				y_head = ( y_head + 22 ) % 23 ;
				
				if( temp - table[ (y_end +22 )%23 ][ x_end ] == -1 )			y_end = ( y_end + 22 )%23 ;
				else if( temp - table[ (y_end ) ][ ( x_end + 1 )%79 ] == -1 )	x_end = ( x_end + 1 )%79 ;
				else if( temp - table[ (y_end + 1 )%23 ][ x_end ] == -1 )		y_end = ( y_end + 1 )%23 ;
				else if( temp - table[ (y_end ) ][ ( x_end + 78 )%79 ] == -1 )	x_end = ( x_end + 78 )%79 ;
				
				dir_head = 'w' ;
			}
			else
			{
				if( table[ (y_head + 1)%23 ][ (x_head)%79 ] != 0 )	{	lose = 1 ; return ; }
				
				table[ (y_head + 1)%23 ][ (x_head) ] = steps ;
				long long temp = 	table[ (y_end)%23 ][ (x_end)%79 ] ;
				table[ (y_end)%23 ][ (x_end)%79 ] = 0 ;
				steps++ ;
				
				gotoxy( (x_head)%79 , (y_head + 1)%23 ) ;
				cout << char( 219 ) ;
				gotoxy( (x_end)%79 , (y_end)%23 ) ;
				cout << char( 0 ) ;
				
				y_head = ( y_head + 1 ) % 23 ;
				
				if( temp - table[ (y_end +22 )%23 ][ x_end ] == -1 )			y_end = ( y_end + 22 )%23 ;
				else if( temp - table[ (y_end ) ][ ( x_end + 1 )%79 ] == -1 )	x_end = ( x_end + 1 )%79 ;
				else if( temp - table[ (y_end + 1 )%23 ][ x_end ] == -1 )		y_end = ( y_end + 1 )%23 ;
				else if( temp - table[ (y_end ) ][ ( x_end + 78 )%79 ] == -1 )	x_end = ( x_end + 78 )%79 ;
				
			}
			break ;
			
		case 80 :
			if( dir_head != 'w' )
			{
				if( table[ (y_head + 1)%23 ][ (x_head)%79 ] != 0 )	{	lose = 1 ; return ; }
			
				table[ (y_head + 1)%23 ][ (x_head)%79 ] = steps ;
				long long temp = table[ (y_end)%23 ][ (x_end)%79 ] ;
				table[ (y_end)%23 ][ (x_end)%79 ] = 0 ;
				steps++ ;
			
				gotoxy( (x_head)%79 , (y_head + 1)%23 ) ;
				cout << char(219) ;
				gotoxy( (x_end)%79 , (y_end)%23 ) ;
				cout << char(0) ;
			
				y_head = ( y_head + 1 )%23 ;
				
				if( temp - table[ (y_end + 22 )%23 ][ x_end ] == -1 )			y_end = ( y_end + 22 )%23 ;
				else if( temp - table[ (y_end ) ][ ( x_end + 1 )%79 ] == -1 )	x_end = ( x_end + 1 )%79 ;
				else if( temp - table[ (y_end + 1 )%23 ][ x_end ] == -1 )		y_end = ( y_end + 1 )%23 ;
				else if( temp - table[ (y_end ) ][ ( x_end + 78 )%79 ] == -1 )	x_end = ( x_end + 78 )%79 ;
				
				dir_head = 's' ;
			}
			else
			{
				if( table[ (y_head + 22)%23 ][ (x_head)%79 ] != 0 )	{	lose = 1 ; return ; }
			
				table[ (y_head + 22)%23 ][ (x_head)%79 ] = steps ;
				long long temp = table[ (y_end)%23 ][ (x_end)%79 ] ;
				table[ (y_end)%23 ][ (x_end)%79 ] = 0 ;
				steps++ ;
			
				gotoxy( (x_head)%79 , (y_head + 22)%23 ) ;
				cout << char(219) ;
				gotoxy( (x_end)%79 , (y_end)%23 ) ;
				cout << char(0) ;
			
				y_head = ( y_head + 22 )%23 ;
				
				if( temp - table[ (y_end + 22 )%23 ][ x_end ] == -1 )			y_end = ( y_end + 22 )%23 ;
				else if( temp - table[ (y_end ) ][ ( x_end + 1 )%79 ] == -1 )	x_end = ( x_end + 1 )%79 ;
				else if( temp - table[ (y_end + 1 )%23 ][ x_end ] == -1 )		y_end = ( y_end + 1 )%23 ;
				else if( temp - table[ (y_end ) ][ ( x_end + 78 )%79 ] == -1 )	x_end = ( x_end + 78 )%79 ;
			}
				
			break ;
			
		case 77 :
			if( dir_head != 'a' )
			{
				if( table[ (y_head)%23 ][ (x_head + 1)%79 ] != 0 )	{ 	lose = 1 ; return ; }
			
				table[ (y_head)%23 ][ (x_head + 1)%79 ] = steps ;
				long long temp = table[ (y_end)%23 ][ (x_end)%79 ] ;
				table[ (y_end)%23 ][ (x_end)%79 ] = 0 ;
				steps++ ;
			
				gotoxy( (x_head + 1)%79 , (y_head)%23 ) ;
				cout << char(219) ;
				gotoxy( (x_end)%79 , (y_end)%23 ) ;
				cout << char(0) ;
			
				x_head = ( x_head + 1 )%79 ;
				
				if( temp - table[ (y_end +22 )%23 ][ x_end ] == -1 )			y_end = ( y_end + 22 )%23 ;
				else if( temp - table[ (y_end ) ][ ( x_end + 1 )%79 ] == -1 )	x_end = ( x_end + 1 )%79 ;
				else if( temp - table[ (y_end + 1 )%23 ][ x_end ] == -1 )		y_end = ( y_end + 1 )%23;
				else if( temp - table[ (y_end ) ][ ( x_end + 78 )%79 ] == -1 )	x_end = ( x_end + 78 )%79 ;
				
				dir_head = 'd' ;
			}
				else
				{
					if( table[ (y_head)%23 ][ (x_head + 78 )%79 ] != 0 )	{ 	lose = 1 ; return ; }
			
					table[ (y_head)%23 ][ (x_head + 78)%79 ] = steps ;
					long long temp = table[ (y_end)%23 ][ (x_end)%79 ] ;
					table[ (y_end)%23 ][ (x_end)%79 ] = 0 ;
					steps++ ;
			
					gotoxy( (x_head + 78)%79 , (y_head)%23 ) ;
					cout << char(219) ;
					gotoxy( (x_end)%79 , (y_end)%23 ) ;
					cout << char(0) ;
			
					x_head = ( x_head + 78 )%79 ;
				
					if( temp - table[ (y_end +22 )%23 ][ x_end ] == -1 )			y_end = ( y_end + 22 )%23 ;
					else if( temp - table[ (y_end ) ][ ( x_end + 1 )%79 ] == -1 )	x_end = ( x_end + 1 )%79 ;
					else if( temp - table[ (y_end + 1 )%23 ][ x_end ] == -1 )		y_end = ( y_end + 1 )%23;
					else if( temp - table[ (y_end ) ][ ( x_end + 78 )%79 ] == -1 )	x_end = ( x_end + 78 )%79 ;
				}
			break ;
			
		case 75 :
			if( dir_head != 'd' )
			{
				if( table[ y_head ][ (x_head + 78)%79 ] != 0 )	{	lose = 1 ; return ; }
				
				table[ y_head ][ (x_head + 78)%79 ] = steps ;
				long long temp = table[ y_end ][ x_end ] ;
				table[ y_end ][ x_end ] = 0 ;
				steps++ ;
				
				gotoxy( (x_head + 78)%79 , y_head ) ;
				cout << char( 219 ) ;
				gotoxy( x_end , y_end ) ;
				cout << char( 0 ) ;
				
				x_head = (x_head + 78 )%79 ; 
				
				if( temp - table[ (y_end +22 )%23 ][ x_end ] == -1 )			y_end = ( y_end + 22 )%23 ;
				else if( temp - table[ (y_end ) ][ ( x_end + 1 )%79 ] == -1 )	x_end = ( x_end + 1 )%79 ;
				else if( temp - table[ (y_end + 1 )%23 ][ x_end ] == -1 )		y_end = ( y_end + 1 )%23 ;
				else if( temp - table[ (y_end ) ][ ( x_end + 78 )%79 ] == -1 )	x_end = ( x_end + 78 )%79 ;
				
				dir_head = 'a' ;
			}
			else
			{
				if( table[ y_head ][ (x_head + 1)%79 ] != 0 )	{	lose = 1 ; return ; }
				
				table[ y_head ][ (x_head + 1)%79 ] = steps ;
				long long temp = table[ y_end ][ x_end ] ;
				table[ y_end ][ x_end ] = 0 ;
				steps++ ;
				
				gotoxy( (x_head + 1)%79 , y_head ) ;
				cout << char( 219 ) ;
				gotoxy( x_end , y_end ) ;
				cout << char( 0 ) ;
				
				x_head = (x_head + 1 )%79 ; 
				
				if( temp - table[ (y_end +22 )%23 ][ x_end ] == -1 )			y_end = ( y_end + 22 )%23 ;
				else if( temp - table[ (y_end ) ][ ( x_end + 1 )%79 ] == -1 )	x_end = ( x_end + 1 )%79 ;
				else if( temp - table[ (y_end + 1 )%23 ][ x_end ] == -1 )		y_end = ( y_end + 1 )%23 ;
				else if( temp - table[ (y_end ) ][ ( x_end + 78 )%79 ] == -1 )	x_end = ( x_end + 78 )%79 ;
			}	
			break ;
			
	}
	
}
//*************************** add to snake when eat hank ***********************
void add()
{
	char ch = 219 ;
	switch( dir_head )
	{
		case 'w' :
			table[ (y_head + 22 )%23 ][ x_head ] = steps ;
			steps++ ;
			y_head = (y_head + 22 )%23 ;
			gotoxy( x_hank , (y_hank + 22) % 23 ) ;
			cout << char( 219 ) ;
			break ;
			
		case 's' :
			table[ (y_head + 1)%23 ][ x_head ] = steps ;
			steps++ ;
			y_head = ( y_head + 1 ) % 23  ;
			gotoxy( x_hank , (y_hank + 1) % 23 ) ;
			cout << char( 219 ) ;
			break ;
			
		case 'a' :
			table[ y_head ][ (x_head + 78)%79 ] = steps ;
			steps++ ;
			x_head = (x_head + 78 )%79 ;
			gotoxy( (x_hank +78 )%79 , y_hank ) ;
			cout << char( 219 ) ;
			break ;
			
		case 'd' :
			table[ y_head ][ (x_head + 1)%79 ] = steps ;
			steps++ ;
			x_head = ( x_head + 1 )%79 ;
			gotoxy( (x_hank + 1 )%79 , y_hank ) ;
			cout << char(219) ;
			break ;
	}
}
//************************* clear screen *************************
void clrscr()
{
	char ch = 0 ;
	for( int i = 0 ; i <= 24 ; i++ )
		for( int j = 0 ; j <= 78 ; j++ )
			gotoxy( j , i ) , putch( ch ) ;
}
//************************ draw cadr *****************************
void drawcadr()
{
	gotoxy( 1 , 23 ) ;
	for( int i = 1 ; i <= 78 ; i++ )
		cout << char(22) ;
}
//********************* calculate scores **************************
int cal_score()
{
	return level*level ;
}
//*************************** begin **************************
void begin()
{
	x_head = 2 , y_head = 8 ;
	x_end = 0 , y_end = 8 ;
	steps = 5 ;
	table[8][0] = 2 , table[8][1] = 3 , table[8][2] = 4 ;
	gotoxy( 0 , 8 ) ;
	cout << char(219) << char(219) << char(219) ;

	fp = fopen( "D:\\scores.txt" , "r+" ) ;
	int x ;
	char s[20] ;
	fscanf( fp , "%d" , &best_rec ) ;
	
	fscanf( fp , "%s" , &s ) ;
	

	gotoxy( 0 , 24 ) ;
	cout << "scores : 0 " ;
	gotoxy( 25 , 24 ) ;
	cout << "best score : " << best_rec << "   " << s ;
}
//************************** check that record broken or not! **********************
void IsBrokenRecord()
{
	if( score > best_rec )	
	{
		fseek( fp , 0 , SEEK_SET ) ;
		gotoxy( 32 , 25 ) ;
		cout << "you broke record ! enter your name : " << endl  ;
		char s[20] ;
		cin >> s ;
		fprintf( fp , "%d\n" , score ) ;
		fprintf( fp , "%s\n" , s ) ;
	}
}

