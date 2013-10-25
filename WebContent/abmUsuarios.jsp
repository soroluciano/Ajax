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

function crearUsersCallback()
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

function crearUsers()
{
	// Creamos el control XMLHttpRequest segun el navegador en el que estemos 
	if( window.XMLHttpRequest )
		ajax = new XMLHttpRequest(); // No Internet Explorer
	else
		ajax = new ActiveXObject("Microsoft.XMLHTTP"); // Internet Explorer

	// Almacenamos en el control al funcion que se invocara cuando la peticion
	// cambie de estado	
	ajax.onreadystatechange = crearUsersCallback;

	// Enviamos la peticion
	ajax.open( "GET", "endpointUser.jsp?nombreUsuario="+document.all.nombreUsuario.value+"&pass="+document.all.pass.value, true);
	ajax.send( "" );
}
</script>
</head>
<body>
<a href="menuPrincipal.jsp">Menu principal</a>

<h1>Usuarios</h1>

<br>
		<label>Crear Nuevo Usuario</label><br>
		<label>Ingrese Usuario</label><br>
		<input type="text" name="nombreUsuario" id="nombreUsuario" /><br>
		<label>Ingrese contraseña</label><br>
		<input type="text" name="pass" id="pass" /><br>
		<input type="button" value="Crear" onclick="crearUsers();"/><br>
		
		<div id="resultado"></div>
			
		<%for(Usuario usuario:CacheAlumnos.getInstance().getListaUsuarios())
		{
			out.print(usuario.getNombreUsuario());
			out.write("<br>");


		}
		%>







</body>
</html>