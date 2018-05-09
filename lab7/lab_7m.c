//---------------------------------------------------------------
// Program lab_7m - Asemblery Laboratorium IS II rok
//
// To compile&link: gcc -o lab_7m lab_7m.c lab_7m_asm.s
// To run:          ./lab_7m
//
//---------------------------------------------------------------

#include <stdio.h>

long long minc( unsigned int a, unsigned int b, unsigned int c )
{
	unsigned int min = a;	
	if(b < min) min = b;
	if(c < min) min = c;

	return min;
}

long long mina( unsigned int a, unsigned int b, unsigned int c );

void main( void )
{
 int i;

 for( i = 1; i <= 50; i++ )
   printf( "Minc(%d) = %ld Mina = %ld\n", i, minc(i, i+1, i+2), mina(i, i+1, i+2) );
}
