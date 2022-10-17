package aula12.guiao12_1;

public class Movie implements Comparable<Movie> {
    
    private String name;
    private double score;
    private String rating;
    private String genre;
    private int time;

    public Movie (String name, double score, String rating, String genre, int time){
            this.name = name;
            this.score = score;
            this.rating = rating;
            this.genre = genre;
            this.time = time;
    }

    public String getName(){ return this.name; }

    public double getScore(){ return this.score; }

    public String getRating(){ return this.rating; }

    public String getGenre(){ return this.genre; }

    public int getTime(){ return this.time; }

    @Override
    public int compareTo(Movie m){
        return name.compareToIgnoreCase(m.getName());
    }

    @Override
    public String toString(){
        return String.format("Name:  %20s\tScore: %.2f\tRating: %s\tGenre: %s\tTime: %d", this.name, this.score, this.rating, this.genre, this.time);
    }
}
