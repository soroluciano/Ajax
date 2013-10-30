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
String nombre = request.getParameter("nombre");
String apellido = request.getParameter("apellido");
Integer legajo = Integer.valueOf(request.getParameter("legajo"));
out.print(nombre);
out.print("<br>");
out.print(apellido);
out.print("<br>");
out.print(legajo);
out.print("<br>");
%>
</body>
</html>