
package excepciones2;
import javax.swing.JOptionPane;

public class Excepciones2 {

   
    public static void main(String[] args) {
        int x,y;
        int i=0;
        int vector[]={1,4,6,3,2};
        try{
             x=Integer.parseInt(JOptionPane.showInputDialog(null,"ingresa numerador","Solicitud de datos",2));
        y=Integer.parseInt(JOptionPane.showInputDialog(null,"ingresa denominador","Solicitud de datos",2));
        JOptionPane.showInputDialog(null, "El resultado es: "+(x/y),"Resultado",1);
        for(i=0; i<6; i++){
            System.out.println(vector[i]);
        }
        
        } catch (NumberFormatException n) {
            System.out.println(n.getMessage()+"Solo numeros enteros");
        } catch (ArithmeticException a) {
            System.out.println(a.getMessage()+" No se puede dividir entre cero");
        }catch(ArrayIndexOutOfBoundsException b) {
            System.out.println(b.getMessage()+  " El indice "+i+" no existe");
            
        }finally{
            System.out.println("");
            System.out.println("Esta seccion siempre se ejecuta");
        
    }
       

    }
    
}
