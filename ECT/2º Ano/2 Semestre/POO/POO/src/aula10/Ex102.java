package aula10;

import java.util.*;

public class Ex102 {
    public static void main(String[] args) {
        Map<String, TreeSet<String>> mapa = new HashMap<>();
        TreeSet<String> tree= new TreeSet<>();
        tree.add("O vazio");
        tree.add("O escuro");
        tree.add("A solidao");
        mapa.put("Quem tem cor de carvao ?", tree);       
        
        TreeSet<String> second = new TreeSet<>();
        second.add("O esforço");
        second.add("A dor");
        second.add("A raiva");
        mapa.put("Quem tem cor de sangue ?", second);

        TreeSet<String> third = new TreeSet<>();
        third.add("A sorte");
        third.add("A esperança");
        third.add("Uma salada");
        mapa.put("Quem tem cor de relva ?", third);

        TreeSet<String> fourth = new TreeSet<>();
        fourth.add("O ouro");
        fourth.add("A felicidade");
        fourth.add("O sorriso");
        mapa.put("Quem tem cor do sol ?", fourth);
        System.out.print(mapa); 
    }
}