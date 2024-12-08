<%@page import="java.util.ArrayList"%>
<%@page import="controller.UsuarioDao"%>
<%@page import="model.Usuario"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Lista de Usuários</title>

<Link rel="shortcut icon" href="img/logolabelle.jpeg">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
</head>
<body>
	<table class="table">
		<thead>
			<tr>
				<th scope="col">Id</th>
				<th scope="col">Nome</th>
				<th scope="col">E-mail</th>
				<th scope="col">Senha</th>
			</tr>
		</thead>
		<tbody>
			<%
				Usuario usuario = new Usuario();
				UsuarioDao dao = new UsuarioDao();
				
				ArrayList<Usuario> listar = dao.getLista();
				
				for(int num = 0; num < listar.size(); num++){
					out.println("<tr>");
					out.println("<td>"+listar.get(num).getId()+"</td>");
					out.println("<td>"+listar.get(num).getNome()+"</td>");
					out.println("<td>"+listar.get(num).getEmail()+"</td>");
					out.println("<td>"+listar.get(num).getSenha()+"</td>");
					out.println("<td><a href='updateconta.jsp?id="+listar.get(num).getId()+"&nome="+listar.get(num).getNome()+"&email="+listar.get(num).getEmail()+"&senha="+listar.get(num).getSenha()+"'>Edit</a></td>");
					out.println("<td><a href='deleteconta.jsp?id="+listar.get(num).getId()+"'>Delete</a></td>");
					out.println("</tr>");
				}
				
			%>
		</tbody>
	</table>
	<a href="novaconta.jsp" class="btn btn-primary">Novo Registro</a>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
		crossorigin="anonymous"></script>
</body>
</html>
