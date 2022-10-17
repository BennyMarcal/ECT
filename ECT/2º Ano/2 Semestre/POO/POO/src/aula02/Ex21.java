package aula02;

import java.util.InputMismatchException;
import java.util.Scanner;

public class Ex21 {
    
    public static void main(String[] args){
        Scanner sc = new Scanner(System.in);
        double km = 0;
        while(true){
            try {
                    System.out.print("Insira o número de quilómetros que deseja traduzir para milhas: ");
                    km = sc.nextDouble();
                if (km < 0){
                    throw new InputMismatchException();
                }
                break;
            } catch (InputMismatchException e) {
                System.out.println("Valor invalido");
                sc.nextLine();
            }
        }

        double milhas = km / 1.609;
        System.out.printf("%4.2f quilómetros equivale a %4.2f milhas", km, milhas);
        sc.close();
    }
 
}
