#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int registraPartida();

int main(){

	while(1){
		char entrada[100];
		
		scanf("%s", entrada);
		char *acontecimento = strtok(entrada, " ");

		if(strcmp(&acontecimento[1],"APITO") == 0){
			registraPartida();
			return 0;
		}	
	}	

}

int registraPartida() {

	int golsCasa = 0;
	int golsConvidado = 0;
	int faltasCasa = 0;
	int faltasConvidado = 0;
	
	while(1){
		char entrada[100];
		
		scanf("%s", entrada);
		char *acontecimento = strtok(entrada, " ");

		if(strcmp(&acontecimento[1],"FALTA") == 0){
			if(strcmp(&acontecimento[1],"CASA") == 0){
				faltasCasa++;
			} else {
				faltasConvidado++;
			}
		} else if(strcmp(&acontecimento[1],"GOL") == 0){
			if(strcmp(&acontecimento[2],"CASA") == 0){
				golsCasa++;
			} else {
				golsConvidado++;
			}
		} else if(strcmp(&acontecimento[1],"FIM") == 0){
			printf("%d GOL CASA\n", golsCasa);
			printf("%d GOL CONVIDADO\n", golsConvidado);
			printf("%d FALTAS CASA\n", faltasCasa);
			printf("%d FALTAS CONVIDADO\n", faltasConvidado);
			
			return 0;
		}
				
	}
}	
