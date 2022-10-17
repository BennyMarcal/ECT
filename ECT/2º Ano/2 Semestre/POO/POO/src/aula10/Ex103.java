package aula10;

import java.util.*;

public class Ex103 {
    public static void main(String[] args) {
        String frase = "Hello World";
        HashMap<Character, TreeSet<Integer>> mapa = new HashMap<>();
        
        for (int i=0; i<frase.length(); i++) {
            TreeSet<Integer> tree = new TreeSet<>();
            for (int j = 0; j < frase.length(); j++) {
                if(frase.charAt(i)==frase.charAt(j)){
                    tree.add(j);
                }
            }
            mapa.put(frase.charAt(i), tree);
        }
        System.out.println(mapa);
    }
}