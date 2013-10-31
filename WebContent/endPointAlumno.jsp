<%@page import="Ajax.CacheAlumnos"%>
<%@page import="Ajax.Alumno"%>
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
String nombre = request.getParameter("nombre");
String apellido = request.getParameter("apellido");
Integer legajo = Integer.valueOf(request.getParameter("legajo"));
Integer codigo = Integer.valueOf(request.getParameter("codigo"));
Integer opcion = Integer.valueOf(request.getParameter("opcion"));

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
		
		out.write("<input type='button'  value='Editar' onclick='abmAlumno(2,");
		out.print(alumno.getNombre());
	
		out.write(");'/>");	
		out.write("</td>");		
		out.write("<td>");	
		
		
		out.write("<input type='button'  value='Borrar' onclick='abmAlumno(3,");
		out.print(alumno.getLegajo());
	
		out.write(");'/>");
		
	
		out.write("</td>");
		
		
		
		
	
		


		out.write("</tr>");
		
}


out.write("</table></div>");

%>
</body>
</html>