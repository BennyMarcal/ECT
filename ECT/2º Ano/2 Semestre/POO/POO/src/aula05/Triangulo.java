package aula05;

public class Triangulo {
    private double ladoA;
	private double ladoB;
	private double ladoC;

	Triangulo(double ladoA, double ladoB, double ladoC) {
		this.setTriangulo(ladoA, ladoB, ladoC);
	}

    public void setTriangulo(double ladoA, double ladoB, double ladoC) {
		assert ladoA + ladoB > ladoC || ladoB + ladoC > ladoA || ladoA + ladoC >= ladoB;
		this.ladoA = ladoA;
		this.ladoB = ladoB;
		this.ladoC = ladoC;
	}

    public double getladoA() {
		return this.ladoA;
	}
	public double getladoB() {
		return this.ladoB;
	}
	public double getladoC() {
		return this.ladoC;
	}

	public double getPerimetro() {
		return ladoA + ladoB + ladoC;
	}

	public double getArea() {
		double s = this.getPerimetro()/2;
		return Math.sqrt(s * (s-this.ladoA) * (s-this.ladoB) * (s-this.ladoC));
	}

	public boolean equals(Triangulo b) {
		return this.ladoA == b.getladoA() && this.ladoB == b.getladoB() && this.ladoC == b.getladoC();
	}

	public String toString() {
		return "| Lado A ->  " + this.ladoA + " Lado B -> " + this.ladoB + " Lado C -> " + ladoC + " |";
	}

}

