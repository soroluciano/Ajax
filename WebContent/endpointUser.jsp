<%@page import="java.util.HashSet"%>
<%@page import="Ajax.CacheAlumnos"%>
<%@page import="Ajax.Materia" %>
<%@page import="Ajax.Usuario" %>
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


String nombreUsuario=(String)request.getParameter("nombreUsuario");
String pass =(String)request.getParameter("pass");




Usuario us = new Usuario();
us.setNombreUsuario(nombreUsuario);
us.setPassword(pass);

CacheAlumnos.getInstance().guardarUsuario(us);

for (Usuario usuario:CacheAlumnos.getInstance().getListaUsuarios())
{
	out.print(usuario.getNombreUsuario());
	out.write("<br>");


}





	

	

%>


</body>
</html>
