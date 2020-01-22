<section id="conteudo">
	<header class="column">
		<h1>Autores(as)</h1>
		
		<div class="ferramentas">
			<a href="autores.php?acao=cadastro" class="botao">Cadastrar novo autor(a)</a>
		</div>
	</header>

	<ul class="lista">
	<?php
        foreach($autores as $autor){
            ?>
            <a href="autores.php?acao=detalhes&id=<?=$autor["id"];?>">
			<li>
				<img src="<?=$autor["foto"];?>" />
				<div>
					<h1><?=$autor["nome"];?></h1>
					<address><?=$autor["email"];?></address>
				</div>
			</li>
		</a>
       <?php
        }
        ?>
	</ul>
</section>