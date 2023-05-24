/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package prueba2;

//version 2 if-else if
import java.util.Scanner;
public class Prueba2 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int num;
        System.out.println("Ingresa un numero:");
        num=sc.nextInt();
        if(num %3==0 && num %5==0)
            System.out.println("TRIFIV");
        else if(num%3==0)
            System.out.println("TRI");
        else if(num%5==0)
            System.out.println("FIV");
    }
    
}
