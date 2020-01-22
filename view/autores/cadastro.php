<section id="conteudo">
	<header class="column">
		<h1>Cadastrar Autor(a)</h1>
	</header>

	<form method="post" action="autores.php?acao=inserir_autor">
		<div class="campos">
			<div style="width:50%;">
				<label>Nome</label>
				<input name="nome" type="text" />
			</div>
		</div>

		<div class="campos">
			<div style="width:30%;">
				<label>E-mail</label>
				<input name="email" type="text" />
			</div>

			<div style="width:20%;">
				<label>Formação</label>
				<input name="formacao" type="text" />
			</div>
		</div>

		<div class="campos">
			<div style="width:50%;">
				<label>Foto do Autor(a) (Ex: autor1.jpg)</label>
				<input name="foto" type="text" />
			</div>
		</div>

		<div class="ferramentas borda cima">
			<input class="botao" type="submit" value="Salvar!" />
			<a href="autores.php" class="botao cinza">Voltar</a>
		</div>
	</form>
</section>