/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Funcionalidad;

/**
 *
 * @author 50232
 */
public class Printer {
    private StringBuilder text;

    public Printer() {
        this.text = new StringBuilder();
    }

    public void agregar(String texto) {
        this.text.append(texto);
    }

    public void agregarLinea(String texto) {
        this.text.append(texto).append("\n");
    }

    public String print() {
        return this.text.toString();
    }
}
