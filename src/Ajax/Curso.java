package Ajax;

import java.util.HashSet;

public class Curso {
	private Integer codigo;
	private Integer año;
	private Materia materia;
	private HashSet<Alumno> listaAlumnos = new HashSet<Alumno>();


	public Integer getAño() {
		return año;
	}
	public void setAño(Integer año) {
		this.año = año;
	}
	public HashSet<Alumno> obtenerListaAlumnos() {
		return listaAlumnos;
	}
	
	public void agregarAlumno(Alumno alumno) {
		this.listaAlumnos.add(alumno);
	}
	public Integer getCodigo() {
		return codigo;
	}
	public void setCodigo(Integer codigo) {
		this.codigo = codigo;
	}
	public Materia getMateria() {
		return materia;
	}
	public void setMateria(Materia materia) {
		this.materia = materia;
	}
	
	
	
	
	
}
