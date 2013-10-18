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

String nombre=(String)session.getAttribute("nombre");
/*
Alumno alumno = new Alumno();
alumno=CacheAlumnos.getInstance().ObtenerAlumno(nombre);



	for(Materia materia : alumno.obtenerMaterias().values())
	{
		out.write("</br>");
		out.print(materia.toString());
		
		
		
		out.write("<a href='eliminar.jsp'>eliminar</a>");
		out.write("</br>");
		
		
	}
	
	*/
	
%>


</body>
</html>