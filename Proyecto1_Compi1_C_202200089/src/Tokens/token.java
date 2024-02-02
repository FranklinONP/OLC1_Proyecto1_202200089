/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Tokens;

/**
 *
 * @author 50232
 */
public class token {
    
    private String token;
    private String lexema;
    private int linea;
    private int columna;

    public token(String token, String lexema, int linea, int columna) {
        this.token = token;
        this.lexema = lexema;
        this.linea = linea;
        this.columna = columna;
    }

    public String getToken() {
        return token;
    }

    public String getLexema() {
        return lexema;
    }

    public int getLinea() {
        return linea;
    }

    public int getColumna() {
        return columna;
    }

    public void setToken(String token) {
        this.token = token;
    }

    public void setLexema(String lexema) {
        this.lexema = lexema;
    }

    public void setLinea(int linea) {
        this.linea = linea;
    }

    public void setColumna(int columna) {
        this.columna = columna;
    }
    
    
    
}
