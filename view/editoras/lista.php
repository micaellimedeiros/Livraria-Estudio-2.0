<section id="conteudo">
	<header class="column">
		<h1>Editoras</h1>
		
		<div class="ferramentas">
			<a href="editoras.php?acao=cadastro" class="botao">Cadastrar nova editora</a>
		</div>
	</header>

	<ul class="lista">
	<?php
        foreach ($editoras as $editora){
            ?>
            <a href="editoras.php?acao=detalhes&id=<?=$editora["id"];?>">
			<li>
				<div>
					<h1><?=$editora["nome"];?></h1>
					<address><?=$editora["cidade"];?></address>
				</div>
			</li>
		</a>
            <?php
        }
        ?>
	</ul>
</section>