<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
</head>
<body>
<div align="center">
<form method="post" action="login.jsp">
<h2>Login</h2> <br>
Nome: <input type="text" name="usuario"/> <br><br>
Senha: <input type="password" name="senha"/> <br><br>
<input type="submit" value="Acessar"/>
</form>
</div>

<%
String usuario = request.getParameter("usuario");
String senha = request.getParameter("senha");

if (usuario != null && senha != null && !usuario.isEmpty() && !senha.isEmpty()) {
	session.setAttribute("usuarioLogado", usuario);
	response.sendRedirect("index.jsp"); //redireciona pagina
}
%>

</body>
</html>