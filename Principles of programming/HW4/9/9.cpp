#include <iostream>
using namespace std;
long long choose( int k , int n );
long long c[1000][1000];
int main(){
    int n , k;
    cin >> k >> n ;
    
    cout << choose( k , n ) << endl ;
    
    return 0;
}
//************** choose *********************
long long choose( int k , int n ){
     if( n == k || k == 0 )   return 1 ;
     else
	 {
          if( c[k][n] != 0 )   return c[k][n] ;
          else
              c[k][n] = choose( k-1 , n-1 ) + choose( k , n-1 ) ;
          return c[k][n];   
                     
     }
} 
