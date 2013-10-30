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
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.css" />
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" />
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
			document.all.listaAlumnos.innerHTML = "<b>"+ajax.responseText+"</b>";	
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

function editBorr(opcion,algo)
{
	
	//var partes=valor.split("/");
	
	
	document.getElementById("salida").innerHTML=opcion+"<p>"+algo+"</p>";

}







</script>
</head>
<body>
<a href="menuPrincipal.jsp">Menu principal</a><br>

<h1>Crear curso</h1>

<div id="formuAlumnos">
<div id="izq_form">
<label>Codigo</label><br>
<input type="text" id="codigoCurso" name="alumno"/>
<label>Nombre Curso</label><br>
<input type="text" id="nombreCurso" name="nombreCurso"/>
<label>Año</label><br>
<input type="text" id="anio" name="anio"/>

<input type="button" onclick="abmCurso(3,'null');" value="Agregar Curso">
</div>
	
		<div id="nuevoCurso">

		</div>
		<div id="nuevoCurso2">

		</div>
		<div id="agregarListaAlumnos"> 

		</div>	



	</div>








<div id="listaAlumnos">
<%

out.write("<h1>Cursos</h1>");
out.write("<div class='table-responsive'><table class='table'>");
out.write("<tr class='warning'>");
out.write("<td>Materia</td>");
out.write("<td>Editar</td>");
out.write("<td>Borrar</td>");
out.write("<td>Ver detalle</td>");
out.write("</tr>");
for(Curso curso:CacheAlumnos.getInstance().getListaCursos())
{		
	
		

		out.write("<tr>");
		
				
		out.write("<td>");	
		out.print(curso.getMateria());
		out.write("</td>");
		
		
		out.write("<td>");		
		
		out.write("<input type='button'  value='Editar' onclick='abmCurso(1,");
		out.print(curso.getCodigo());
	
		out.write(");'/>");	
		out.write("</td>");		
		out.write("<td>");	
		
		
		out.write("<input type='button'  value='Borrar' onclick='abmCurso(2,");
		out.print(curso.getCodigo());
	
		out.write(");'/>");
		
	
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



</body>
</html>