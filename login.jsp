<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>La Belle Parfum</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">  

<Link rel="shortcut icon" href="img/logolabelle.jpeg">

<style type="text/css">
	.body{
		font-family: Arial, Verdana, sans-serif;
		background-iamge: linear-gradions(45deg,purple, white);
	}
	
	.cadastro{
		background-color: rgba(255,255,255);
		position: absolute;
		top: 50%;
		left: 50%;
		transform: translate(-50%, -50%);
		padding: 80px;
		border-radius: 30px;
	}
	
	input{
		padding: 10px;
		border: 0;
		border-bottom: 2px solid rgb(200, 200, 200);
		outline: 0;
		font-size: 15px;
		background-color: 0;
	}
	button{
	background-color: pink;
	border: none;
	padding: 15px;
	width: 100%;
	border-radius: 12px;
	cursor: pointer;
	}
	button:hover{
		background-color: purple;
	}
	p{
		text-align: center;
	}
	img{
	border: solid 5px, black;
		position:relative;
		left: 50%;
		transform: translate(-50%, -5%);
	}
	
</style>

</head>

<body>

	<div class=cadastro>
		<img src="img/logolabelle.jpeg" width="140px">
		<form action="login.jsp" method="post">
			<h1>Seja Bem Vindo!</h1>
			<input type="email" placeholder="Email" required>
			<br><br>
			<input type="password" placeholder="Senha" required>
			<br><br>
			<button>Enviar</button>
			<p>Esqueceu a senha?</p>
		</form> 
			<br>
			<button>Criar conta</button> 
			<br><br>
			www.labelleparfum@gmail.com
	</div>

</body>
</html>
