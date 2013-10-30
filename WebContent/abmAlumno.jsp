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
	ajax.open( "GET", "endPointAlumno.jsp?nombre="+document.all.nombreAlumno.value+"&apellido="+document.all.apellido.value+"&legajo="+document.all.legajo.value, true);
	ajax.send( "" );
}
</script>
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.css" />
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" />

</head>
<body>
<div>
	<label>Crear Nuevo Alumno</label><br>
		<label>Legajo</label><br>
		<input type="text" name="legajo" id="legajo" /><br>
		<label>Nombre</label><br>
		<input type="text" name="nombreAlumno" id="nombreAlumno" /><br>
		<label>Apellido</label><br>
		<input type="text" name="apellido" id="apellido" /><br>
		<input type="button" value="Crear" onclick="abmAlumno(1,0);"/><br>		
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
		out.write("<h1>Cursos</h1>");
		out.write("<div class='table-responsive'><table class='table'>");
		out.write("<tr class='warning'>");
		out.write("<td>Legajo</td>");
		out.write("<td>Nombre</td>");
		out.write("<td>Apellido</td>");
		out.write("<td>Editar</td>");
		out.write("<td>Borrar</td>");
		
		out.write("</tr>");
		for(Alumno alumno:CacheAlumnos.getInstance().getListaAlumnos())
		{		
			
				

				out.write("<tr>");
				
						
				out.write("<td>");	
				out.print(alumno.getLegajo());
				out.write("</td>");
				
				out.write("<td>");	
				out.print(alumno.getNombre());
				out.write("</td>");
				
				out.write("<td>");	
				out.print(alumno.getApellido());
				out.write("</td>");
				
				out.write("<td>");		
				
				out.write("<input type='button'  value='Editar' onclick='abmAlumno(2,");
				out.print(alumno.getNombre());
			
				out.write(");'/>");	
				out.write("</td>");		
				out.write("<td>");	
				
				
				out.write("<input type='button'  value='Borrar' onclick='abmAlumno(3,");
				out.print(alumno.getLegajo());
			
				out.write(");'/>");
				
			
				out.write("</td>");
				
				out.write("<td>");		
				out.write("<a href='detalleCurso.jsp?codigo=");
				out.print(alumno.getLegajo());
				out.write("'>Ver detalle</a>");
				
				
				out.write("</td>");
				


				out.write("</tr>");
				
		}


		out.write("</table></div>");

		
		
		%>
		
		</div>
</body>
</html>