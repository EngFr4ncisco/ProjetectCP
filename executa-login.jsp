
<%@page import="com.mysql.cj.jdbc.result.CachedResultSetMetaData"%>
<%@page import="model.Usuario"%>
<%@page import="controller.UsuarioDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%

	String nome = request.getParameter("nome");
	String email = request.getParameter("email");
	String senha = request.getParameter("senha");
	
	if(nome != "" && nome != null && email != "" && email != null && senha != "" && senha != "null"){
		Usuario usuario = new Usuario();
		UsuarioDao dao = new UsuarioDao();
		usuario.setNome(nome);
		usuario.setEmail(email);
		usuario.setSenha(senha);
		dao.inserir(usuario);
	}else{
		response.sendRedirect("novaconta.jsp");
	}
	
%>
//atualizado
