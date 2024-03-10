package model;

public class Participante {

	int id_participante;
	String nombre;
	int puntuacion;
	
	public Participante(int id_participante,  String nombre, int puntuacion) {
		this.id_participante = id_participante;
		this.nombre = nombre;
		this.puntuacion = puntuacion;
	}

	public int getId_participante() {
		return id_participante;
	}

	public void setId_participante(int id_participante) {
		this.id_participante = id_participante;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public int getPuntuacion() {
		return puntuacion;
	}

	public void setPuntuacion(int puntuacion) {
		this.puntuacion = puntuacion;
	}
	
	
}