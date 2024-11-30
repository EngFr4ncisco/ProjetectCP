<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<head>
<meta charset="UTF-8">
<title>La Belle Parfum</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">  

<Link rel="shortcut icon" href="img/logolabelle.jpeg">
<link rel="stylesheet" href="./css/style.css">

</head>

<body>

	<div class=cadastro>
		<img src="img/logolabelle.jpeg" width="140px">
		<form action="executa-login.jsp" onsubmit="senhaOK" method="post">
			<h1>Nova conta</h1>
			<br>
			<input type="text" placeholder="Nome"  name="nome" maxlength"=70 required>
			<input type="email" placeholder="Email" name="email" maxlength="70" required>
			<br><br>
			<input type="password" placeholder="Senha" name="senha" minlength="6" maxlength="70" required onchange='confereSenha()'>
			<input type="password" placeholder="Confirmar senha" name="confirma" required onchange='confereSenha()'>
			<br><br>
			<button>Enviar</button>
		</form>
			<br><br>
			<p>www.labelleparfum@gmail.com</p>
	</div>
