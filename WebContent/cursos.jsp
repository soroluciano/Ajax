<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<a href="menuPrincipal.jsp">Menu principal</a><br>


<label>Ingrese Alumno</label><br>
<input type="text" id="alumno" name="alumno" >
<input type="button" onclick="agregarAlumno();" value="Agregar Alumno">
 <input type="button" onclick="borrarAlumno();" value="Borrar Alumno">
 <br>
 
 <h1>Editar Curso</h1>
 <select>
<%
out.print("<option>");
out.write("valor 1");

out.print("</option>");
%>


</select><br>
<label>Nuevo Nombre de curso</label>
<input type="text" id="nombreCursoNuevo">
<label>Nueva fecha de curso</label>
<input type="text" id="fechaCursoNueva" >
<label></label> 
<input type="button" onclick="editarAlumno" value="Editar Alumno">

</body>
</html>