package aula03;

import java.util.InputMismatchException;
import java.util.Scanner;
import java.lang.Math;

public class Ex35 {

    public static void main(String[] args){
        Scanner sc = new Scanner(System.in);
        double montante = 0, taxa = 0,fim = 0;
        String[] mes = new String[]{"","Janeiro","Fevereiro","Março","Abril","Maio","Junho","Julho","Agosto","Setembro","Outubro","Novembro","Dezembro"};
        while(true){
            try {
                System.out.print("Insira o seu montante investido, positivo e multiplo de 1000: ");
                montante = sc.nextDouble();
                if(montante <= 0 || montante % 1000 != 0)
                    throw new InputMismatchException();
                break;
            } catch (InputMismatchException e) {
                System.out.println("Montante investido invalido");
                sc.nextLine();
            }
        }

        while(true){
            try {
                System.out.print("Insira a sua taxa de juro mensal, entre 0% e 5%: ");
                taxa = sc.nextDouble();
                if(taxa < 0 || taxa > 5)
                    throw new InputMismatchException();
                break;
            } catch (InputMismatchException e) {
                System.out.println("Taxa de juro mensal invalida");
                sc.nextLine();
            }
        }
        System.out.println("  MES    ->   QUANTIA");
        for (int i = 1; i <= 12; i++) {
            fim = montante * Math.pow(1+(taxa/100),i);
            System.out.printf(mes[i] + " -> %.2f\n",fim);
        }
        sc.close();
    }
        
}
