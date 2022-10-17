package aula07;

public class Circulo {
    private double raio;

	Circulo(double raio) {
		this.setCirculo(raio);
	}

    public void setCirculo(double raio) {
		assert raio > 0 : "Valor do raio invalido";
		this.raio = raio;
	}

	public double getPerimetro() {
		return 2 * Math.PI * this.raio;
	}

	public double getArea() {
		return Math.PI * this.raio * this.raio;
	}

	public boolean equals(Circulo b) {
		return this.raio == b.getRaio();
	}

	public double getRaio() {
		return this.raio;
	}

	public String toString() {
		return "Raio do circulo -> " + this.raio;
	}
}
