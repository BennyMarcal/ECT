import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;


public class aa01testfiles {

	public static void main(String[] args) {
		Path fich = Paths.get("major.txt");
		try {
			Files.readAllLines(fich).stream().forEach(System.out::println);
		} catch (IOException e) {
			System.out.println("Certifique-se que o ficheiro \"major.txt\" esta na raiz da pasta do projeto");
		}
	}
	
}
