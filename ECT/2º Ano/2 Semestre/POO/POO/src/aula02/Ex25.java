package aula02;

import java.util.InputMismatchException;
import java.util.Scanner;

public class Ex25 {
    
    public static void main(String[] args){
        Scanner sc = new Scanner(System.in);
        double v1 = 0, v2 = 0, d1 = 0, d2 = 0;
        System.out.print("--------------------- PRIMEIRO TRAJETO ---------------------\n");
        while(true){
            try{
                System.out.print("Insira a velocidade do primeiro trajeto: ");
                v1 = sc.nextDouble();
                if (v1 <= 0){
                    throw new InputMismatchException();
                }
                break;
            } catch (InputMismatchException e){
                System.out.println("Velocidade invalida");
                sc.nextLine();
            }
        }

        while(true){
            try{
                System.out.print("Insira a distancia percorrida no segundo trajeto: ");
                d1 = sc.nextDouble();
                if (d1 <= 0){
                    throw new InputMismatchException();
                }
                break;
            } catch (InputMismatchException e){
                System.out.println("Distancia invalida");
                sc.nextLine();
            }
        }

        System.out.print("--------------------- SEGUNDO TRAJETO ---------------------\n");

        while(true){
            try{
                System.out.print("Insira a velocidade no segundo trajeto: ");
                v2 = sc.nextDouble();
                if (v2 <= 0){
                    throw new InputMismatchException();
                }
                break;
            } catch (InputMismatchException e){
                System.out.println("Velocidade invalida");
                sc.nextLine();
            }
        }

        while(true){
            try{
                System.out.print("Insira a distancia percorrida no segundo trajeto: ");
                d2 = sc.nextDouble();
                if (d2 <= 0){
                    throw new InputMismatchException();
                }
                break;
            } catch (InputMismatchException e){
                System.out.println("Distancia invalida");
                sc.nextLine();
            }
        }

        double d = d1 + d2;
        double t = d1 / v1 + d2 / v2;
        double velfinal = d/t;

        System.out.printf("A sua velocidade media final apos os dois trajetos é de: "+ velfinal);
        sc.close();
    }
}
