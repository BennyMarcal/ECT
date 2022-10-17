import static java.lang.System.*;

/**
 * Run with:
 * javac PrintArgs.java && (java -ea PrintArgs 5 10 20 40; rm PrintArgs.class)
 */
public class ReverseArgs {

  public static void main(String[] args) {
    printArray(args, args.length);
  }

  /** Imprime as N primeiras strings do array, uma por linha. */
  public static void printArray(String[] array, int N) {
    if(N==0) return;
    out.println(array[N-1]);
    printArray(array, N-1);
  }

}
