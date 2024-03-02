/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DB;

import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

public class Frecuencias {

    public static void main(String[] args) {
        // Ejemplo de arreglo con números decimales
        double[] arreglo = {1, 2, 2.3, 3.4, 3.4, 3.4, 4.5, 4.5, 4.5, 4.5, 5.6, 5.6, 5.6, 5.6, 5.6};

        // Obtener frecuencia de cada valor
        int[] frecuencia = obtenerFrecuencia(arreglo);

        // Obtener frecuencia acumulada
        int[] frecuenciaAcumulada = obtenerFrecuenciaAcumulada(frecuencia);

        // Obtener frecuencia relativa
        double[] frecuenciaRelativa = obtenerFrecuenciaRelativa(frecuencia, arreglo.length);

        // Mostrar resultados
        mostrarResultado("Frecuencia", frecuencia);
        mostrarResultado("Frecuencia Acumulada", frecuenciaAcumulada);
        mostrarResultado("Frecuencia Relativa", frecuenciaRelativa);
    }

    private static int[] obtenerFrecuencia(double[] arreglo) {
        Map<Double, Integer> mapaFrecuencia = new HashMap<>();

        // Contar frecuencia de cada valor
        for (double valor : arreglo) {
            mapaFrecuencia.put(valor, mapaFrecuencia.getOrDefault(valor, 0) + 1);
        }

        // Convertir el mapa a un arreglo de frecuencia
        int[] frecuencia = new int[mapaFrecuencia.size()];
        int index = 0;
        for (double valor : mapaFrecuencia.keySet()) {
            frecuencia[index++] = mapaFrecuencia.get(valor);
        }

        return frecuencia;
    }

    private static int[] obtenerFrecuenciaAcumulada(int[] frecuencia) {
        int[] frecuenciaAcumulada = new int[frecuencia.length];
        int acumulada = 0;

        for (int i = 0; i < frecuencia.length; i++) {
            acumulada += frecuencia[i];
            frecuenciaAcumulada[i] = acumulada;
        }

        return frecuenciaAcumulada;
    }

    private static double[] obtenerFrecuenciaRelativa(int[] frecuencia, int totalElementos) {
        double[] frecuenciaRelativa = new double[frecuencia.length];

        for (int i = 0; i < frecuencia.length; i++) {
            frecuenciaRelativa[i] = (double) frecuencia[i] / totalElementos;
        }

        return frecuenciaRelativa;
    }

    private static void mostrarResultado(String titulo, int[] resultado) {
        System.out.println(titulo + ": " + Arrays.toString(resultado));
    }

    private static void mostrarResultado(String titulo, double[] resultado) {
        System.out.println(titulo + ": " + Arrays.toString(resultado));
    }
}
