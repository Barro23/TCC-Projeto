<?php

    
    include_once("../../dao/manipuladados.php");

    session_start();

    $acao =  $_POST["acao"];

    if ($acao == "cadastrar-se"){
        $id_usuario = $_POST["id_usuario"];
        $id_curso = $_POST["id_curso"];
        $semana = $_POST["semana"];
        
    
        

        $cadastrar = new manipuladados();
        $cadastrar->setTable("tb_cursando");
        $cadastrar->setFields("id_usuario, id_curso, semana");
        $cadastrar->setDados("'$id_usuario', '$id_curso', '$semana'");
        $cadastrar->insert();


        echo '<script>alert("Cadastrado com Sucesso!");</script>';
        echo '<script>location ="../../?secoes=cursosCadastrados";</script>';

        
        
    }if ($acao == "atualizarSemana"){
        $id_usuario = $_POST["id_usuario"];
        $id_curso = $_POST["id_curso"];
        $semana = $_POST["semana"];

        
        $atualizarSemana = new manipuladados();
        $atualizarSemana->updateSemana($id_curso, $id_usuario, $semana);

        echo '<script>alert("Parabéns, modulo completado com Sucesso!");</script>';
        header("location:../../?secoes=semanas&IdCurso=".$id_curso);

    }
    
?>