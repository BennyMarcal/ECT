package aula08;

import java.util.ArrayList;
import java.util.Collections;
import java.util.concurrent.ThreadLocalRandom;
import java.util.List;

public class Ex1b {
    public static void main(String[] args) {
        List<Viatura> viaturas = new ArrayList<Viatura>();
        viaturas.add(new Motociclo("16-ZL-42", "Honda", "CBR-650", 100, "SuperSport"));
        viaturas.add(new Ligeiro("12-98-LP", "BMW", "320d", 140, 4, 500));
        viaturas.add(new LigeiroEletrico("66-BB-66", "Tesla", "Model S", 1020, 3, 4, 3));
        viaturas.add(new PesadoPassageirosEletrico("123", "volvo", "eletrico", 888, 3, 4444, 32, 95));
        int maxKm = 0;
        Viatura maxima = viaturas.get(0);
        for (Viatura viatura : viaturas) {
            viatura.trajeto(ThreadLocalRandom.current().nextInt(1, 10 + 1));
            viatura.trajeto(ThreadLocalRandom.current().nextInt(1, 10 + 1));
            for (Viatura viatura2 : viaturas) {
                System.out.printf(
                        "\nViatura 1 (%s) equals(Viatura 2): %b\n.ultimoTrajeto(): %d\t.distanciaPercorrida(): %d\n",
                        viatura,
                        viatura.equals(viatura2), viatura.ultimoTrajeto(), viatura.distanciaTotal());
            }
            // if(viatura instanceof VeiculoEletrico){
            //     System.out.printf("autonomia: %d\n",viatura.autonomia());
            // }
            if (viatura.distanciaTotal() > maxKm) {
                maxKm = viatura.distanciaTotal();
                maxima = viatura;
            }
        }
        
        System.out.println("\n\n"+viaturas+"\n\n\n");
        Collections.sort(viaturas);
        System.out.println("SORTED BY HP\t" + viaturas);
        
        Empresa empresa;
        try {
            empresa = new Empresa("EIMPRESA", "1234-567", "emailemail", viaturas);
        } catch (UnsupportedOperationException e) {
            System.out.println("Email invalido!");
        }

        empresa = new Empresa("EIMPRESA", "1234-567", "asdasd@gmail.com", viaturas);
        System.out.println("\n\n" + empresa);
        System.out.printf("\n\nViatura com mais distância percorrida: %s", maxima);
    }

}