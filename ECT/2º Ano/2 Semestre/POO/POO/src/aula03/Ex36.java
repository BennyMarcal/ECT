package aula03;

import java.util.InputMismatchException;
import java.util.Scanner;

public class Ex36 {

    public static void main(String[] args){
        Scanner sc = new Scanner(System.in);
        int mes,ano,dias;
        String[] meses = new String[]{"","Janeiro","Fevereiro","Março","Abril","Maio","Junho","Julho","Agosto","Setembro","Outubro","Novembro","Dezembro"};
        while(true){
            try {
                System.out.print("Insira o mes que pretenda calcular o numero de dias: ");
                mes = sc.nextInt();
                if (mes <= 0 || mes > 12)
                    throw new InputMismatchException();
                break;
            } catch (InputMismatchException e) {
                System.out.println("Mes invalido");
                sc.nextLine();
            }
        }
        while(true){
            try {
                System.out.print("Insira o ano que pretenda calcular o numero de dias em "+meses[mes]+": ");
                ano = sc.nextInt();
                if (ano < 0)
                    throw new InputMismatchException();
                break;
            } catch (InputMismatchException e) {
                System.out.println("Ano invalido");
                sc.nextLine();
            }
        }
        
        if (mes == 1 || mes == 3 || mes == 5 || mes == 7 || mes == 8 || mes == 10 || mes == 12)
            dias = 31;
        else if (mes == 4 || mes == 6 || mes == 9 || mes == 11)
            dias = 30;
        else 
            if ((ano % 400 == 0) || ((ano % 4 == 0) && (ano % 100 != 0)))
                dias = 29;
            else 
                dias = 28;

        System.out.printf("Em %d, " + meses[mes] + " tem %d dias.",ano,dias);
        sc.close();
    }
        
}
