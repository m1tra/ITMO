//import java.util.Arrays;

public class Main{
    public static void main(String[] args){
        //1
        long[] n = new long[20-4+1];
        for (int i = 4, j = 0; i <= 20; i++, j++) {
            n[j] = i;
        }
        //System.out.println(Arrays.toString(n));
        //2
        double[] x = new double[16];
        for (int i = 0; i < x.length; i++){
            x[i] = Math.random() * 17 - 14;
        }
        //System.out.println(Arrays.toString(x));
        //3
        double[][] l = new double[17][16];
        for (int i=0; i < l.length; i++){
            for (int j=0; j < l[i].length; j++){
                l[i][j]=calculate(n[i],x[j]);
            }
        }
        showMatrix(l);
    }
    public static double calculate(long nValue, double xValue){
       return switch ((int)nValue){
            case 7 -> Math.cbrt(Math.atan(Math.pow((xValue-5.5)/17,2)));
            case 5,6,8,9,12,16,17,18 -> Math.cbrt((1/3.0)/(2-Math.pow(2*xValue,3)));
            default -> Math.pow(2*Math.cbrt(Math.pow(Math.E,Math.log(Math.abs(xValue)))),3);
        };
    }
    public static void showMatrix(double[][] matrix){
        for (double[] row : matrix){
            for (double value: row){
                System.out.printf("%.5f ",value);
            }
            System.out.println();
        }
    }
}
