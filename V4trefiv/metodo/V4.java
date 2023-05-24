package v4;
public class V4 {
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
