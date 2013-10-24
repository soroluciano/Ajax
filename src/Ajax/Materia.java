package Ajax;

public class Materia {

	private String nombre;
	private Integer codigo;
	
	
	
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

	
	
	
}
