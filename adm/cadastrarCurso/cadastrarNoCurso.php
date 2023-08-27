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
        $id_semana = $_POST["id_semana"];


        $questao1 = $_POST["questao1"];
        $questao2 = $_POST["questao2"];
        $questao3 = $_POST["questao3"];
        $questao4 = $_POST["questao4"];

        $resp1 = $_POST["resp1"];
        $resp2 = $_POST["resp2"];
        $resp3 = $_POST["resp3"];
        $resp4 = $_POST["resp4"];

        $acertos = 0;
        $erradas = 0;

        if ($questao1 == $resp1)
        {
            $acertos++;
        }else
        {
            $erradas++;
        }
        if ($questao2 == $resp2)
        {
            $acertos++;
        }else
        {
            $erradas++;
        }
        if ($questao3 == $resp3)
        {
            $acertos++;
        }else
        {
            $erradas++;
        }
        if ($questao4 == $resp4)
        {
            $acertos++;
        }else
        {
            $erradas++;
        }
        if ($acertos >= 3)
        {
            $atualizarSemana = new manipuladados();
            $atualizarSemana->updateSemana($id_curso, $id_usuario, $semana);
            $_SESSION['alert'] = "Parabéns, Modulo completo!";
            
            header("location:../../?secoes=semanas&IdCurso=".$id_curso);

        }else{
            $_SESSION['alert'] = "Existem questões arradas";
            header("location:../../?secoes=semana&IdSemana=".$id_semana);
        }
        
        
    }
    
?>