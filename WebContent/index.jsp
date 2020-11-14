<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>::Tela Inicial::</title>
</head>
<body>
<h3>Tela Confidencial!</h3>

<%
String usuario = (String) session.getAttribute("usuarioLogado");

if (usuario == null) {
	response.sendRedirect("login.jsp");
}else {
	out.print("Seja Bem-vindo(a), " + usuario);
}
%>
<br>
<a href="encerrarSessao.jsp">Logout</a>

</body>
</html>

