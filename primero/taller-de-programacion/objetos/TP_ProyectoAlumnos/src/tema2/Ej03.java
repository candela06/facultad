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
import PaqueteLectura.GeneradorAleatorio;
public class Ej03 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        int entrevistas = 8;
        int dias = 5;
        Persona[][] casting = new Persona[entrevistas][dias];
        
        String n = Lector.leerString();
        int entrevistados = 0;
        int turnosOcupados = 0;
        int aux = 0;
        while(!"zzz".equals(n) && entrevistados < (entrevistas * dias) ){
            Persona p = new Persona(n,GeneradorAleatorio.generarInt(80),GeneradorAleatorio.generarInt(80));
            entrevistados++;
            
            if(turnosOcupados < entrevistas){
                casting[turnosOcupados][aux] = p;
                turnosOcupados++;
            } else {
                turnosOcupados = 0;
                aux++;
                if (entrevistados < (entrevistas * dias)){
                    casting[turnosOcupados][aux] = p;
                }
            }
        }
    }
    
}
