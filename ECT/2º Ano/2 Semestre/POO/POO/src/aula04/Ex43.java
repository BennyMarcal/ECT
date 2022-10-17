package aula04;

import java.util.*;

public class Ex43 {

    static Scanner sc = new Scanner(System.in);

    public static void main (String[] args){
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
    System.out.print("Acrónimo: " + makeAcro(frase));
    }
    
    public static String makeAcro (String frase){
        String acro = "";
        String[] frasesplit = frase.split(" ");
        for(int j = 0; j < frasesplit.length ;j++){
                if(frasesplit[j].length() > 3)
                    acro += frasesplit[j].charAt(0);
        }
        return acro.toUpperCase();
    }  
}
