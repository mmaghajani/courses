#include <iostream>
#include <conio.h>
#include <stdlib.h>
#include <string.h>
#include <cstdio>
#include <Windows.h>
#include <string>
using namespace std;
void LoadFile() ;
char menu() ;
void add() ;
void save() ;
void del() ;
void search() ;
void ShowList() ;
void sort() ;
void Exit() ;
void gotoxy( int , int ) ;
void clrscr() ;
typedef struct list
{
	char name[40] ;
	char family[50] ;
	char Tel[15] ;
	char email[40] ;
	char group[10] ;
	struct list *next ;
}node ;
node start , *record ;
FILE *fp ;
int ConNum ;
int main()
{
	start.next = NULL ;
	LoadFile() ;
	while( true )
	{
		char ch = menu() ;
		switch( ch )
		{
			case '1' :
				add() ;
				break ;
			case '2' :
				del() ;
				break ;
			case '3' :
				save() ;
				break ;
			case '4' :
				search() ;
				break ;
			case '5' :
				ShowList() ;
				break ;
			case '6' :
				Exit() ;
				return 0 ;
				break ;
		}
	}

	fclose( fp ) ;

	return 0 ;
}
//***************** Load a file for processing ************************
void LoadFile()
{
	fp = fopen( "D:\\phonebook.txt" , "r+" ) ;

	fscanf( fp , "%d" , &ConNum ) ;

	
	record = ( node * )( malloc( sizeof( node ) ) ) ;
	fscanf( fp , "%s%s%s%s%s" , record->name , record->family , record->Tel , record->email , record->group );
	record->next = NULL ;
	start = *record ;

	int index = 1 ;
	while( index < ConNum )
	{
		record = ( node * )( malloc( sizeof( node ) ) ) ;
		fscanf( fp , "%s%s%s%s%s" , record->name , record->family , record->Tel , record->email , record->group );
		record->next = start.next ;
		start.next = record ;
		index++ ;
	}

	sort() ;
}
//****************************** menu ************************************
char menu()
{
	cout << endl ;
	cout << "for add a contact press 1" << endl ;
	cout << "for delete contact press 2" << endl ;
	cout << "for save press 3" << endl ;
	cout << "for search contact press 4" << endl ;
	cout << "for show list press 5" << endl ;
	cout << "for exit press 6" << endl ;

	char ch ;
	cin >> ch ;

	return ch ;
}
//*************************** Add a contact ***************************
void add()
{
	clrscr() ;
	gotoxy( 0 , 0 ) ;

	record = ( node * )(malloc( sizeof(node) ) ) ;
	char s[100] ;

	cout << "for skip item press 0 " << endl ;

	cout << "Pls enter name : " ;
	cin >> s ;
	strcpy( record->name , s ) ;

	cout << "Pls enter family : " ;
	cin >> s ;
	strcpy( record->family , s ) ;

	cout << "Pls enter Tel : " ;
	cin >> s ;
	strcpy( record->Tel , s ) ;

	cout << "Pls enter email : " ;
	cin >> s ;
	strcpy( record->email , s ) ;

	cout << "Pls enter group : " ;
	cin >> s ;
	strcpy( record->group , s ) ;

	record->next = start.next ;
	start.next = record ;

	cout << "Do you want to save this changes ?(y/n)" ;
	char ch ;
	cin >> ch ;
	if( ch == 'y' || ch == 'Y' )	ConNum++ , sort() , save() ;
}
//********************* Save changes **************************
void save()
{
	clrscr() ;
	gotoxy( 0 , 0 ) ;

	sort() ;
	node p ;
	p = start ;

	fseek( fp , 0 , SEEK_SET ) ;
	fprintf( fp , "%d\n" , ConNum ) ;

	while( p.next != NULL )
	{
		fprintf( fp , "%s %s %s %s %s\n" , p.name , p.family , p.Tel , p.email , p.group ) ;
		p = *(p.next) ; 
	}

	fprintf( fp , "%s %s %s %s %s\n" , p.name , p.family , p.Tel , p.email , p.group ); // print last node //

	cout << "Phonebook saved ! " << endl ;
}
//********************** search contact **************************
void search()
{
	clrscr() ;
	gotoxy( 0 , 0 ) ;

	cout << "Pls enter type ( name , family , tel , email ) : " ;
	string s1 ;
	cin >> s1 ;
	
	char s[50] ;
	node p ;
	p = start ;
	bool flag = 0 ;
	int line = 2 ;
	switch( s1[0] )
	{
		case 'n' :
			cout << "Pls enter name for search :" ;
			cin >> s ;

			clrscr() ;
			gotoxy( 0 , 0 ) ;
			cout << "Result is : " << endl ;

			while( p.next != NULL )
			{
				if( strcmpi( p.name , s ) == 0 )
				{
					if( flag == 0 )
					{
							gotoxy( 0 , 1 ) , cout << "Name" ;
							gotoxy( 18 , 1 ) , cout << "Family" ;
							gotoxy( 34 , 1 ) , cout << "Tel" ;
							gotoxy( 48 , 1 ) , cout << "Email" ;
							gotoxy( 72 , 1 ) , cout << "Group\n" ;
					}
					if( strcmp( p.name , "0" ) != 0 )		gotoxy( 0 , line ) , cout << p.name ;
					if( strcmp( p.family , "0" ) != 0 )		gotoxy( 18 , line ) , cout << p.family ;
					if( strcmp( p.Tel , "0" ) != 0 )		gotoxy( 34 , line ) , cout << p.Tel ;
					if( strcmp( p.email , "0" ) != 0 )		gotoxy( 48 , line ) , cout << p.email ;
					if( strcmp( p.group , "0" ) != 0 )		gotoxy( 72 , line ) , cout << p.group ;
					line++ ;

					flag = 1 ;
					cout << endl ;
				}

				p = *(p.next) ;
			}

			if( strcmpi( p.name , s ) == 0 )          // check last node //
			{
				if( flag == 0 )
				{
					gotoxy( 0 , 1 ) , cout << "Name" ;
					gotoxy( 18 , 1 ) , cout << "Family" ;
					gotoxy( 34 , 1 ) , cout << "Tel" ;
					gotoxy( 48 , 1 ) , cout << "Email" ;
					gotoxy( 72 , 1 ) , cout << "Group\n" ;
				}
				if( strcmp( p.name , "0" ) != 0 )		gotoxy( 0 , line ) , cout << p.name ;
				if( strcmp( p.family , "0" ) != 0 )		gotoxy( 18 , line ) , cout << p.family ;
				if( strcmp( p.Tel , "0" ) != 0 )		gotoxy( 34 , line ) , cout << p.Tel ;
				if( strcmp( p.email , "0" ) != 0 )		gotoxy( 48 , line ) , cout << p.email ;
				if( strcmp( p.group , "0" ) != 0 )		gotoxy( 72 , line ) , cout << p.group ;
				line++ ;

				flag = 1 ;
				cout << endl ;
			}

			if( flag == 0 )		cout << s << " not found! " << endl ;
			break ;

		case 'f' :
			cout << "Pls enter family for search :" ;
			cin >> s ;

			clrscr() ;
			gotoxy( 0 , 0 ) ;
			cout << "Result is : " << endl ;

			while( p.next != NULL )
			{
				if( strcmpi( p.family , s ) == 0 )
				{
					if( flag == 0 )
					{
							gotoxy( 0 , 1 ) , cout << "Name" ;
							gotoxy( 18 , 1 ) , cout << "Family" ;
							gotoxy( 34 , 1 ) , cout << "Tel" ;
							gotoxy( 48 , 1 ) , cout << "Email" ;
							gotoxy( 72 , 1 ) , cout << "Group\n" ;
					}
					if( strcmp( p.name , "0" ) != 0 )		gotoxy( 0 , line ) , cout << p.name ;
					if( strcmp( p.family , "0" ) != 0 )		gotoxy( 18 , line ) , cout << p.family ;
					if( strcmp( p.Tel , "0" ) != 0 )		gotoxy( 34 , line ) , cout << p.Tel ;
					if( strcmp( p.email , "0" ) != 0 )		gotoxy( 48 , line ) , cout << p.email ;
					if( strcmp( p.group , "0" ) != 0 )		gotoxy( 72 , line ) , cout << p.group ;
					line++ ;

					flag = 1 ;
					cout << endl ;
				}

				p = *(p.next) ;
			}

			if( strcmpi( p.family , s ) == 0 )          // check last node //
			{
				if( flag == 0 )
				{
					gotoxy( 0 , 1 ) , cout << "Name" ;
					gotoxy( 18 , 1 ) , cout << "Family" ;
					gotoxy( 34 , 1 ) , cout << "Tel" ;
					gotoxy( 48 , 1 ) , cout << "Email" ;
					gotoxy( 72 , 1 ) , cout << "Group\n" ;
				}
				if( strcmp( p.name , "0" ) != 0 )		gotoxy( 0 , line ) , cout << p.name ;
				if( strcmp( p.family , "0" ) != 0 )		gotoxy( 18 , line ) , cout << p.family ;
				if( strcmp( p.Tel , "0" ) != 0 )		gotoxy( 34 , line ) , cout << p.Tel ;
				if( strcmp( p.email , "0" ) != 0 )		gotoxy( 48 , line ) , cout << p.email ;
				if( strcmp( p.group , "0" ) != 0 )		gotoxy( 72 , line ) , cout << p.group ;
				line++ ;

				flag = 1 ;
				cout << endl ;
			}

			if( flag == 0 )		cout << s << " not found! " << endl ;
			break ;

		case 't' :
			cout << "Pls enter Tel for search :" ;
			cin >> s ;

			clrscr() ;
			gotoxy( 0 , 0 ) ;
			cout << "Result is : " << endl ;

			while( p.next != NULL )
			{
				if( strcmpi( p.Tel , s ) == 0 )
				{
					if( flag == 0 )
					{
							gotoxy( 0 , 1 ) , cout << "Name" ;
							gotoxy( 18 , 1 ) , cout << "Family" ;
							gotoxy( 34 , 1 ) , cout << "Tel" ;
							gotoxy( 48 , 1 ) , cout << "Email" ;
							gotoxy( 72 , 1 ) , cout << "Group\n" ;
					}
					if( strcmp( p.name , "0" ) != 0 )		gotoxy( 0 , line ) , cout << p.name ;
					if( strcmp( p.family , "0" ) != 0 )		gotoxy( 18 , line ) , cout << p.family ;
					if( strcmp( p.Tel , "0" ) != 0 )		gotoxy( 34 , line ) , cout << p.Tel ;
					if( strcmp( p.email , "0" ) != 0 )		gotoxy( 48 , line ) , cout << p.email ;
					if( strcmp( p.group , "0" ) != 0 )		gotoxy( 72 , line ) , cout << p.group ;
					line++ ;

					flag = 1 ;
					cout << endl ;
				}

				p = *(p.next) ;
			}

			if( strcmpi( p.Tel , s ) == 0 )          // check last node //
			{
				if( flag == 0 )
				{
					gotoxy( 0 , 1 ) , cout << "Name" ;
					gotoxy( 18 , 1 ) , cout << "Family" ;
					gotoxy( 34 , 1 ) , cout << "Tel" ;
					gotoxy( 48 , 1 ) , cout << "Email" ;
					gotoxy( 72 , 1 ) , cout << "Group\n" ;
				}
				if( strcmp( p.name , "0" ) != 0 )		gotoxy( 0 , line ) , cout << p.name ;
				if( strcmp( p.family , "0" ) != 0 )		gotoxy( 18 , line ) , cout << p.family ;
				if( strcmp( p.Tel , "0" ) != 0 )		gotoxy( 34 , line ) , cout << p.Tel ;
				if( strcmp( p.email , "0" ) != 0 )		gotoxy( 48 , line ) , cout << p.email ;
				if( strcmp( p.group , "0" ) != 0 )		gotoxy( 72 , line ) , cout << p.group ;
				line++ ;

				flag = 1 ;
				cout << endl ;
			}

			if( flag == 0 )		cout << s << " not found! " << endl ;
			break ;

		case 'e' :
			cout << "Pls enter email for search :" ;
			cin >> s ;

			clrscr() ;
			gotoxy( 0 , 0 ) ;
			cout << "Result is : " << endl ;

			while( p.next != NULL )
			{
				if( strcmpi( p.email , s ) == 0 )
				{
					if( flag == 0 )
					{
							gotoxy( 0 , 1 ) , cout << "Name" ;
							gotoxy( 18 , 1 ) , cout << "Family" ;
							gotoxy( 34 , 1 ) , cout << "Tel" ;
							gotoxy( 48 , 1 ) , cout << "Email" ;
							gotoxy( 72 , 1 ) , cout << "Group\n" ;
					}
					if( strcmp( p.name , "0" ) != 0 )		gotoxy( 0 , line ) , cout << p.name ;
					if( strcmp( p.family , "0" ) != 0 )		gotoxy( 18 , line ) , cout << p.family ;
					if( strcmp( p.Tel , "0" ) != 0 )		gotoxy( 34 , line ) , cout << p.Tel ;
					if( strcmp( p.email , "0" ) != 0 )		gotoxy( 48 , line ) , cout << p.email ;
					if( strcmp( p.group , "0" ) != 0 )		gotoxy( 72 , line ) , cout << p.group ;
					line++ ;

					flag = 1 ;
					cout << endl ;
				}

				p = *(p.next) ;
			}

			if( strcmpi( p.email , s ) == 0 )          // check last node //
			{
				if( flag == 0 )
				{
					gotoxy( 0 , 1 ) , cout << "Name" ;
					gotoxy( 18 , 1 ) , cout << "Family" ;
					gotoxy( 34 , 1 ) , cout << "Tel" ;
					gotoxy( 48 , 1 ) , cout << "Email" ;
					gotoxy( 72 , 1 ) , cout << "Group\n" ;
				}
				if( strcmp( p.name , "0" ) != 0 )		gotoxy( 0 , line ) , cout << p.name ;
				if( strcmp( p.family , "0" ) != 0 )		gotoxy( 18 , line ) , cout << p.family ;
				if( strcmp( p.Tel , "0" ) != 0 )		gotoxy( 34 , line ) , cout << p.Tel ;
				if( strcmp( p.email , "0" ) != 0 )		gotoxy( 48 , line ) , cout << p.email ;
				if( strcmp( p.group , "0" ) != 0 )		gotoxy( 72 , line ) , cout << p.group ;
				line++ ;

				flag = 1 ;
				cout << endl ;
			}

			if( flag == 0 )		cout << s << " not found! " << endl ;
			break ;
		}
}
//*************************** Show list **************************
void ShowList()
{
	sort() ;

	cout << "select category ( freind , family , collegue , all ) : " ;
	string s ;
	cin >> s ;

	clrscr() ;

	node p ;
	p = start ;

	gotoxy( 0 , 0 ) , cout << "Name" ;
	gotoxy( 18 , 0 ) , cout << "Family" ;
	gotoxy( 34 , 0 ) , cout << "Tel" ;
	gotoxy( 48 , 0 ) , cout << "Email" ;
	gotoxy( 72 , 0 ) , cout << "Group\n" ;

	int line = 1 ;
	switch( s[1] )
	{
		case 'r' :
			do
			{
				if( strcmp( p.group , "freind" ) == 0 )
				{
					if( strcmp( p.name , "0" ) != 0 )		gotoxy( 0 , line ) , cout << p.name ;
					if( strcmp( p.family , "0" ) != 0 )		gotoxy( 18 , line ) , cout << p.family ;
					if( strcmp( p.Tel , "0" ) != 0 )		gotoxy( 34 , line ) , cout << p.Tel ;
					if( strcmp( p.email , "0" ) != 0 )		gotoxy( 48 , line ) , cout << p.email ;
					if( strcmp( p.group , "0" ) != 0 )		gotoxy( 72 , line ) , cout << p.group ;

					line++ ;
				}
				p = *(p.next) ;
			}while( p.next != NULL ) ;

			if( strcmp( p.group , "freind" ) == 0 )
			{
					if( strcmp( p.name , "0" ) != 0 )		gotoxy( 0 , line ) , cout << p.name ;	//show last node
					if( strcmp( p.family , "0" ) != 0 )		gotoxy( 18 , line ) , cout << p.family ;//show last node
					if( strcmp( p.Tel , "0" ) != 0 )		gotoxy( 34 , line ) , cout << p.Tel ;	//show last node
					if( strcmp( p.email , "0" ) != 0 )		gotoxy( 48 , line ) , cout << p.email ;	//show last node
					if( strcmp( p.group , "0" ) != 0 )		gotoxy( 72 , line ) , cout << p.group ;	//show last node
			}
			break ;

		case 'a' :
			do
			{
				if( strcmp( p.group , "family" ) == 0 )
				{
					
					if( strcmp( p.name , "0" ) != 0 )		gotoxy( 0 , line ) , cout << p.name ;
					if( strcmp( p.family , "0" ) != 0 )		gotoxy( 18 , line ) , cout << p.family ;
					if( strcmp( p.Tel , "0" ) != 0 )		gotoxy( 34 , line ) , cout << p.Tel ;
					if( strcmp( p.email , "0" ) != 0 )		gotoxy( 48 , line ) , cout << p.email ;
					if( strcmp( p.group , "0" ) != 0 )		gotoxy( 72 , line ) , cout << p.group ;

					line++ ;
				}
				p = *(p.next) ;
			}while( p.next != NULL ) ;

			if( strcmp( p.group , "family" ) == 0 )
			{
					if( strcmp( p.name , "0" ) != 0 )		gotoxy( 0 , line ) , cout << p.name ;	//show last node
					if( strcmp( p.family , "0" ) != 0 )		gotoxy( 18 , line ) , cout << p.family ;//show last node
					if( strcmp( p.Tel , "0" ) != 0 )		gotoxy( 34 , line ) , cout << p.Tel ;	//show last node
					if( strcmp( p.email , "0" ) != 0 )		gotoxy( 48 , line ) , cout << p.email ;	//show last node
					if( strcmp( p.group , "0" ) != 0 )		gotoxy( 72 , line ) , cout << p.group ;	//show last node
			}
			break ;

		case 'o' :
			do
			{
				if( strcmp( p.group , "collegue" ) == 0 )
				{
					
					if( strcmp( p.name , "0" ) != 0 )		gotoxy( 0 , line ) , cout << p.name ;
					if( strcmp( p.family , "0" ) != 0 )		gotoxy( 18 , line ) , cout << p.family ;
					if( strcmp( p.Tel , "0" ) != 0 )		gotoxy( 34 , line ) , cout << p.Tel ;
					if( strcmp( p.email , "0" ) != 0 )		gotoxy( 48 , line ) , cout << p.email ;
					if( strcmp( p.group , "0" ) != 0 )		gotoxy( 72 , line ) , cout << p.group ;

					line++ ;
				}
				p = *(p.next) ;
			}while( p.next != NULL ) ;

			if( strcmp( p.group , "collegue" ) == 0 )
			{
				
					if( strcmp( p.name , "0" ) != 0 )		gotoxy( 0 , line ) , cout << p.name ;	//show last node
					if( strcmp( p.family , "0" ) != 0 )		gotoxy( 18 , line ) , cout << p.family ;//show last node
					if( strcmp( p.Tel , "0" ) != 0 )		gotoxy( 34 , line ) , cout << p.Tel ;	//show last node
					if( strcmp( p.email , "0" ) != 0 )		gotoxy( 48 , line ) , cout << p.email ;	//show last node
					if( strcmp( p.group , "0" ) != 0 )		gotoxy( 72 , line ) , cout << p.group ;	//show last node
			}
			break ;

		case 'l' :
			do
			{
				
				if( strcmp( p.name , "0" ) != 0 )		gotoxy( 0 , line ) , cout << p.name ;
				if( strcmp( p.family , "0" ) != 0 )		gotoxy( 18 , line ) , cout << p.family ;
				if( strcmp( p.Tel , "0" ) != 0 )		gotoxy( 34 , line ) , cout << p.Tel ;
				if( strcmp( p.email , "0" ) != 0 )		gotoxy( 48 , line ) , cout << p.email ;
				if( strcmp( p.group , "0" ) != 0 )		gotoxy( 72 , line ) , cout << p.group ;

				line++ ;
				p = *(p.next) ;
			}while( p.next != NULL ) ;

			
			if( strcmp( p.name , "0" ) != 0 )		gotoxy( 0 , line ) , cout << p.name ;	//show last node
			if( strcmp( p.family , "0" ) != 0 )		gotoxy( 18 , line ) , cout << p.family ;//show last node
			if( strcmp( p.Tel , "0" ) != 0 )		gotoxy( 34 , line ) , cout << p.Tel ;	//show last node
			if( strcmp( p.email , "0" ) != 0 )		gotoxy( 48 , line ) , cout << p.email ;	//show last node
			if( strcmp( p.group , "0" ) != 0 )		gotoxy( 72 , line ) , cout << p.group ;	//show last node
			break ;
	}

	cout << endl ;
}
//************************ Exit from phonebook ********************
void Exit()
{
	cout << "Do you want to save changes ?(y/n) " ;
	char ch ;
	cin >> ch ;
	if( ch == 'y' || ch == 'Y' )
		save() ;

	fclose( fp ) ;
}
//************************** Sort contacts ******************************
void sort()
{
	node *p , *q , *temp1 , *temp2 , temp ;
	if( strcmp( start.name , (start.next)->name ) == 1 )
	{

		strcpy( temp.name , start.name ) ;
		strcpy( start.name , (start.next)->name ) ;
		strcpy( (start.next)->name , temp.name ) ;
		
		strcpy( temp.family , start.family ) ;
		strcpy( start.family , (start.next)->family ) ;
		strcpy( (start.next)->family , temp.family ) ;
		
		strcpy( temp.Tel , start.Tel ) ;
		strcpy( start.Tel , (start.next)->Tel ) ;
		strcpy( (start.next)->Tel , temp.Tel ) ;
		
		strcpy( temp.email , start.email ) ;
		strcpy( start.email , (start.next)->email ) ;
		strcpy( (start.next)->email , temp.email ) ;
		
		strcpy( temp.group , start.group ) ;
		strcpy( start.group , (start.next)->group ) ;
		strcpy( (start.next)->group , temp.group ) ;
	}

	for( int i = 0 ; i < ConNum ; i++ )
	{
		q = &start , p = start.next ;
		while( p->next != NULL )
		{
			if( strcmp( p->name , (p->next)->name ) == 1 )
			{
				temp1 = q->next ;
				temp2 = p->next ;
				q->next = temp2 ;
				p->next = (p->next)->next ;
				temp2->next = temp1 ;
				q = q->next ;
			}
			else
			{
				p = p->next ;
				q = q->next ;
			}
		}
	}
}
//************************* clear screen *************************
void clrscr()
{
	char ch = 0 ;
	for( int i = 0 ; i <= 24 ; i++ )
		for( int j = 0 ; j <= 79 ; j++ )
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
//************************* delete contact ******************************
void del()
{
	cout << "enter name & family : " ;
	char s[2][20] ;
	cin >> s[0] >> s[1] ;

	node *p ;
	p = &start ;

	bool flag = 0 ;

	if( strcmp( p->name , s[0] ) == 0 && strcmp( p->family , s[1] ) == 0 )  // check first node
		start = *(p->next) , flag = 1 ;
	while( p->next != NULL )
	{
		if( strcmp( (p->next)->name , s[0] ) == 0 && strcmp( (p->next)->family , s[1] ) == 0 )
		{
			p->next = (p->next)->next ;
			flag = 1 ;
		//	free( p->next ) ;
			break ;
		}

		p = p->next ;
	}

	clrscr() ;
	gotoxy( 0 , 0 ) ;

	if( flag == 0 )	cout << "contact not found ! " ;
	else
	{
		cout << "contact deleted ! " << endl << "Do you want to save changes ?(y/n) ";
		char ch ;
		cin >> ch ;
		if( ch == 'y' || ch == 'Y' )	ConNum-- , sort() , save() ;
	}
}
