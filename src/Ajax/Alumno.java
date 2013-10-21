package Ajax;



import java.util.HashSet;

public class Alumno {
 

	private String nombre;
	private String apellido;
	private String password;
	
	private HashSet<Materia> listaMaterias;
	
	public Alumno(String nombre,String apellido,String password)
	{
		this.setNombre(nombre);
		this.setApellido(apellido);
		this.setPassword(password);
	}
	
	private void setPassword(String password)
	{
	
		this.password=password;
		
	}

	public String getPassword()
	{
		
		return this.password;
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

	public void setNombre(String nombre)
	{
		this.nombre = nombre;
	}
	
	public void setApellido(String apellido) 
	
	{
		this.apellido = apellido;
	}
	
	
	public void setListaMaterias(HashSet<Materia>listaMaterias) 
	{
		
	this.listaMaterias=listaMaterias;
	
		}
	
	public  HashSet<Materia> obtenerMaterias()
	 {
		
	 
		return this.listaMaterias;
		 
		 
	 }
	 
	 public void agregarMateria(Materia materia)
	 {
		
		 /*
		if(this.listaMaterias.get(key)!=null)
		{
			
			System.out.println("Codigo existente,por favor cambielo");
			
		}
		else
		{
			for(Materia mat : this.listaMaterias.values())
			{
				if(mat.equals(materia) )
				{
				 System.out.println("Materia existente,por favor cambie los valores");
				 
				}
					
			 
			}
			for(Materia mat2 : this.listaMaterias.values())
			{
				if(mat2.equals(materia) )
				{
				 System.out.println("Materia existente,por favor cambie los valores");
				 
				}
					
			 
			}
			this.listaMaterias.put(key, materia);
			
			
		} 
		 	 
			 
			 */
			 
			
		 
		
		 
	 }
	 


	public void eliminarMateria(String key)
	 {
		 
		 this.listaMaterias.remove(key);
		 
	 }
	
	 /*faltaria el editar materia*/
	 
	 
}
