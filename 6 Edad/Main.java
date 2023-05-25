
package main;
import java.util.Scanner;
public class Main {
    
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.print("Ingrese la edad de la persona: ");
        int edad = scanner.nextInt();

        Persona persona = new Persona(edad);
        System.out.println(persona.determinarEdad());
    }
}