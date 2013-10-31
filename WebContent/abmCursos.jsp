<%@page import="Ajax.CacheAlumnos"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="Ajax.Curso"%>
<%@ page import="Ajax.Alumno"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.css" />
<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/css/style.css" />
<script>
var ajax;

function abmCursoCallback()
{
	// Comprobamos si la peticion se ha completado (estado 4)
	if( ajax.readyState == 4 )
	{
		// Comprobamos si la respuesta ha sido correcta (resultado HTTP 200)
		if( ajax.status == 200 )
		{
			// Escribimos el resultado en la pagina HTML mediante DHTML
			document.all.listaCursos.innerHTML = "<b>"+ajax.responseText+"</b>";	
		}
	}
}

function abmCurso(opcion,codigo)
{
	var codigoCurso=document.getElementById("codigoCurso").value;	
	var nombreCurso=document.getElementById("nombreCurso").value;
	var anio=document.getElementById("anio").value;
	
	// Creamos el control XMLHttpRequest segun el navegador en el que estemos 
	if( window.XMLHttpRequest )
		ajax = new XMLHttpRequest(); // No Internet Explorer
	else
		ajax = new ActiveXObject("Microsoft.XMLHTTP"); // Internet Explorer

	// Almacenamos en el control al funcion que se invocara cuando la peticion
	// cambie de estado	
	ajax.onreadystatechange = abmCursoCallback;

	// Enviamos la peticion
	ajax.open( "GET", "endPointCursos.jsp?opcion="+opcion+"&codigo="+codigo+"&codigoCurso="+codigoCurso+"&nombreCurso="+nombreCurso+"&anio="+anio, true);
	ajax.send( "" );
}
function abmCursoEditarCallback()
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

function abmCursoEditar(opcion,codigo)
{
	var codigoCurso=document.getElementById("codigoCurso").value;	
	var nombreCurso=document.getElementById("nombreCurso").value;
	var anio=document.getElementById("anio").value;
	
	// Creamos el control XMLHttpRequest segun el navegador en el que estemos 
	if( window.XMLHttpRequest )
		ajax = new XMLHttpRequest(); // No Internet Explorer
	else
		ajax = new ActiveXObject("Microsoft.XMLHTTP"); // Internet Explorer

	// Almacenamos en el control al funcion que se invocara cuando la peticion
	// cambie de estado	
	ajax.onreadystatechange = abmCursoEditarCallback;

	// Enviamos la peticion
	ajax.open( "GET", "endPointCursos.jsp?opcion="+opcion+"&codigo="+codigo+"&codigoCurso="+codigoCurso+"&nombreCurso="+nombreCurso+"&anio="+anio, true);
	ajax.send( "" );
}

function listarCursosCallback()
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

function listarCursos()
{

	
	// Creamos el control XMLHttpRequest segun el navegador en el que estemos 
	if( window.XMLHttpRequest )
		ajax = new XMLHttpRequest(); // No Internet Explorer
	else
		ajax = new ActiveXObject("Microsoft.XMLHTTP"); // Internet Explorer

	// Almacenamos en el control al funcion que se invocara cuando la peticion
	// cambie de estado	
	ajax.onreadystatechange = abmCursoEditarCallback;

	// Enviamos la peticion
	ajax.open( "GET", "listaCursos.jsp", true);
	ajax.send( "" );
}
	

</script>
</head>
<body onload="listarCursos();">
	<a href="menuPrincipal.jsp">Menu principal</a>
	<br>

	<h1>Crear curso</h1>

	<div id="formuAlumnos">
		<div id="izq_form">
			<div class='in'>
				Codigo <input type="text" name="codigoCurso" id="codigoCurso" />
			</div>
			<div class='in'>
				Nombre Curso <input type="text" name="nombreCurso" id="nombreCurso" />
			</div>
			<div class='in'>
				Año <input type="text" name="anio" id="anio" />
			</div>
		</div>

		<input type="button" onclick="abmCurso(3,1);" value="Agregar Curso" />
	</div>


	<div id="nuevoCurso2"></div>
	
	<div id="agregarListaAlumnos"></div>


	<div id="listaCursos"></div>

	<div id="edicion"></div>







	<a href="menuPrincipal.jsp">Menu principal</a>

</body>
</html>