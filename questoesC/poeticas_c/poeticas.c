#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main(){

	char word1[30];
	char word2[30];

	scanf("%s", word1);
	scanf("%s", word2);

	int last1 = strlen(word1) - 1;
	int last2 = strlen(word2) - 1;

	if(word1[0] == word2[0] && word1[last1] == word2[last2]){
		printf("S \n");
	} else {
		printf("N \n");
	}

	
}
