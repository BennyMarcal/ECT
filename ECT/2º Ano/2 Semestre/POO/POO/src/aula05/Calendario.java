package aula05;

import java.util.*;

public class Calendario {

        public static final Scanner sc = new Scanner(System.in);
        private int year;
        private int weekDay;
    
        public Calendario(int year, int weekDay) {
            this.year = year;
            this.weekDay = weekDay;
        }
    
        public int getYear() {
            return this.year;
        }
    
        public int firstWeekdayOfYear() {
            return this.weekDay;
        }

        public String monthName(int month) {
            switch (month) {
                case 1: return "Janeiro";
                case 2: return "Fevereiro";
                case 3: return "Março";
                case 4: return "Abril";
                case 5: return "Maio";
                case 6: return "Junho";
                case 7: return "Julho";
                case 8: return "Agosto";
                case 9: return "Setembro";
                case 10: return "Outubro";
                case 11: return "Novembro";
                case 12: return "Dezembro";
                default: return "";
            }
        }

        public String toString() {
            String n = "";
            for (int i = 1; i <= 12; i++) {
                n += printMonth(i);
            }
            return n;
        }

        public String printMonth(int month) {
            assert month>=1 && month<=12;
            int totalDays = 0;
            for (int i = 1; i < month; i++) {
                totalDays += Date.monthDays(i, this.year);
            }
            return makeWeakCalendar(month, (totalDays+this.weekDay-1)%7+1);
        }

        public static int getInt(String text, int min, int max) {
            int n;
            while( true ) {
                System.out.print(text);
                if(!sc.hasNextInt()) {
                    sc.next();
                    continue;
                }
                n = sc.nextInt();
                if( n>=min && n<=max ) // if number in range
                    break;
                else
                    System.out.println("Oops, mês inválido, tenta novamente");
            }
            return n;
        }

        public static int getIntYear(String text, int min) {
            int n;
            while( true ) {
                System.out.print(text);
                if(!sc.hasNextInt()) {
                    sc.next();
                    continue;
                }
                n = sc.nextInt();
                if( n>=min && n<=Integer.MAX_VALUE) // if number in range
                    break;
                else
                    System.out.println("Oops, ano inválido, tenta novamente");
            }
            return n;
        }

        private String makeWeakCalendar(int month, int weakDay) {
                String n = "\n";
    
                String header = monthName(month) + " " + this.year;
                for(int i = 0; i < (20-header.length())/2 ; i++) {
                    n += " ";
                }
                n += header + "\n";
        
                n += "Su Mo Tu We Th Fr Sa\n";
        
                for(int i = 1; i < weakDay; i++)
                    n += "   ";
                
                int x = weakDay-1;
                for(int i = 1; i <= Date.monthDays(month, this.year); i++) {
                    n += String.format("%2d ", i);
                    x += 1;
                    if( x>=7 ) {
                        x = 0;
                        n += "\n";
                    }
                }
        
                return n + "\n";
            }
}
