package ar.edu.unlp.oo1;

public class Circulo {
	private double radio;
	private double diametro;
	
	public Circulo() {
		
	}
	
	public Circulo (double radio) {
		this.radio = radio;
		this.diametro = radio * 2;
	}
	
	public double getDiametro() {
		return this.radio * 2;
	}
	
	public void setDiametro(double diametro) {
		this.radio = diametro / 2;
		this.diametro = diametro;
	}
	public double getRadio() {
		return this.radio;
	}
	
	public void setRadio(double radio) {
		this.radio = radio;
		this.diametro = radio * 2;
	}
	
	public double getPerimetro() {
		return Math.PI * this.diametro;
	}
	
	public double getArea() {
		return Math.PI * (this.radio * this.radio); // al pedo usar Math.pow() si es al cuadrado nomas 
	}
}
