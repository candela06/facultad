package ar.edu.info.unlp.ejercicio2;

public class Balanza {

	private int cantidadDeProductos;
	private double precioTotal;
	private double pesoTotal;
	
	public void ponerEnCero() {
		this.pesoTotal = 0;
		this.cantidadDeProductos = 0;
		this.precioTotal = 0;
	}
	
	public void agregarProducto(Producto producto) {
		this.cantidadDeProductos++;
		this.precioTotal += producto.getPrecio();
		this.pesoTotal += producto.getPeso();
	}
	
	public Ticket emitirTicket() {
		Ticket ticket = new Ticket(this.cantidadDeProductos,this.pesoTotal,this.precioTotal); 
		return ticket;
	}
	public double getPesoTotal() {
		return this.pesoTotal;
	}
	public double getPrecioTotal () {
		return this.precioTotal;
	}
	public int getCantidadDeProductos() {
		return this.cantidadDeProductos;
	}
}
