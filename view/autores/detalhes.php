<section id="conteudo">
    <header class="column">
        <h1>Detalhes do autor</h1>        
    </header>
    
    <div class="detalhes">
        <img src="<?=$autor["foto"];?>"/>
        <ul>
            <li><b>Nome: </b><?=$autor["nome"];?></li>
            <li><b>Email: </b><?=$autor["email"];?></li>
            <li><b>Formacao: </b><?=$autor["formacao"];?></li>
        </ul>
    </div>
    
    <div class="ferramentas">
        <a href="autores.php" class="botao">Voltar</a>
    </div>
</section>