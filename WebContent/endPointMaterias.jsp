<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="Ajax.CacheAlumnos"%>
<%@page import="Ajax.Materia" %>
<%@page import="Ajax.Alumno" %>
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
String nombreMateria=(String)request.getParameter("nombreMateria");
Integer codigoMateria=Integer.valueOf(request.getParameter("codigoMateria"));


	out.print(opcion);
	out.print(codigo);
	out.print(nombreMateria);
	out.print(codigoMateria);
	
		/*
		switch (opcion) {
		case 1: {

			
			for(Materia mater :CacheAlumnos.getInstance().getListaMaterias())
			{
				if(mater.getCodigo().equals(codigo))
				{
					out.write("<div class='in'>Codigo<input type='text' id='codigoCurso' value="+mater.getCodigo()+"></div>");
					out.write("<div class='in'>Nombre del Curso<input type='text' id='nombreCurso' value="+mater.getNombre()+"/></div>");
					out.write("<div><input type='button' value='Guardar' onclick='(4,"+mater.getCodigo()+");'></div>");
				}
				
			}
			*/

			/*break;
		}
		case 2: {
			Materia mat= new Materia();
			mat = CacheAlumnos.getInstance().obtenerMateriaConSuCodigo(codigo);
			HashSet<Materia> listaMaterias = new HashSet<Materia>();
			listaMaterias = CacheAlumnos.getInstance().getListaMaterias();
			listaMaterias.remove(mat);

	
			
			response.sendRedirect("ListaMaterias.jsp");

			break;
		}*/

	/*	case 3: {

			Materia materia = new Materia();
			materia.setCodigo(codigoMateria);
			materia.setNombre(nombreMateria);
			CacheAlumnos.getInstance().agregarMaterias(materia);
			
			response.sendRedirect("ListaMaterias.jsp");

			
			break;
		}*/
/*
	/*	case 4: {
		
			for(Materia mater :CacheAlumnos.getInstance().getListaMaterias())
			{
			
				if(mater.getCodigo().equals(codigo))
				{
					CacheAlumnos.getInstance().getListaMaterias().remove(mater);
					Materia materia1= new Materia();
					materia1.setCodigo(codigo);
					materia1.setNombre(nombreMateria);
					CacheAlumnos.getInstance().getListaMaterias().add(materia1);
					response.sendRedirect("ListaMaterias.jsp");
					
				}
				
			}
			
			
			break;
		}

		}
		*/

	
	

	

	

	





	
	
	
%>

</body>
</html>