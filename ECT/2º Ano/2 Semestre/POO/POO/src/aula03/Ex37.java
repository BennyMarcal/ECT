package aula03;

import java.util.InputMismatchException;
import java.util.Scanner;

public class Ex37 {

    public static void main(String[] args){
        Scanner sc = new Scanner(System.in);
        int num,guess;
        boolean k = true;
        while(k == true){
        num = (int)(Math.random()*100);
        System.out.println("------------ ALTO  OU  BAIXO ------------");
        int max = 100, min = 0,count = 0;
        do{
        while(true){
            try {
                System.out.print("Escolhe um número de "+ min +" a "+ max +": ");
                guess = sc.nextInt();
                if(guess < min || guess > max)
                    throw new InputMismatchException();
                break;
            } catch (InputMismatchException e) {
                System.out.println("Adivinha invalida");
                sc.nextLine();
            }
        }
        count++;
        if(guess < num){
            System.out.println("Numero demasiado baixo, tenta mais alto!");
            min = guess;
        }else if (guess > num){
            System.out.println("Numero demasiado alto, tenta mais baixo!");
            max = guess;}
        }while(guess != num);

        System.out.println("******************************************************************");
        System.out.println("\nPARABENS ACERTASTE O NUMERO SECRETO !!!!!!");
        System.out.println("Acertaste o número secreto em " + count + " tentativas\n");
        System.out.println("******************************************************************");

        while(true){
            try {
                System.out.print("DESEJA JOGAR NOVAMENTE ? (S)im, caso queira repetir, (N)ao, caso queira parar: ");
                String again = sc.next();
                if(again.equals("s") || again.equals("sim") || again.equals("Sim") || again.equals("S"))
                    k = true;
                else if(again.equals("n") || again.equals("nao") || again.equals("Nao") || again.equals("N"))
                    k = false;
                else
                    throw new Exception();
                break;
            } catch (Exception e) {
                System.out.println("Carater invalido, insira (S)im ou (N)ao");
                sc.nextLine();
        }
        }
        }
        System.out.print("ACABOU O JOGO, OBRIGADO POR JOGAR");   
        sc.close();
}    
}
