<?php

    
    include_once("../../dao/manipuladados.php");

    session_start();


    $acao =  $_POST["acao"];

    if ($acao == "postar"){
        $id_usuario = $_POST["id_usuario"];
        $titulo = $_POST["titulo"];
        $resumo = $_POST["resumo"];
        $nome_arquivo =  $_FILES["pdf"]['name'];
        if(!empty($nome_arquivo)) {
            $url_local = "img/pdfs/".$nome_arquivo;
            $url_local_salvo = "../../img/pdfs/".$nome_arquivo;
            move_uploaded_file($_FILES['pdf']['tmp_name'], $url_local_salvo);
        }
        

        $postar = new manipuladados();
        $postar->setTable("tb_pdf");
        $postar->setFields("id_usuario, titulo, resumo,  pdf");
        $postar->setDados("'$id_usuario', '$titulo', '$resumo', ' $url_local'");
        $postar->insert();


        echo '<script>alert("Postagem realizada com Sucesso!");</script>';
        echo '<script>location ="../../?secoes=publicacoes";</script>';

        
        
    }if ($acao == "atualizar"){
        $id = $_POST["id"];
        $id_usuario = $_POST["id_usuario"];
        $titulo = $_POST["titulo"];
        $resumo = $_POST["resumo"];
        $nome_arquivo =  $_FILES["pdf"]['name'];
        if(!empty($nome_arquivo)) {
            $url_local = "img/pdfs/".$nome_arquivo;
            $url_local_salvo = "../../img/pdfs/".$nome_arquivo;
            move_uploaded_file($_FILES['pdf']['tmp_name'], $url_local_salvo);
        }
        

        $atualizar = new manipuladados();
      
        $atualizar->updatePdf($id, $id_usuario, $titulo, $resumo, $url_local);

        echo '<script>alert("Atualização efetuada com Sucesso!");</script>';
        echo '<script>location ="../../?secoes=publicacoes";</script>';

    }if ($acao == "apagar"){
        $id =  $_POST["id"];
        $deletar = new manipuladados();
        $deletar->deletePdf($id);

        echo '<script>alert("Apagado com Sucesso!");</script>';
        echo '<script>location ="../../?secoes=publicacoes";</script>';

    }



    
?>