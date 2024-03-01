/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Graficas;
import org.jfree.chart.ChartFactory;
import org.jfree.chart.ChartUtilities;
import org.jfree.chart.JFreeChart;
import org.jfree.chart.axis.CategoryAxis;
import org.jfree.chart.axis.NumberAxis;
import org.jfree.chart.plot.CategoryPlot;
import org.jfree.chart.plot.PlotOrientation;
import org.jfree.data.category.DefaultCategoryDataset;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

public class HistogramExample {

    public static void main(String[] args) {
        int[] arreglo = {5, 8, 5, 2, 4, 8, 5, 2, 9, 8, 2, 5, 2};

        DefaultCategoryDataset dataset = createDataset(arreglo);
        JFreeChart chart = createChart(dataset, "Histograma de Valores");

        // Guardar la gráfica como imagen PNG
        try {
            File file = new File("histograma.png");
            ChartUtilities.saveChartAsPNG(file, chart, 560, 370);
            System.out.println("Gráfica guardada como 'histograma.png'");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public static DefaultCategoryDataset createDataset(int[] arreglo) {
        DefaultCategoryDataset dataset = new DefaultCategoryDataset();
        Map<Integer, Integer> frecuencias = new HashMap<>();

        // Calcular la frecuencia de cada número en el arreglo
        for (int numero : arreglo) {
            frecuencias.put(numero, frecuencias.getOrDefault(numero, 0) + 1);
        }

        // Agregar los valores al dataset
        for (Map.Entry<Integer, Integer> entry : frecuencias.entrySet()) {
            int numero = entry.getKey();
            int frecuencia = entry.getValue();
            dataset.addValue(frecuencia, "Frecuencia", String.valueOf(numero));
        }

        return dataset;
    }

    public static JFreeChart createChart(DefaultCategoryDataset dataset, String titulo) {
        JFreeChart chart = ChartFactory.createBarChart(
                titulo,
                "Valores",
                "Frecuencia",
                dataset,
                PlotOrientation.VERTICAL,
                true,
                true,
                false);

        CategoryPlot plot = chart.getCategoryPlot();
        CategoryAxis xAxis = plot.getDomainAxis();
        xAxis.setTickLabelsVisible(true);
        xAxis.setTickMarksVisible(true);

        NumberAxis yAxis = (NumberAxis) plot.getRangeAxis();
        yAxis.setAutoRangeIncludesZero(true);

        return chart;
    }
}