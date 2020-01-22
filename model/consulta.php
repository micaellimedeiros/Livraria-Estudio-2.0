<?php
class consulta{
        
    protected function listarAutores(){
        include("../model/conexao.php");
            
        $dados = array();
            
        $query = $sql->query("SELECT * FROM autor");
        while($registro = $query->fetch_assoc()){
            $dados[] = $registro;
        }
            
        return $dados;
    }   
    
    protected function listarEditoras(){
        include("../model/conexao.php");
            
        $dados = array();
            
        $query = $sql->query("SELECT * FROM editora");
        while($registro = $query->fetch_assoc()){
            $dados[] = $registro;
        }
            
        return $dados;
    }   
}