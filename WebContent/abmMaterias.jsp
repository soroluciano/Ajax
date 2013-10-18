<%@page import="Ajax.CacheAlumnos"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@page import="java.util.HashMap"%>
<%@page import="Ajax.Alumno" %> 
<%@page import="Ajax.Materia" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">

#codigoMateria
{
width:10px;
}

</style>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script>
var ajax;

function recuperarMateriasCallback()
{
	// Comprobamos si la peticion se ha completado (estado 4)
	if( ajax.readyState == 4 )
	{
		// Comprobamos si la respuesta ha sido correcta (resultado HTTP 200)
		if( ajax.status == 200 )
		{
			// Escribimos el resultado en la pagina HTML mediante DHTML
			document.all.materias.innerHTML = "<b>"+ajax.responseText+"</b>";	
		}
	}
}

function recuperarMaterias()
{
	// Creamos el control XMLHttpRequest segun el navegador en el que estemos 
	if( window.XMLHttpRequest )
		ajax = new XMLHttpRequest(); // No Internet Explorer
	else
		ajax = new ActiveXObject("Microsoft.XMLHTTP"); // Internet Explorer

	// Almacenamos en el control al funcion que se invocara cuando la peticion
	// cambie de estado	
	ajax.onreadystatechange = recuperarMateriasCallback;

	// Enviamos la peticion
	ajax.open( "GET", "endPointListaMaterias.jsp", true);
	ajax.send( "" );
}

function avmRecuperarMateriasCallback()
{
	// Comprobamos si la peticion se ha completado (estado 4)
	if( ajax.readyState == 4 )
	{
		// Comprobamos si la respuesta ha sido correcta (resultado HTTP 200)
		if( ajax.status == 200 )
		{
			// Escribimos el resultado en la pagina HTML mediante DHTML
			document.all.materias.innerHTML = "<b>"+ajax.responseText+"</b>";	
		}
	}
}



function avmMateria()
{
	// Creamos el control XMLHttpRequest segun el navegador en el que estemos 
	if( window.XMLHttpRequest )
		ajax = new XMLHttpRequest(); // No Internet Explorer
	else
		ajax = new ActiveXObject("Microsoft.XMLHTTP"); // Internet Explorer

	// Almacenamos en el control al funcion que se invocara cuando la peticion
	// cambie de estado	
	ajax.onreadystatechange = avmRecuperarMateriasCallback;

	// Enviamos la peticion
	ajax.open( "GET", "endPointAvm.jsp?nombreMateria="+document.all.nombreMateria.value+"&codigoMateria="+document.all.codigoMateria.value, true);
	ajax.send( "" );
}



</script>
</head>
<body onload="recuperarMaterias();">

<a href="menuPrincipal.jsp">Menu principal</a>

<label>Agregar nueva materia</label><br><br>

<label>Codigo Materia:</label>
<input type="text" id="codigoMateria" name="codigoMateria"/>
<br>
<label>Nombre Materia:</label>
<input type="text" id="nombreMateria" name="nombreMateria" />
<input type="button" onclick="avmMateria();" value="agregar"/>



<div id="materias"></div>




</body>
</html>