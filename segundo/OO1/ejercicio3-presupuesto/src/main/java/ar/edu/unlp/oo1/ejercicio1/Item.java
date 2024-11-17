package ar.edu.unlp.oo1.ejercicio1;

public class Item {
	private String detalle;
	private int cantidad;
	private double costoUnitario;
	
	public Item (String detalle, int cantidad, double costoUnitario) {
		this.detalle = detalle;
		this.cantidad = cantidad;
		this.costoUnitario = costoUnitario;
	}
	
	public double costo() {
		return this.cantidad * this.costoUnitario;
	}
	public int getCantidad() {
		return this.cantidad;
	}
	public double getCostoUnitario() {
		return this.costoUnitario;
	}
}
