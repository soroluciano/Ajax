<%@page import="java.util.HashSet"%>
<%@page import="Ajax.CacheAlumnos"%>
<%@page import="Ajax.Materia" %>
<%@page import="Ajax.Usuario" %>
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


String nombreUsuario=(String)request.getParameter("nombreUsuario");
String pass =(String)request.getParameter("pass");
Integer codigo =Integer.valueOf(request.getParameter("codigo"));
Integer codigoUsuario =Integer.valueOf(request.getParameter("codigoUsuario"));
Integer opcion =Integer.valueOf(request.getParameter("opcion"));

out.print(codigoUsuario);
switch (opcion) {
case 1: {

	for (Usuario user : CacheAlumnos.getInstance().getListaUsuarios()) {
		if (user.getCodigo().equals(codigo)) {
			out.write("<div class='in'>Codigo<input type='text' id='codigoUsuario2' value="+user.getCodigo()+"></div>");
			out.write("<div class='in'>Nombre<input type='text' id='nombreUsuario2' value="+ user.getNombreUsuario()+"></div>");
			out.write("<div class='in'>Password<input type='text' id='pass2' value="+ user.getPassword()+"></div>");
			out.write("<div><input type='button' value='Guardar' onclick='abmUsuariosEditar(4,"+ user.getCodigo()+");'></div>");
		}
		
	}

	break;
}
case 2: {
	Usuario usu = new Usuario();
	
	usu = CacheAlumnos.getInstance().obtenerUsuarioConSuCodigo(codigo);
	HashSet<Usuario> listaUsuarios = new HashSet<Usuario>();
	 CacheAlumnos.getInstance().getListaMaterias().remove(usu);
	

	

	out.write("<h1>Usuarios</h1>");
	out.write("<div class='table-responsive'><table class='table'>");
	out.write("<tr class='warning'>");
	out.write("<td>Codigo</td>");
	out.write("<td>Nombre</td>");
	out.write("<td>Editar</td>");
	out.write("<td>Borrar</td>");

	out.write("</tr>");

	for (Usuario user2 : CacheAlumnos.getInstance().getListaUsuarios()) {

		out.write("<tr>");

		out.write("<td>");
		out.print(user2.getCodigo());
		out.write("</td>");

		out.write("<td>");
		out.print(user2.getNombreUsuario());
		out.write("</td>");

		out.write("<td>");

		out.write("<input type='button'  value='Editar' onclick='abmUsuariosEditar(1,");
		out.print(user2.getCodigo());

		out.write(");'/>");

		out.write("</td>");

		out.write("<td>");

		out.write("<input type='button'  value='Borrar' onclick='abmUsuarios(2,");
		out.print(user2.getCodigo());

		out.write(");'/>");

		out.write("</td>");

		out.write("</tr>");

	}

	out.write("</table></div>");

	break;
}

case 3: {

	Usuario usuario3= new Usuario();
	usuario3.setCodigo(codigoUsuario);	
	usuario3.setNombreUsuario(nombreUsuario);
	usuario3.setPassword(pass);
	CacheAlumnos.getInstance().crearUsuario(usuario3);

	

	out.write("<h1>Usuario</h1>");
	out.write("<div class='table-responsive'><table class='table'>");
	out.write("<tr class='warning'>");
	out.write("<td>Codigo</td>");
	out.write("<td>Nombre</td>");
	out.write("<td>Editar</td>");
	out.write("<td>Borrar</td>");

	out.write("</tr>");

	for (Usuario user : CacheAlumnos.getInstance().getListaUsuarios()) {

		out.write("<tr>");

		out.write("<td>");
		out.print(user.getCodigo());
		out.write("</td>");

		out.write("<td>");
		out.print(user.getNombreUsuario());
		out.write("</td>");

		out.write("<td>");

		out.write("<input type='button'  value='Editar' onclick='abmUsuariosEditar(1,");
		out.print(user.getCodigo());

		out.write(");'/>");

		out.write("</td>");

		out.write("<td>");

		out.write("<input type='button'  value='Borrar' onclick='abmUsuarios(2,");
		out.print(user.getCodigo());

		out.write(");'/>");

		out.write("</td>");

		out.write("</tr>");

	}

	out.write("</table></div>");

	break;
}

case 4: {
	
	
	
	Usuario usu = new Usuario();
			usu = CacheAlumnos.getInstance().obtenerUsuarioConSuCodigo(codigoUsuario);

			/*borrando materia anterior*/
			CacheAlumnos.getInstance().getListaMaterias().remove(usu);
			
			/*creando materia nueva*/
			Usuario usuario = new Usuario();
			usuario.setCodigo(codigoUsuario);
			usuario.setNombreUsuario(nombreUsuario);
			usuario.setPassword(pass);
			
			CacheAlumnos.getInstance().crearUsuario(usuario);

	
			
			/*impresion de las materias de la cache*/
			out.write("<h1>Usuarios</h1>");
			out.write("<div class='table-responsive'><table class='table'>");
			out.write("<tr class='warning'>");
			out.write("<td>Codigo</td>");
			out.write("<td>Nombre</td>");
			out.write("<td>Password</td>");
			out.write("<td>Editar</td>");
			out.write("<td>Borrar</td>");

			out.write("</tr>");

			for (Usuario user : CacheAlumnos.getInstance().getListaUsuarios()) {

				out.write("<tr>");

				out.write("<td>");
				out.print(user.getCodigo());
				out.write("</td>");

				out.write("<td>");
				out.print(user.getNombreUsuario());
				out.write("</td>");

				out.write("<td>");
				out.print(user.getPassword());
				out.write("</td>");
				
				out.write("<td>");

				out.write("<input type='button'  value='Editar' onclick='abmUsuariosEditar(1,");
				out.print(user.getCodigo());

				out.write(");'/>");

				out.write("</td>");

				out.write("<td>");

				out.write("<input type='button'  value='Borrar' onclick='abmUsuarios(2,");
				out.print(user.getCodigo());

				out.write(");'/>");

				out.write("</td>");

				out.write("</tr>");

			}
			out.write("</table></div>");

	
			
			break;

	}
	}





	

	

%>


</body>
</html>
