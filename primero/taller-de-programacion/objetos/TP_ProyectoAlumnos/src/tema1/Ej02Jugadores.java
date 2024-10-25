
package tema1;

//Paso 1: Importar la funcionalidad para lectura de datos

import PaqueteLectura.Lector;

/**2- Escriba un programa que lea las alturas de los 15 jugadores de un equipo de
básquet y las almacene en un vector. Luego informe:
- la altura promedio
- la cantidad de jugadores con altura por encima del promedio**/

public class Ej02Jugadores {

  
    public static void main(String[] args) {
        int dimf = 5;
        double[] alturas = new double[dimf];
        
        double suma = 0;
        System.out.println("Ingrese alturas:");
        for(int i=0;i<dimf;i++){
            alturas[i] = Lector.leerDouble();
            suma += alturas[i];
        }
       
        
        double promedio = (suma/dimf);
        int totalEncimaDelPromedio = 0;
        System.out.println("promedio: " + promedio);
        for (int i=0;i<dimf;i++){
            if (alturas[i] > promedio){
                totalEncimaDelPromedio++ ;
            }
        }
        System.out.println("cantidad de jugadores por encima del promedio: " + totalEncimaDelPromedio);
        
        
        
    }
    
}
