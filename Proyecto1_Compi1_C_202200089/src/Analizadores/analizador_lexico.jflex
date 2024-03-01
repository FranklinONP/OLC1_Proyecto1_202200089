package Analizadores;
import java_cup.runtime.Symbol;
import java_cup.runtime.*;

import Errores.Error_;
import Errores.Token;
import static GUI.gui.lista_errores;
import static GUI.gui.listaTokens;


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
    yychar=1;
%init}


COMENTARIO_MULTILINEA = "<!" [^/]~ "!>"
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

STRING ="\"[^\"]+\" "

ID ="hola"
IDE = "@"[a-zA-Z][a-zA-Z0-9,_]+

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


<YYINITIAL> {DOS_PUNTOS} { 
    Token ntk = new Token(yyline, yycolumn, yytext(), "Lexema -Dos Puntos-");
    listaTokens.add(ntk);
    return new Symbol(sym.DOS_PUNTOS, yyline, yycolumn, yytext());
}

<YYINITIAL> {MENOR_QUE} { 
    Token ntk = new Token(yyline, yycolumn, yytext(), "Lexema -Menor que-");
    listaTokens.add(ntk);
    return new Symbol(sym.MENOR_QUE, yyline, yycolumn, yytext());
}

<YYINITIAL> {MAYOR_QUE} { 
    Token ntk = new Token(yyline, yycolumn, yytext(), "Lexema -Mayor que-");
    listaTokens.add(ntk);
    return new Symbol(sym.MAYOR_QUE, yyline, yycolumn, yytext());
}

<YYINITIAL> {GUION} { 
    Token ntk = new Token(yyline, yycolumn, yytext(), "Lexema -Guion-");
    listaTokens.add(ntk);
    return new Symbol(sym.GUION, yyline, yycolumn, yytext());
}

<YYINITIAL> {COMA} { 
    Token ntk = new Token(yyline, yycolumn, yytext(), "Lexema -Coma-");
    listaTokens.add(ntk);
    return new Symbol(sym.COMA, yyline, yycolumn, yytext());
}

<YYINITIAL> {PUNTO_Y_COMA} { 
    Token ntk = new Token(yyline, yycolumn, yytext(), "Lexema -Punto y coma-");
    listaTokens.add(ntk);
    return new Symbol(sym.PUNTO_Y_COMA, yyline, yycolumn, yytext());
}

<YYINITIAL> {PARENTESIS_IZQUIERDO} { 
    Token ntk = new Token(yyline, yycolumn, yytext(), "Lexema -Parentesis izquierdo-");
    listaTokens.add(ntk);
    return new Symbol(sym.PARENTESIS_IZQUIERDO, yyline, yycolumn, yytext());
}

<YYINITIAL> {PARENTESIS_DERECHO} { 
    Token ntk = new Token(yyline, yycolumn, yytext(), "Lexema -Parentesis derecho-");
    listaTokens.add(ntk);
    return new Symbol(sym.PARENTESIS_DERECHO, yyline, yycolumn, yytext());
}

<YYINITIAL> {CORCHETE_IZQUIERDO} { 
    Token ntk = new Token(yyline, yycolumn, yytext(), "Lexema -Corchete izquierdo-");
    listaTokens.add(ntk);
    return new Symbol(sym.CORCHETE_IZQUIERDO, yyline, yycolumn, yytext());
}

<YYINITIAL> {CORCHETE_DERECHO} { 
    Token ntk = new Token(yyline, yycolumn, yytext(), "Lexema -Corchete derecho-");
    listaTokens.add(ntk);
    return new Symbol(sym.CORCHETE_DERECHO, yyline, yycolumn, yytext());
}

<YYINITIAL> {SIGNO_IGUAL} { 
    Token ntk = new Token(yyline, yycolumn, yytext(), "Lexema -Signo igual-");
    listaTokens.add(ntk);
    return new Symbol(sym.SIGNO_IGUAL, yyline, yycolumn, yytext());
}

<YYINITIAL> {RESERVADA_PROGRAM} { 
    Token ntk = new Token(yyline, yycolumn, yytext(), "Palabra Reservada: PROGRAM");
    listaTokens.add(ntk);
    return new Symbol(sym.RESERVADA_PROGRAM, yyline, yycolumn, yytext());
}

<YYINITIAL> {RESERVADA_END} { 
    Token ntk = new Token(yyline, yycolumn, yytext(), "Palabra Reservada: END");
    listaTokens.add(ntk);
    return new Symbol(sym.RESERVADA_END, yyline, yycolumn, yytext());
}

<YYINITIAL> {RESERVADA_VAR} { 
    Token ntk = new Token(yyline, yycolumn, yytext(), "Palabra Reservada: VAR");
    listaTokens.add(ntk);
    return new Symbol(sym.RESERVADA_VAR, yyline, yycolumn, yytext());
}

<YYINITIAL> {RESERVADA_DOUBLE} { 
    Token ntk = new Token(yyline, yycolumn, yytext(), "Palabra Reservada: DOUBLE");
    listaTokens.add(ntk);
    return new Symbol(sym.RESERVADA_DOUBLE, yyline, yycolumn, yytext());
}

<YYINITIAL> {RESERVADA_CHAR} { 
    Token ntk = new Token(yyline, yycolumn, yytext(), "Palabra Reservada: CHAR");
    listaTokens.add(ntk);
    return new Symbol(sym.RESERVADA_CHAR, yyline, yycolumn, yytext());
}

<YYINITIAL> {RESERVADA_ARRAY} { 
    Token ntk = new Token(yyline, yycolumn, yytext(), "Palabra Reservada: ARRAY");
    listaTokens.add(ntk);
    return new Symbol(sym.RESERVADA_ARRAY, yyline, yycolumn, yytext());
}

<YYINITIAL> {RESERVADA_SUMA} { 
    Token ntk = new Token(yyline, yycolumn, yytext(), "Palabra Reservada: SUMA");
    listaTokens.add(ntk);
    return new Symbol(sym.RESERVADA_SUMA, yyline, yycolumn, yytext());
}

<YYINITIAL> {RESERVADA_RESTA} { 
    Token ntk = new Token(yyline, yycolumn, yytext(), "Palabra Reservada: RESTA");
    listaTokens.add(ntk);
    return new Symbol(sym.RESERVADA_RESTA, yyline, yycolumn, yytext());
}

<YYINITIAL> {RESERVADA_MULTIPLICACION} { 
    Token ntk = new Token(yyline, yycolumn, yytext(), "Palabra Reservada: MULTIPLICACION");
    listaTokens.add(ntk);
    return new Symbol(sym.RESERVADA_MULTIPLICACION, yyline, yycolumn, yytext());
}

<YYINITIAL> {RESERVADA_DIVISION} { 
    Token ntk = new Token(yyline, yycolumn, yytext(), "Palabra Reservada: DIVISION");
    listaTokens.add(ntk);
    return new Symbol(sym.RESERVADA_DIVISION, yyline, yycolumn, yytext());
}

<YYINITIAL> {RESERVADA_MODULO} { 
    Token ntk = new Token(yyline, yycolumn, yytext(), "Palabra Reservada: MODULO");
    listaTokens.add(ntk);
    return new Symbol(sym.RESERVADA_MODULO, yyline, yycolumn, yytext());
}

<YYINITIAL> {RESERVADA_MEDIA} { 
    Token ntk = new Token(yyline, yycolumn, yytext(), "Palabra Reservada: MEDIA");
    listaTokens.add(ntk);
    return new Symbol(sym.RESERVADA_MEDIA, yyline, yycolumn, yytext());
}

<YYINITIAL> {RESERVADA_MEDIANA} { 
    Token ntk = new Token(yyline, yycolumn, yytext(), "Palabra Reservada: MEDIANA");
    listaTokens.add(ntk);
    return new Symbol(sym.RESERVADA_MEDIANA, yyline, yycolumn, yytext());
}

<YYINITIAL> {RESERVADA_MODA} { 
    Token ntk = new Token(yyline, yycolumn, yytext(), "Palabra Reservada: MODA");
    listaTokens.add(ntk);
    return new Symbol(sym.RESERVADA_MODA, yyline, yycolumn, yytext());
}

<YYINITIAL> {RESERVADA_VARIANZA} { 
    Token ntk = new Token(yyline, yycolumn, yytext(), "Palabra Reservada: VARIANZA");
    listaTokens.add(ntk);
    return new Symbol(sym.RESERVADA_VARIANZA, yyline, yycolumn, yytext());
}

<YYINITIAL> {RESERVADA_MAX} { 
    Token ntk = new Token(yyline, yycolumn, yytext(), "Palabra Reservada: MAX");
    listaTokens.add(ntk);
    return new Symbol(sym.RESERVADA_MAX, yyline, yycolumn, yytext());
}

<YYINITIAL> {RESERVADA_MIN} { 
    Token ntk = new Token(yyline, yycolumn, yytext(), "Palabra Reservada: MIN");
    listaTokens.add(ntk);
    return new Symbol(sym.RESERVADA_MIN, yyline, yycolumn, yytext());
}

<YYINITIAL> {RESERVADA_CONSOLE} { 
    Token ntk = new Token(yyline, yycolumn, yytext(), "Palabra Reservada: CONSOLE");
    listaTokens.add(ntk);
    return new Symbol(sym.RESERVADA_CONSOLE, yyline, yycolumn, yytext());
}

<YYINITIAL> {RESERVADA_PRINT} { 
    Token ntk = new Token(yyline, yycolumn, yytext(), "Palabra Reservada: PRINT");
    listaTokens.add(ntk);
    return new Symbol(sym.RESERVADA_PRINT, yyline, yycolumn, yytext());
}

<YYINITIAL> {RESERVADA_COLUMN} { 
    Token ntk = new Token(yyline, yycolumn, yytext(), "Palabra Reservada: COLUMN");
    listaTokens.add(ntk);
    return new Symbol(sym.RESERVADA_COLUMN, yyline, yycolumn, yytext());
}

<YYINITIAL> {RESERVADA_GRAFICA_BARRA} { 
    Token ntk = new Token(yyline, yycolumn, yytext(), "Palabra Reservada: GRAFICA_BARRA");
    listaTokens.add(ntk);
    return new Symbol(sym.RESERVADA_GRAFICA_BARRA, yyline, yycolumn, yytext());
}

<YYINITIAL> {RESERVADA_GRAFICA_PIE} { 
    Token ntk = new Token(yyline, yycolumn, yytext(), "Palabra Reservada: GRAFICA_PIE");
    listaTokens.add(ntk);
    return new Symbol(sym.RESERVADA_GRAFICA_PIE, yyline, yycolumn, yytext());
}

<YYINITIAL> {RESERVADA_GRAFICA_LINE} { 
    Token ntk = new Token(yyline, yycolumn, yytext(), "Palabra Reservada: GRAFICA_LINEA");
    listaTokens.add(ntk);
    return new Symbol(sym.RESERVADA_GRAFICA_LINE, yyline, yycolumn, yytext());
}

<YYINITIAL> {RESERVADA_GRAFIA_HISTOGRAMA} { 
    Token ntk = new Token(yyline, yycolumn, yytext(), "Palabra Reservada: GRAFIA_HISTOGRAMA");
    listaTokens.add(ntk);
    return new Symbol(sym.RESERVADA_GRAFIA_HISTOGRAMA, yyline, yycolumn, yytext());
}

<YYINITIAL> {RESERVADA_TITULO_GRAFICA} { 
    Token ntk = new Token(yyline, yycolumn, yytext(), "Palabra Reservada: TITULO_GRAFICA");
    listaTokens.add(ntk);
    return new Symbol(sym.RESERVADA_TITULO_GRAFICA, yyline, yycolumn, yytext());
}

<YYINITIAL> {RESERVADA_EJEX_GRAFICA} { 
    Token ntk = new Token(yyline, yycolumn, yytext(), "Palabra Reservada: EJEX_GRAFICA");
    listaTokens.add(ntk);
    return new Symbol(sym.RESERVADA_EJEX_GRAFICA, yyline, yycolumn, yytext());
}

<YYINITIAL> {RESERVADA_EJEY_GRAFICA} { 
    Token ntk = new Token(yyline, yycolumn, yytext(), "Palabra Reservada: EJEY_GRAFICA");
    listaTokens.add(ntk);
    return new Symbol(sym.RESERVADA_EJEY_GRAFICA, yyline, yycolumn, yytext());
}

<YYINITIAL> {RESERVADA_TITULOX_GRAFICA} { 
    Token ntk = new Token(yyline, yycolumn, yytext(), "Palabra Reservada: TITULOX_GRAFICA");
    listaTokens.add(ntk);
    return new Symbol(sym.RESERVADA_TITULOX_GRAFICA, yyline, yycolumn, yytext());
}

<YYINITIAL> {RESERVADA_TITULOY_GRAFICA} { 
    Token ntk = new Token(yyline, yycolumn, yytext(), "Palabra Reservada: TITULOY_GRAFICA");
    listaTokens.add(ntk);
    return new Symbol(sym.RESERVADA_TITULOY_GRAFICA, yyline, yycolumn, yytext());
}

<YYINITIAL> {RESERVADA_VALUES_GRAFICA} { 
    Token ntk = new Token(yyline, yycolumn, yytext(), "Palabra Reservada: VALUES_GRAFICA");
    listaTokens.add(ntk);
    return new Symbol(sym.RESERVADA_VALUES_GRAFICA, yyline, yycolumn, yytext());
}

<YYINITIAL> {RESRVADA_LABEL_GRAFICA} { 
    Token ntk = new Token(yyline, yycolumn, yytext(), "Palabra Reservada: LABEL_GRAFICA");
    listaTokens.add(ntk);
    return new Symbol(sym.RESRVADA_LABEL_GRAFICA, yyline, yycolumn, yytext());
}


<YYINITIAL> {RESERVADA_EXEC} { 
    Token ntk = new Token(yyline, yycolumn, yytext(), "Palabra Reservada: EXEC");
    listaTokens.add(ntk);
    return new Symbol(sym.RESERVADA_EXEC, yyline, yycolumn, yytext());
}
<YYINITIAL> {IDE} {Token ntk = new Token(yyline,yycolumn,yytext(),"ID array");listaTokens.add(ntk); return new Symbol(sym.IDE, yyline, yycolumn, yytext()) ; }

<YYINITIAL> {
    \"(\\.|[^\"])*\" {Token ntk = new Token(yyline,yycolumn,yytext(),"STRING");listaTokens.add(ntk); return new Symbol(sym.STRING, yyline, yycolumn, yytext()); }
}

<YYINITIAL> {
    [a-zA-Z_][a-zA-Z0-9_]* { Token ntk = new Token(yyline,yycolumn,yytext(),"Id");listaTokens.add(ntk) ; return new Symbol(sym.ID,yyline, yycolumn, yytext()); }
}


<YYINITIAL> {NUMEROS} {  Token ntk = new Token(yyline,yycolumn,yytext(),"Double");listaTokens.add(ntk) ; return new Symbol(sym.NUMEROS, yyline, yycolumn, yytext()) ;} 


<YYINITIAL>  . {
    Error_ nuevoError = new Error_(yyline,yycolumn,yytext(),true);
    lista_errores.add(nuevoError);
}

