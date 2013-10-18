package Ajax;

	import java.util.HashMap;



	public class CacheAlumnos {

		
		
		
		private static CacheAlumnos instancia;
		private HashMap<String,Alumno> listaAlumnos=new HashMap<String,Alumno>();
		private HashMap<String,Materia> listaMaterias = new HashMap<String, Materia>();
		private HashMap<String,Materia> listaMaterias2 = new HashMap<String, Materia>();
		
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
			
			
			listaMaterias.put("educ fisica",m1);
			listaMaterias.put("Programacion",m2);
		
			listaMaterias2.put("Redes",m3);
			listaMaterias2.put("Quimica",m4);
		
			
			
		
			Alumno a1 = new Alumno("pepe","lopez","123");
			Alumno a2= new Alumno("pancho","gimenez","abc");
			
			a1.setListaMaterias(listaMaterias);
			a2.setListaMaterias(listaMaterias2);
			
			listaAlumnos.put("pepe",a1);
			listaAlumnos.put("pancho",a2);
			
			
		
		}
		
		public static CacheAlumnos getInstance()
		{
			if(instancia == null)
			{
				
			instancia=new CacheAlumnos();	
			}
			return instancia;
		}


		public Alumno ObtenerAlumno(String nombre)
		{
			
			Alumno a = new Alumno();
			a=(Alumno)this.listaAlumnos.get(nombre);
			
		
			
			return a; 
		}
		


		
	}



