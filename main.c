#include <stdio.h>
#include <string.h>

extern int stringgt(char* str1, char* str2);

int main() {
	char str1[100];
	char str2[100];

	printf("Enter a string (30 char max): ");
	scanf("%s", str1);
	
	printf("Enter another string (30 char max): ");
	scanf("%s", str2);
	
	int c = stringgt(str1, str2);

	if (c != 0) {
		printf("True\n");
	} else {
		printf("False\n");
	}

	return 0;
}
