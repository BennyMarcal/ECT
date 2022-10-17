package aula02;

import java.util.InputMismatchException;
import java.util.Scanner;
import java.lang.Math;

public class EX27 {

    public static void main(String[] args){
        Scanner sc = new Scanner(System.in);
        System.out.print("--------------------- PONTO P1 ---------------------\n");
        double X1 = 0, X2 = 0, Y1 = 0, Y2 = 0;
        while(true){
            try{
                System.out.print("Insira a coordenada de X de P1: ");
                X1 = sc.nextDouble();
                break;
            } catch (InputMismatchException e){
                System.out.println("Coordenada do ponto X invalida");
                sc.nextLine();
            }
        }

        while(true){
            try{
                System.out.print("Insira a coordenada de Y de P1: ");
                Y1 = sc.nextDouble();
                break;
            } catch (InputMismatchException e){
                System.out.println("Coordenada do ponto Y invalida");
                sc.nextLine();
            }
        }
        System.out.print("--------------------- PONTO P2 ---------------------\n");

        while(true){
            try{
                System.out.print("Insira a coordenada de X de P2: ");
                X2 = sc.nextDouble();
                break;
            } catch (InputMismatchException e){
                System.out.println("Coordenada do ponto X invalida");
                sc.nextLine();
            }
        }

        while(true){
            try{
                System.out.print("Insira a coordenada de Y de P2: ");
                Y2 = sc.nextDouble();
                break;
            } catch (InputMismatchException e){
                System.out.println("Coordenada do ponto Y invalida");
                sc.nextLine();
            }
        }
        
        double distancia = Math.sqrt((Math.pow(X2 - X1, 2) + Math.pow(Y2 - Y1, 2)));

        System.out.printf("A distância entre P1 (%.2f,%.2f) e P2 (%.2f,%.2f) é de %.2f", X1,Y1,X2,Y2,distancia);
        sc.close();

    }
    
}
