package Ajax;

public class Usuario {
	
	private String nombreUsuario;

	private String password;
	public String getNombreUsuario() {
		return nombreUsuario;
	}
	public void setNombreUsuario(String nombreUsuario) {
		this.nombreUsuario = nombreUsuario;
	}
	
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	@Override
	public String toString()
	{
		
		return this.getNombreUsuario()+ this.getPassword();
				
	}
	

}
