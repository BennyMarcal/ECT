package aula12.guiao12.Ex2;

public class Autor {
	private String nome;
	private int anoNascimento;
	
	public Autor(String nome, int anoNascimento) {
		super();
		this.nome = nome;
		this.anoNascimento = anoNascimento;
	}
	
	public String getNome() {
		return this.nome;
	}
	
	public int getAnoNascimento() {
		return this.anoNascimento;
	}

	public int compare(Autor a) {
		return this.nome.compareTo(a.nome);
	}

	@Override
	public String toString() {
		return nome + " (" + anoNascimento + "-)";
	}
}
