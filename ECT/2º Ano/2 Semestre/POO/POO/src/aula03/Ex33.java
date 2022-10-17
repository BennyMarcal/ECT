package aula03;

import java.util.InputMismatchException;
import java.util.Scanner;

public class Ex33 {

    public static void main(String[] args){
        Scanner sc = new Scanner(System.in);
        int num = 0;
        boolean prime = true;
        while(true){
            try {
                System.out.print("Insira um número que pretenda saber se é ou não primo: ");
                num = sc.nextInt();
                if(num <= 0)
                    throw new InputMismatchException();
                break;
            } catch (InputMismatchException e) {
                System.out.println("Numero invalido");
                sc.nextLine();
            }
        }
        if(num == 1) {
            System.out.println("Tiveste azar, 1 não é primo");
            prime = false;
        } else {
            for (int i = 2; i < num; i++) {
                if(num % i == 0) {
                    prime = false;
                    break;
                } else prime = true;
            }
            if(prime) {
                System.out.printf("Oupa, %d é um número primo", num);
            } else {
                System.out.printf("Uepa, %d não é um número primo", num);
            }
        }
        sc.close();
    }    
}
