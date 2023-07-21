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
        echo "<script>location ='../../?secao=perfil';</script>";
        
    }



    
?>