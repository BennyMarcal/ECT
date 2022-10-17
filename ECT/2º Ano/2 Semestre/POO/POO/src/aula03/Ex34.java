package aula03;

import java.util.InputMismatchException;
import java.util.Scanner;

public class Ex34 {

    public static void main(String[] args){
        Scanner sc = new Scanner(System.in);
        double[] num = new double[1000000];
        double max = -99999, min = 999999, soma = 0, prim = 0;
        int count = 0, media = 0;
        
        while(true){
            try {
                System.out.print("Insira um numero ");
                for(int i = 0; i < num.length; i++){
                System.out.print("-> ");
                num[i] = sc.nextDouble();
                if(num[0] == 0)
                    throw new InputMismatchException();
                count++;
                soma += num[i];
                    if(num[i] > max) {
                        max = num[i];
                    } else if(num[i] < min) {
                        min = num[i];
                    } if(num[i] == prim) {
                        break;
                    }   
                prim = num[0];
                }
                break;
            } catch (InputMismatchException e) {
                System.out.println("Numero inserido invalido");
                sc.nextLine();
            }
        } 
        media  = (int)(soma/count);
        System.out.println("***************************************");
        System.out.printf("Maximo: %.2f \nMinimo: %.2f \nMedia: %d \nTotal de numeros inseridos: %d ",max,min,media,count);
        sc.close();
    }
}
