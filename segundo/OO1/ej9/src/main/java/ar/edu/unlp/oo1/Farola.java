package ar.edu.unlp.oo1;

import java.util.ArrayList;
import java.util.List;

public class Farola {
	private boolean estado;
	private List <Farola> vecinos;
	
	public Farola () {
		this.estado = false;
		this.vecinos = new ArrayList<>();
	}
	
	public List<Farola> getNeighbors(){
		return this.vecinos;
	}
	
	
	public List<Farola> getgetNeighbors(){
		return vecinos;
	}
	public void turnOn() {
		if (!estado) {
			estado = true;
			for (Farola vecino: vecinos) {
				vecino.turnOn();
			}
		}
	
	}
	
	public void turnOff() {
		if (estado) {
			estado = false;
			for (Farola f : vecinos) {
				f.turnOff();
			}
		}
	}
	
	public boolean isOn() {
		return estado;
	}
	
	public boolean isOff() {
		return !estado;
	}
	
	/*
	 * si de mis hermanos yo no tengo una hermana
	 * entonces agrego a mi hermana a mis hermanos
	 * y mi hermana me agrega a mí
	 */
	
	public void pairWithNeighbor(Farola otraFarola) {
		if (!this.vecinos.contains(otraFarola)) {
			this.vecinos.add(otraFarola);
			otraFarola.pairWithNeighbor(this);
		}
	}
	
	
}

