package Ajax;

import java.util.HashSet;


public class CacheAlumnos {

	private static CacheAlumnos instancia;
	private HashSet<Alumno> listaAlumnos=new HashSet<Alumno>();
	private HashSet<Materia> listaMaterias = new HashSet<Materia>();
	private HashSet<Curso> listaCursos = new HashSet<Curso>();
	private HashSet<Usuario> listaUsuarios = new HashSet<Usuario>(); 
	
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

		listaMaterias.add(m3);
		listaMaterias.add(m4);




		Alumno a1 = new Alumno("pepe","lopez","123");
		Alumno a2= new Alumno("pancho","gimenez","abc");


		
		
		listaAlumnos.add(a1);
		listaAlumnos.add(a2);

		
		Curso curso1 = new Curso();
		
		Curso curso2 = new Curso();
		
		curso1.agregarAlumno(a1);
		curso1.agregarAlumno(a2);
		curso1.setAño(2010);
		curso1.setCodigo(1010);
		curso1.setMateria(m2);
		
		curso2.agregarAlumno(a1);
		curso2.agregarAlumno(a2);
		curso2.setAño(2011);
		curso2.setCodigo(1015);
		curso2.setMateria(m1);
		
		listaCursos.add(curso1);
		listaCursos.add(curso2);
	
		
		/*Creando usuarios*/
		
		Usuario u1 = new Usuario ();
		Usuario u2 = new Usuario();
		Usuario u3 = new Usuario ();
		u1.setNombreUsuario("pepe");
		u1.setPassword("123");
		u2.setNombreUsuario("luis");
		u2.setPassword("123");
		u3.setNombreUsuario("juan");
		u3.setPassword("123");
		
		listaUsuarios.add(u1);
		listaUsuarios.add(u2);
		listaUsuarios.add(u3);
		
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
	
	public Usuario obtenerUsuario(String nombre,String pass)/*esta deberia llamarse obtener usuario*/
	{



		for(Usuario usuario :listaUsuarios)
		{
			if(usuario.getNombreUsuario().equals(nombre) && usuario.getPassword().equals(pass))
			{

				return usuario;

			}
			else
			{

				return null;
				
			}	
		}

		return null;




	}
	
	
	
	

	public HashSet<Materia> getListaMaterias() {
		return listaMaterias;
	}

	public void agregarMaterias(Materia materia) {
		this.listaMaterias.add(materia);
	}

	public HashSet<Materia> getListaAlumnos() {
		return this.listaMaterias;
	}

	public void borrarMateria(Materia materia)
	{
		this.listaMaterias.remove(materia);
		
	}

	
	
	public void setListaAlumnos(HashSet<Alumno> listaAlumnos) {
		this.listaAlumnos = listaAlumnos;
	}

	public HashSet<Curso> getListaCursos() {
		return listaCursos;
	}

	public void setListaCursos(HashSet<Curso> listaCursos) {
		this.listaCursos = listaCursos;
	}

	public HashSet<Usuario> getListaUsuarios() {
		return listaUsuarios;
	}

	public void setListaUsuarios(HashSet<Usuario> listaUsuarios) {
		this.listaUsuarios = listaUsuarios;
	}
	
	public void guardarUsuario(Usuario usuario)
	{
		
		this.listaUsuarios.add(usuario);
		
	}

}



