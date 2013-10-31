<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.HashMap"%>
<%@page import="Ajax.CacheAlumnos"%>
<%@page import="Ajax.Materia" %>
<%@page import="Ajax.Alumno" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<%

	
	out.write("<h1>Materias</h1>");
	out.write("<div class='table-responsive'><table class='table'>");
	out.write("<tr class='warning'>");
	out.write("<td>Codigo</td>");
	out.write("<td>Nombre</td>");
	out.write("<td>Editar</td>");
	out.write("<td>Borrar</td>");
	
	out.write("</tr>");
	
	for(Materia materia : CacheAlumnos.getInstance().getListaMaterias())
	{		
		
		out.write("<tr>");
		

		out.write("<td>");
		out.print(materia.getCodigo());
		out.write("</td>");

		out.write("<td>");
		out.print(materia.getNombre());
		out.write("</td>");	
		

		out.write("<td>");

		out.write("<input type='button'  value='Editar' onclick='abmCursoEditar(1,");
		out.print(materia.getCodigo());

		out.write(");'/>");

		out.write("</td>");

		out.write("<td>");

		out.write("<input type='button'  value='Borrar' onclick='abmCurso(2,");
		out.print(materia.getCodigo());

		out.write(");'/>");

		out.write("</td>");

	

		out.write("</tr>");
			
	}


	out.write("</table></div>");
		
	
%>


</body>
</html>