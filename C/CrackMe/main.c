#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#ifdef _WIN32
	#include <windows.h>
#else
	#include <unistd.h>
#endif

char license[25];

void generate() {
	char hostname[256];
	unsigned long seed = 0;

	#ifdef _WIN32
    	DWORD size = sizeof(hostname);
    	GetComputerName(hostname, &size);
	#else
   		gethostname(hostname, sizeof(seed));
	#endif

    for (int i = 0; hostname[i]; i++) seed += hostname[i];
	
	srand(seed);

    for (int i = 0; i < 23; i++) {
        if ((i + 1) % 6 == 0) {
            license[i] = '-';
        } else {
            license[i] = 'A' + rand() % 26;
        }
    }

    license[24] ='\0';
}

int main() {
	char user_license[25];

	generate();

	printf("Enter License Key: ");
	scanf("%23s", user_license);

	user_license[24] ='\0';

	if (strcmp(user_license, license) == 0) {
		printf("Activated.");
	} else {
		printf("Could not activate.");
	}
}
