<%@page import="Ajax.CacheAlumnos"%>
<%@page import="Ajax.Alumno"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script>
var ajax;

function abmAlumnoEditarCallback()
{
	// Comprobamos si la peticion se ha completado (estado 4)
	if( ajax.readyState == 4 )
	{
		// Comprobamos si la respuesta ha sido correcta (resultado HTTP 200)
		if( ajax.status == 200 )
		{
			// Escribimos el resultado en la pagina HTML mediante DHTML
			document.all.editar.innerHTML = "<b>"+ajax.responseText+"</b>";	
		}
	}
}

function abmAlumnoEditar(opcion,codigo)
{
	// Creamos el control XMLHttpRequest segun el navegador en el que estemos 
	if( window.XMLHttpRequest )
		ajax = new XMLHttpRequest(); // No Internet Explorer
	else
		ajax = new ActiveXObject("Microsoft.XMLHTTP"); // Internet Explorer

	// Almacenamos en el control al funcion que se invocara cuando la peticion
	// cambie de estado	
	
	if(opcion==4)
		{	ajax.onreadystatechange = abmAlumnoCallback;

		// Enviamos la peticion
		ajax.open( "GET", "endPointAlumno.jsp?nombre="+document.all.nombreAlumno2.value+"&apellido="+document.all.apellido2.value+"&legajo="+document.all.legajo2.value+"&opcion="+opcion+"&codigo="+codigo, true);
		ajax.send( "" );}
	else
		{	ajax.onreadystatechange = abmAlumnoEditarCallback;

		// Enviamos la peticion
		ajax.open( "GET", "endPointAlumno.jsp?nombre="+document.all.nombreAlumno.value+"&apellido="+document.all.apellido.value+"&legajo="+document.all.legajo.value+"&opcion="+opcion+"&codigo="+codigo, true);
		ajax.send( "" );}

}


function abmAlumnoCallback()
{
	// Comprobamos si la peticion se ha completado (estado 4)
	if( ajax.readyState == 4 )
	{
		// Comprobamos si la respuesta ha sido correcta (resultado HTTP 200)
		if( ajax.status == 200 )
		{
			// Escribimos el resultado en la pagina HTML mediante DHTML
			document.all.listaAlumnos.innerHTML = "<b>"+ajax.responseText+"</b>";	
		}
	}
}

function abmAlumno(opcion,codigo)
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
	ajax.open( "GET", "endPointAlumno.jsp?nombre="+document.all.nombreAlumno.value+"&apellido="+document.all.apellido.value+"&legajo="+document.all.legajo.value+"&opcion="+opcion+"&codigo="+codigo, true);
	ajax.send( "" );
}

function listarAlumnosCallback()
{
	// Comprobamos si la peticion se ha completado (estado 4)
	if( ajax.readyState == 4 )
	{
		// Comprobamos si la respuesta ha sido correcta (resultado HTTP 200)
		if( ajax.status == 200 )
		{
			// Escribimos el resultado en la pagina HTML mediante DHTML
			document.all.listaAlumnos.innerHTML = "<b>"+ajax.responseText+"</b>";	
		}
	}
}

function listarAlumnos()
{
	// Creamos el control XMLHttpRequest segun el navegador en el que estemos 
	if( window.XMLHttpRequest )
		ajax = new XMLHttpRequest(); // No Internet Explorer
	else
		ajax = new ActiveXObject("Microsoft.XMLHTTP"); // Internet Explorer

	// Almacenamos en el control al funcion que se invocara cuando la peticion
	// cambie de estado	
	ajax.onreadystatechange = listarAlumnosCallback;

	// Enviamos la peticion
	ajax.open( "GET", "listaAlumnos.jsp", true);
	ajax.send( "" );
}

</script>
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.css" />
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" />

</head>
<body onload="listarAlumnos();">
<a href="menuPrincipal.jsp">Menu Principal</a>
<div>
	<h3>Crear Nuevo Alumno</h3>
		<div>
			<div class='in'>Legajo
			<input type="text" name="legajo" id="legajo" />
			</div>
			<div class='in'>Nombre	
			<input type="text" name="nombreAlumno" id="nombreAlumno" />
			</div>
			<div class='in'>Apellido
			<input type="text" name="apellido" id="apellido" />
			</div>
		</div>
		<input type="button" value="Crear" onclick="abmAlumno(1,0);"/>
	
</div>
		<br>
		<div id="listaAlumnos">
		</div>
		<div id="editar">

		<a href="menuPrincipal.jsp">Menu Principal</a>
		</div>
</body>
</html>