<?php

    
    include_once("../../dao/manipuladados.php");

    session_start();

    $acao =  $_POST["acao"];

    if ($acao == "salvarTextoInPostagens"){
        $id_usuario = $_POST["id_usuario"];
        $id_texto = $_POST["id_texto"];
    
    
        

        $cadastrar = new manipuladados();
        $cadastrar->setTable("tb_salvos");
        $cadastrar->setFields("id_usuario, id_texto");
        $cadastrar->setDados("'$id_usuario', '$id_texto'");
        $cadastrar->insert();


    
        echo '<script>location ="../../?secoes=postagens";</script>';

        
        
    } if ($acao == "deletarTextosInPostagens"){
        $id = $_POST["id"];
        
        $deleteSalvos = new manipuladados();

        $deleteSalvos->deleteSalvos($id);


    
        echo '<script>location ="../../?secoes=postagens";</script>';

        
        
    }
    if ($acao == "salvarPdfsInPostagens"){
        $id_usuario = $_POST["id_usuario"];
        $id_pdf = $_POST["id_pdf"];
    
    
        

        $cadastrar = new manipuladados();
        $cadastrar->setTable("tb_salvos");
        $cadastrar->setFields("id_usuario, id_pdf");
        $cadastrar->setDados("'$id_usuario', '$id_pdf'");
        $cadastrar->insert();


    
        echo '<script>location ="../../?secoes=postagens";</script>';

        
        
    } if ($acao == "deletarPdfsInPostagens"){
        $id = $_POST["id"];
        
        $deleteSalvos = new manipuladados();

        $deleteSalvos->deleteSalvos($id);


    
        echo '<script>location ="../../?secoes=postagens";</script>';

        
        
    }
    if ($acao == "salvarTextoInSalvarAlunos"){
        $id_usuario = $_POST["id_usuario"];
        $id_texto = $_POST["id_texto"];
    
    
        

        $cadastrar = new manipuladados();
        $cadastrar->setTable("tb_salvos");
        $cadastrar->setFields("id_usuario, id_texto");
        $cadastrar->setDados("'$id_usuario', '$id_texto'");
        $cadastrar->insert();


    
        echo '<script>location ="../../?secoes=salvosAlunos";</script>';

        
        
    } if ($acao == "deletarTextosInSalvarAlunos"){
        $id = $_POST["id"];
        
        $deleteSalvos = new manipuladados();

        $deleteSalvos->deleteSalvos($id);


    
        echo '<script>location ="../../?secoes=salvosAlunos";</script>';

        
        
    }
    if ($acao == "salvarPdfsInSalvarAlunos"){
        $id_usuario = $_POST["id_usuario"];
        $id_pdf = $_POST["id_pdf"];
    
    
        

        $cadastrar = new manipuladados();
        $cadastrar->setTable("tb_salvos");
        $cadastrar->setFields("id_usuario, id_pdf");
        $cadastrar->setDados("'$id_usuario', '$id_pdf'");
        $cadastrar->insert();


    
        echo '<script>location ="../../?secoes=salvosAlunos";</script>';

        
        
    } if ($acao == "deletarPdfsInSalvarAlunos"){
        $id = $_POST["id"];
        
        $deleteSalvos = new manipuladados();

        $deleteSalvos->deleteSalvos($id);


    
        echo '<script>location ="../../?secoes=salvosAlunos";</script>';

        
        
    }
    
?>