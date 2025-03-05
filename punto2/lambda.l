%{
#include <stdio.h>
%}

%%
^square[[:space:]]*=[[:space:]]*lambda[[:space:]]+[a-zA-Z_][a-zA-Z0-9_]*[[:space:]]*:[[:space:]]*[a-zA-Z_][a-zA-Z0-9_]*[[:space:]]*\*\*[[:space:]]*[0-9]+[[:space:]]*$ { 
    printf("ACEPTA\n"); 
}

.|\n { /* Ignorar todo lo demás */ }

%%

int main(int argc, char *argv[]) {
    if (argc > 1) {
        FILE *archivo = fopen(argv[1], "r");
        if (!archivo) {
            perror("Error al abrir el archivo");
            return 1;
        }
        yyin = archivo;
    }
    yylex();
    return 0;
}

int yywrap() {
    return 1;
}
