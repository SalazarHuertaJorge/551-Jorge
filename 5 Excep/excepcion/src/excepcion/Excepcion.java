package excepcion;
import java.util.Scanner;
public class Excepcion {

    public void setNumero(int num) {
        if (num <= 0)
            throw new RuntimeException("El numero debe ser positivo");
    }
    
    public static void main(String[] args) {
        int num;
        Scanner sc = new Scanner(System.in);
        
        System.out.println("Ingresa un numero positivo");
        num = sc.nextInt();
        
    try {
        Excepcion numero = new Excepcion();
        numero.setNumero(num);
        System.out.println("El numero es: "+num);
    } catch (RuntimeException e) {
        System.out.println(("debes ingresar un numero positivo"));
    }
}
}