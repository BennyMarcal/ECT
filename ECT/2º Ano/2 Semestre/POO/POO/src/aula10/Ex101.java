package aula10;

import java.util.*;


public class Ex101 {
    public static void main(String[] args) {
        Map<String, String> mapa = new HashMap<>();

        mapa.put("Branco", "Cor de Neve");
        mapa.put("Preto", "Cor de Carvao");
        mapa.put("Verde", "Cor de Relva");
        mapa.put("Vermelho","Cor do Sangue");
        mapa.put("Amarelo", "Cor do Sol");
        mapa.put("Azul", "Cor do Oceano");

        for(Map.Entry<String, String> i : mapa.entrySet()){
            System.out.println(i.getKey() + "-> " + i.getValue());
        }
        
        mapa.put("Branco", "Incolor");
        mapa.remove("Azul");

        for(Map.Entry<String, String> i : mapa.entrySet()){
            System.out.println(i.getKey() + "-> " + i.getValue());
        }
    }    
}