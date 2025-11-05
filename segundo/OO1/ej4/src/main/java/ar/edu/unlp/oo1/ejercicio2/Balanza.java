package ar.edu.unlp.oo1.ejercicio2;

import java.util.ArrayList;
import java.util.List;

public class Balanza {
	private double precioTotal;
	private double pesoTotal;
	private List<Producto> productos;
	
	public Balanza (){
		this.precioTotal = 0;
		this.pesoTotal = 0;
		this.productos = new ArrayList<Producto>();
	}
	
	public void ponerEnCero() {
		this.precioTotal = 0;
		this.pesoTotal = 0;
		this.productos.clear();
		
	}
	
	public void agregarProducto (Producto producto) {
		this.precioTotal+= producto.getPrecio();
		this.pesoTotal+= producto.getPeso();
		this.productos.add(producto);
	}
	
	public Ticket emitirTicket() {
		Ticket ticket = new Ticket(this.productos.size(),this.precioTotal,this.pesoTotal, this.productos);
		return ticket;
	}
	
	public double getPesoTotal() {
		return this.pesoTotal;
	}
	
	public double getPrecioTotal() {
		return this.precioTotal;
	}
	
	public int getCantidadDeProductos() {
		return this.productos.size();
	}
	
	public List<Producto> getProductos(){
		return this.productos;
	}
}
