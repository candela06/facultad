package ar.edu.info.unlp.ejercicio5;

public class Circulo implements Figura {
	private double diametro;
	private double radio;
	
	public void setDiametro(double diametro) {
		this.diametro = diametro;
		this.radio = diametro / 2;
	}
	
	public double getDiametro() {
		return this.diametro;
		
	}
	
	public void setRadio(double radio) {
		this.radio = radio;
		this.diametro = radio * 2;
	}
	
	public double getRadio() {
		return this.radio;
	}
	
	public double getPerimetro() {
		return 2 * Math.PI * this.radio;
	}
	
	public double getArea() {
		return Math.PI * Math.pow(radio, 2);
	}
}
