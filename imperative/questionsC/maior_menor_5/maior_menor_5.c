#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int overwriteWord(char *overwrote, char *overwriting);

int main(){

	char smaller[40];
	char bigger[40];

	scanf("%s", smaller);
	overwriteWord(bigger, smaller);

	for(int i = 0; i < 4; i++){
		char temp[40];
		scanf("%s", temp);

		if(strlen(temp) > strlen(bigger)){
			overwriteWord(bigger, temp);
		} else if (strlen(temp) < strlen(smaller)) {
			overwriteWord(smaller, temp);
		}
	}

	printf("%s \n", smaller);
	printf("%s \n", bigger);

	return 0;

}

int overwriteWord(char *overwrote, char *overwriting){

	if(strlen(overwrote) > strlen(overwriting)){
		for(int i = 0; i < strlen(overwrote); i++ ){
			overwrote[i] = overwriting[i];
		}
	} else {
		for(int i = 0; i < strlen(overwriting); i++ ){
			overwrote[i] = overwriting[i];
		}
	}	
	return 0;
}


