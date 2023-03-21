import java.util.HashMap;
import java.util.Scanner;
import java.util.Stack;

public class b1_2 {
    
    private static final HashMap<String, Double> variaveis = new HashMap<>();
    
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        
        while (true) {
            System.out.print("> ");
            String linha = scanner.nextLine().replaceAll("\\s+", "");
            if (linha.equals("exit")) {
                break;
            }
            try {
                double resultado = calcularExpressao(linha);
                System.out.println(resultado);
            } catch (Exception e) {
                System.out.println("Erro: " + e.getMessage());
            }
        }
    }
    
    private static double calcularExpressao(String expressao) throws Exception {
        Stack<Double> operandos = new Stack<>();
        Stack<Character> operadores = new Stack<>();
        int i = 0;
        while (i < expressao.length()) {
            char c = expressao.charAt(i);
            if (Character.isDigit(c)) {
                int j = i + 1;
                while (j < expressao.length() && (Character.isDigit(expressao.charAt(j)) || expressao.charAt(j) == '.')) {
                    j++;
                }
                double numero = Double.parseDouble(expressao.substring(i, j));
                operandos.push(numero);
                i = j - 1;
            } else if (Character.isLetter(c)) {
                int j = i + 1;
                while (j < expressao.length() && Character.isLetterOrDigit(expressao.charAt(j))) {
                    j++;
                }
                String variavel = expressao.substring(i, j);
                if (!variaveis.containsKey(variavel)) {
                    throw new Exception("Variável não definida: " + variavel);
                }
                double valor = variaveis.get(variavel);
                operandos.push(valor);
                i = j - 1;
            } else if (c == '(') {
                operadores.push(c);
            } else if (c == ')') {
                while (operadores.peek() != '(') {
                    char operador = operadores.pop();
                    double operando2 = operandos.pop();
                    double operando1 = operandos.pop();
                    double resultado = executarOperacao(operando1, operando2, operador);
                    operandos.push(resultado);
                }
                operadores.pop();
            } else if (c == '+' || c == '-' || c == '*' || c == '/') {
                while (!operadores.empty() && prioridade(operadores.peek()) >= prioridade(c)) {
                    char operador = operadores.pop();
                    double operando2 = operandos.pop();
                    double operando1 = operandos.pop();
                    double resultado = executarOperacao(operando1, operando2, operador);
                    operandos.push(resultado);
                }
                operadores.push(c);
            } else {
                throw new Exception("Operador inválido: " + c);
            }
            i++;
        }
        while (!operadores.empty()) {
            char operador = operadores.pop();
            double operando2 = operandos.pop();
            double operando1 = operandos.pop();
            double resultado = executarOperacao(operando1, operando2,
