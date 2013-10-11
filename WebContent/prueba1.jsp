<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<script>
var ajax;

function funcionCallback()
{
	// Comprobamos si la peticion se ha completado (estado 4)
	if( ajax.readyState == 4 )
	{
		// Comprobamos si la respuesta ha sido correcta (resultado HTTP 200)
		if( ajax.status == 200 )
		{
			// Escribimos el resultado en la pagina HTML mediante DHTML
			document.all.salida.innerHTML = "<b>"+ajax.responseText+"</b>";	
		}
	}
}

function recuperaResidencia()
{
	// Creamos el control XMLHttpRequest segun el navegador en el que estemos 
	if( window.XMLHttpRequest )
		ajax = new XMLHttpRequest(); // No Internet Explorer
	else
		ajax = new ActiveXObject("Microsoft.XMLHTTP"); // Internet Explorer

	// Almacenamos en el control al funcion que se invocara cuando la peticion
	// cambie de estado	
	ajax.onreadystatechange = funcionCallback;

	// Enviamos la peticion
	ajax.open( "GET", "prueba2.jsp?persona="+document.all.entrada.value, true );
	ajax.send( "" );
}
</script>

<img src="http://www.adictosaltrabajo.com/imagenes/adic000.jpg"/>

<br/>
<br/>

<input type="text" id="entrada" size="77"/>
<input type="button" value="Consultar" onclick="recuperaResidencia()"/>
<br/>
<br/>
Lugar de residencia: <span id="salida"></span>

<br/>
<br/>

<img src="http://www.autentia.com/img/autentia.gif"/>

</body>
</html>
</body>
</html>


