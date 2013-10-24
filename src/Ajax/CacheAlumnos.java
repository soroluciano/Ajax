package Ajax;

import java.util.HashSet;


public class CacheAlumnos {

	private static CacheAlumnos instancia;
	private HashSet<Alumno> listaAlumnos=new HashSet<Alumno>();
	private HashSet<Materia> listaMaterias = new HashSet<Materia>();
	private HashSet<Materia> listaMaterias2 = new HashSet<Materia>();
	private HashSet<Usuario> listaUsuarios= new HashSet<Usuario>();
	
	private CacheAlumnos()
	{
		Materia m1 = new Materia();
		m1.setCodigo(1);
		m1.setNombre("Educacion Fisica");

		Materia m2 = new Materia();

		m2.setCodigo(2);
		m2.setNombre("Programacion");

		Materia m3 = new Materia();
		m3.setCodigo(3);
		m3.setNombre("Tecnologia de redes");

		Materia m4 = new Materia();
		m4.setCodigo(4);
		m4.setNombre("Quimica");


		listaMaterias.add(m1);
		listaMaterias.add(m2);

		listaMaterias2.add(m3);
		listaMaterias2.add(m4);




		Alumno a1 = new Alumno("pepe","lopez","123");
		Alumno a2= new Alumno("pancho","gimenez","abc");

		a1.agregarMateria(m1);
		a1.agregarMateria(m2);
		
		a2.agregarMateria(m3);
		a2.agregarMateria(m4);

		
		
		listaAlumnos.add(a1);
		listaAlumnos.add(a2);

		Usuario u1 = new Usuario();
		Usuario u2 = new Usuario();
		u1.setNombreUsuario("juan");
		u1.setPassword("2020");
		u2.setNombreUsuario("mariana");
		u2.setPassword("lala");
		listaUsuarios.add(u1);
		listaUsuarios.add(u2);
	}

	public static CacheAlumnos getInstance()
	{
		if(instancia == null)
		{

			instancia=new CacheAlumnos();	
		}
		return instancia;
	}


	public Alumno ObtenerAlumno(String nombre,String pass)/*esta deberia llamarse obtener usuario*/
	{



		for(Alumno alumno :listaAlumnos)
		{
			if(alumno.getNombre().equals(nombre) && alumno.getPassword().equals(pass))
			{

				return alumno;

			}
			else
			{

				return null;
				
			}	
		}

		return null;




	}
	
	
	
	

	public HashSet<Alumno> getListaAlumnos() {
		return listaAlumnos;
	}

	public void setListaAlumnos(HashSet<Alumno> listaAlumnos) {
		this.listaAlumnos = listaAlumnos;
	}

	public HashSet<Usuario> getListaUsuarios() {
		return listaUsuarios;
	}

	public void setListaUsuarios(HashSet<Usuario> listaUsuarios) {
		this.listaUsuarios = listaUsuarios;
	}
	public void agregarUsuario(Usuario usuario)
	{
		
		
		this.listaUsuarios.add(usuario);
	}


}



