#include <stdio.h>

int a; // should be placed in .bss
int b = 1; // should be placed in .data
#define TEXT "Hello, World!" // should be placed in .rodata

int main() {
	b = 42;
	printf("%d %d %s\n", a, b, TEXT);
	return 0;
}
