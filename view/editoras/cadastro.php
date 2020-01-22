<section id="conteudo">
	<header class="column">
		<h1>Cadastrar Editora</h1>
	</header>

	<form method="post" action="editoras.php?acao=inserir_editora">
		<div class="campos">
			<div style="width:50%;">
				<label>Nome</label>
				<input name="nome" type="text" />
			</div>
		</div>

		<div class="campos">
			<div style="width:30%;">
				<label>Endereço</label>
				<input name="endereco" type="text" />
			</div>
			
			<div style="width:20%;">
				<label>Cidade</label>
				<input name="cidade" type="text" />
			</div>
		</div>
		
		<div class="campos">
			<div style="width:30%;">
				<label>E-mail</label>
				<input name="email" type="text" />
			</div>
			
			<div style="width:20%;">
				<label>Telefone</label>
				<input name="telefone" type="text" />
			</div>
		</div>

		<div class="campos">
			<div style="width:50%;">
				<label>Logotipo (Ex: editora1.jpg)</label>
				<input name="logo" type="text" />
			</div>
		</div>

		<div class="ferramentas borda cima">
			<input class="botao" type="submit" value="Salvar!" />
			<a href="editoras.php" class="botao cinza">Voltar</a>
		</div>
	</form>
</section>