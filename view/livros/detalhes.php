<section id="conteudo">
	<header class="column">
		<h1>Detalhes do livro</h1>
	</header>
	
	<div class="detalhes">
		<img src="<?=$livro["fotoCapa"];?>" />
		<ul>
			<li><b>Título: </b><?=$livro["titulo"];?></li>
			<li><b>Total de Páginas: </b><?=$livro["totalPaginas"];?></li>
			<li><b>Edição: </b><?=$livro["edicao"];?></li>
			<li><b>ISBN: </b><?=$livro["isbn"];?></li>
			<li><b>Ano: </b><?=$livro["ano"];?></li>
			<li><b>Editora: </b><?=$livro["nome"];?></li>
			<li><b>Autor(es): </b><?php foreach ($autores as $autor){
                echo "<br/>";
                echo $autor["nome"];
            }
                ?>
            </li>
		</ul>
	</div>

	<div class="ferramentas">
		<a href="livros.php" class="botao">Voltar</a>
	</div>
</section>