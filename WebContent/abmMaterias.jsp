<%@page import="Ajax.CacheAlumnos"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@page import="java.util.HashMap"%>
<%@page import="Ajax.Alumno" %> 
<%@page import="Ajax.Materia" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.css" />
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" />


<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script>
var ajax;


function abmMateriasCallback()
{
	// Comprobamos si la peticion se ha completado (estado 4)
	if( ajax.readyState == 4 )
	{
		// Comprobamos si la respuesta ha sido correcta (resultado HTTP 200)
		if( ajax.status == 200 )
		{
			// Escribimos el resultado en la pagina HTML mediante DHTML
			document.all.listaMaterias.innerHTML = "<b>"+ajax.responseText+"</b>";	
		}
	}
}



function abmMaterias(opcion,codigo)
{
	
	// Creamos el control XMLHttpRequest segun el navegador en el que estemos 
	if( window.XMLHttpRequest )
		ajax = new XMLHttpRequest(); // No Internet Explorer
	else
		ajax = new ActiveXObject("Microsoft.XMLHTTP"); // Internet Explorer

	// Almacenamos en el control al funcion que se invocara cuando la peticion
	// cambie de estado	
	ajax.onreadystatechange = abmMateriasCallback;

	// Enviamos la peticion
	ajax.open( "GET", "endPointMaterias.jsp?nombreMateria="+document.all.nombreMateria.value+"&codigoMateria="+document.all.codigoMateria.value+
			"&opcion="+opcion+"&codigo="+codigo, true);
	ajax.send( "" );
}
/*
function abmMateriasEditarCallback()
{
	
	// Comprobamos si la peticion se ha completado (estado 4)
	if( ajax.readyState == 4 )
	{
		// Comprobamos si la respuesta ha sido correcta (resultado HTTP 200)
		if( ajax.status == 200 )
		{
			// Escribimos el resultado en la pagina HTML mediante DHTML
			document.all.edicion.innerHTML = "<b>"+ajax.responseText+"</b>";	
		}
	}
}



function abmMateriasEditar(opcion,codigo)
{
	// Creamos el control XMLHttpRequest segun el navegador en el que estemos 
	if( window.XMLHttpRequest )
		ajax = new XMLHttpRequest(); // No Internet Explorer
	else
		ajax = new ActiveXObject("Microsoft.XMLHTTP"); // Internet Explorer

	// Almacenamos en el control al funcion que se invocara cuando la peticion
	// cambie de estado	
	ajax.onreadystatechange = abmMateriasEditarCallback;

	// Enviamos la peticion
	ajax.open( "GET", "endPointMaterias.jsp?nombreMateria="+document.all.nombreMateria.value+"&codigoMateria="+document.all.codigoMateria.value+
			"&opcion="+valor+"&codigo="+codigo, true);
	ajax.send( "" );
}


*/

/*listar materias*/

function listarMateriasCallback()
{
	// Comprobamos si la peticion se ha completado (estado 4)
	if( ajax.readyState == 4 )
	{
		// Comprobamos si la respuesta ha sido correcta (resultado HTTP 200)
		if( ajax.status == 200 )
		{
			// Escribimos el resultado en la pagina HTML mediante DHTML
			document.all.listaMaterias.innerHTML = "<b>"+ajax.responseText+"</b>";	
		}
	}
}

function listarMaterias()
{
	// Creamos el control XMLHttpRequest segun el navegador en el que estemos 
	if( window.XMLHttpRequest )
		ajax = new XMLHttpRequest(); // No Internet Explorer
	else
		ajax = new ActiveXObject("Microsoft.XMLHTTP"); // Internet Explorer

	// Almacenamos en el control al funcion que se invocara cuando la peticion
	// cambie de estado	
	ajax.onreadystatechange = listarMateriasCallback;

	// Enviamos la peticion
	ajax.open( "GET", "ListaMaterias.jsp", true);
	ajax.send( "" );
}



</script>
</head>
<body onload="listarMaterias();">

<a href="menuPrincipal.jsp">Menu principal</a>





<div>
			<div id="izq_form">
			<h1>Crear nueva materia</h1>
			<div class='in'>Codigo
			<input type="text" name="codigoMateria" id="codigoMateria" />
			</div>
			<div class='in'>Nombre Materia	
			<input type="text" name="nombreMateria" id="nombreMateria" />
			</div>
			
		</div>
			
</div>

<input type="button" onclick="abmMaterias(3,1);" value="agregar"/>

<div id="listaMaterias"></div>


	<div id="edicion"></div>







</body>
</html>