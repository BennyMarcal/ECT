package aula03;

import java.util.InputMismatchException;
import java.util.Scanner;

public class Ex31 {
    public static void main(String[] args){
    Scanner sc = new Scanner(System.in);
    double notaP = 0, notaT = 0;
    while(true){
        try {
            System.out.print("Introduza a nota da componente prática: ");
            notaP = sc.nextDouble();
            if(notaP < 0.0 || notaP > 20.0)
                throw new InputMismatchException();
            break;
        } catch (InputMismatchException e) {
            System.out.println("Nota prática invalida");
            sc.nextLine();
        }
    }

    while(true){
        try {
            System.out.print("Introduza a nota da componente teorica: ");
            notaT = sc.nextDouble();
            if(notaT < 0.0 || notaT > 20.0)
                throw new InputMismatchException();
            break;
        } catch (InputMismatchException e) {
            System.out.println("Nota teorica invalida");
            sc.nextLine();
        }
    }
    if(notaP < 7.0 || notaT < 7.0){
        System.out.println("66 (RNM)");
    } else {
        int notaF = (int)Math.round(0.4 * notaT + 0.6 * notaP); 
        System.out.printf("A sua nota final é: "+ notaF);
    }
    sc.close();     
    }
}