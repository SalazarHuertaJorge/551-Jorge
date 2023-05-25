/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package v1trefiv;
import java.util.Scanner;
/**
 *
 * @author Jorge Aldhair
 */
public class V1trefiv {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int num;
        System.out.println("Ingresa un numero:");
        num=sc.nextInt();
        if(num %3==0 && num %5==0)
            System.out.println("TRIFIV");
        if(num%3==0)
            System.out.println("TRI");
        if(num%5==0)
            System.out.println("FIV");
        
    }
    
}
