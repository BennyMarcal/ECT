package aula03;

import java.util.InputMismatchException;
import java.util.Scanner;

public class Ex32 {

    public static void main(String[] args){
        Scanner sc = new Scanner(System.in);
        int N = 0;
        while(true){
            try {
                System.out.print("Introduza um número, positivo, para contar até 0: ");
                N = sc.nextInt();
                if (N < 0)
                    throw new InputMismatchException();
                break;
            } catch (InputMismatchException e) {
                System.out.println("Número invalido");
                sc.nextLine();
            }
        }
        for(int i = N; i >= 0; i--){
            System.out.printf("|-> %d <-|\n",i);
        }
        System.out.print("   boa   ");
        sc.close();
    }
    
}
