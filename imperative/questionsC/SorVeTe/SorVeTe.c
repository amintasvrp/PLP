#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main(){
	int pos_inicial_obj1;
	int veloc_obj1;
	int pos_inicial_obj2;
	int veloc_obj2;
	int tempo;

	scanf("%d", &pos_inicial_obj1);
	scanf("%d", &veloc_obj1);
	scanf("%d", &pos_inicial_obj2);
	scanf("%d", &veloc_obj2);
	scanf("%d", &tempo);

	int pos_final_obj1 = pos_inicial_obj1 + veloc_obj1 * tempo;
	int pos_final_obj2 = pos_inicial_obj2 + veloc_obj2 * tempo;
	int diferenca = abs(pos_final_obj1 - pos_final_obj2);

	printf("%d \n", diferenca);
	

}
