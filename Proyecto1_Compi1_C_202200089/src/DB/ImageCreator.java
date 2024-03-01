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
        
        DefaultCategoryDataset dataset = HistogramExample.createDataset(arreglo);
        JFreeChart chart = HistogramExample.createChart(dataset, t);

        // Guardar la gráfica como imagen PNG
        try {
            File file = new File("histograma.png");
            ChartUtilities.saveChartAsPNG(file, chart, 560, 370);
            System.out.println("Gráfica guardada como 'histograma.png'");
            gui.listaRutas.add("histograma.png");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
    
      public static void createLineChartImage(String[] categorias,double[] valores,String t, String x, String y) {
        // Datos proporcionados por arreglos
   
        DefaultCategoryDataset dataset = LineChartExample.createDataset(valores, categorias);
        JFreeChart chart = LineChartExample.createChart(dataset,t,x,y);

        // Guardar la gráfica como imagen PNG
        try {
            File file = new File("grafica_linea.png");
            ChartUtilities.saveChartAsPNG(file, chart, 560, 370);
            System.out.println("Gráfica guardada como 'grafica_linea.png'");
            gui.listaRutas.add("grafica_linea.png");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
      
       public static void createPieChartImage(String[] categorias,double[] valores,String t) {
        // Datos proporcionados por un arreglo

        DefaultPieDataset dataset = PieChartExample.createDataset(valores, categorias);
        JFreeChart chart = PieChartExample.createChart(dataset,t);

        // Guardar la gráfica como imagen PNG
        try {
            File file = new File("grafica_pie.png");
            ChartUtilities.saveChartAsPNG(file, chart, 560, 370);
            System.out.println("Gráfica guardada como 'grafica_pie.png'");
            gui.listaRutas.add("grafica_pie.png");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
    
}