package aula02;

import java.util.InputMismatchException;
import java.util.Scanner;
import java.lang.Math;

public class Ex28 {

    public static void main(String[] args){
        Scanner sc = new Scanner(System.in);
        System.out.print("--------------------- A ---------------------\n");
        double A = 0, B = 0;
        while(true){
            try{
                System.out.print("Introduza o valor do cateto A: ");
                A = sc.nextDouble();
                if (A <= 0){
                    throw new InputMismatchException();
                }
                break;
            } catch (InputMismatchException e){
                System.out.println("Valor do cateto invalido");
                sc.nextLine();
            }
        } 
        System.out.print("--------------------- B ---------------------\n");
        
        while(true){
            try{
                System.out.print("Introduza o valor do cateto B: ");
                B = sc.nextDouble();
                if (B <= 0){
                    throw new InputMismatchException();
                }
                break;
            } catch (InputMismatchException e){
                System.out.println("Valor do cateto invalido");
                sc.nextLine();
            }
        }

        double C = Math.sqrt(Math.pow(A, 2) + Math.pow(B,2));
        double angulo = Math.toDegrees(Math.asin(A / C));

        System.out.print("------------------- DADOS DO TRIANGULO -------------------\n");
        System.out.printf("Valor do cateto A: %.2f \nValor do cateto B: %.2f \nValor da hipotenusa C: %.2f \nAngulo entre A e C: %.2f graus",A,B,C,angulo);
        sc.close();
    }
    
}
