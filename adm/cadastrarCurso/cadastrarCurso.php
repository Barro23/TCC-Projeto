<?php

    
    include_once("../../dao/manipuladados.php");

    session_start();

    $acao =  $_POST["acao"];

    if ($acao == "cadastrar-se"){
        $id_usuario = $_POST["id_usuario"];
        $id_curso = $_POST["id_curso"];
        $semana = $_POST["semana"];
        $status = $_POST["status"];
    
        

        $cadastrar = new manipuladados();
        $cadastrar->setTable("tb_cursando");
        $cadastrar->setFields("id_usuario, id_curso, semana,  status");
        $cadastrar->setDados("'$id_usuario', '$id_curso', '$semana', ' $status'");
        $cadastrar->insert();


        echo '<script>alert("Cadastrado com Sucesso!");</script>';
        echo '<script>location ="../../?secoes=perfil";</script>';

        
        
    }if ($acao == "atualizar"){
        $id = $_POST["id"];
        $id_usuario = $_POST["id_usuario"];
        $titulo = $_POST["titulo"];
        $resumo = $_POST["resumo"];
        $texto = $_POST["texto"];
        

        $atualizar = new manipuladados();
      
        $atualizar->updateText($id, $id_usuario, $titulo, $resumo, $texto);



        echo '<script>alert("Atualização efetuada com Sucesso!");</script>';
        echo '<script>location ="../../?secoes=perfil";</script>';
    }if ($acao == "apagar"){
        $id =  $_POST["id"];
        $deletar = new manipuladados();
        $deletar->deleteText($id);

        echo '<script>alert("Apagado com Sucesso!");</script>';
        echo '<script>location ="../../?secoes=perfil";</script>';

    }
    
?>