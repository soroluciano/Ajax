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

Alumno al = new Alumno();
al.setNombre(nombre);
al.setApellido(apellido);
al.setLegajo(legajo);
CacheAlumnos.getInstance().crearAlumno(al);

for(Alumno alumno:CacheAlumnos.getInstance().getListaAlumnos())
{
	out.print(alumno.getNombre());
	out.print("<br>");
	out.print(alumno.getApellido());
	out.print("<br>");
	out.print(alumno.getLegajo());
	
}

%>
</body>
</html>