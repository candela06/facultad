package ar.edu.unlp.oo1;

public class Cuerpo3D {
	private double altura;
	private Object caraBasal;
	
	public Cuerpo3D() {
		
	}
	public Cuerpo3D (double altura, Object caraBasal) {
		this.altura = altura;
		this.caraBasal = caraBasal;
	}
	
	public void setAltura(double altura) {
		this.altura = altura;
	}
	
	public double getAltura() {
		return this.altura;
	}
	
	public void setCaraBasal(Object caraBasal) {
		this.caraBasal = caraBasal; 
	}
	
	public Object getCaraBasal() {
		return this.caraBasal;
	}
	
	public double getVolumen() {
		if (caraBasal instanceof Circulo) {
			Circulo c = (Circulo) caraBasal;
			return c.getArea() * altura;
		}
		else {
			Cuadrado c = (Cuadrado) caraBasal;
			return c.getArea() * altura;
		}
	}
	
	public double getSuperficieExterior() {
		if (caraBasal instanceof Circulo) {
			Circulo c = (Circulo) caraBasal;
			return (2 * c.getArea()) + (c.getPerimetro() * altura);
		}
		else {
			Cuadrado c = (Cuadrado) caraBasal;
			return (2 * c.getArea()) + (c.getPerimetro() * altura);
		}
	}
}

