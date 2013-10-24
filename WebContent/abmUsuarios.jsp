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
<a href="menuPrincipal.jsp">Menu principal</a>

<h1>Usuarios</h1>

<%

String nombre = (String)session.getAttribute("nombre");

if(nombre!=null)
{
/*crear usuarios */


out.print("bienvenido"+nombre);


/*borrar usuarios*/

/*editar usuarios*/

}
else
{
response.sendRedirect("login.jsp");	

}	
%>


</body>
</html>