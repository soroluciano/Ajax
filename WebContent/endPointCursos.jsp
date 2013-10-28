<%@page import="Ajax.CacheAlumnos"%>
<%@page import="Ajax.Curso"%>
<%@page import="Ajax.Alumno"%>
<%@page import="java.util.HashSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
String codPar= request.getParameter("codigo");
String opcion= request.getParameter("opcion");

int codInt= Integer.parseInt(codPar);
Integer codigo = (Integer)codInt;

out.print(codigo);
out.print(opcion);

/*
if(opcion=="editar")
{
	
out.print("editar");
}	
else if (opcion=="borrar")
{
	Curso curso = new Curso();
	curso=CacheAlumnos.getInstance().obtenerCursoConSuCodigo(codigo);
	HashSet<Curso> listaCursos = new HashSet<Curso>();
	listaCursos=CacheAlumnos.getInstance().getListaCursos();
	listaCursos.remove(curso);
	
	
	
	
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
	for(Curso cur:listaCursos)
	{		
		
			

			out.write("<tr>");
			out.write("<td>");
			out.print(cur.getCodigo());
			out.write("</td>");
					
			out.write("<td>");	
			out.print(curso.getMateria());
			out.write("</td>");
			
			out.write("<td>");		
			out.print(curso.getAño());
			out.write("</td>");
			
			out.write("<td>");		
			out.print("<input type='button' onclick='abmCurso('editar',"+cur.getCodigo()+")'/>");
			out.write("</td>");
			
			out.write("<td>");		
			out.print("<input type='button' onclick='abmCurso('borrar',"+cur.getCodigo()+")'/>");
			out.write("</td>");
			
			out.write("<td>");		
			out.write("<a href='detalleCurso.jsp?codigo=");
			out.print(curso.getCodigo());
			out.write("'>Ver detalle</a>");
			
			
			out.write("</td>");
			


			out.write("</tr>");
			
	}


	out.write("</table></div>");



}	
	*/

%>

</body>
</html>