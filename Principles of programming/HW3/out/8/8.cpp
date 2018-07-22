#include <iostream>
#include <conio.h>
using namespace std ;
int main()
{
	int flag ;
	cin >> flag ;
	
	switch( flag )
	{
		case 1 :
			cout << "HOT" << endl ;
			break ;
		case 2 :
			cout << "LUKE WARM" << endl;
			break ;
		case 3 :
			cout << "COLD" << endl ;
			break ;
		default :
			cout << "OUT OF RANGE" << endl ;
	}
	
	getch();
	return 0 ;
	
}
