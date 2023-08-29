<?php

    
    include_once("../../dao/manipuladados.php");

    session_start();


    $acao =  $_POST["acao"];

    if ($acao == "postar"){
        $id_usuario = $_POST["id_usuario"];
        $titulo = $_POST["titulo"];
        $resumo = $_POST["resumo"];
        $semanas = $_POST["semanas"];
        $horas = $_POST["horas"];
        
        
       

        $postar = new manipuladados();
        $postar->setTable("tb_curso");
        $postar->setFields("id_usuario, titulo, resumo, semanas, horas");
        $postar->setDados("'$id_usuario', '$titulo', '$resumo', ' $semanas' , '$horas'");
        $postar->insert();


        echo '<script>alert("Postagem realizada com Sucesso!");</script>';
        echo '<script>location ="../../?secoes=publicacoes";</script>';

        
        
    }if ($acao == "postarSemana"){
        $id_curso = $_POST["id_curso"];
        $semana = $_POST["semana"];
        $nomeMateria = $_POST["nomeMateria"];
        $conteudo = $_POST["conteudo"];
  
        
        
       

        $postar = new manipuladados();
        $postar->setTable("tb_semanas");
        $postar->setFields(" id_curso, semana, nomeMateria, conteudo");
        $postar->setDados("'$id_curso', '$semana', ' $nomeMateria' , '$conteudo'");
        $postar->insert();


        echo '<script>alert("Postagem realizada com Sucesso!");</script>';
        echo '<script>location ="../../?secoes=publicacoes";</script>';

        
        
    }




    
?>