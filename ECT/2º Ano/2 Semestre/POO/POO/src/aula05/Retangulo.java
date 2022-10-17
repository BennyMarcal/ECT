package aula05;

public class Retangulo {
    private double length, height;
    
    Retangulo(double length, double height) {
        setRetangulo(length, height);
    }

    public void setRetangulo(double length, double height) {
        assert length > 0 && height > 0 : "Dados do retangulo invalidos";
        this.length = length;
        this.height = height;
    }

    public double getLength() { 
        return length;
    } 
    public double getHeight() { 
        return height;
    } 

    public double getArea() {
        return length * height;
    }

    public double getPerimetro() {
        return 2 * length + 2 * height;
    }

    public boolean equals(Retangulo r1) {
        return this.length == r1.getLength() && this.height == r1.getHeight();
    }

    public String toString() {
        return "Comprimento -> " + this.length + " Altura -> " + this.height;
    }
}

