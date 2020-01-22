<section id="conteudo">
	<header class="column">
		<h1>Livros</h1>
		<div class="ferramentas">
			<a href="livros.php?acao=cadastro" class="botao">Cadastrar novo livro</a>

			<form method="get" action="livros.php">
				<label>Filtrar por:</label>
				<select name="filtro_autor">
					<option value="0">Todos os autores</option>
                    <?php
                    foreach ($autores as $autor){
                        ?>
                        <option value="<?=$autor["id"];?>"><?=$autor["nome"];?></option>
                    <?php
                    }
                    ?>
				</select>
				<select name="filtro_editora">
					<option value="0">Todos as editoras</option>
					<?php
                    foreach ($editoras as $editora){
                        ?>
                        <option value="<?=$editora["id"];?>"><?=$editora["nome"];?></option>
                        <?php
                    }
                    ?>
				</select>
				<input class="botao" type="submit" value="Ok!" />
			</form>
		</div>
	</header>

	<ul class="lista">
	<?php
        foreach($livros as $livro){
            ?>
            <a href="livros.php?acao=detalhes&id=<?=$livro["id"];?>">
			<li>
				<img src="<?=$livro["fotoCapa"];?>" />
				<div>
					<h1><?=$livro["titulo"];?></h1>
					<time><?=$livro["ano"];?></time>
				</div>
			</li>
		</a>
            <?php
        }
        ?>
	</ul>
</section>