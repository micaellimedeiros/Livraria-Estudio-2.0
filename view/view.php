<!DOCTYPE html>
<html lang="pt-br">
	<head>
		<title>Livraria Estúdio</title>
		
		<link rel="stylesheet" type="text/css" href="../css/estilos.css" />
		<link href="https://fonts.googleapis.com/css?family=Dosis|Source+Sans+Pro&display=swap" rel="stylesheet">
	</head>
	<body>
		<header id="header">
			<div class="logotipo">
				<img src="../imagens/logo-livraria.png" />
				<div>
					<h1>Livraria Estúdio 2.0</h1>
					<span></span>
				</div>
			</div>
			<nav class="menu">
				<a href="livros.php"><span>Livros</span></a>
				<a href="autores.php"><span>Autores</span></a>
				<a href="editoras.php"><span>Editoras</span></a>
			</nav>
		</header>
		
		<div id="wrapper">
			<?php include($conteudo);?>
		</div>

		<footer>
			<img src="../imagens/micaellimedeiros.png" />
			<ul>
				<li><b>Aluno: </b>Micaelli Medeiros</li>
				<li><b>RA: </b>1817115-6</li>
				<li><b>Polo: </b>Campinas</li>
			</ul>
		</footer>
	</body>
</html>