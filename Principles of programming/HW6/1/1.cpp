#include <iostream>
#include <algorithm>
#include <conio.h>
using namespace std;
float *intersection( float *a , int size_a , float *b , int size_b , int *size_result ) ;
int main()
{
	float a[1000]  , *p1 ;
	int size_a  , k , size_result ;
	
	cout << "Enter size1:" ;
	cin >> size_a ;

	
	p1 = a ;
	
	for( int i = 0 ; i < size_a ; i++ )
	{
		cout << "Enter a" << i+1 << ":" ;
		cin >> *( p1 + i ) ;
	}
		
	int size_b ;
	
	cout << "Enter size2:" ;
	cin >> size_b ;
	
	for( int i = size_a ; i < size_b + size_a ; i++ )
	{
		cout << "Enter b" << i-size_a+1 << ":" ;
		cin >> *( p1 + i ) ;
	}
	
	float *p2 ;
	p2 = intersection( p1 , size_a , p1 + size_a , size_b , &size_result ) ;
	
	cout << "intersection: " ;
	for( int i = 0 ; i < size_result ; i++ )
		cout << *( p2 + i ) << " " ;
	
	getch() ;
	return 0 ;
}
//******************** intersection *************************
float *intersection( float *a , int size_a , float *b , int size_b , int *size_result )
{
	sort( a , a + size_a + size_b ) ;
	
	float *p3 ;
	float c[10000] ;
	 
	p3 = c ;
	*p3 = *a ;
	int index = 1 ;
	for( int i = 1 ; i < size_a + size_b ; i++ )
		if( *(a + i) != *( a + i - 1 ) )	*(p3 + index) = *(a + i ) , index++ ;
		
	*size_result = index ;
		
	return	p3 ; 
	
}
