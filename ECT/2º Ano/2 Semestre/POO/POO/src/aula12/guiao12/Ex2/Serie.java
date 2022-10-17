package aula12.guiao12.Ex2;

public class Serie extends Produto {
	public static final int IVA = 23;
	
	private String titulo;
	private int ano;
	
	public Serie(double preco) {
		super("S", preco);
		//  Auto-generated constructor stub
	}

	@Override
	public double precoVendaAoPublico() {
		return this.getPreco()*(1+IVA/100);
	}

	@Override
	public String getDescricao() {
		//  Auto-generated method stub
		return titulo;
	}
}
