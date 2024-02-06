/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Analizadores;
/**
 *
 * @author 50232
 */
public class generadorAnalizadores {

    public static void main(String[] args) {

        try {
            String ruta = "src/Analizadores/";
            String[] opcFlex = {ruta + "analizador_lexico.jflex", "-d", ruta};
            jflex.Main.generate(opcFlex);
            String[] opcCUP = {"-destdir", ruta, "-parser", "analizador_sintactico", ruta + "analizador_sintactico.cup"};
            java_cup.Main.main(opcCUP);       
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}