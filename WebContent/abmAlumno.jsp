<%@page import="Ajax.CacheAlumnos"%>
<%@page import="Ajax.Alumno"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<script>
var ajax;

function abmAlumnoCallback()
{
	// Comprobamos si la peticion se ha completado (estado 4)
	if( ajax.readyState == 4 )
	{
		// Comprobamos si la respuesta ha sido correcta (resultado HTTP 200)
		if( ajax.status == 200 )
		{
			// Escribimos el resultado en la pagina HTML mediante DHTML
			document.all.resultado.innerHTML = "<b>"+ajax.responseText+"</b>";	
		}
	}
}

function abmAlumno()
{
	// Creamos el control XMLHttpRequest segun el navegador en el que estemos 
	if( window.XMLHttpRequest )
		ajax = new XMLHttpRequest(); // No Internet Explorer
	else
		ajax = new ActiveXObject("Microsoft.XMLHTTP"); // Internet Explorer

	// Almacenamos en el control al funcion que se invocara cuando la peticion
	// cambie de estado	
	ajax.onreadystatechange = abmAlumnoCallback;

	// Enviamos la peticion
	ajax.open( "GET", "endPointAlumno.jsp?nombre="+document.all.nombreAlumno.value+"&apellido="+document.all.apellido.value+"&legajo="+document.all.legajo.value, true);
	ajax.send( "" );
}
</script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<div>
	<label>Crear Nuevo Alumno</label><br>
		<label>Nombre</label><br>
		<input type="text" name="nombreAlumno" id="nombreAlumno" /><br>
		<label>Apellido</label><br>
		<input type="text" name="apellido" id="apellido" /><br>
		<input type="text" name="legajo" id="legajo" /><br>		
		<input type="button" value="Crear" onclick="abmAlumno();"/><br>		
		</div>
		<br>
		<div id="resultado">
		<%
		
		for(Alumno alumno:CacheAlumnos.getInstance().getListaAlumnos())
		{
			out.print(alumno.getNombre());
			out.print("<br>");
			out.print(alumno.getApellido());
			out.print("<br>");
			out.print(alumno.getLegajo());
			
			
		}
		%>
		
		</div>
</body>
</html>