package aula10;
import java.io.*;
import java.util.*;

public class Ex104 {
    public static void main(String[] args) throws IOException{
        Scanner input = new Scanner(new FileReader("words.txt"));
        HashSet<String> full = new HashSet<>();
        HashSet<String> dois = new HashSet<>();
        HashSet<String> last = new HashSet<>();

        while(input.hasNext()){
            String word = input.next();
            full.add(word);

            if(word.length()>2){
                dois.add(word);
            }

            if(word.endsWith("s")){
                last.add(word);
            }

            if(!word.matches("\\D+")){
                full.remove(word);
            }
            System.out.println(word);
        }
        System.out.println();
        System.out.println(full);
        System.out.println();
        System.out.println(dois);
        System.out.println(last);

    }
}