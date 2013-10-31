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
		//String codPar= request.getParameter("codigo");
		Integer opcion = Integer.valueOf(request.getParameter("opcion"));
		Integer codigo = Integer.valueOf(request.getParameter("codigo"));
		Integer codigoCurso = Integer.valueOf(request
				.getParameter("codigoCurso"));
		String nombreCurso = request.getParameter("nombreCurso");
		Integer anio = Integer.valueOf(request.getParameter("anio"));

		//int codInt= Integer.parseInt(codPar);
		//Integer codigo = (Integer)codInt;

		//out.print(codigo);
		//out.print(opcion);
		//out.print(codigo);

		switch (opcion) {
		case 1: {

			out.write("<div class='in'>Nombre<input type='text' id='codigoCurso'></div>");
			out.write("<div class='in'><input type='text' id='nombreCurso'/></div>");
			out.write("<div class='in'><input type='text' id='anio'></div>");
			out.write("<input type='button' onclick='(4,"+codigo+");'>");

			break;
		}
		case 2: {
			Curso curso = new Curso();
			curso = CacheAlumnos.getInstance().obtenerCursoConSuCodigo(
					codigo);
			HashSet<Curso> listaCursos = new HashSet<Curso>();
			listaCursos = CacheAlumnos.getInstance().getListaCursos();
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
			for (Curso cur : listaCursos) {

				out.write("<tr>");
				out.write("<td>");
				out.print(cur.getCodigo());
				out.write("</td>");

				out.write("<td>");
				out.print(cur.getMateria());
				out.write("</td>");

				out.write("<td>");
				out.print(cur.getAño());
				out.write("</td>");

				out.write("<td>");

				out.write("<input type='button'  value='Editar' onclick='abmCurso(1,");
				out.print(cur.getCodigo());

				out.write(");'/>");

				out.write("</td>");

				out.write("<td>");

				out.write("<input type='button'  value='Borrar' onclick='abmCurso(2,");
				out.print(cur.getCodigo());

				out.write(");'/>");

				out.write("</td>");

				out.write("<td>");
				out.write("<a href='detalleCurso.jsp?codigo=");
				out.print(cur.getCodigo());
				out.write("'>Ver detalle</a>");

				out.write("</td>");

				out.write("</tr>");
			}

			out.write("</table></div>");
			break;
		}

		case 3: {

			out.print("<br>");
			out.print(codigoCurso);

			out.print("<br>");
			out.print(nombreCurso);
			out.print("<br>");
			out.print(anio);

			Curso cur = new Curso();
			cur.setAño(anio);
			cur.setCodigo(codigoCurso);

			CacheAlumnos.getInstance().crearCurso(cur);

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

			for (Curso curs : CacheAlumnos.getInstance().getListaCursos()) {

				out.write("<tr>");
				out.write("<td>");
				out.print(curs.getCodigo());
				out.write("</td>");

				out.write("<td>");
				out.print(curs.getMateria());
				out.write("</td>");

				out.write("<td>");
				out.print(curs.getAño());
				out.write("</td>");

				out.write("<td>");

				out.write("<input type='button'  value='Editar' onclick='abmCurso(1,");
				out.print(curs.getCodigo());

				out.write(");'/>");

				out.write("</td>");

				out.write("<td>");

				out.write("<input type='button'  value='Borrar' onclick='abmCurso(2,");
				out.print(curs.getCodigo());

				out.write(");'/>");

				out.write("</td>");

				out.write("<td>");
				out.write("<a href='detalleCurso.jsp?codigo=");
				out.print(curs.getCodigo());
				out.write("'>Ver detalle</a>");

				out.write("</td>");

				out.write("</tr>");
			}
			out.write("</table></div>");
			break;
		}

		case 4: {
			out.print("<div>entro</div>");
			out.print(codigo);
			
			break;
		}

		}
	%>

</body>
</html>