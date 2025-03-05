#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define MAX_LINE 1024

int main(int argc, char *argv[]) {
    if (argc != 3) {
        printf("Uso: %s <archivo> <palabra_clave>\n", argv[0]);
        return 1;
    }

    FILE *archivo = fopen(argv[1], "r");
    if (archivo == NULL) {
        perror("Error al abrir el archivo");
        return 1;
    }

    char *clave = argv[2];
    char linea[MAX_LINE];
    int contador = 0;
    size_t clave_len = strlen(clave);

    while (fgets(linea, MAX_LINE, archivo)) {
        char *ptr = linea;
        while ((ptr = strstr(ptr, clave)) != NULL) {
            contador++;
            ptr += clave_len; // Avanza para evitar contar la misma ocurrencia
        }
    }

    fclose(archivo);
    
    printf("'%s' se repite %d veces en el texto.\n", clave, contador);
    return 0;
}
