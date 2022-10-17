package aula02;

import java.util.InputMismatchException;
import java.util.Scanner;

public class Ex22 {
    
    public static void main(String[] args){
        Scanner sc = new Scanner(System.in);
        double Celsius = 0;
        while(true){
            try {
                System.out.print("Insira a temperatura em Celsius que deseja converter para Fahrenheit: ");
                Celsius = sc.nextDouble();
                break;
            }
            catch (InputMismatchException e) {
                System.out.println("Valor invalido");
                sc.nextLine();
            }
        }   
        double Fahrenheit = Celsius * 1.8 + 32;
        System.out.printf("%4.2f graus Celsius equivale a %4.2f graus Fahrenheit", Celsius, Fahrenheit);
        sc.close();
    }
} 
