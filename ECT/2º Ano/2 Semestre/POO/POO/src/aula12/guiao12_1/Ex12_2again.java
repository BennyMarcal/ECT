package aula12.guiao12_1;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Scanner;
import java.util.Set;

public class Ex12_2again {
    public static void main(String[] args) {

        ArrayList<Movie2> movies = new ArrayList<>();
        try {
            movies = getMoviesList("movies.txt");
        } catch (FileNotFoundException e) {
            System.out.println("Ficheiro movies.txt não encontrado.");
            System.exit(1);
        }

        // b)
        System.out.println(movies);

        // c) 1.
        movies.sort(Comparator.comparing(Movie2::getScore).reversed());
        System.out.println(movies);
        // c) 2.
        movies.sort(Comparator.comparing(Movie2::getRunningTime));
        System.out.println(movies);

        // d)
        Set<String> genresSet = new HashSet<>();
        for (Movie2 movie : movies) {
            genresSet.add(movie.getGenre());
        }
        System.out.println(genresSet);

        // e)
        String comedyMovies = "";
        for (Movie2 movie : movies) {
            if (movie.getGenre().toLowerCase().equals("comedy") && movie.getScore() > 60) {
                comedyMovies += movie.getName() + "\n";
            }
        }
        try {
            generateFile(comedyMovies, "./src/aula12/exer2/myselection.txt");
        } catch (IOException e) {
            e.printStackTrace();
        }
        
    }

    public static ArrayList<Movie2> getMoviesList(String filePath) throws FileNotFoundException {
        ArrayList<Movie2> movies = new ArrayList<>();

        Scanner sc = new Scanner(new FileInputStream(filePath));
        sc.nextLine();

        while (sc.hasNextLine()) {
            String line = sc.nextLine();
            String[] fields = line.split("\t");
            Movie2 movieToAdd = new Movie2(fields[0], Double.valueOf(fields[1]), fields[2], fields[3], Integer.valueOf(fields[4]));
            movies.add(movieToAdd);
        }

        movies.sort(Comparator.comparing(Movie2::getName));


        return movies;
    }

    public static void generateFile(String data, String path) throws IOException {
		PrintWriter out = new PrintWriter(new File(path));
		out.print(data);
		out.close();
	}
}