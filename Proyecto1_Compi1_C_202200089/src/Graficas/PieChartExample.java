package Graficas;
import org.jfree.chart.ChartFactory;
import org.jfree.chart.ChartUtilities;
import org.jfree.chart.JFreeChart;
import org.jfree.chart.plot.PiePlot;
import org.jfree.data.general.DefaultPieDataset;

import java.io.File;
import java.io.IOException;

public class PieChartExample {

    public static void main(String[] args) {
        // Datos proporcionados por un arreglo
        double[] valores = {30, 20, 15, 25, 10};
        String[] categorias = {"Manzanas", "Plátanos", "Uvas", "Naranjas", "Peras"};

        DefaultPieDataset dataset = createDataset(valores, categorias);
        JFreeChart chart = createChart(dataset);

        // Guardar la gráfica como imagen PNG
        try {
            File file = new File("grafica_pie.png");
            ChartUtilities.saveChartAsPNG(file, chart, 560, 370);
            System.out.println("Gráfica guardada como 'grafica_pie.png'");
        } catch (IOException e) {
            e.printStackTrace();
        }
        
        
    }

    private static DefaultPieDataset createDataset(double[] valores, String[] categorias) {
        DefaultPieDataset dataset = new DefaultPieDataset();
        for (int i = 0; i < valores.length; i++) {
            dataset.setValue(categorias[i], valores[i]);
        }
        return dataset;
    }

    private static JFreeChart createChart(DefaultPieDataset dataset) {
        JFreeChart chart = ChartFactory.createPieChart(
                "Gráfica de Pie",  // Título
                dataset,
                true,
                true,
                false);
        PiePlot plot = (PiePlot) chart.getPlot();
        plot.setStartAngle(90); // Ajusta el ángulo de inicio (puedes cambiar este valor según tus preferencias)
        return chart;
    }
}
