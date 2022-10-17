import java.util.*;

public class Friend {

    public static final Scanner sc = new Scanner(System.in);
    // check if date is valid
	public static boolean validDate(int day, int month, int year) {
		if( month < 1 || month > 12 ) 
			return false;
		if (year < 0)
			return false;
		int maxMonthDays = monthDays(month, year);
		if( day < 1 || day > maxMonthDays ) 
			return false;
		return true;
	}

    // check how many days are in that month
	public static int monthDays(int month, int year) {
		if( month == 2 ) {
			if (isBissexto(year) == true)
				return 29;
			return 28;
		} else if( month==1 || month == 3 || month == 5 || month == 7 || month == 8 || month == 10 || month == 12) {
			return 31;
		} else {
			return 30;
		}
	}

    // check if it is Bissexto
	public static boolean isBissexto(int year) {
		return ((year % 4 == 0) && (year % 100 != 0)) || (year % 400 == 0);
	} 

    public static double getDouble(String print, Scanner sc, double min, double max) {
		while (true) {
			System.out.print(print);

			if (sc.hasNextDouble()) {
				double value = sc.nextDouble();

				if (value >= min && value <= max)
					return value;
				else if (min != Double.MIN_VALUE && max != Double.MAX_VALUE) {
					System.out.println("Valor inválido! Introduza um valor entre " + min + " e " + max + ".");
				} else if (min != Double.MIN_VALUE) {
					System.out.println("Valor inválido! Introduza um valor superior a " + min + ".");
				} else {
					System.out.println("Valor inválido!");
				}
			} else {
				System.out.println("Introduza um número válido!");
				sc.next();
			}
		}
	}

	public static double getDouble(String print, Scanner sc, double min) {
		return getDouble(print, sc, min, Double.MAX_VALUE);
	}

	public static double getDouble(String print, Scanner sc) {
		return getDouble(print, sc, Double.MIN_VALUE, Double.MAX_VALUE);
	}

	public static int getInt(String print, Scanner sc, int min, int max) {
		while (true) {
			System.out.print(print);

			if (sc.hasNextInt()) {
				int value = sc.nextInt();

				if (value >= min && value <= max)
					return value;
				else if (min != Integer.MIN_VALUE && max != Integer.MAX_VALUE) {
					System.out.println("Valor inválido! Introduza um valor entre " + min + " e " + max + ".");
				} else if (min != Integer.MIN_VALUE) {
					System.out.println("Valor inválido! Introduza um valor superior a " + min + ".");
				} else {
					System.out.println("Valor inválido!");
				}
			} else {
				System.out.println("Introduza um número válido!");
				sc.next();
			}
		}
	}

	public static int getInt(String print, Scanner sc, int min) {
		return getInt(print, sc, min, Integer.MAX_VALUE);
	}

	public static int getInt(String print, Scanner sc) {
		return getInt(print, sc, Integer.MIN_VALUE, Integer.MAX_VALUE);
	}

    //get string
    public static String getString(String message, Scanner sc) {
		System.out.print(message);
		return sc.nextLine();
	}
}
