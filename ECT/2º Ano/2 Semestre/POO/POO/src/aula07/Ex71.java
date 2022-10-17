package aula07;

import java.util.*;

public class Ex71 {

    public static final Scanner sc = new Scanner(System.in);

	public static void main(String[] args) {
		int equals;

		Circulo circle[] = new Circulo[10];
        System.out.println("********************************** CIRCULO **********************************");
		for(int i=0; i<circle.length; i++) {
			circle[i] = new Circulo( Math.floor(Math.random() * 5) );
		}
		for (int i = 0; i < circle.length; i++) {
			System.out.printf("%s Perimetro -> %.2f Area -> %.2f\n", circle[i], circle[i].getPerimetro(), circle[i].getArea());
		}
		equals = 0;
		for (int i = 0; i < circle.length; i++) {
			if(circle[0].equals(circle[i]))
				equals++;
		}
		System.out.println("Existem " + equals + " circulos iguais ao primeiro");

		Triangulo triangulo[] = new Triangulo[10];
        System.out.println("********************************** TRIANGULO **********************************");
		for(int i=0; i<triangulo.length; i++) {
			triangulo[i] = new Triangulo( Math.floor( Math.random()*2 ) , Math.floor(Math.random() * 2) , Math.floor(Math.random() * 2) );
		}
		for (int i = 0; i < triangulo.length; i++) {
			System.out.printf("%s Perimetro -> %.2f Area -> %.2f\n", triangulo[i], triangulo[i].getPerimetro(), triangulo[i].getArea());
		}
		equals = 0;
		for (int i = 0; i < triangulo.length; i++) {
			if(triangulo[0].equals(triangulo[i]))
				equals++;
		}
		System.out.println("Existem " + equals + " triangulos iguais ao primeiro");

		Retangulo retangulo[] = new Retangulo[10];
        
		for(int i=0; i<retangulo.length; i++) {
			retangulo[i] = new Retangulo( Math.floor(Math.random() * 2), Math.floor(Math.random() * 2));
		}
		for (int i = 0; i < retangulo.length; i++) {
			System.out.printf("%s Perimetro -> %.1f Area -> %.1f \n",retangulo[i],retangulo[i].getPerimetro(),retangulo[i].getArea());
		}
		equals = 0;
		for (int i = 0; i < retangulo.length; i++) {
			if(retangulo[0].equals(retangulo[i]))
				equals++;
		}
		System.out.println("Existem " + equals + " retangulos iguais ao primeiro");
	}
}

