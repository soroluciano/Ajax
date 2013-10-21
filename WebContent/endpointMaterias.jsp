<%@page import="java.util.HashSet"%>
<%@page import="Ajax.CacheAlumnos"%>
<%@page import="Ajax.Materia" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
<!--
@import url("/css/style.css");
-->
</style>
</head>
<body>

<% 


String nombrePersona=(String)session.getAttribute("nombre");



HashSet<Materia> listadoMateria2=new HashSet<Materia>();	

listadoMateria2=CacheAlumnos.getInstance().ObtenerAlumno(nombrePersona).obtenerMaterias();




	if(listadoMateria2!=null)
	{
 
	
	
		for(Materia materia :listadoMateria2)
		{
		out.print(materia.toString());
		out.write("</br>");	
		}
	}
	
	else
	{
		out.write("No existe el usuario");
		
	}
	

	

%>


</body>
</html>
