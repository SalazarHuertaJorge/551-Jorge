
package main;
                            

class Persona {
    private int edad;

    public Persona(int edad) {
        this.edad = edad;
    }

    public String determinarEdad() {
        if (edad >= 18) {
            return "Es mayor de edad";
        } else {
            return "Es menor de edad";
        }
    }
}