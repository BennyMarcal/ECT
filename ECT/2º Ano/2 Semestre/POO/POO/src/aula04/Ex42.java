package aula04;

import java.util.*;

public class Ex42 {

    static Scanner sc = new Scanner(System.in);

    public static void main(String[] args){
        String frase;
        while(true){
                System.out.print("Insira o string à sua escolha: ");
                frase = sc.nextLine();
                if (frase.length() < 3){
                    System.out.println("Tamanho da string invalido");
                }else{
                    break;
                }
        }
        System.out.println("------------------------------------------------------------------------");
        System.out.println("A sua string tem um total de " + countDigits(frase) + " carateres");
        System.out.println("A sua string tem um total de " + countSpaces(frase) + " espaços");
        if (onlyLower(frase) == true){
            System.out.println("A sua string APENAS possui letras minusculas");
        } else {
            System.out.println("A sua string NÃO possui apenas letras minusculas");
        }
        System.out.println("A sua string, sem multiplas ocorrencias de espaços, será: " + doubleSpaces(frase));
        if (makePalindromo(frase) == true){
            System.out.println("A sua string ... É UM PALINDROMO !!");
        } else {
            System.out.println("A sua string ... não é um palindromo");
        }
        System.out.println("------------------------------------------------------------------------");
    }
    public static int countDigits (String frase){
        return frase.replaceAll("[^0-9]", "").length(); // "bennyt 123 ty3" -> (tiro tudo o que nao sao numeros de 0-9) 1233 -> 4 de length, return da length
    }
    public static int countSpaces (String frase){
        return frase.replaceAll("[^ ]", "").length(); 
    }
    public static boolean onlyLower (String frase) {
        return frase.equals(frase.toLowerCase());
    }
    public static String doubleSpaces (String frase){
        return frase.replaceAll("[ ]+", " "); 
    }
    public static boolean makePalindromo (String frase){
        int i = 0, j = frase.length() - 1; //i = primeira letra, f = ultima letra
        String min = frase.toLowerCase();
        while (i < j) {
            if (min.charAt(i) != min.charAt(j))
                return false;
            i++;
            j--;
        }
        return true;
    }
    
}
