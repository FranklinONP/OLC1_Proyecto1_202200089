/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DB;
import Graficas.HistogramExample;
import Graficas.BarChartExample;
import Graficas.LineChartExample;
import Graficas.LineChartExample;

import java.io.File;
import java.io.IOException;
import org.jfree.chart.ChartUtilities;
import org.jfree.chart.JFreeChart;
import org.jfree.data.category.DefaultCategoryDataset;

/**
 *
 * @author 50232
 */
public class java {
    public static void main(String[] args) {
    int[] arreglo = {5, 8, 5, 2, 4, 8, 5, 2, 9, 8, 2, 5, 2};

        DefaultCategoryDataset dataset = HistogramExample.createDataset(arreglo);
        JFreeChart chart = HistogramExample.createChart(dataset, "Analisis de Arreglo");
    // Guardar la gráfica como imagen PNG
        try {
            File file = new File("histograma.png");
            ChartUtilities.saveChartAsPNG(file, chart, 560, 370);
            System.out.println("Gráfica guardada como 'histograma.png'");
        } catch (IOException e) {
            e.printStackTrace();
        }
    
    
    }
}
