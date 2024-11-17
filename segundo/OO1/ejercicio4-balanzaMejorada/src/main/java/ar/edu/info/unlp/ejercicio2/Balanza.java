package ar.edu.info.unlp.ejercicio2;

import java.util.List;
import java.util.ArrayList;

public class Balanza {

	private List<Producto> productos;
	private int cantidadDeProductos;
	private double precioTotal;
	private double pesoTotal;
	
	
	public Balanza() {
        this.productos = new ArrayList<>();
        this.ponerEnCero();
    }
	
	public void ponerEnCero() {
		this.pesoTotal = 0;
		this.cantidadDeProductos = 0;
		this.precioTotal = 0;
		this.productos = new ArrayList<Producto>();
	}
	
	public void agregarProducto(Producto producto) {
		this.cantidadDeProductos++;
		this.precioTotal += producto.getPrecio();
		this.pesoTotal += producto.getPeso();
		this.productos.add(producto);
	}
	
	public Ticket emitirTicket() {
		 
		return new Ticket(this.cantidadDeProductos,this.pesoTotal,this.precioTotal,this.productos);
	}
	
	public double getPrecioTotal() {
		return this.precioTotal;
	}
	
	public double getPesoTotal() {
		return this.pesoTotal;
	}
	
	/*
	 * this.productos.stream() es como usar el for each pero mejor para el procesamiento de datos ;) 
	 * con mapToDouble cada producto del stream se transforma a un double y me traigo el precio de cada uno con Producto : :getPrecio
	 * después la función sum() para sumar todos los precios.
	 * 
	 * public double getPrecioTotal() {
	    return this.productos.stream()
	            .mapToDouble(Producto::getPrecio)
	            .sum();
	}
	
	public double getPesoTotal() {
		return this.productos.stream()
				.mapToDouble(Producto::getPeso)
				.sum();
	}
	 */
	

	public int getCantidadDeProductos() {
		return this.cantidadDeProductos;
	}
}
