package aula02;

import java.util.InputMismatchException;
import java.util.Scanner;

public class Ex26 {

    public static void main(String[] args){
        Scanner sc = new Scanner(System.in);
        int tempo = 0;
        while(true){
            try{
                System.out.print("Insira o número total de segundos que pretende traduzir: ");
                tempo = sc.nextInt();
                if (tempo <= 0){
                    throw new InputMismatchException();
                }
                break;
            } catch (InputMismatchException e){
                System.out.println("Tempo invalido");
                sc.nextLine();
            }
        }
        
        int segundos = tempo % 60;
        int minutos  = (tempo - segundos)/60 % 60;
        int horas    = (tempo - minutos - segundos)/(60 * 60) % 60;

        System.out.printf("%d segundos equivale a %dh :%dm :%ds",tempo,horas,minutos,segundos);
        sc.close();
    }
    
}
