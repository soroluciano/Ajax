<%@page import="Ajax.Alumno" %>
<%@page import="Ajax.CacheAlumnos"%>
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
String nombre=request.getParameter("nombre");
String pass=request.getParameter("pass");



Alumno Usuario = new Alumno(); 


if((CacheAlumnos.getInstance().ObtenerAlumno(nombre,pass))!=null)
{
	Usuario=CacheAlumnos.getInstance().ObtenerAlumno(nombre,pass);
	
	if(Usuario.getNombre().equals(nombre) && Usuario.getPassword().equals(pass))
	{
		session.setAttribute("nombre",nombre); 
		session.setAttribute("pass",pass);
 		response.sendRedirect("menuPrincipal.jsp"); 
	}
	else
	{
		
	response.sendRedirect("error.jsp");	
		
	}	

}
else
{
	
response.sendRedirect("error.jsp");	
	
}	

%>
<a href="menuPrincipal.jsp">menu principal</a>

</body>
</html>