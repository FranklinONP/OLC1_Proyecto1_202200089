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

public class LineChartExample {

    public static void main(String[] args) {
        // Datos proporcionados por arreglos

    }

    static DefaultCategoryDataset createDataset(double[] valores, String[] categorias) {
        DefaultCategoryDataset dataset = new DefaultCategoryDataset();
        for (int i = 0; i < valores.length; i++) {
            dataset.addValue(valores[i], "Cantidad", categorias[i]);
        }
        return dataset;
    }

    static JFreeChart createChart(DefaultCategoryDataset dataset,String t,String x,String y ) {
        JFreeChart chart = ChartFactory.createLineChart(
                t,//"Gráfica de Línea",  // Título
                x,//"Meses",  // Etiqueta del eje X
                y,//"Cantidad",  // Etiqueta del eje Y
                dataset,
                PlotOrientation.VERTICAL,
                true,
                true,
                false);
        return chart;
    }
}