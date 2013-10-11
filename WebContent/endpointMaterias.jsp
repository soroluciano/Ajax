<%@page import="java.util.HashMap"%>
<%@page import="Ajax.CacheAlumnos"%>
<%@page import="Ajax.Materia" %>
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


String nombrePersona=request.getParameter("nombre");
session.setAttribute("nombre", nombrePersona);

nombrePersona="pepe";

/*out.write(nombrePersona);*/

HashMap<String,Materia> listadoMateria2=new	HashMap<String,Materia>();	

listadoMateria2=CacheAlumnos.getInstance().ObtenerAlumno(nombrePersona).obtenerMaterias();




	if(listadoMateria2!=null)
	{
 
	
	
		for(Materia materia :listadoMateria2.values())
		{
		out.print(materia.toString());
		out.write("</br>");	
		}
	}
	
	 
	

	

%>


</body>
</html>
