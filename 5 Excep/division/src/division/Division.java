
package division;

public class Division {
    public static void main(String[] args) {
        int a = 8;
        int b = 4;
        try {
            int c = a / b;
            System.out.println(c);
        } catch (ArithmeticException e) {
            System.out.println("Error: " + e.getMessage());
        }
    }
}
