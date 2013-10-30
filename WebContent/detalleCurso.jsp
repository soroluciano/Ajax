
<%@page import="Ajax.CacheAlumnos"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="Ajax.Curso"%>
<%@ page import="Ajax.Alumno"%>
<%@page import="java.util.HashSet"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.css" />
</head>
<body>
	<a href="abmCursos.jsp">volver</a>
	<%


String codigoCurso =(String)request.getParameter("codigo");


int cod=Integer.parseInt(codigoCurso);

Integer codigo= (Integer)cod;




out.print(codigo);


HashSet<Alumno> listaAlumnos = new HashSet<Alumno>();


listaAlumnos =CacheAlumnos.getInstance().obtenerAlumnosDelCurso(codigo);

Curso curso = new Curso();
curso =CacheAlumnos.getInstance().obtenerCursoConSuCodigo(codigo);

out.write("<h1>Curso</h1>");
out.write("<div class='table-responsive'><table class='table'>");


out.write("<tr class='warning'>");
out.write("<td>Codigo</td>");
out.write("<td>Materia</td>");
out.write("<td>Año</td>");

out.write("</tr>");

	
		

		out.write("<tr>");
		out.write("<td>");
		out.print(curso.getCodigo());
		out.write("</td>");
				
		out.write("<td>");	
		out.print(curso.getMateria());
		out.write("</td>");
		
		out.write("<td>");		
		out.print(curso.getAño());
		out.write("</td>");

		out.write("</tr>");
		



out.write("</table></div>");

/*fin de la primer tabla*/

/*tabla de alumnos del curso */

out.write("<br><br>");
out.write("<h1>Alumnos</h1>");
out.write("<div class='table-responsive'><table class='table'>");


out.write("<tr class='succes'>");
out.write("<td>Legajo</td>");
out.write("<td>Nombre</td>");
out.write("<td>Apellido</td>");

out.write("</tr>");
		

for(Alumno alumno : curso.obtenerListaAlumnos())
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



out.write("</tr>");	
		
}











	

%>
</body>
</html>