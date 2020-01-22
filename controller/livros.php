<?php
include("../model/consulta.php");
class livros extends consulta{
    private function listarLivros(){
        include("../model/conexao.php");
        
        $dados = array();
        
        $busca = "SELECT * FROM livro";
        if(isset($_GET["filtro_autor"]) or isset($_GET["filtro_editora"])){
            $filtroAutor = $_GET["filtro_autor"];
            $filtroEditora = $_GET["filtro_editora"];
            
            if($filtroAutor != 0){
                $busca = "SELECT * FROM livro_autor JOIN livro ON livro_autor.idLivro = livro.id WHERE livro_autor.idAutor = $filtroAutor";
            }
            
            if($filtroEditora != 0){
                $busca = "SELECT * FROM livro WHERE idEditora = $filtroEditora";
            }

            
        }
        
        
        
        $query = $sql->query($busca);
        while($registro = $query->fetch_assoc()){
            $dados[] = $registro;
        }
        
        return $dados;
    }
    
    private function getLivro(){
        include("../model/conexao.php");
        
        $id = $_GET["id"];
        
        $query = $sql->query("SELECT * FROM livro JOIN editora ON livro.idEditora = editora.id WHERE livro.id = $id");
        $dados = $query->fetch_assoc();
        return $dados;
        
    }
    
    private function getAutores(){
        include("../model/conexao.php");
        
        $id = $_GET["id"];
        $dados = array(); 
        $query = $sql->query("SELECT * FROM livro_autor JOIN autor ON livro_autor.idAutor = autor.id WHERE livro_autor.idLivro = $id");
        
        while($resultado = $query->fetch_assoc()){
            $dados[] = $resultado;
        }
    
        return $dados;
        
    }
    
    private function inserirLivro(){
        include("../model/conexao.php");
        
        $titulo = $_POST["titulo"];
        $ano = $_POST["ano"];
        $totalPaginas = $_POST["total_paginas"];
        $edicao = $_POST["edicao"];
        $isbn = $_POST["isbn"];
        $capa = $_POST["capa"];
        $editora = $_POST["editora"];
        $autores = $_POST["autores"];

        
        $query = $sql->query("INSET INTO livro(titulo, ano, totalPaginas, edicao, isbn, fotoCapa, idEditora) values ('$titulo', '$ano', '$totalPaginas', '$edicao', '$isbn', '$capa', '$editora')");
        
        $idLivro = $sql->insert_id;
        
        foreach ($autores as $idAutor){
            $query = $sql->query("INSERT INTO livro_autor(idLivro, idAutor) values ($idLivro, $idAutor)");
        }
    }
    
    public function exibirView() {
        if(isset($_GET["acao"])){
            
            switch($_GET["acao"]){
                    
                case "cadastro":
                    $autores = $this->listarAutores();
                    $editoras = $this->listarEditoras();
                    $conteudo = "../view/livros/cadastro.php";
                    break;
                    
                case "detalhes":
                    $livro = $this->getLivro();
                    $autores = $this->getAutores();
                    $conteudo = "../view/livros/detalhes.php";
                    break;
                    
                case "inserir_livro":
                    $this->inserirLivro();
                    $redirecionar = "livros.php";
                    $conteudo = "../view/mensagem.php";
            }
        } else {
            $livros = $this->listarLivros();
            $autores = $this->listarAutores();
            $editoras = $this->listarEditoras();
            $conteudo = "../view/livros/lista.php";
        }
            include("../view/view.php");
    }
}

$livros = new livros;
$livros->exibirView();

?>