package aula02;

import java.util.InputMismatchException;
import java.util.Scanner;

public class Ex24 {

    public static void main(String[] args){
        Scanner sc = new Scanner(System.in);
        double invest = 0, percent = 0;
        while(true){
            try{
                System.out.print("Insira o montante, positivo, que deseja investir: ");
                invest = sc.nextDouble();
                if (invest <= 0){
                    throw new InputMismatchException();
                }
                break;
            } catch (InputMismatchException e){
                System.out.println("Montante invalido");
                sc.nextLine();
            }
        }
        
        while(true){
            try{
                System.out.print("Insira a taxa de juro mensal, positiva: ");
                percent = sc.nextDouble();
                if (percent <= 0){
                    throw new InputMismatchException();
                }
                break;
            } catch (InputMismatchException e){
                System.out.println("Taxa de juro mensal invalida");
                sc.nextLine();
            }
        }

        double total = invest;
        
        for(int i=0; i < 3; i++){
            total += total * (percent/100);
        }
        System.out.printf("Montante inicial: "+ invest);
        System.out.printf("\nTaxa de juro mensal: "+ percent);
        System.out.printf("\nMontante total: "+ total);
        sc.close();

    }
    
}
