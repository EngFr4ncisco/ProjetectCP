<%@page import="model.Usuario"%>
<%@page import="controller.UsuarioDao"%>
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
		response.sendRedirect("home.jsp");
	}else{
		response.sendRedirect("novaconta.jsp");
	}
	
%>
