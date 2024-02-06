package Analizadores;
import java_cup.runtime.Symbol;
import java_cup.runtime.*;


%%



%class analizador_lexico
%cup
%public
%line
%column
%full
%char
%unicode
%ignorecase

%init{
    yyline=1;
    yychar=0;
%init}


COMENTARIO_MULTILINEA = "<" "!" .*? "!" ">"
COMENTARIO_LINEA = "!" .*


DOS_PUNTOS = ":"
MENOR_QUE = "<"
MAYOR_QUE = ">"
GUION = "-"
COMA = ","
PUNTO_Y_COMA = ";"
PARENTESIS_IZQUIERDO = "("
PARENTESIS_DERECHO = ")"
CORCHETE_IZQUIERDO = "["
CORCHETE_DERECHO = "]"
SIGNO_IGUAL = "="


NUMEROS = [0-9]+(\.[0-9]+)?

ESPACIO_BLANCO = [ \t\n\r]+

STRING ="\"".*?"\""
IDENTIFICADORES =("@"[a-zA-Z0-9,_]+)|[a-zA-Z0-9_]+ 

RESERVADA_PROGRAM = "Program"
RESERVADA_END = "End"
RESERVADA_VAR = "Var"
RESERVADA_DOUBLE = "Double"
RESERVADA_CHAR = "Char"
RESERVADA_ARRAY = "arr"
RESERVADA_SUMA = "Sum"
RESERVADA_RESTA = "Res"
RESERVADA_MULTIPLICACION = "Mul"
RESERVADA_DIVISION = "Div"
RESERVADA_MODULO = "Mod"
RESERVADA_MEDIA = "Media"
RESERVADA_MEDIANA = "Mediana"
RESERVADA_MODA = "Moda"
RESERVADA_VARIANZA = "Varianza"
RESERVADA_MAX = "Max"
RESERVADA_MIN = "Min"
RESERVADA_CONSOLE = "Console"
RESERVADA_PRINT = "Print"
RESERVADA_COLUMN = "Column"
RESERVADA_GRAFICA_BARRA = "graphBar"
RESERVADA_GRAFICA_PIE = "graphPie"
RESERVADA_GRAFICA_LINE = "graphLine"
RESERVADA_GRAFIA_HISTOGRAMA = "Histogram"
RESERVADA_TITULO_GRAFICA = "Titulo"
RESERVADA_EJEX_GRAFICA = "EjeX"
RESERVADA_EJEY_GRAFICA = "EjeY"
RESERVADA_TITULOX_GRAFICA = "TituloX"
RESERVADA_TITULOY_GRAFICA = "TituloY"
RESERVADA_VALUES_GRAFICA = "Values"
RESRVADA_LABEL_GRAFICA = "Label"
RESERVADA_EXEC = "Exec"


%%

<YYINITIAL> {COMENTARIO_MULTILINEA} {System.out.println("Comentario multilinea"); }
<YYINITIAL> {COMENTARIO_LINEA} {System.out.println("Comentario 1 linea");}

<YYINITIAL> {ESPACIO_BLANCO} { }

<YYINITIAL> {DOS_PUNTOS} { System.out.println("Lexema -Dos Puntos- "+yytext()) ; return new Symbol(sym.DOS_PUNTOS, yyline, yycolumn, yytext()) ; }
<YYINITIAL> {MENOR_QUE} { System.out.println("Lexema -Menor que- "+yytext()) ; return new Symbol(sym.MENOR_QUE, yyline, yycolumn, yytext()) ; }
<YYINITIAL> {MAYOR_QUE} { System.out.println("Lexema -Mayor que- "+yytext()) ; return new Symbol(sym.MAYOR_QUE, yyline, yycolumn, yytext()) ; }
<YYINITIAL> {GUION} { System.out.println("Lexema -Guion- "+yytext()) ; return new Symbol(sym.GUION, yyline, yycolumn, yytext()) ; }
<YYINITIAL> {COMA} { System.out.println("Lexema -Coma "+yytext()) ; return new Symbol(sym.COMA, yyline, yycolumn, yytext()) ; }
<YYINITIAL> {PUNTO_Y_COMA} { System.out.println("Lexema -Punto y coma- "+yytext()) ; return new Symbol(sym.PUNTO_Y_COMA, yyline, yycolumn, yytext()) ; }
<YYINITIAL> {PARENTESIS_IZQUIERDO} { System.out.println("Lexema -Parentesis izquierdo- "+yytext()) ; return new Symbol(sym.PARENTESIS_IZQUIERDO, yyline, yycolumn, yytext()) ; }
<YYINITIAL> {PARENTESIS_DERECHO} { System.out.println("Lexema -Parentesis derecho- "+yytext()) ; return new Symbol(sym.PARENTESIS_DERECHO, yyline, yycolumn, yytext()) ; }
<YYINITIAL> {CORCHETE_IZQUIERDO} { System.out.println("Lexema -Corchete izquierdo- "+yytext()) ; return new Symbol(sym.CORCHETE_IZQUIERDO, yyline, yycolumn, yytext()) ; }
<YYINITIAL> {CORCHETE_DERECHO} { System.out.println("Lexema -Corchete derecho- "+yytext()) ; return new Symbol(sym.CORCHETE_DERECHO, yyline, yycolumn, yytext()) ; }
<YYINITIAL> {SIGNO_IGUAL} { System.out.println("Lexema -Signo igual- "+yytext()) ; return new Symbol(sym.SIGNO_IGUAL, yyline, yycolumn, yytext()) ; }

<YYINITIAL> {RESERVADA_PROGRAM} { System.out.println("Palabra Reservada: PROGRAM, Fila: " + yyline + ", Columna: " + yycolumn + ", Texto: " + yytext()) ; return new Symbol(sym.RESERVADA_PROGRAM, yyline, yycolumn, yytext()) ; }
<YYINITIAL> {RESERVADA_END} { System.out.println("Palabra Reservada: END, Fila: " + yyline + ", Columna: " + yycolumn + ", Texto: " + yytext()) ; return new Symbol(sym.RESERVADA_END, yyline, yycolumn, yytext()) ; }
<YYINITIAL> {RESERVADA_VAR} { System.out.println("Palabra Reservada: VAR, Fila: " + yyline + ", Columna: " + yycolumn + ", Texto: " + yytext()) ; return new Symbol(sym.RESERVADA_VAR, yyline, yycolumn, yytext()) ; }
<YYINITIAL> {RESERVADA_DOUBLE} { System.out.println("Palabra Reservada: DOUBLE, Fila: " + yyline + ", Columna: " + yycolumn + ", Texto: " + yytext()) ; return new Symbol(sym.RESERVADA_DOUBLE, yyline, yycolumn, yytext()) ; }
<YYINITIAL> {RESERVADA_CHAR} { System.out.println("Palabra Reservada: CHAR, Fila: " + yyline + ", Columna: " + yycolumn + ", Texto: " + yytext()) ; return new Symbol(sym.RESERVADA_CHAR, yyline, yycolumn, yytext()) ; }
<YYINITIAL> {RESERVADA_ARRAY} { System.out.println("Palabra Reservada: ARRAY, Fila: " + yyline + ", Columna: " + yycolumn + ", Texto: " + yytext()) ; return new Symbol(sym.RESERVADA_ARRAY, yyline, yycolumn, yytext()) ; }
<YYINITIAL> {RESERVADA_SUMA} { System.out.println("Palabra Reservada: SUMA, Fila: " + yyline + ", Columna: " + yycolumn + ", Texto: " + yytext()) ; return new Symbol(sym.RESERVADA_SUMA, yyline, yycolumn, yytext()) ; }
<YYINITIAL> {RESERVADA_RESTA} { System.out.println("Palabra Reservada: RESTA, Fila: " + yyline + ", Columna: " + yycolumn + ", Texto: " + yytext()) ; return new Symbol(sym.RESERVADA_RESTA, yyline, yycolumn, yytext()) ; }
<YYINITIAL> {RESERVADA_MULTIPLICACION} { System.out.println("Palabra Reservada: MULTIPLICACION, Fila: " + yyline + ", Columna: " + yycolumn + ", Texto: " + yytext()) ; return new Symbol(sym.RESERVADA_MULTIPLICACION, yyline, yycolumn, yytext()) ; }
<YYINITIAL> {RESERVADA_DIVISION} { System.out.println("Palabra Reservada: DIVISION, Fila: " + yyline + ", Columna: " + yycolumn + ", Texto: " + yytext()) ; return new Symbol(sym.RESERVADA_DIVISION, yyline, yycolumn, yytext()) ; }
<YYINITIAL> {RESERVADA_MODULO} { System.out.println("Palabra Reservada: MODULO, Fila: " + yyline + ", Columna: " + yycolumn + ", Texto: " + yytext()) ; return new Symbol(sym.RESERVADA_MODULO, yyline, yycolumn, yytext()) ; }
<YYINITIAL> {RESERVADA_MEDIA} { System.out.println("Palabra Reservada: MEDIA, Fila: " + yyline + ", Columna: " + yycolumn + ", Texto: " + yytext()) ; return new Symbol(sym.RESERVADA_MEDIA, yyline, yycolumn, yytext()) ; }
<YYINITIAL> {RESERVADA_MEDIANA} { System.out.println("Palabra Reservada: MEDIANA, Fila: " + yyline + ", Columna: " + yycolumn + ", Texto: " + yytext()) ; return new Symbol(sym.RESERVADA_MEDIANA, yyline, yycolumn, yytext()) ; }
<YYINITIAL> {RESERVADA_MODA} { System.out.println("Palabra Reservada: MODA, Fila: " + yyline + ", Columna: " + yycolumn + ", Texto: " + yytext()) ; return new Symbol(sym.RESERVADA_MODA, yyline, yycolumn, yytext()) ; }
<YYINITIAL> {RESERVADA_VARIANZA} { System.out.println("Palabra Reservada: VARIANZA, Fila: " + yyline + ", Columna: " + yycolumn + ", Texto: " + yytext()) ; return new Symbol(sym.RESERVADA_VARIANZA, yyline, yycolumn, yytext()) ; }
<YYINITIAL> {RESERVADA_MAX} { System.out.println("Palabra Reservada: MAX, Fila: " + yyline + ", Columna: " + yycolumn + ", Texto: " + yytext()) ; return new Symbol(sym.RESERVADA_MAX, yyline, yycolumn, yytext()) ; }
<YYINITIAL> {RESERVADA_MIN} { System.out.println("Palabra Reservada: MIN, Fila: " + yyline + ", Columna: " + yycolumn + ", Texto: " + yytext()) ; return new Symbol(sym.RESERVADA_MIN, yyline, yycolumn, yytext()) ; }
<YYINITIAL> {RESERVADA_CONSOLE} { System.out.println("Palabra Reservada: CONSOLE, Fila: " + yyline + ", Columna: " + yycolumn + ", Texto: " + yytext()) ; return new Symbol(sym.RESERVADA_CONSOLE, yyline, yycolumn, yytext()) ; }
<YYINITIAL> {RESERVADA_PRINT} { System.out.println("Palabra Reservada: PRINT, Fila: " + yyline + ", Columna: " + yycolumn + ", Texto: " + yytext()) ; return new Symbol(sym.RESERVADA_PRINT, yyline, yycolumn, yytext()) ; }
<YYINITIAL> {RESERVADA_COLUMN} { System.out.println("Palabra Reservada: COLUMN, Fila: " + yyline + ", Columna: " + yycolumn + ", Texto: " + yytext()) ; return new Symbol(sym.RESERVADA_COLUMN, yyline, yycolumn, yytext()) ; }
<YYINITIAL> {RESERVADA_GRAFICA_BARRA} { System.out.println("Palabra Reservada: GRAFICA_BARRA, Fila: " + yyline + ", Columna: " + yycolumn + ", Texto: " + yytext()) ; return new Symbol(sym.RESERVADA_GRAFICA_BARRA, yyline, yycolumn, yytext()) ; }
<YYINITIAL> {RESERVADA_GRAFICA_PIE} { System.out.println("Palabra Reservada: GRAFICA_PIE, Fila: " + yyline + ", Columna: " + yycolumn + ", Texto: " + yytext()) ; return new Symbol(sym.RESERVADA_GRAFICA_PIE, yyline, yycolumn, yytext()) ; }
<YYINITIAL> {RESERVADA_GRAFICA_LINE} { System.out.println("Palabra Reservada: GRAFICA_LINEA, Fila: " + yyline + ", Columna: " + yycolumn + ", Texto: " + yytext()) ; return new Symbol(sym.RESERVADA_GRAFICA_LINE, yyline, yycolumn, yytext()) ; }
<YYINITIAL> {RESERVADA_GRAFIA_HISTOGRAMA} { System.out.println("Palabra Reservada: GRAFIA_HISTOGRAMA, Fila: " + yyline + ", Columna: " + yycolumn + ", Texto: " + yytext()) ; return new Symbol(sym.RESERVADA_GRAFIA_HISTOGRAMA, yyline, yycolumn, yytext()) ; }
<YYINITIAL> {RESERVADA_TITULO_GRAFICA} { System.out.println("Palabra Reservada: TITULO_GRAFICA, Fila: " + yyline + ", Columna: " + yycolumn + ", Texto: " + yytext()) ; return new Symbol(sym.RESERVADA_TITULO_GRAFICA, yyline, yycolumn, yytext()) ; }
<YYINITIAL> {RESERVADA_EJEX_GRAFICA} { System.out.println("Palabra Reservada: EJEX_GRAFICA, Fila: " + yyline + ", Columna: " + yycolumn + ", Texto: " + yytext()) ; return new Symbol(sym.RESERVADA_EJEX_GRAFICA, yyline, yycolumn, yytext()) ; }
<YYINITIAL> {RESERVADA_EJEY_GRAFICA} { System.out.println("Palabra Reservada: EJEY_GRAFICA, Fila: " + yyline + ", Columna: " + yycolumn + ", Texto: " + yytext()) ; return new Symbol(sym.RESERVADA_EJEY_GRAFICA, yyline, yycolumn, yytext()) ; }
<YYINITIAL> {RESERVADA_TITULOX_GRAFICA} { System.out.println("Palabra Reservada: TITULOX_GRAFICA, Fila: " + yyline + ", Columna: " + yycolumn + ", Texto: " + yytext()) ; return new Symbol(sym.RESERVADA_TITULOX_GRAFICA, yyline, yycolumn, yytext()) ; }
<YYINITIAL> {RESERVADA_TITULOY_GRAFICA} { System.out.println("Palabra Reservada: TITULOY_GRAFICA, Fila: " + yyline + ", Columna: " + yycolumn + ", Texto: " + yytext()) ; return new Symbol(sym.RESERVADA_TITULOY_GRAFICA, yyline, yycolumn, yytext()) ; }
<YYINITIAL> {RESERVADA_VALUES_GRAFICA} { System.out.println("Palabra Reservada: VALUES_GRAFICA, Fila: " + yyline + ", Columna: " + yycolumn + ", Texto: " + yytext()) ; return new Symbol(sym.RESERVADA_VALUES_GRAFICA, yyline, yycolumn, yytext()) ; }
<YYINITIAL> {RESRVADA_LABEL_GRAFICA} { System.out.println("Palabra Reservada: LABEL_GRAFICA, Fila: " + yyline + ", Columna: " + yycolumn + ", Texto: " + yytext()) ; return new Symbol(sym.RESRVADA_LABEL_GRAFICA, yyline, yycolumn, yytext()) ; }
<YYINITIAL> {RESERVADA_EXEC} { System.out.println("Palabra Reservada: EXEC, Fila: " + yyline + ", Columna: " + yycolumn + ", Texto: " + yytext()) ; return new Symbol(sym.RESERVADA_EXEC, yyline, yycolumn, yytext()) ; }


<YYINITIAL> {IDENTIFICADORES} { System.out.println("Se encontro un IDENTIFICADOR Fila: " + yyline + ", Columna: " + yycolumn + ", Texto: " + yytext()) ; return new Symbol(sym.STRING, yyline, yycolumn, yytext()) ; }

<YYINITIAL> {STRING} { System.out.println("Se encontro una cadena CHAR Fila: " + yyline + ", Columna: " + yycolumn + ", Texto: " + yytext()) ; return new Symbol(sym.STRING, yyline, yycolumn, yytext()) ; }

<YYINITIAL> {NUMEROS} { System.out.println("Se encontro una cadena numerica Fila: " + yyline +  "Columna: " + yycolumn + " Texto: " + yytext()) ; return new Symbol(sym.NUMEROS, yyline, yycolumn, yytext()) ;} 


<YYINITIAL>  . {
    System.out.println("Este es un error lexico: "+yytext()+", en la linea: "+yyline+", en la columna: "+yycolumn);
}

