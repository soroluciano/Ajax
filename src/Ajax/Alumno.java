package Ajax;


import java.util.HashMap;

public class Alumno {
 

	private String nombre;
	private String apellido;
	private String password;
	
	private HashMap<String,Materia> listaMaterias;
	
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
	
	
	public void setListaMaterias(HashMap<String,Materia>listaMaterias) 
	{
		
	this.listaMaterias=listaMaterias;
	
		}
	
	public  HashMap<String, Materia> obtenerMaterias()
	 {
		
	 
		return this.listaMaterias;
		 
		 
	 }
	 
	 public void agregarMateria(String key,Materia materia)
	 {
		
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
		 	 
			 
			 
			 
			
		 
		
		 
	 }
	 
	 @Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result
				+ ((apellido == null) ? 0 : apellido.hashCode());
		result = prime * result
				+ ((listaMaterias == null) ? 0 : listaMaterias.hashCode());
		result = prime * result + ((nombre == null) ? 0 : nombre.hashCode());
		result = prime * result
				+ ((password == null) ? 0 : password.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Alumno other = (Alumno) obj;
		if (apellido == null) {
			if (other.apellido != null)
				return false;
		} else if (!apellido.equals(other.apellido))
			return false;
		if (listaMaterias == null) {
			if (other.listaMaterias != null)
				return false;
		} else if (!listaMaterias.equals(other.listaMaterias))
			return false;
		if (nombre == null) {
			if (other.nombre != null)
				return false;
		} else if (!nombre.equals(other.nombre))
			return false;
		if (password == null) {
			if (other.password != null)
				return false;
		} else if (!password.equals(other.password))
			return false;
		return true;
	}

	public void eliminarMateria(String key)
	 {
		 
		 this.listaMaterias.remove(key);
		 
	 }
	
	 /*faltaria el editar materia*/
	 
	 
}
