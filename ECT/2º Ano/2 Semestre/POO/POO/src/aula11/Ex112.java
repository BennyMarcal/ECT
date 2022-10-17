package aula11;

import java.io.File;
import java.util.HashMap;
import java.util.Scanner;
import java.util.TreeMap;

public class Ex112 {
    public static void main(String[] args) {
        HashMap<String, Companhia> companhias = new HashMap<>();
        TreeMap<String, Voo> voos = new TreeMap<>();

        try {
            File companhiasFile = new File("./src/Aula11/companhias.txt");
            Scanner companhiasScanner = new Scanner(companhiasFile);

            companhiasScanner.nextLine(); 

            companhiasScanner.findAll(".*\n")
                .forEach(companhia -> {
                    String[] row = companhia.group(0).trim().split("\t");
                    companhias.put(row[0], new Companhia(row[0], row[1]));
                });

            companhiasScanner.close();

        } catch (Exception e) {
            System.out.println("Input invalido, tente novamente.");
            return;
        }
        
        System.out.printf("\n%-7s%-10s%-25s%-25s%-10s%s\n", "Hora", "Voo", "Companhia", "Origem", "Atraso", "Obs");
        voos.forEach((codigo, voo) -> {
            Companhia companhia = companhias.get(voo.codigo.substring(0, 2));
            if( companhia==null ) {
                companhia = new Companhia(codigo, voo.codigo.substring(0, 2));
                companhias.put(companhia.codigo, companhia);
            }
            System.out.printf("%-7s%-10s%-25s%-25s%-10s%s\n", voo.tempo, voo.codigo, companhia.nome, voo.cidade, voo.atraso!=null ? voo.atraso : "", voo.atraso!=null ? voo.getAtraso() : "");
        });
}
}
class Voo {
    protected String tempo;
    protected String codigo;
    protected String cidade;
    protected String atraso;
    Voo(String tempo, String codigo, String cidade, String atraso) {
        this.tempo = tempo;
        this.codigo = codigo;
        this.cidade = cidade;
        this.atraso = atraso;
    }

    public String toString() {
        return String.format("%s\t%s\t%s\t%s", this.tempo, this.codigo, this.cidade, this.atraso);
    }

    public String getAtraso() {
        int totalMinutes = Integer.parseInt(this.tempo.substring(0, 2)) * 60 + Integer.parseInt( this.tempo.substring(3) );
        int totalAtraso = Integer.parseInt(this.atraso.substring(0, 2)) * 60 + Integer.parseInt( this.atraso.substring(3) );
        int finalMinutes = totalMinutes + totalAtraso;
        return String.format("Tempo previsto de chegada: %02d:%02d", finalMinutes/60, finalMinutes%60);
    }
}

class Companhia {
    protected String nome;
    protected String codigo;
    Companhia(String nome, String codigo) {
        this.nome = nome;
        this.codigo = codigo;
    }

    public int hashCodigo() {
        return this.codigo.charAt(0) + this.codigo.charAt(1)*100;
    }

    public String toString() {
        return String.format("%s\t%s", this.codigo, this.nome);
    }
}
