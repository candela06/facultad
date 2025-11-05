package ar.edu.unlp.oo1.ejercicio2;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
public class Ticket {
	private LocalDate fecha;
	private int cantidadDeProductos;
	private double pesoTotal;
	private double precioTotal;
	private List<Producto> productos;
	
	public Ticket(int cantidadDeProductos, double precioTotal, double pesoTotal, List<Producto> productos) {
		this.fecha = LocalDate.now();
		this.cantidadDeProductos = cantidadDeProductos;
		this.pesoTotal = pesoTotal;
		this.precioTotal = precioTotal;
		this.productos = new ArrayList<Producto>(productos);
	}
	
	public double impuesto() {
		return this.precioTotal * 0.21;
	}
	
	public double getPesoTotal() {
		return this.pesoTotal;
	}
	
	public double getPrecioTotal() {
		return this.precioTotal;
	}
	
	public int getCantidadDeProductos() {
		return this.cantidadDeProductos;
	}
	
	public LocalDate getFecha() {
		return this.fecha;
	}
}

