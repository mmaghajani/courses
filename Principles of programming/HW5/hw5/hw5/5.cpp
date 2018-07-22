#include <iostream>
#include <conio.h>
using namespace std;

void input() ;
void output() ;
void insertion_sort( char ) ;
void selection_sort( char ) ;
void merge_sort( char , int , int ) ;
void merge( char , int , int , int ) ;
void bubble_sort( char ) ;
int bin_search( int , int , int ) ;
int line_search( int ) ;

double ave[200] ;
long long ID[200] ;
int num ;

int main()
{
	
	input() ;

	char ch ;
	cout << "for sorting based on student ID press 's' for sorting based on average press 'a'" << endl ;
	do
	{
		cout << "Pls enter valid data : " ;
		cin >> ch ;
	}while( ch != 's' && ch != 'a' ) ;

	if( ch == 's' )
	{
			char s ;
			cout << "for insertion sort press 'i' \nfor selection sort press 's' \nfor merge sort press 'm' \nfor bubble sort press 'b' " << endl  ;
			do
			{
				cout << "Pls enter valid data : " ;
				cin >> s ;
			}while( s != 'i' && s != 's' && s != 'm' && s != 'b' ) ;

			switch( s ) 
			{
				case 'i' :
					insertion_sort( 's' ) ;
					break ;

				case 's' :
					selection_sort( 's' ) ;
					break ;

				case 'm' :
					merge_sort( 's' , 1 , num ) ;
					break ;

				case 'b' :
					bubble_sort( 's' ) ;
					break ;
			}

			cout << "sorted data based on student ID is : " << endl ;
			output() ;
			
			char ans ;
			do
			{
			cout << "do you want search ?(y/n) " ;
			cin >> ans ;
			}while( ans != 'n' && ans != 'y' ) ;
			
			if( ans == 'n' )	return 0 ;
			else
			{
				cout << "Pls enter student ID for search : " ;
				int x ;
				cin >> x ;
				
				char c ;
				cout << endl << "for binary serach press 'b' and for linear search press 'l' " << endl  ;
				do
				{
					cout << "Pls enter valid data : " ;
					cin >> c ;
				}while( c != 'b' && c != 'l' ) ;
				
				if( c == 'b' )	
				{
					merge_sort( 's' , 1 , num ) ;
					int index = bin_search( 1 , num , x ) ;
					if( index > 0 )				cout << endl << "average for this ID is : " << ave[ index ] << endl ;
					else						cout << endl << "this ID not found ! " << endl ;
				}
				else
				{
					int index = line_search( x ) ;
					if( index > 0 )				cout << endl << "average for this ID is : " << ave[ index ] << endl ;
					else						cout << endl << "this ID not found ! " << endl ;
				}
			}

	}
	
	else if( ch == 'a' )
	{
			char s ;
			cout << "for insertion sort press 'i' \nfor selection sort press 's' \nfor merge sort press 'm' \nfor bubble sort press 'b' " << endl  ;
			do
			{
				cout << "Pls enter valid data : " ;
				cin >> s ;
			}while( s != 'i' && s != 's' && s != 'm' && s != 'b' ) ;

			switch( s ) 
			{
				case 'i' :
					insertion_sort( 'a' ) ;
					break ;

				case 's' :
					selection_sort( 'a' ) ;
					break ;

				case 'm' :
					merge_sort( 'a' , 1 , num ) ;
					break ;

				case 'b' :
					bubble_sort( 'a' ) ;
					break ;
			}

			cout << "sorted data based on averege is : " << endl ;
			output() ;

			char ans ;
			do
			{
			cout << "do you want search ?(y/n) " ;
			cin >> ans ;
			}while( ans != 'n' && ans != 'y' ) ;
			
			if( ans == 'n' )	return 0 ;
			else
			{
				cout << "Pls enter student ID for search : " ;
				int x ;
				cin >> x ;
				
				char c ;
				cout << endl << "for binary serach press 'b' and for linear search press 'l' " << endl  ;
				do
				{
					cout << "Pls enter valid data : " ;
					cin >> c ;
				}while( c != 'b' && c != 'l' ) ;
				
				if( c == 'b' )	
				{
					merge_sort( 's' , 1 , num ) ;
					int index = bin_search( 1 , num , x ) ;
					if( index > 0 )			cout << endl << "average for this ID is : " << ave[ index ] << endl ;
					else					cout << endl << "this ID not found ! " << endl ;
				}
				else
				{
					int index = line_search( x ) ;
					if( index > 0 )			cout << endl << "average for this ID is : " << ave[ index ] << endl ;
					else					cout << endl << "this ID not found ! " << endl ;
				}
			}
	}
	
	getch() ;
	return 0 ;
}
//*********************** input data ******************************
void input()
{
	cout << "Pls enter number of memebers " << endl ;
	do
	{
		cout << "Pls enter valid data : " ;
		cin >> num ;
	}while( num > 128 || num < 1 )  ;
	
	
	cout << "Pls enter student ID and average : " << endl ;
	for( int i = 1 ; i <= num ; i++ )
	{
		cout << i << " : " ;
		cin >> ID[i] ;
		do
		{
			cin >> ave[i] ;
			if( ave[i] > 20.00 || ave[i] < 0.00 ) 		cout << "Pls enter valid average : " ;
			
		}while( ave[i] > 20.00 || ave[i] < 0.00 ) ;
	}
}
//********************** output data **********************************
void output()
{
	cout << "\tstudent ID \t average" << endl ;
	
	for( int i = 1 ; i <= num ; i++ )
		cout << "\t  " << ID[i] << "\t  " << ave[i] << endl ;
}
//*********************** insertion sort *******************************
void insertion_sort( char s )
{
	long long temp1 ;
	double temp2 ;
	
	switch( s )
	{
		case 's' :
			
			for( int i = 2 ; i <= num ; i++ )
			{
				temp1 = ID[i] , temp2 = ave[i] ;
				int j = i-1 ;
				
				while( ID[j] > temp1 && j > 0 )
					ID[j+1] = ID[j] , ave[j+1] = ave[j] , j-- ;
					
				ID[j+1] = temp1 , ave[j+1] = temp2 ;
			}
			
			break ;
			
		case 'a' :
			
			for( int i = 2 ; i <= num ; i++ )
			{
				temp1 = ID[i] , temp2 = ave[i] ;
				int j = i-1 ;
				
				while( ave[j] > temp2 && j > 0 )
					ave[j+1] = ave[j] , ID[j+1] = ID[j] ,	j-- ;
					
				ID[j+1] = temp1 , ave[j+1] = temp2 ;	
			}
			
			break ;
			
	}
}
//*************************** selection sort *******************************
void selection_sort( char s )
{
	switch( s ) 
	{
		case 's' :
			for( int i = 1 ; i <= num ; i++ )
				for( int j = i+1 ; j <= num ; j++ )
					if( ID[i] > ID[j] )	swap( ID[i] , ID[j] ) , swap( ave[i] , ave[j] ) ;
			break ;
		
		case 'a' :
			for( int i = 1 ; i <= num ; i++ )
				for( int j = i+1 ; j <= num ; j++ )
					if( ave[i] > ave[j] )	swap( ID[i] , ID[j] ) , swap( ave[i] , ave[j] ) ;
			break ;
		
	}
}
//************************** merge sort ************************************
void merge_sort( char s , int start , int end )
{
	if( start == end )	return ;
	else
	{
		merge_sort( s , (start+end)/2 + 1 , end ) ;
		merge_sort( s , start , (start+end)/2 ) ;
		merge( s , start , (start+end)/2 , end ) ;
	}
}
//*************************** merge ************************************
void merge( char s , int start , int middle , int end )
{
	int head1 = start , head2 = middle+1 , index = 0 , temp1[200] ;
	double temp2[200] ;
	
	switch( s )
	{
		case 's' :
			
			while( head1 <= middle && head2 <= end )
			{
				if( ID[head1] <= ID[head2] )
					temp1[index] = ID[head1] , temp2[index] = ave[head1] , index++ , head1++ ;
				else
					temp1[index] = ID[head2] , temp2[index] = ave[head2] , index++ , head2++ ;
			}
	
			if( head1 > middle )
				while( head2 <= end )		temp1[index] = ID[head2] , temp2[index] = ave[head2] , index++ , head2++ ;
			else if( head2 > end )
				while( head1 <= middle )	temp1[index] = ID[head1] , temp2[index] = ave[head1] , index++ , head1++ ;
		
			index = 0 ;
			for( int i = start ; i <= end ; i++ )
				ID[i] = temp1[index] , ave[i] = temp2[index] , index++ ;
				
			break ;
			
		case 'a' :

		while( head1 <= middle && head2 <= end )
			{
				if( ave[head1] <= ave[head2] )
					temp1[index] = ID[head1] , temp2[index] = ave[head1] , index++ , head1++ ;
				else
					temp1[index] = ID[head2] , temp2[index] = ave[head2] , index++ , head2++ ;
			}
	
			if( head1 > middle )
				while( head2 <= end )		temp1[index] = ID[head2] , temp2[index] = ave[head2] , index++ , head2++ ;
			else if( head2 > end )
				while( head1 <= middle )	temp1[index] = ID[head1] , temp2[index] = ave[head1] , index++ , head1++ ;
		
			index = 0 ;
			for( int i = start ; i <= end ; i++ )
				ID[i] = temp1[index] , ave[i] = temp2[index] , index++ ;
				
			break ;
			
	}
}
//******************************* bubble sort *********************************
void bubble_sort( char s )
{
	switch( s )
	{
		case 's' :
			for( int i = 1 ; i <= num ; i++ )
				for( int j = 1 ; j <= num - i ; j++ )
					if( ID[j] > ID[j+1] )		swap( ID[j] , ID[j+1] ) , swap( ave[j] , ave[j+1] ) ;
			
			break ;
			
		case 'a' :
			for( int i = 1 ; i <= num ; i++ )
				for( int j = 1 ; j <= num - i ; j++ )
					if( ave[j] > ave[j+1] )		swap( ID[j] , ID[j+1] ) , swap( ave[j] , ave[j+1] ) ;
			
			break ;
	}
}
//**************************** binary search *********************************
int bin_search( int s , int e , int x ) 
{
	int mid = (s+e)/2 ;
	if( ID[ mid ] == x )				return mid ;
	else if( e <= s )					return 0 ;
	else if( ID[ mid ] > x )			bin_search( s , mid , x ) ;
	else								bin_search( mid+1 , e , x ) ;
}
//*************************** linear search **********************************
int line_search( int x ) 
{
	for( int i = 1 ; i <= num ; i++ )
		if( ID[i] == x )	return i ;
		
	return 0 ;
}



