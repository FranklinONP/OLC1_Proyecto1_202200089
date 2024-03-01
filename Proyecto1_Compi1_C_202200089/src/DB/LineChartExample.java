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
        String[] categorias = {"Enero", "Febrero", "Marzo", "Abril", "Mayo"};
        double[] valores = {10, 15, 20, 18, 25};

        DefaultCategoryDataset dataset = createDataset(valores, categorias);
        JFreeChart chart = createChart(dataset);

        // Guardar la gráfica como imagen PNG
        try {
            File file = new File("grafica_linea.png");
            ChartUtilities.saveChartAsPNG(file, chart, 560, 370);
            System.out.println("Gráfica guardada como 'grafica_linea.png'");
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

    static JFreeChart createChart(DefaultCategoryDataset dataset) {
        JFreeChart chart = ChartFactory.createLineChart(
                "Gráfica de Línea",  // Título
                "Meses",  // Etiqueta del eje X
                "Cantidad",  // Etiqueta del eje Y
                dataset,
                PlotOrientation.VERTICAL,
                true,
                true,
                false);
        return chart;
    }
}