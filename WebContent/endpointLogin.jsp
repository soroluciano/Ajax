<%@page import="Ajax.Usuario" %>
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
String nombre=(String)request.getParameter("nombre");
String pass=(String)request.getParameter("pass");


if(CacheAlumnos.getInstance().obtenerUsuario(nombre, pass)!=null)
{
	Usuario usu= new Usuario();
	usu=CacheAlumnos.getInstance().obtenerUsuario(nombre, pass);
	
	if(usu.getNombreUsuario().equals(nombre) && usu.getPassword().equals(pass))
	{
	session.setAttribute("nombre",nombre); 
	session.setAttribute("pass",pass);
	response.sendRedirect("menuPrincipal.jsp"); 
	
	}

}
else
{
	response.sendRedirect("login.jsp"); 
		
	
}	


%>
<a href="menuPrincipal.jsp">menu principal</a>

</body>
</html>