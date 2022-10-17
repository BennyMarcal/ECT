package aula02;

import java.util.InputMismatchException;
import java.util.Scanner;

public class Ex23 {

    public static void main(String[] args){
        Scanner sc = new Scanner(System.in);
        double M = 0, initialTemperature = 0, finalTemperature = 0;
        while(true){
            try{
                System.out.print("Insira a quantidade de agua, em kg, desejada: ");
                M = sc.nextDouble();
                if (M <= 0){
                    throw new InputMismatchException();
                }
                break;
            } catch (InputMismatchException e){
                System.out.println("Quantidade invalida");
                sc.nextLine();
            }
        }

        while(true){
            try{
                System.out.print("Insira a temperatura inicial, em graus Celsius, da agua: ");
                initialTemperature = sc.nextDouble();
                break;
            } catch (InputMismatchException e){
                System.out.println("Temperatura invalida");
                sc.nextLine();
            }
        }

        while(true){
            try{
                System.out.print("Insira a temperatura final, em graus Celsius, da agua: ");
                finalTemperature = sc.nextDouble();
                break;
            } catch (InputMismatchException e){
                System.out.println("Temperatura invalida");
                sc.nextLine();
            }
        }

        double Q = M * (finalTemperature - initialTemperature) * 4184;
        
        System.out.printf("A energia necessária para aquecer a agua é de %4.2f Joules", Q);
        sc.close();
    }
    
}
