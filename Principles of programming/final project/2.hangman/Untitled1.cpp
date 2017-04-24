#include <iostream>
#include <string>
#include <Windows.h>
#include <cstring>
#include <stdlib.h>
#include <cstdio>
#include <stdio.h>
#include <time.h>
#include <string.h>
#include <conio.h>
using namespace std;

void clrscr() ;
string ChooseWord() ;
void gotoxy( int , int ) ;
void DrawBlank( string ) ;
bool evaluate( char , string ) ;
void puttingch( char , int * , string ) ;
void ClearLine( int , int ) ;
void help( char , string , int * ) ;
void begin() ;
void prepairing( string ) ;
void You_lose( string ) ;
bool is_winner( int , string ) ;
void DrawCaricature( int ) ;	

FILE *fp , *fp2 ;
bool check[500] ;
int x ;// index of word
string level ;

int main()
{
	begin() ;

	string Word ;
	Word = ChooseWord() ;

	prepairing( Word ) ;

	int mistake = 0 , correct = 0 , index = 64 ;
	while( mistake < 8 )
	{
		gotoxy( 78 , 0 ) ;
		cout << mistake ;

		gotoxy( 21 , 6 ) ;
		cout << char(0) ;
		gotoxy( 21 , 6 ) ;
		char ch ;
		cin >> ch ;

		if( ch == '0' )  // check help request
		{
			gotoxy( 0 , 0 ) ;
			cout << "translate : press 1   put char : press 2 " ;
			
			gotoxy( 21 , 6 ) ;
			cout << char(0) ;
			gotoxy( 21 , 6 ) ;
			char c ; 
			cin >> c ;

			help( c , Word , &correct ) ; 
			ClearLine( 0 , 46 ) ;

			if( c == '1' )
			{
				mistake++ , DrawCaricature( mistake ) ;
				gotoxy( 78 , 0 ) ;
				cout << mistake ;
			}
			else
			{
				mistake++ , DrawCaricature( mistake ) ;
				mistake++ , DrawCaricature( mistake ) ;
				gotoxy( 78 , 0 ) ;
				cout << mistake ;
			}
			
			if( mistake >= 8 )	break ;

			if( is_winner( correct , Word ) )
			{
				getch() ;
				return 0 ;
			}
		}
		else
		{
			ClearLine( 0 , 65 ) ;
			gotoxy( 0 , 0 ) ;

			if( !evaluate( ch , Word ) )
			{
				if( check[ int(ch) ] == 1 )	cout << "this letter droped! " ;
				else
				{
					check[ int(ch) ] = 1 ;
					cout << "this letter don't exist ! " , mistake++ ;
					gotoxy( index , 6 ) ;
					cout << ch << "," ;
					index = index + 2 ;
					
					DrawCaricature( mistake ) ;	
				}
			}
			else
			{
				if( check[ int(ch) ] == 1 )	cout << "this letter put! " ;
				else
				{
					cout << "that's right ! " << endl ;
					puttingch( ch  , &correct , Word ) ;
						
					if(	is_winner( correct , Word ) )
					{
						getch() ;
						return 0 ;
					}
				}
			}
		}
	}

	You_lose( Word ) ;

	getch() ;
	return 0 ;
}
//************************* clear screen *************************
void clrscr()
{
	char ch = 0 ;
	for( int i = 0 ; i <= 24 ; i++ )
		for( int j = 0 ; j <= 78 ; j++ )
			gotoxy( j , i ) , putch( ch ) ;
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
//******************** Choose a randome word from data base ********************
string ChooseWord()
{
	switch( level[0] )
	{
		case 'e' :
			fp = fopen( "D:\\easy.txt" , "r" ) ;
	
			srand( time( NULL ) ) ;
			x = rand() % 33 + 1 ;
			break ;
		case 'm' :
			fp = fopen( "D:\\medium.txt" , "r" ) ;
	
			srand( time( NULL ) ) ;
			x = rand() % 22 + 1 ;
			break ;
		case 'h' :
			fp = fopen( "D:\\hard.txt" , "r" ) ;
	
			srand( time( NULL ) ) ;
			x = rand() % 18 + 1 ;
			break ;
	}

	char s[100] ;
	for( int i = 1 ; i <= x ; i++ )
		fscanf( fp , "%s" , &s ) ;

	return s ;
}
//****************** Draw blanks **********************
void DrawBlank( string word )
{
	for( int i = 40 - strlen( word.c_str() ) ; i < 40 + strlen( word.c_str() ) ; i = i+2 )
	{
		gotoxy( i , 3 ) ;
		cout << (char)(22) ;
	}

	gotoxy( 0 , 5 ) ;
	for( int i = 0 ; i < 80 ; i++ )
		cout << char(177) ;

	gotoxy( 0 , 4 ) ;
	cout << "Help : Press 0" ;
}
//************** check that char ch exist or not ***************
bool evaluate( char ch , string word )
{
	for( int i = 0 ; i < strlen( word.c_str() ) ; i++ )
		if( ch == word[i] )
				return true ;

	return false ;
}
//*************** put char in blank *****************
void puttingch( char ch , int *p , string word )
{
	for( int i = 0 ; i < strlen( word.c_str() ) ; i++ )
		if( ch == word[i] )
		{
			gotoxy( 40 - strlen( word.c_str() ) + 2*i , 3 ) ;
			cout << ch ;
			if( check[ int(ch) ] == 0 )
				(*p)++ ; 
		}

	check[ int(ch) ] = 1 ;
}
//********************* Clear line x from 0 to y *********************
void ClearLine( int x , int y )
{
	char ch = 0 ;
	for( int i = 0 ; i <= y ; i++ )
		gotoxy( i , x ) , putch( ch ) ;
}
//**************************** help ***************************
void help( char ch , string word , int *p )
{
	switch( ch )
	{
		case '1' :
			switch( level[0] )
			{
				case 'e' :
					fp2 = fopen( "D:\\easy-t.txt" , "r" ) ;
					break ;
				case 'm' :
					fp2 = fopen( "D:\\medium-t.txt" , "r" ) ;
					break ;
				case 'h' :
					fp2 = fopen( "D:\\hard-t.txt" , "r" ) ;
					break ;
			}
			char s[100] ;
			for( int i = 1 ; i <= x ; i++ )
				fscanf( fp2 , "%s" , &s ) ;

			gotoxy( 0 , 7 ) ;
			cout << "Translated to persion : " << s ;
			break ;

		case '2' :
			for( int i = 0 ; i < strlen( word.c_str() ) ; i++ )
				if( check[ int(word[i]) ] == 0 )
				{
					puttingch( word[i] , p , word ) ;
					break ;
				}
			break ;
	}
}
//*************************** begin game ******************************
void begin()
{
	cout << "Welcome ! " << endl ;
	cout << "Is you ready ? " ;
	cout << "select difficulty ( easy , medium ,hard ) : " ;
	cin >> level ;
	system( "pause" ) ;
	clrscr() ;
}
//************************** prepair game plane **************************
void prepairing( string word )
{
	DrawBlank( word ) ;

	gotoxy( 68 , 0 ) ;
	cout << "mistake : " ;

	gotoxy( 47 , 6 ) ;
	cout << "Droped letters :" ;

	gotoxy( 0 , 6 ) ;
	cout << "Pls guess a letter ! " ;
}
//********************* check is you winner !! *********************
bool is_winner( int correct , string word )
{
	if(	correct == strlen( word.c_str() ) )
	{
		ClearLine( 6 , 79 ) ;
		ClearLine( 0 , 79 ) ;
		ClearLine( 4 , 79 ) ;
		ClearLine( 7 , 79 ) ;
		gotoxy( 35 , 6 ) ;
		cout << "You win ! " << endl ;
		return 1 ;
	}

	return 0 ;
}
//********************* Drawing caricature based on mistakes *********************
void DrawCaricature( int mistake )
{
	char c ;
	switch( mistake )
	{
		case 1 :
			c = 124 ;
			gotoxy( 37 , 10 ) ;
			putch( c ) ;
			gotoxy( 37 , 9 ) ;
			putch( c ) ;
			break ;
		case 2:
			c = 22 ;
			gotoxy( 38 , 8 ) ;
			putch( c ) ;
			gotoxy( 39 , 8 ) ;
			putch( c ) ;
			break ;
		case 3:
			c = 124 ;
			gotoxy( 40 , 9 ) ;
			putch( c ) ;
			break ;
		case 4:
			c = 1 ;
			gotoxy( 40 , 10 ) ;
			putch( c ) ;
			break ;
		case 5:
			c = 73 ;
			gotoxy( 40 , 11 ) ;
			putch( c ) ;
			break ;
		case 6:
			c = 92 ;
			gotoxy( 41 , 12 ) ;
			putch( c ) ;
			gotoxy( 39 , 12 ) ;
			c = 47 ;
			putch( c ) ;
			break ;
		case 7:
			c = 73 ;
			gotoxy( 40 , 12 ) ;
			putch( c ) ;
			break ;
		case 8 :
			c = 92 ;
			gotoxy( 41 , 13 ) ;
			putch( c ) ;
			gotoxy( 39 , 13 ) ;
			c = 47 ;
			putch( c ) ;
			break ;
	}
}
//************************ inform you lose ***********************
void You_lose( string word )
{
	ClearLine( 6 , 79 ) ;
	for( int i = 0 ; i < strlen( word.c_str() ) ; i++ )
		gotoxy( 40 - strlen( word.c_str() )+ 2*i , 3 ) , putch( word[i] ) ;

	ClearLine( 0 , 79 ) ;
	ClearLine( 7 , 79 ) ;
	ClearLine( 4 , 79 ) ;
	gotoxy( 35 , 6 ) ;
	cout << "You lose ! " << endl ;
}
