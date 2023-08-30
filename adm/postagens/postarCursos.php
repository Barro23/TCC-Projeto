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

        
        
    }if ($acao == "postarQuestionarios"){
        $id_curso = $_POST["id_curso"];
        $id_semana = $_POST["id_semana"];
        $semana = $_POST["semana"];
        
        $perg1 = $_POST["perg1"];
        $a1 = $_POST["a1"];
        $b1 = $_POST["b1"];
        $c1 = $_POST["c1"];
        $d1 = $_POST["d1"];
        $resp1 = $_POST["resp1"];

        $perg2 = $_POST["perg2"];
        $a2 = $_POST["a2"];
        $b2 = $_POST["b2"];
        $c2 = $_POST["c2"];
        $d2 = $_POST["d2"];
        $resp2 = $_POST["resp2"];

        $perg3 = $_POST["perg3"];
        $a3 = $_POST["a3"];
        $b3 = $_POST["b3"];
        $c3 = $_POST["c3"];
        $d3 = $_POST["d3"];
        $resp3 = $_POST["resp3"];

        $perg4 = $_POST["perg4"];
        $a4 = $_POST["a4"];
        $b4 = $_POST["b4"];
        $c4 = $_POST["c4"];
        $d4 = $_POST["d4"];
        $resp4 = $_POST["resp4"];
  
        
        
       

        $postar = new manipuladados();
        $postar->setTable("tb_questionarios");
        $postar->setFields(" id_curso, id_semana, semana, perg1, a1, b1, c1 ,d1 , resp1, perg2, a2, b2, c2 ,d2 , resp2, perg3, a3, b3, c3 ,d3 , resp3, perg4, a4, b4, c4 ,d4 , resp4 ");
        $postar->setDados("'$id_curso','$id_semana', '$semana', '$perg1', '$a1', '$b1', '$c1' ,'$d1' , '$resp1', '$perg2', '$a2', '$b2', '$c2' ,'$d2' , '$resp2', '$perg3', '$a3', '$b3', '$c3' ,'$d3' , '$resp3', '$perg4', '$a4', '$b4', '$c4','$d4' , '$resp4' ");
        $postar->insert();


        echo '<script>alert("Postagem realizada com Sucesso!");</script>';
        echo '<script>location ="../../?secoes=publicacoes";</script>';

         
        
    }




    
?>