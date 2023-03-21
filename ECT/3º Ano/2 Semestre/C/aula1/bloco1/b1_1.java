import java.util.*;

public class b1_1 {
    public static void main(String[] args) {
        double num1, num2, result = 0;
        String op;
        System.out.print("Insert the Mathematical Operation: ");
        Scanner sc = new Scanner(System.in);
        
        while(true) {
            try {
                String[] simbolos = sc.nextLine().split("(?<=\\d)(?=\\D)|(?<=\\D)(?=\\d)");
                num1 = Double.parseDouble(simbolos[0]);
                op = simbolos[1];
                num2 = Double.parseDouble(simbolos[2]);
    
                switch(op) {
                    case "+": 
                            result = num1 + num2;
                            System.out.println("Result of the addition: " + result);
                            break;
                    case "-":
                            result = num1 - num2;
                            System.out.println("Result of the subtraction: " + result);
                            break;
                    case "*":
                            result = num1 * num2;
                            System.out.println("Result of the multiplication: " + result);
                            break;
                    case "/":
                            result = num1 / num2;
                            System.out.println("Result of the Division: " + result);
                            break;
                    default:
                            System.err.println("Invalid operator, try again using correct values");
                            
                }
    
            } catch(NumberFormatException e) {
                System.out.println("Operators must be a number, try again!");
            } catch(ArrayIndexOutOfBoundsException e) {
                System.err.println("Incorrect number of inputs <num> <operator> <num>, try again!");
            }
                    
        }
    }
}