package mayor;
import java.util.InputMismatchException;
import java.util.Scanner;

public class Mayor {
    public static void main(String[] args) {
        Mayor mayor = new Mayor();
        try {
            int resultado = mayor.obtenerMayor();
            System.out.println("Es mayor: " + resultado);
        } catch (InputMismatchException e) {
            System.out.println("Debe ingresar un número positivo");
        }
    }

    public int obtenerMayor() throws InputMismatchException {
        Scanner scanner = new Scanner(System.in);
        System.out.println("Ingresa un número:");
        int numero1 = scanner.nextInt();
        System.out.println("Ingresa oto número:");
        int numero2 = scanner.nextInt();
 
        scanner.close();
        int mayor = numero1;
        if (numero2 > mayor) {
            mayor = numero2;
        
        }
        return mayor;
    }
}