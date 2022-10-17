package aula06;
import aula05.Date;

public class Pessoa {
    private String nome;
    private int cc;
    private Date dataNasc;

    Pessoa(String nome, int cc, Date dataNasc){
        this.nome = nome;
        this.cc = cc;
        this.dataNasc = dataNasc;
    }

    public String getName() { 
		return this.nome; 
	}
    public int getCC() { 
		return this.cc; 
	}

    public Date getDataNasc() {
        return dataNasc;
    }
    /*public void setDataNasc(Date dataNasc) {
        if (dataNasc.validDate()) {
            this.dataNasc = dataNasc;
        } else {
            throw new IllegalArgumentException("Data inválida");
        }
    }*/

    @Override
    public String toString() {
		return String.format(this.nome + " ;CC: " + this.cc + " ;Data de Nascimento: " + this.dataNasc);
	}
}


