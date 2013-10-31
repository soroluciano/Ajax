<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="Ajax.CacheAlumnos"%>
<%@page import="Ajax.Materia"%>
<%@page import="Ajax.Alumno"%>
<%@page import="java.util.HashSet"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
		Integer opcion = Integer.valueOf(request.getParameter("opcion"));
		Integer codigo = Integer.valueOf(request.getParameter("codigo"));
		String nombreMateria = (String) request.getParameter("nombreMateria");
		Integer codigoMateria = Integer.valueOf(request.getParameter("codigoMateria"));

		
		
		 
		

		switch (opcion) {
		case 1: {

			for (Materia mater : CacheAlumnos.getInstance().getListaMaterias()) {
				if (mater.getCodigo().equals(codigo)) {
					out.write("<div class='in'>Codigo<input type='text' id='codigoMateria2' value="+mater.getCodigo()+"></div>");
					out.write("<div class='in'>Nombre <input type='text' id='nombreMateria2' value="+ mater.getNombre()+"></div>");
					out.write("<div><input type='button' value='Guardar' onclick='abmMaterias(4,"+ mater.getCodigo()+")'></div>");
				}
				
			}

			break;
		}
		case 2: {
			Materia mat = new Materia();
			mat = CacheAlumnos.getInstance().obtenerMateriaConSuCodigo(
					codigo);
			HashSet<Materia> listaMaterias = new HashSet<Materia>();
			listaMaterias = CacheAlumnos.getInstance().getListaMaterias();
			listaMaterias.remove(mat);

			

			out.write("<h1>Materias</h1>");
			out.write("<div class='table-responsive'><table class='table'>");
			out.write("<tr class='warning'>");
			out.write("<td>Codigo</td>");
			out.write("<td>Nombre</td>");
			out.write("<td>Editar</td>");
			out.write("<td>Borrar</td>");

			out.write("</tr>");

			for (Materia materia2 : CacheAlumnos.getInstance().getListaMaterias()) {

				out.write("<tr>");

				out.write("<td>");
				out.print(materia2.getCodigo());
				out.write("</td>");

				out.write("<td>");
				out.print(materia2.getNombre());
				out.write("</td>");

				out.write("<td>");

				out.write("<input type='button'  value='Editar' onclick='abmMateriasEditar(1,");
				out.print(materia2.getCodigo());

				out.write(");'/>");

				out.write("</td>");

				out.write("<td>");

				out.write("<input type='button'  value='Borrar' onclick='abmMaterias(2,");
				out.print(materia2.getCodigo());

				out.write(");'/>");

				out.write("</td>");

				out.write("</tr>");

			}

			out.write("</table></div>");

			break;
		}

		case 3: {

			Materia materia3 = new Materia();
			materia3.setCodigo(codigoMateria);
			materia3.setNombre(nombreMateria);
			CacheAlumnos.getInstance().agregarMaterias(materia3);

			

			out.write("<h1>Materias</h1>");
			out.write("<div class='table-responsive'><table class='table'>");
			out.write("<tr class='warning'>");
			out.write("<td>Codigo</td>");
			out.write("<td>Nombre</td>");
			out.write("<td>Editar</td>");
			out.write("<td>Borrar</td>");

			out.write("</tr>");

			for (Materia materia4 : CacheAlumnos.getInstance()
					.getListaMaterias()) {

				out.write("<tr>");

				out.write("<td>");
				out.print(materia4.getCodigo());
				out.write("</td>");

				out.write("<td>");
				out.print(materia4.getNombre());
				out.write("</td>");

				out.write("<td>");

				out.write("<input type='button'  value='Editar' onclick='abmMateriasEditar(1,");
				out.print(materia4.getCodigo());

				out.write(");'/>");

				out.write("</td>");

				out.write("<td>");

				out.write("<input type='button'  value='Borrar' onclick='abmMaterias(2,");
				out.print(materia4.getCodigo());

				out.write(");'/>");

				out.write("</td>");

				out.write("</tr>");

			}

			out.write("</table></div>");

			break;
		}

		case 4: {

			for (Materia mater1 : CacheAlumnos.getInstance().getListaMaterias()) {

				if (mater1.getCodigo().equals(codigoMateria)) {
					Materia mat12 = new Materia(); 
					mat12 = CacheAlumnos.getInstance().obtenerMateriaConSuCodigo(codigo);
					CacheAlumnos.getInstance().getListaMaterias().remove(mat12);
					
					
					Materia materia1 = new Materia();
					materia1.setCodigo(codigoMateria);
					materia1.setNombre(nombreMateria);
					CacheAlumnos.getInstance().getListaMaterias().add(materia1);

					out.write("<h1>Materias</h1>");
					out.write("<div class='table-responsive'><table class='table'>");
					out.write("<tr class='warning'>");
					out.write("<td>Codigo</td>");
					out.write("<td>Nombre</td>");
					out.write("<td>Editar</td>");
					out.write("<td>Borrar</td>");

					out.write("</tr>");

					for (Materia materia : CacheAlumnos.getInstance().getListaMaterias()) {

						out.write("<tr>");

						out.write("<td>");
						out.print(materia.getCodigo());
						out.write("</td>");

						out.write("<td>");
						out.print(materia.getNombre());
						out.write("</td>");

						out.write("<td>");

						out.write("<input type='button'  value='Editar' onclick='abmMateriasEditar(1,");
						out.print(materia.getCodigo());

						out.write(");'/>");

						out.write("</td>");

						out.write("<td>");

						out.write("<input type='button'  value='Borrar' onclick='abmMaterias(2,");
						out.print(materia.getCodigo());

						out.write(");'/>");

						out.write("</td>");

						out.write("</tr>");

					}

					out.write("</table></div>");

				}

			}

			break;
		}

		}
	%>

</body>
</html>