//---------------------------------------------------------------
// Program lab_6a - Asemblery Laboratorium IS II rok
//
// To compile&link: gcc -o lab_6a lab_6a.c lab_6a_asm.s
// To run:          ./lab_6a
//
//---------------------------------------------------------------

#include <stdio.h>

long long sumc( unsigned int a, unsigned int b, unsigned int c )
{
	return a + b + c;
}

long long suma( unsigned int a, unsigned int b, unsigned int c );

void main( void )
{
 int i;

 for( i = 1; i <= 50; i++ )
   printf( "Sumc(%d) = %ld Suma = %ld\n", i, sumc(i, i+1, i+2), suma(i, i+1, i+2) );
}
