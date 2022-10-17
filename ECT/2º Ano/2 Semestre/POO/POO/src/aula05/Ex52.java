package aula05;

import java.util.*;

public class Ex52 {

    public static final Scanner sc = new Scanner(System.in);

    public static void main(String[] args){
        Calendario calendario = new Calendario(0,1);

		while(true) {
			System.out.print("\nDate operations:\n1 - create new calendar\n2 - print calendar month\n3 - print calendar\n0 - exit\n\nInput --> ");
			int input = sc.nextInt();

			if(input == 1) { // create new calendar
				System.out.println("**************** CRIAÇÃO DO NOVO CALENDÁRIO ****************\n");
				int year = Calendario.getIntYear("Insira o ano desejado -> ",0);
				int weakDay = Calendario.getInt("Insira o dia da semana em que o ano vai começar (1 = Domingo e 7 = Sabado) -> ",1,7);
				calendario = new Calendario(year, weakDay);
			} 
			else if(input == 2) { // print calendar month
				int month = Calendario.getInt("O mes do calendário, em numero (1 a 12) -> ",1,12);
				System.out.print(calendario.printMonth(month));
			}
			else if(input == 3) {
				System.out.println(calendario);
			}
			else {
				break;
			}
        }
    }
}      
