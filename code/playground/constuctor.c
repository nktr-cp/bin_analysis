#include <stdio.h>

__attribute__((constructor))
void init() {
	printf("Constructor\n");
}

__attribute__((destructor))
void fini() {
	printf("Destructor\n");
}

int main() {
	puts("check if constructor and destructor are added in .init_array and .fini_array");
	return 0;
}
