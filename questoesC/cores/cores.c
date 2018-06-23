#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main(){
	int r;
	int g;
	int b;

	scanf("%d", &r);
	scanf("%d", &g);
	scanf("%d", &b);

	if(r < 128 || g < 128 || b < 128){
		printf("PRETO \n");
	} else {
		printf("BRANCO \n");
	}
}

