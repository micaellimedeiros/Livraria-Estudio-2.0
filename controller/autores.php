<?php
include("../model/consulta.php");

class autores extends consulta{
    
    private function getDetalhes(){
        include("../model/conexao.php");
        
        $id = $_GET["id"];
        
        $query = $sql->query("SELECT * FROM autor WHERE id = $id");
        $dados = $query->fetch_assoc();
        return $dados;
        
    }
    
    private function inserirAutor(){
        include("../model/conexao.php");
        
        $nome = $_POST["nome"];
        $email = $_POST["email"];
        $formacao = $_POST["formacao"];
        $foto = $_POST["foto"];
        
        $query = $sql->query("INSET INTO autor(nome, email, formacao, foto) values ('$nome', '$email', '$formacao', '$foto')");
        
    }
    
    public function exibirView() {
        if(isset($_GET["acao"])){
            
            switch($_GET["acao"]){
                    
                case "cadastro":
                    $conteudo = "../view/autores/cadastro.php";
                    break;
                    
                case "detalhes":
                    $autor = $this->getDetalhes();
                    $conteudo = "../view/autores/detalhes.php";
                    break;
                    
                case "inserir_autor":
                    $this->inserirAutor();
                    $redirecionar = "autores.php";
                    $conteudo = "../view/mensagem.php";
            }
        } else {
            $autores = $this->listarAutores();
            $conteudo = "../view/autores/lista.php";
        }
            include("../view/view.php");
    }
}

$autores = new autores;
$autores->exibirView();

?>