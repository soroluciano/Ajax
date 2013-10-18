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

String nombrePersona=(String)session.getAttribute("nombre");
Integer tipo=(Integer)request.getAttribute("valor");
String nombreMateria=(String)request.getAttribute("nombreMateria");
Integer codigoMateria=(Integer)request.getAttribute("codigoMateria");

Alumno alumno = new Alumno();
alumno=CacheAlumnos.getInstance().ObtenerAlumno(nombrePersona);


switch (tipo)
	
{
	case 1 :
		/*agregar materia nueva*/
		
	Materia mat = new Materia ();	
		
	mat.setNombre(nombreMateria);
	mat.setCodigo(codigoMateria);
	CacheAlumnos.getInstance().ObtenerAlumno(nombrePersona).agregarMateria(nombreMateria, mat);
		
		break;
	
	
	case 2 :
	/*borrar materia*/
		break;
		
	
	
	case 3 :
	/* editar materia existente*/
		break;
	

	
		
	
	
}	



	for(Materia materia : alumno.obtenerMaterias().values())
	{
		out.write("</br>");
		out.print(materia.toString());
		
		
	
		
	}
	
	
	
%>

</body>
</html>