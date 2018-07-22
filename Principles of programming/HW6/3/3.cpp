#include <iostream>
#include <conio.h>
using namespace std ;
void swapP( int ** , int ** ) ;
int main()
{
	int *p1 , *p2 ;
	int c = 5 , d = 10  ;

	p1 = &c ;
	p2 = &d ;

	cout << "before swaping : " << *p1 << " " << *p2 << endl ;
	swapP( &p1 , &p2 ) ;
	c++ ;
	cout << "after swaping and increse 'c' : " << *p1 << " " << *p2 << endl ;

	getch() ;
	return 0 ;
}
//**************** Swap Pointer *****************
void swapP( int **a , int **b )
{
	int g ,*k = &g , **temp = &k  ;
	*temp = *a ;
	*a = *b ;
	*b = *temp ;
}


