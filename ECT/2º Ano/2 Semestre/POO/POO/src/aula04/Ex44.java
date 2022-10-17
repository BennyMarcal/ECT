package aula04;

import java.util.*;

public class Ex44 {

    static Scanner sc = new Scanner(System.in);
    
    public static void main(String[] args){
        String[] meses = {"","Janeiro", "Fevereiro", "Março", "Abril", "Maio", "Junho", "Julho", "Agosto", "Setembro", "Outubro", "Novembro", "Dezembro"};

		int mes = lerLimite("Insira o mês: ", 1, 12);
		int ano = lerAno("Insira o ano: ");
		int diaDaSemana = lerLimite("Insira o dia da semana, de 1 a 7: ", 1, 7);

		int diasDoMes = makeDias(mes, ano);  
        
        System.out.println("\n    " + meses[mes] + " " + ano);
        System.out.println("Su Mo Tu We Th Fr Sa");

        for(int i = 0; i < (diaDaSemana); i++)
		System.out.print("   ");
		
		int x = diaDaSemana-1;
		for(int i = 1; i <= diasDoMes; i++) {
			System.out.printf("%2d ", i);
			x += 1;
			if( x >= 7 ) {
				x = 0;
				System.out.println();
			}
		}
		System.out.println("\n");
    }
    public static int lerAno(String frase) {                           // funcao para calcular maximo e minimo definido
		return lerLimite(frase, 0, Integer.MAX_VALUE);
	}

	public static int lerLimite(String frase, int min, int max) {         // funcao para evitar try catch e para facilitar o codigo
		int x;
		while( true ) {
			System.out.print(frase);
			if(!sc.hasNextInt()) {
				sc.next();
				continue;
			}
			x = sc.nextInt();
			if( x>=min && x<=max ) // verificar se o numero está no range desejado
				break;
			else
				System.out.println("Valor de data invalida");
		}
		return x;
	}
    public static int makeDias(int mes, int ano) {
        int[] dias = {31,28,31,30,31,30,31,31,30,31,30,31};
        int bissexto = 0;
		    if(mes == 2 && ((ano % 400 == 0) || ( (ano % 4 == 0) && (ano % 100 != 0))))
                bissexto = 1;
        return dias[mes-1]+bissexto;
    }
}
