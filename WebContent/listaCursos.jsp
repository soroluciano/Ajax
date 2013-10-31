<%@page import="Ajax.CacheAlumnos"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="Ajax.Curso"%>    
<%@ page import="Ajax.Alumno"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%

out.write("<h1>Cursos</h1>");
out.write("<div class='table-responsive'><table class='table'>");
out.write("<tr class='warning'>");
out.write("<td>Nombre del Curso</td>");
out.write("<td>Editar</td>");
out.write("<td>Borrar</td>");
out.write("<td>Ver detalle</td>");
out.write("</tr>");
for(Curso curso:CacheAlumnos.getInstance().getListaCursos())
{		
	
	out.write("<tr>");
	

	out.write("<td>");
	out.print(curso.getNombreCurso());
	out.write("</td>");

	

	out.write("<td>");

	out.write("<input type='button'  value='Editar' onclick='abmCursoEditar(1,");
	out.print(curso.getCodigo());

	out.write(");'/>");

	out.write("</td>");

	out.write("<td>");

	out.write("<input type='button'  value='Borrar' onclick='abmCurso(2,");
	out.print(curso.getCodigo());

	out.write(");'/>");

	out.write("</td>");

	out.write("<td>");
	out.write("<a href='detalleCurso.jsp?codigo=");
	out.print(curso.getCodigo());
	out.write("'>Ver detalle</a>");

	out.write("</td>");

	out.write("</tr>");
		
}


out.write("</table></div>");
	

%>
</body>
</html>