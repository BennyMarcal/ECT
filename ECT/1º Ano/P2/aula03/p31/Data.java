import static java.lang.System.*;
import java.util.Calendar;

public class Data {
  private int dia, mes, ano;

  /** Inicia esta data com o dia de hoje. */
  public Data() {
    // Aqui usamos a classe Calendar da biblioteca standard para obter a data atual.
    Calendar today = Calendar.getInstance();
    dia = today.get(Calendar.DAY_OF_MONTH);
    mes = today.get(Calendar.MONTH) + 1;
    ano = today.get(Calendar.YEAR);
  }

  /** Inicia a data a partir do dia, mes e ano dados. */
  public Data(int dia, int mes, int ano) {
    this.dia = dia;
    this.mes = mes;
    this.ano = ano;
  }

  /** Devolve esta data segundo a norma ISO 8601. */
  public String toString() {
    return String.format("%04d-%02d-%02d", ano, mes, dia);
  }

  /** Indica se ano é bissexto. */
  public static boolean bissexto(int ano) {
    return ano%4 == 0 && ano%100 != 0 || ano%400 == 0;
  }

  // Crie métodos para obter o dia, mes e ano da data.
  public int dia() {
    return dia;
  }

  public int mes() {
    return mes;
  }

  public int ano() {
    return ano;
  }

  /** Dimensões dos meses num ano comum. */
  private static final
  int[] diasMesComum = {31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31};

  /** Devolve o número de dias do mês dado. */
  public static int diasDoMes(int mes, int ano) {
    if ((mes==2)&&bissexto(ano)) {
      return 29;
    }
    else return diasMesComum[mes-1];
  }

  /** Devolve o mes da data por extenso. */
  public String mesExtenso() {
    switch (mes) {
      case 1: return "janeiro";
      case 2: return "fevereiro";
      case 3: return "março";
      case 4: return "abril";
      case 5: return "maio";
      case 6: return "junho";
      case 7: return "julho";
      case 8: return "agosto";
      case 9: return "setembro";
      case 10: return "outubro";
      case 11: return "novembro";
      case 12: return "dezembro";
      default: return "invalid";
    }
  }

  /** Devolve esta data por extenso. */
  public String extenso() {
    return(dia+" de "+mesExtenso()+" de "+ano);
  }

  /** Indica se um terno (dia, mes, ano) forma uma data válida. */
  public static boolean dataValida(int dia, int mes, int ano) {
    return ((dia > 0)&&(mes > 0)&&(mes <= 12)&&(dia <= diasDoMes(mes, ano)));
  }

  public void seguinte() {
    if (dia==diasDoMes(mes, ano)) {
      dia = 1;
      if (mes==12) {
        mes = 1;
        ano++;
      }
      else mes++;
    }
    else dia++;
  }

  public static Data parseData(String s) {
    Data tmpData;
    String[] sSplit = s.split("-");
    if (sSplit.length==3) {
      tmpData = new Data(Integer.parseInt(sSplit[2]), Integer.parseInt(sSplit[1]), Integer.parseInt(sSplit[0]));
      if (dataValida(tmpData.dia(), tmpData.mes(), tmpData.ano())) {
        return tmpData;
      }
      else return null;
    }
    else return null;
  }

  public int compareTo(Data y) {
    if ((Integer.compare(this.ano(), y.ano()))!=0) {
      return Integer.compare(this.ano(), y.ano());
    }
    else if ((Integer.compare(this.mes(), y.mes()))!=0) {
      return Integer.compare(this.mes(), y.mes());
    }
    else return Integer.compare(this.dia(), y.dia());
  }

}
