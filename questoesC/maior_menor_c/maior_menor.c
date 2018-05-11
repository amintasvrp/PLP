#include <stdio.h>
#include <string.h>


int main(){
	char word1[20];
	char word2[20];

	scanf("%s", word1);
	scanf("%s", word2);

	if(strlen(word1) < strlen(word2)){
		printf("%s \n",word1);
		printf("%s \n",word2);
	} else if(strlen(word1) > strlen(word2)) {
		printf("%s \n",word2);
		printf("%s \n",word1);
	} else {
		printf("%s \n",word1);
		printf("%s \n",word1);
	}

	return 0;
	
}
	
