<%@page import="Ajax.CacheAlumnos"%>
<%@page import="Ajax.Alumno"%>
<%@page import="java.util.HashSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String nombre = (String)request.getParameter("nombre");
String apellido = (String)request.getParameter("apellido");
Integer legajo = Integer.valueOf(request.getParameter("legajo"));
Integer codigo = Integer.valueOf(request.getParameter("codigo"));
Integer opcion = Integer.valueOf(request.getParameter("opcion"));

/*codigo viejo
Alumno al = new Alumno();
al.setNombre(nombre);
al.setApellido(apellido);
al.setLegajo(legajo);
CacheAlumnos.getInstance().crearAlumno(al);



out.write("<h1>Cursos</h1>");
out.write("<div class='table-responsive'><table class='table'>");
out.write("<tr class='warning'>");
out.write("<td>Legajo</td>");
out.write("<td>Nombre</td>");
out.write("<td>Apellido</td>");
out.write("<td>Editar</td>");
out.write("<td>Borrar</td>");

out.write("</tr>");

*/

switch(opcion)
{
	case 1:
	{
		for (Alumno alu : CacheAlumnos.getInstance().getListaAlumnos()) 
		{
			if (alu.getLegajo().equals(codigo)) {
				out.write("<div class='in'>Legajo<input type='text' id='legajo2' value="+alu.getLegajo()+"></div>");
				out.write("<div class='in'>Nombre <input type='text' id='nombreAlumno2' value="+ alu.getNombre()+"></div>");
				out.write("<div class='in'>Apellido <input type='text' id='apellido2' value="+ alu.getApellido()+"></div>");
				out.write("<div><input type='button' value='Guardar' onclick='abmAlumnoEditar(4,"+ alu.getLegajo()+");'/></div>");
			}
			
		}
		
		break;
	}
	case 2:
	{	
		
		Alumno alu = new Alumno();
		alu = CacheAlumnos.getInstance().obtenerAlumnoConSuLegajo(codigo);
		HashSet<Alumno> listaAlumnos = new HashSet<Alumno>();
		 CacheAlumnos.getInstance().getListaAlumnos().remove(alu);
		
		
		out.write("<h1>Cursos</h1>");
		out.write("<div class='table-responsive'><table class='table'>");
		out.write("<tr class='warning'>");
		out.write("<td>Legajo</td>");
		out.write("<td>Nombre</td>");
		out.write("<td>Apellido</td>");
		out.write("<td>Editar</td>");
		out.write("<td>Borrar</td>");
		out.write("</tr>");
		for(Alumno alumno:CacheAlumnos.getInstance().getListaAlumnos())
		{		
		
		
				out.write("<tr>");					
				out.write("<td>");	
				out.print(alumno.getLegajo());
				out.write("</td>");
				
				out.write("<td>");	
				out.print(alumno.getNombre());
				out.write("</td>");
				
				out.write("<td>");	
				out.print(alumno.getApellido());
				out.write("</td>");
				
				out.write("<td>");		
				
				out.write("<input type='button'  value='Editar' onclick='abmAlumnoEditar(1,");
				out.print(alumno.getLegajo());
			
				out.write(");'/>");	
				out.write("</td>");		
				out.write("<td>");	
				
				
				out.write("<input type='button'  value='Borrar' onclick='abmAlumno(2,");
				out.print(alumno.getLegajo());
			
				out.write(");'/>");
				
			
				out.write("</td>");
			
				


				out.write("</tr>");
				
		}


		out.write("</table></div>");
	break;
		
	}
	case 3:
	{
		
		Alumno alumno3=new Alumno();
		alumno3.setLegajo(legajo);
		alumno3.setNombre(nombre);
		alumno3.setApellido(apellido);
		CacheAlumnos.getInstance().crearAlumno(alumno3);
		
		
	
		out.write("<h1>Cursos</h1>");
		out.write("<div class='table-responsive'><table class='table'>");
		out.write("<tr class='warning'>");
		out.write("<td>Legajo</td>");
		out.write("<td>Nombre</td>");
		out.write("<td>Apellido</td>");
		out.write("<td>Editar</td>");
		out.write("<td>Borrar</td>");

		out.write("</tr>");
		
		for(Alumno alumno:CacheAlumnos.getInstance().getListaAlumnos())
		{		

				out.write("<tr>");
				
						
				out.write("<td>");	
				out.print(alumno.getLegajo());
				out.write("</td>");
				
				out.write("<td>");	
				out.print(alumno.getNombre());
				out.write("</td>");
				
				out.write("<td>");	
				out.print(alumno.getApellido());
				out.write("</td>");
				
				out.write("<td>");		
				
				out.write("<input type='button'  value='Editar' onclick='abmAlumnoEditar(1,");
				out.print(alumno.getLegajo());
			
				out.write(");'/>");	
				out.write("</td>");		
				out.write("<td>");	
				
				
				out.write("<input type='button'  value='Borrar' onclick='abmAlumno(2,");
				out.print(alumno.getLegajo());
			
				out.write(");'/>");
				
			
				out.write("</td>");
			
				


				out.write("</tr>");
				
		}


		out.write("</table></div>");
	
		break;
		
	}
	case 4:	
	{
		
		//out.print("<p>esto es el 4</p>");
	
		Alumno al12 = new Alumno();
		al12 = CacheAlumnos.getInstance().obtenerAlumnoConSuLegajo(codigo);
	
				/*borrando materia anterior*/
	
				CacheAlumnos.getInstance().getListaAlumnos().remove(al12);
				/*creando materia nueva*/
				Alumno alumno12 = new Alumno();	
				
				alumno12.setLegajo(legajo);
				alumno12.setNombre(nombre);
				alumno12.setApellido(apellido);
				
				
				CacheAlumnos.getInstance().crearAlumno(alumno12);
		
		
		
		
		out.write("<h1>Cursos</h1>");
		out.write("<div class='table-responsive'><table class='table'>");
		out.write("<tr class='warning'>");
		out.write("<td>Legajo</td>");
		out.write("<td>Nombre</td>");
		out.write("<td>Apellido</td>");
		out.write("<td>Editar</td>");
		out.write("<td>Borrar</td>");
		out.write("</tr>");
		for(Alumno alumno:CacheAlumnos.getInstance().getListaAlumnos())
		{		

				out.write("<tr>");
				
						
				out.write("<td>");	
				out.print(alumno.getLegajo());
				out.write("</td>");
				
				out.write("<td>");	
				out.print(alumno.getNombre());
				out.write("</td>");
				
				out.write("<td>");	
				out.print(alumno.getApellido());
				out.write("</td>");
				
				out.write("<td>");		
				
				out.write("<input type='button'  value='Editar' onclick='abmAlumnoEditar(1,");
				out.print(alumno.getLegajo());
			
				out.write(");'/>");	
				out.write("</td>");		
				out.write("<td>");	
				
				
				out.write("<input type='button'  value='Borrar' onclick='abmAlumno(2,");
				out.print(alumno.getLegajo());
			
				out.write(");'/>");
				
			
				out.write("</td>");
			
				


				out.write("</tr>");
				
		}


		out.write("</table></div>");

	break;	
	}
	
	
}




%>
</body>
</html>