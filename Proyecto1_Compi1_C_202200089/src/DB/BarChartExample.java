/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DB;

import org.jfree.chart.ChartFactory;
import org.jfree.chart.ChartUtilities;
import org.jfree.chart.JFreeChart;
import org.jfree.chart.plot.PlotOrientation;
import org.jfree.data.category.DefaultCategoryDataset;

import java.io.File;
import java.io.IOException;

public class BarChartExample {

    public static void main(String[] args) {
        // Datos proporcionados por arreglos
        String[] categorias = {"Manzanas", "Plátanos", "Uvas", "Naranjas", "Peras"};
        double[] valores = {30, 20, 15, 25, 10};

        DefaultCategoryDataset dataset = createDataset(valores, categorias);
        JFreeChart chart = createChart(dataset,"","","");

        // Guardar la gráfica como imagen PNG
        try {
            File file = new File("grafica_barras.png");
            ChartUtilities.saveChartAsPNG(file, chart, 560, 370);
            System.out.println("Gráfica guardada como 'grafica_barras.png'");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    static DefaultCategoryDataset createDataset(double[] valores, String[] categorias) {
        DefaultCategoryDataset dataset = new DefaultCategoryDataset();
        for (int i = 0; i < valores.length; i++) {
            dataset.addValue(valores[i], "Cantidad", categorias[i]);
        }
        return dataset;
    }

    static JFreeChart createChart(DefaultCategoryDataset dataset,String T,String x,String y) {
        JFreeChart chart = ChartFactory.createBarChart(
                T,//"Gráfica de Barras",  // Título
                x,//"Categorías",  // Etiqueta del eje X
                y,//"Cantidad",  // Etiqueta del eje Y
                dataset,
                PlotOrientation.VERTICAL,
                true,
                true,
                false);
        return chart;
    }
}

