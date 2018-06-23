#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main(){

	int menor;
	int maior;

	scanf("%d", &menor);
	maior = menor;

	for(int i = 0; i < 4 ; i++){

		int temp;
		scanf("%d", &temp);

		if(temp > maior){
			maior = temp;
		} else if (temp < menor) {
			menor = temp;	
		}

	}

	int result = maior - menor;
	printf("%d \n", result);
	

}
