<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

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



String nombrePersona=(String)session.getAttribute("nombre");
String pass=(String)session.getAttribute("pass");


String nombreMateria=(String)request.getParameter("nombreMateria");
String codigoMateria=request.getParameter("codigoMateria");


String  opcion= request.getParameter("opcion");




		Materia mat = new Materia ();	
		
		mat.setNombre(nombreMateria);
		mat.setCodigo(Integer.parseInt(codigoMateria));
		

		CacheAlumnos.getInstance().agregarMaterias(mat);
		
		
	

		

	for(Materia materia : CacheAlumnos.getInstance().getListaMaterias())
	{
		out.write("</br>");
		out.print(materia.toString());
		
		
		
		out.write("<a href='eliminar.jsp'>eliminar</a>");
		out.write("</br>");
		
		
	}
	

	

	
	
	





	
	
	
%>

</body>
</html>