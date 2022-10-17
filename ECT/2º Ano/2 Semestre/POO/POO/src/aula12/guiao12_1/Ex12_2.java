package aula12.guiao12_1;

import java.util.*;
import java.io.*;

public class Ex12_2{
    
    public static void main(String args[])throws IOException{
        
        Set<Movie> movies = new TreeSet<Movie>();

        Scanner sc = new Scanner(new File("movies.txt"));

        sc.nextLine();

        String[] split;

        String line;
        while(sc.hasNextLine()){
            line = sc.nextLine();

            split = line.split("\\t");

            movies.add(new Movie(split[0],Double.parseDouble(split[1]),split[2],split[3],Integer.parseInt(split[4])));
        }

        movies.forEach(System.out::println);

        //for(Movie m : movies){
        //    System.out.println(m);
        //}

        printByScore(movies);
        printToFile("myselection.text", movies);

        sc.close();
    }

    public static void printByScore(Set<Movie> s){

        List<Movie> l = new ArrayList<Movie>();

        l.sort((m1,m2) -> Double.compare(m1.getScore(), m2.getScore()));

        Collections.reverse(l);

        l.forEach(System.out::println);
    }

    public static void printToFile(String path, Set<Movie> s)throws IOException{
        PrintWriter pw = new PrintWriter("myselection.txt");

        for(Movie m : s){
            if(m.getScore() > 60 && m.getGenre() == "comedy"){
                pw.println(m.toString());
            }
        }

        pw.close();
    }
}