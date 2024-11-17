package ar.edu.info.unlp.ejercicio2;

import java.time.LocalDate;
import java.util.List;

public class Ticket {
	private LocalDate fecha;
	private List<Producto> productos;
	private int cantidadDeProductos;
	private double pesoTotal;
	private double precioTotal;
	
	public double impuesto() {
		return this.precioTotal * 0.21;
	}
	
	public Ticket () {
		
	}
	
	public Ticket (int cantidadDeProductos, double pesoTotal, double precioTotal, List<Producto> productos) {
		this.cantidadDeProductos = cantidadDeProductos;
		this.pesoTotal = pesoTotal;
		this.precioTotal = precioTotal;
		this.fecha = LocalDate.now();
		this.productos = productos;
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
