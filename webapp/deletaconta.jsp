<%@page import="controller.UsuarioDao"%>
<%
	UsuarioDao dao = new UsuarioDao();
	String id = request.getParameter("id");
	dao.deletar(Integer.parseInt(id));
	response.sendRedirect("home.jsp");
%>
