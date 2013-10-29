<%@page import="Ajax.CacheAlumnos"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="Ajax.Curso" %>    
<%@ page import="Ajax.Alumno" %>      
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.css" />
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
			document.all.salida.innerHTML = "<b>"+ajax.responseText+"</b>";	
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
	ajax.open( "GET", "endpointMaterias.jsp?nombre="+document.all.nombre.value, true);
	ajax.send( "" );
}


function abmCursoCallback()
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

function abmCurso(opcion,codigo)
{
	// Creamos el control XMLHttpRequest segun el navegador en el que estemos 
	if( window.XMLHttpRequest )
		ajax = new XMLHttpRequest(); // No Internet Explorer
	else
		ajax = new ActiveXObject("Microsoft.XMLHTTP"); // Internet Explorer

	// Almacenamos en el control al funcion que se invocara cuando la peticion
	// cambie de estado	
	ajax.onreadystatechange = abmCursoCallback;

	// Enviamos la peticion
	ajax.open( "GET", "endPointCursos.jsp?opcion="+opcion, true);
	ajax.send( "" );
}



</script>
</head>
<body>
<a href="menuPrincipal.jsp">Menu principal</a><br>

<h1>Crear curso</h1>
<label>Nombre Curso</label><br>
<input type="text" id="alumno" name="alumno" >
<label>Seleccione alumnos</label>
<input type="button" onclick="agregarCurso();" value="Agregar Curso">

<div id="listaAlumnos">
<%

out.write("<h1>Cursos</h1>");
out.write("<div class='table-responsive'><table class='table'>");


out.write("<tr class='warning'>");
out.write("<td>Codigo</td>");
out.write("<td>Materia</td>");
out.write("<td>Año</td>");
out.write("<td>Editar</td>");
out.write("<td>Borrar</td>");
out.write("<td>Ver detalle</td>");
out.write("</tr>");
for(Curso curso:CacheAlumnos.getInstance().getListaCursos())
{		
	
		

		out.write("<tr>");
		out.write("<td>");
		out.print(curso.getCodigo());
		out.write("</td>");
				
		out.write("<td>");	
		out.print(curso.getMateria());
		out.write("</td>");
		
		out.write("<td>");		
		out.print(curso.getAño());
		out.write("</td>");
		
		out.write("<td>");		
		
	
		out.print("<input type='radio' name='modbor' class='editar'/>");
		
		out.write("</td>");
		
		out.write("<td>");	
		
		
		out.print("<input type='radio' name='modbor' class='borrar'/>");
		
		out.write("</td>");
		
		out.write("<td>");		
		out.write("<a href='detalleCurso.jsp?codigo=");
		out.print(curso.getCodigo());
		out.write("'>Ver detalle</a>");
		
		
		out.write("</td>");
		


		out.write("</tr>");
		
}


out.write("</table></div>");





/*parte vieja*/


	

%>
</div>

<div id="salida">

</div>


<!-- 

<br>



<br>
<h1>Borrar Curso</h1>
<input type="text" >
 <input type="button" onclick="borrarCurso();" value="Borrar Curso">
 <br>
 
 <h1>Editar Curso</h1><br>
 <select>
<%/*
out.print("<option>");
out.write("valor 1");

out.print("</option>");

*/%>
 

</select><br>
<label>Nuevo Nombre de curso</label>
<input type="text" id="nombreCursoNuevo">
<label>Nueva fecha de curso</label>
<input type="text" id="fechaCursoNueva" >
<label></label> 
<input type="button" onclick="editarCurso" value="Editar Curso">
-->
</body>
</html>