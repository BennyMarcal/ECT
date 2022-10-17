package aula04;

import java.util.*;

public class Ex41 {

    public static void main(String[] args){
        Scanner sc = new Scanner(System.in);
        String frase;
        while(true){
                System.out.print("Insira o string à sua escolha: ");
                frase = sc.nextLine();
                if (frase.length() == 0){
                    System.out.println("Tamanho da string invalido");
                }else{
                    break;
                }
        }
        System.out.println("********************************************************************");
        System.out.println("A sua string inicial -> "+ frase);
        System.out.println("A sua string, em minusculas -> "+frase.toLowerCase());
		System.out.println("O último carater da sua string -> "+frase.charAt(frase.length()-1));
		System.out.println("Os primeiro 3 carateres da sua string -> "+frase.substring(0, 3));
        System.out.println("Os ultimos 3 carateres da sua string -> "+frase.substring(frase.length()-3));
        System.out.println("A sua string, totalmente concatenada -> "+ frase.concat(", opa que bela string"));
        System.out.println("Uma frase mais aveirense, substituir os v's por b's -> " + frase.replaceAll("v", "b"));
        System.out.println("A sua string, em vez de espaços, vai ter hifens -> "+frase.replaceAll("[\\s]", "-"));
        System.out.println("A sua string, mas desta vez, só as maiusculas -> "+frase.replaceAll("[\\p{Lower}]", ""));
        System.out.print("********************************************************************");
        sc.close();
    }
    
}
