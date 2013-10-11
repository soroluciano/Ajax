package Ajax;


import java.util.HashMap;

public class Alumno {
 

	String nombre;
	String apellido;
	
	
	private HashMap<String,Materia> listaMaterias;
	
	public Alumno(String nombre,String apellido)
	{
		this.setNombre(nombre);
		this.setApellido(apellido);
		
	}
	
	public Alumno()
	{
		
		
	}
	
	public String getNombre()
	{
		
		
		return this.nombre;
	}
	public String getApellido()
	{
		
		return this.apellido;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public void setApellido(String apellido) {
		this.apellido = apellido;
	}
	
	public void setListaMaterias(HashMap<String,Materia>listaMaterias) {
		
	this.listaMaterias=listaMaterias;
	
		}
	 public  HashMap<String, Materia> obtenerMaterias()
	 {
		
	 
		return this.listaMaterias;
		 
		 
	 }
	 
	 
	 
	 
	
}
