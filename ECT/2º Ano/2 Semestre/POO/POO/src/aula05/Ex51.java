package aula05;

import java.util.*;

public class Ex51 {

    public static final Scanner sc = new Scanner(System.in);
    public static void main(String[] args){
        Date date = new Date(1,1,0); 
        while(true){
            System.out.println("\nDate operations:\n1 -create new date\n2 -show current date\n3 -increment date\n4 -decrement date\n0 -exit\n");
            System.out.print("Input desejado -> ");
            int input = sc.nextInt();

            if(input == 1){
                System.out.print("Introduza o dia desejado -> ");
                int dia = sc.nextInt();
                System.out.print("Introduza o mês desejado -> ");
                int mes = sc.nextInt();
                System.out.print("Introduza o ano desejado -> ");
                int ano = sc.nextInt();

                date = new Date(dia, mes, ano);

            }else if(input == 2){
                System.out.println();
                System.out.println(date);

            }else if(input == 3){
                System.out.print("Número de dias que deseja incrementar -> ");
                int dias = sc.nextInt();
                date.increment(dias);

            }else if(input == 4){
                System.out.print("Número de dias que deseja decrementar -> ");
                int dias = sc.nextInt();
                date.decrement(dias);
            }else
                break;
        }

    }
    
}
