package ar.edu.unlp.oo1;

public class Cuadrado {
	private double lado;
	
	public Cuadrado() {
		
	}
	public Cuadrado(double lado) {
		this.lado = lado;
	}
	
	public double getLado() {
		return this.lado;
	}
	
	public void setLado(double lado) {
		this.lado = lado;
	}
	
	public double getPerimetro() {
		return this.lado * 4;
	}
	
	public double getArea() {
		return this.lado * this.lado;
	}
}
