package ar.edu.unlp.oo1.ejercicio3;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
public class Presupuesto {
	
	 private LocalDate fecha;
	 private String cliente;
	 private List<Item> items;
	 
	 public Presupuesto(String cliente) {
		 this.fecha = LocalDate.now();
		 this.cliente = cliente;
		 this.items = new ArrayList<Item>();
	 }
	 
	 public LocalDate getFecha() {
		 return this.fecha;
	 }
	 
	 public String getCliente() {
		 return this.cliente;
	 }
	 
	 public void setCliente(String cliente) {
		 this.cliente = cliente;
	 }
	 
	 public void setFecha(LocalDate fecha) {
		 this.fecha = fecha;
	 }
	 
	 public void agregarItem(Item item) {
		 items.add(item);
	 }
	 
	 public double calcularTotal() {
		double suma = 0;
		 for (Item item: this.items) {
			 suma += item.costo();
		 }
		 return suma;
	 }
}
