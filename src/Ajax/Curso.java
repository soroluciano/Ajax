package Ajax;

import java.util.HashSet;

public class Curso {

	private String nombre;
	private Integer año;
	private HashSet<Alumno> listaAlumnos = new HashSet<Alumno>();
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public Integer getAño() {
		return año;
	}
	public void setAño(Integer año) {
		this.año = año;
	}
	public HashSet<Alumno> obtenerListaAlumnos() {
		return listaAlumnos;
	}
	
	public void agregarAlumnos(Alumno alumno) {
		this.listaAlumnos.add(alumno);
	}
	
	
	
	
	
}
