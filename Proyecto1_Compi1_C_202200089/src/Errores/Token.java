package Errores;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author 50232
 */
public class Token {
     private int linea;
    private int columna;
    private String lexema;
    private String tipo; // True es lexico , false es error sintactico
  
    public Token(int linea, int columna, String lexema, String tipo) {
        this.columna = columna;
        this.linea = linea;
        this.lexema = lexema;
        this.tipo = tipo;
    } 

    public int getLinea() {
        return linea;
    }

    public void setLinea(int linea) {
        this.linea = linea;
    }

    public int getColumna() {
        return columna;
    }

    public void setColumna(int columna) {
        this.columna = columna;
    }

    public String getLexema() {
        return lexema;
    }

    public void setLexema(String lexema) {
        this.lexema = lexema;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    @Override
    public String toString() {
        return "Token{" + "linea=" + linea + ", columna=" + columna + ", lexema=" + lexema + ", tipo=" + tipo + '}';
    }

}
