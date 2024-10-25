/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tema2;

/**
 *
 * @author Candela
 */
import PaqueteLectura.Lector;
public class Ej01 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        
      
        System.out.print("mombre: ");
        String nombre = Lector.leerString();
        System.out.print("dni: ");
        int dni = Lector.leerInt();
        System.out.print("edad: ");
        int edad = Lector.leerInt();

        Persona p = new Persona(nombre,dni,edad);
        
        System.out.println(p.toString());
        
    }
    
}
