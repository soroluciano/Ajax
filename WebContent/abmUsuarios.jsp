<%@page import="Ajax.CacheAlumnos"%>
<%@page import="Ajax.Usuario"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<script type="text/javascript">
var ajax;



function abmUsuariosEditarCallback()
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

function abmUsuariosEditar(opcion,codigo)
{
	// Creamos el control XMLHttpRequest segun el navegador en el que estemos 
	if( window.XMLHttpRequest )
		ajax = new XMLHttpRequest(); // No Internet Explorer
	else
		ajax = new ActiveXObject("Microsoft.XMLHTTP"); // Internet Explorer

	if(opcion==4)
		{	ajax.onreadystatechange = abmUsuariosCallback;

		// Enviamos la peticion
		ajax.open( "GET", "endpointUser.jsp?nombreUsuario="+document.all.nombreUsuario2.value+"&pass="+document.all.pass2.value+"&opcion="+opcion+"&codigo="+codigo+"&codigoUsuario="+document.all.codigoUsuario2.value, true);
		ajax.send( "" );}
	else
		{
		ajax.onreadystatechange = abmUsuariosEditarCallback;

		// Enviamos la peticion
		ajax.open( "GET", "endpointUser.jsp?nombreUsuario="+document.all.nombreUsuario.value+"&pass="+document.all.pass.value+"&opcion="+opcion+"&codigo="+codigo+"&codigoUsuario="+document.all.codigoUsuario.value, true);
		ajax.send( "" );
		}

}

function abmUsuariosCallback()
{
	// Comprobamos si la peticion se ha completado (estado 4)
	if( ajax.readyState == 4 )
	{
		// Comprobamos si la respuesta ha sido correcta (resultado HTTP 200)
		if( ajax.status == 200 )
		{
			// Escribimos el resultado en la pagina HTML mediante DHTML
			document.all.listaUsuarios.innerHTML = "<b>"+ajax.responseText+"</b>";	
		}
	}
}

function abmUsuarios(opcion,codigo)
{
	// Creamos el control XMLHttpRequest segun el navegador en el que estemos 
	if( window.XMLHttpRequest )
		ajax = new XMLHttpRequest(); // No Internet Explorer
	else
		ajax = new ActiveXObject("Microsoft.XMLHTTP"); // Internet Explorer

	// Almacenamos en el control al funcion que se invocara cuando la peticion
	// cambie de estado	
	ajax.onreadystatechange = abmUsuariosCallback;

	// Enviamos la peticion
	ajax.open( "GET", "endpointUser.jsp?nombreUsuario="+document.all.nombreUsuario.value+"&pass="+document.all.pass.value+"&opcion="+opcion+"&codigo="+codigo+"&codigoUsuario="+document.all.codigoUsuario.value, true);
	ajax.send( "" );
}



/* listar usuarios*/
function listarUsuariosCallback()
{
	// Comprobamos si la peticion se ha completado (estado 4)
	if( ajax.readyState == 4 )
	{
		// Comprobamos si la respuesta ha sido correcta (resultado HTTP 200)
		if( ajax.status == 200 )
		{
			// Escribimos el resultado en la pagina HTML mediante DHTML
			document.all.listaUsuarios.innerHTML = "<b>"+ajax.responseText+"</b>";	
		}
	}
}

function listarUsuarios()
{
	// Creamos el control XMLHttpRequest segun el navegador en el que estemos 
	if( window.XMLHttpRequest )
		ajax = new XMLHttpRequest(); // No Internet Explorer
	else
		ajax = new ActiveXObject("Microsoft.XMLHTTP"); // Internet Explorer

	// Almacenamos en el control al funcion que se invocara cuando la peticion
	// cambie de estado	
	ajax.onreadystatechange = listarUsuariosCallback;

	// Enviamos la peticion
	ajax.open( "GET", "listaUsuarios.jsp", true);
	ajax.send( "" );
}

</script>
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.css" />
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" />
</head>
<body onload="listarUsuarios();">
<a href="menuPrincipal.jsp">Menu principal</a>

<h1>Usuarios</h1>

<br>

		<div>
			<div id="izq_form">
			<h1>Crear nuevo usuario</h1>
			<div class='in'>Codigo
			<input type="text" name="codigoUsuario" id="codigoUsuario" /><br>
			</div>
			<div class='in'>Nombre	
			<input type="text" name="nombreUsuario" id="nombreUsuario" />
			</div>
			<div class='in'>Contraseña	
			<input type="text" name="pass" id="pass" /><br>
			</div>
			<input type="button" value="Crear" onclick="abmUsuarios(3,1);"/><br>
			</div>
		</div>
		
		
		
		
		
		<div id="listaUsuarios"></div>
			
		<div id="editar"></div>
	







</body>
</html>