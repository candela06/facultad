package ar.edu.info.unlp.ejercicio5;

public class Cuerpo3D {
	private double altura;
	private Figura caraBasal;
	
	public void setAltura(double altura) {
		this.altura = altura;
	}
	
	public double getAltura() {
		return this.altura;
	}
	
	public void setCaraBasal(Figura caraBasal) {
		this.caraBasal = caraBasal;
	}
	
	public double getVolumen() {
		return this.caraBasal.getArea() * this.altura;
	}
	
	public double getSuperficieExterior() {
		return 2 * this.caraBasal.getArea() + this.caraBasal.getPerimetro() * this.altura;
	}
}
