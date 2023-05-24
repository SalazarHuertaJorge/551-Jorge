package funcional;
//version 3 funcional 
import java.util.Scanner;
public class Funcional {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int num;
        System.out.println("Ingresa un numero");
        num=sc.nextInt();
        System.out.println(condicion(num)); 
    }
    
    public static String condicion(int num){
        if(num%3==0 && num%5==0)
           return "TRIFIV";
        else if(num%3==0)
            return "TRI";
        else if(num%5==0)
            return "FIV";
        return "No es multiplo de 3 o 5";
    }
    
}
