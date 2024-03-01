/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DB;
import GUI.gui;
import DB.BarChartExample;
import java.io.File;
import java.io.IOException;
import org.jfree.chart.ChartUtilities;
import org.jfree.chart.JFreeChart;
import org.jfree.data.category.DefaultCategoryDataset;
import org.jfree.data.general.DefaultPieDataset;

public class ImageCreator {
    public static void createBarChartImage(String[]categorias,double[] valores,String T, String x,String y) {
        // Datos proporcionados por arreglos

        DefaultCategoryDataset dataset = BarChartExample.createDataset(valores, categorias);
        JFreeChart chart = BarChartExample.createChart(dataset,T,x,y);

        // Guardar la gráfica como imagen PNG
        try {
            File file = new File("GrafBarras.png");
            ChartUtilities.saveChartAsPNG(file, chart, 560, 370);
            System.out.println("Gráfica guardada como 'grafica_barras.png'");
            gui.listaRutas.add("GrafBarras.png");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
    
    public static void createHistogramImage(int[] arreglo,String t) {
        
        DefaultCategoryDataset dataset = HistogramExample.createDataset(arreglo,t);
        JFreeChart chart = HistogramExample.createChart(dataset, t);

        // Guardar la gráfica como imagen PNG
        try {
            File file = new File("histograma.png");
            ChartUtilities.saveChartAsPNG(file, chart, 560, 370);
            System.out.println("Gráfica guardada como 'histograma.png'");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
    
      public static void createLineChartImage() {
        // Datos proporcionados por arreglos
        String[] categorias = {"Enero", "Febrero", "Marzo", "Abril", "Mayo"};
        double[] valores = {10, 15, 20, 18, 25};

        DefaultCategoryDataset dataset = LineChartExample.createDataset(valores, categorias);
        JFreeChart chart = LineChartExample.createChart(dataset);

        // Guardar la gráfica como imagen PNG
        try {
            File file = new File("grafica_linea.png");
            ChartUtilities.saveChartAsPNG(file, chart, 560, 370);
            System.out.println("Gráfica guardada como 'grafica_linea.png'");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
      
       public static void createPieChartImage() {
        // Datos proporcionados por un arreglo
        double[] valores = {30, 20, 15, 25, 10};
        String[] categorias = {"Manzanas", "Plátanos", "Uvas", "Naranjas", "Peras"};

        DefaultPieDataset dataset = PieChartExample.createDataset(valores, categorias);
        JFreeChart chart = PieChartExample.createChart(dataset);

        // Guardar la gráfica como imagen PNG
        try {
            File file = new File("grafica_pie.png");
            ChartUtilities.saveChartAsPNG(file, chart, 560, 370);
            System.out.println("Gráfica guardada como 'grafica_pie.png'");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
    
}