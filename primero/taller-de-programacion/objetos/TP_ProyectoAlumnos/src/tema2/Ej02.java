/*
Utilizando la clase Persona. Realice un programa que almacene en un vector a lo sumo
15 personas. La información (nombre, DNI, edad) se debe generar aleatoriamente hasta
obtener edad 0. Luego de almacenar la información:
- Informe la cantidad de personas mayores de 65 años.
- Muestre la representación de la persona con menor DNI.
 */
package tema2;

import PaqueteLectura.GeneradorAleatorio;
public class Ej02 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        int dimf = 15;
        int diml = 0;
        Persona[] vector = new Persona[dimf];
        
        int aux = GeneradorAleatorio.generarInt(80);
        while(aux != 0 && diml<dimf){
           Persona p = new Persona(GeneradorAleatorio.generarString(5),GeneradorAleatorio.generarInt(20),aux);
           
           System.out.println(p.toString());
           vector[diml] = p;
           diml++;
           aux = GeneradorAleatorio.generarInt(80);
           
        }
        
        // Informe la cantidad de personas mayores de 65 años.
        
        // Muestre la representación de la persona con menor DNI
        // suponeindo q no se repiten xdxd detalles
        
        System.out.println("\nPersonas mayores a 65 años");
        int cant = 0;
        int min = 99;
        int vieja = -1;
        for (int i=0; i<diml; i++){
            if (vector[i].getEdad() > 65){
                cant++;
                System.out.println(vector[i].toString());
            }
            if (vector[i].getDNI() < min){
                min = vector[i].getDNI();
                vieja = i;
            }
        }
        System.out.println("Total: "+cant+"\n"+ vector[vieja].toString()+" Y soy la más vieja pero mentí con mi edad");
        
        
        
       
    }
    
}
