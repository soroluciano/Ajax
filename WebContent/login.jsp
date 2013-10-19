
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<style type="text/css">
<!--
@import url("/WebContent/css/style.css");
-->
</style>
<link rel="stylesheet" type="text/css" href="WebContent/css/style.css"/>
</head>
<body>

<form action="endpointLogin.jsp" id="form_login" class="" method="post">
<label>Usuario</label></br>
<input type="text" name="nombre" id="nombre"/></br>
<label>Contraseña</label></br>
<input type="password" name="pass" id="pass"/></br>

<input type="submit" value="Login">

</form>

</body>
</html>