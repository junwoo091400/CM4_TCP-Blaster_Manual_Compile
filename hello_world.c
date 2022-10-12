#include <stdio.h>

#define HELLO_WORLD 123

int main(void)
{
	int a = 69;
	int b = 99;
	
	const int c = a + b;
	putc(c, stdout);

	puts("Hello world!");
	
	putc(HELLO_WORLD, stdout);
	
	return 0;
}
