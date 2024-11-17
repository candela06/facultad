package ar.edu.unlp.oo1.ejercicio1;

import java.time.LocalDate;
import java.util.List;
import java.util.ArrayList;

public class Presupuesto {
	private LocalDate fecha;
	private String cliente;
	private List<Item> items;
	
	public Presupuesto (String cliente) {
		this.fecha = LocalDate.now();	
		this.cliente = cliente;	
		this.items = new ArrayList<Item>();
	}
	public void agregarItem(Item item) {
		items.add(item);
	}
	
	public double calcularTotal() {
		double total = 0.0;
		for (Item item : this.items) {
			total += item.costo();
		}
		return total; 
	}
	
	public LocalDate getFecha() {
		return this.fecha;
	}
	public String getCliente() {
		return this.cliente;
	}
}
