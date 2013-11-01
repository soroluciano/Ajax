<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.HashMap"%>
<%@page import="Ajax.CacheAlumnos"%>
<%@page import="Ajax.Materia" %>
<%@page import="Ajax.Usuario" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%

	
	out.write("<h1>Usuarios</h1><br>");
	out.write("<div class='table-responsive'><table class='table'>");
	out.write("<tr class='warning'>");
	out.write("<td>Codigo</td>");
	out.write("<td>Nombre</td>");
	out.write("<td>Password</td>");
	out.write("<td>Editar</td>");
	out.write("<td>Borrar</td>");
	
	out.write("</tr>");
	
	for(Usuario usu : CacheAlumnos.getInstance().getListaUsuarios())
	{		
		
		out.write("<tr>");
		
		out.write("<td>");
		out.print(usu.getCodigo());
		out.write("</td>");	
		
		out.write("<td>");
		out.print(usu.getNombreUsuario());
		out.write("</td>");

		out.write("<td>");
		out.print(usu.getPassword());
		out.write("</td>");

		
		out.write("<td>");

		out.write("<input type='button'  value='Editar' onclick='abmUsuarioEditar(1,");
		out.print(usu.getCodigo());

		out.write(");'/>");

		out.write("</td>");

		out.write("<td>");

		out.write("<input type='button'  value='Borrar' onclick='abmUsuario(2,");
		out.print(usu.getCodigo());

		out.write(");'/>");

		out.write("</td>");

	

		out.write("</tr>");
			
	}


	out.write("</table></div>");
		
	
%>
</body>
</html>