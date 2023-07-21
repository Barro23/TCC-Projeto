<?php

    
    include_once("../../dao/manipuladados.php");

    session_start();


    $acao =  $_POST["acao"];

    if ($acao == "postar"){
        $id_usuario = $_POST["id_usuario"];
        $titulo = $_POST["titulo"];
        $resumo = $_POST["resumo"];
        $texto = $_POST["texto"];
        

        $postar = new manipuladados();
        $postar->setTable("tb_textos");
        $postar->setFields("id_usuario, titulo, resumo,  texto");
        $postar->setDados("'$id_usuario', '$titulo', '$resumo', ' $texto'");
        $postar->insert();


        echo '<script>alert("Postagem realizada com Sucesso!");</script>';
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