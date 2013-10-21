package Ajax;

import java.util.HashSet;

public class Materia {

	private String nombre;
	private Integer codigo;
	
	private HashSet<Alumno> listaAlumnos = new HashSet<Alumno>();
	
	public String getNombre() {
		return nombre.toString();
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public Integer getCodigo() {
		return codigo;
	}
	public void setCodigo(Integer codigo) {
		this.codigo = codigo;
	}
	
	@Override
	public String toString()
	{
		
		return this.getNombre()+ this.getCodigo();
				
	}
	public void addAlumno(Alumno alumno)
	{
		
		this.listaAlumnos.add(alumno);
	}
	
	
	
}
