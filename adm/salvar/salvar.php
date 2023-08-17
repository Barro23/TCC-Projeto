<?php

    
    include_once("../../dao/manipuladados.php");

    session_start();

    $acao =  $_POST["acao"];

    if ($acao == "salvarTexto"){
        $id_usuario = $_POST["id_usuario"];
        $id_texto = $_POST["id_texto"];
    
    
        

        $cadastrar = new manipuladados();
        $cadastrar->setTable("tb_salvos");
        $cadastrar->setFields("id_usuario, id_texto");
        $cadastrar->setDados("'$id_usuario', '$id_texto'");
        $cadastrar->insert();


    
        echo '<script>location ="../../?secoes=postagens";</script>';

        
        
    } if ($acao == "salvarDeletar"){
        $id = $_POST["id"];
       
    
        

        $cadastrar = new manipuladados();

        $cadastrar->insert();


    
        echo '<script>location ="../../?secoes=postagens";</script>';

        
        
    }
?>