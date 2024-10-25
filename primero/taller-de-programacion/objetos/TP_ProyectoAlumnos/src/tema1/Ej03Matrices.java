/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tema1;

import PaqueteLectura.GeneradorAleatorio;
import PaqueteLectura.Lector;
public class Ej03Matrices {

    public static void main(String[] args) {
        GeneradorAleatorio.iniciar();
        
        int filas = 5;
        int col = 5;
        int[][] enteros = new int[filas][col];
        
        for(int i=0;i<filas;i++){
            for(int j=0;j<col;j++){
                enteros[i][j] = GeneradorAleatorio.generarInt(31);
            }
        }
        
        //Mostrar el contenido de la matriz en consola.
        for(int i=0;i<filas;i++){
            for(int j=0;j<col;j++){
                System.out.print(" " + enteros[i][j]);
            }
            System.out.println();
        }
        
        //Calcular e informar la suma de los elementos de la fila 1
        int suma = 0;
        for (int j=0;j<col;j++){
            suma += enteros[1][j];
        }
        System.out.println("suma de la fila 1: " + suma);
        
        /**Generar un vector de 5 posiciones donde cada posición j contiene la suma
           de los elementos de la columna j de la matriz. Luego, imprima el vector.**/
        
        int[] v = new int[col];
        for(int j=0;j<col;j++){
            int total = 0;
            for(int i=0;i<filas;i++){
                total += enteros[i][j];
            }
            System.out.println("col" + j + ": " + total);
            v[j] = total;
        }
        
        
        
        /*Lea un valor entero e indique si se encuentra o no en la matriz. En caso de
encontrarse indique su ubicación (fila y columna) en caso contrario
imprima “No se encontró el elemento”.*/
        
        System.out.println(System.lineSeparator() + "Ingrese un entero: ");
        int num = Lector.leerInt();
        boolean ok = false;
        
        int i = 0;
        
        // el break es de putos
        while (i<filas && !ok ){
            int j = 0;
            while (j<col && !ok){
                if (enteros[i][j] == num){
                    System.out.println("¡Encontrado en fila " + i +" columna " + j + "!");
                    ok = true;
                } else {
                    j++;
                }
            }
            i++;
        }
        
        if (!ok){
            System.out.println("No se encontró el elemento");
        }
        
        
        // pero somos re putitos, solución con break<3 (la catedra es homofobica)
        ok = false;
        for (i=0;i<filas;i++){
            for(int j=0;j<col;j++){
                if (enteros[i][j] == num){
                    System.out.println("\n!Encontrado en fila " + i +" columna " + j + "!");
                    ok = true;
                    break;
                }
            }
            if (ok){
                break;
            }
        }   
       if (!ok){
           System.out.println("No se encontró el elemento");
       }
    }
}
