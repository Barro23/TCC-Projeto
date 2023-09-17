<?php

    
    include_once("../../dao/manipuladados.php");

    session_start();


    $acao =  $_POST["acao"];
    

    if ($acao == "Atualizar"){
        $id = $_POST["id"];
        $id_usuario = $_POST["id_usuario"];
        $textCarroseu1 = $_POST["textCarroseu1"];
        $textCarroseu2 = $_POST["textCarroseu2"];
        $textCarroseu3 = $_POST["textCarroseu3"];
        $textCirculo1 = $_POST["textCirculo1"];
        $textCirculo2 = $_POST["textCirculo2"];
        $textCirculo3 = $_POST["textCirculo3"];
        $textCompletoCirculo1 = $_POST["textCompletoCirculo1"];
        $textCompletoCirculo2 = $_POST["textCompletoCirculo2"];
        $textCompletoCirculo3 = $_POST["textCompletoCirculo3"];
        
        $nome_arquivo1 =  $_FILES["imgCarroseu1"]['name'];
        $nome_arquivo2 =  $_FILES["imgCarroseu2"]['name'];
        $nome_arquivo3 =  $_FILES["imgCarroseu3"]['name'];
        $nome_arquivo4 =  $_FILES["imgCirculo1"]['name'];
        $nome_arquivo5 =  $_FILES["imgCirculo2"]['name'];
        $nome_arquivo6 =  $_FILES["imgCirculo3"]['name'];
        
        if(!empty($nome_arquivo1)) {
            $url_local1 = "img/icons/".$nome_arquivo1;
            $url_local_salvo1 = "../../img/icons/".$nome_arquivo1;
            move_uploaded_file($_FILES['imgCarroseu1']['tmp_name'], $url_local_salvo1);
        }
        if(!empty($nome_arquivo2)) {
            $url_local2 = "img/icons/".$nome_arquivo2;
            $url_local_salvo2 = "../../img/icons/".$nome_arquivo2;
            move_uploaded_file($_FILES['imgCarroseu2']['tmp_name'], $url_local_salvo2);
        }
        if(!empty($nome_arquivo3)) {
            $url_local3 = "img/icons/".$nome_arquivo3;
            $url_local_salvo3 = "../../img/icons/".$nome_arquivo3;
            move_uploaded_file($_FILES['imgCarroseu3']['tmp_name'], $url_local_salvo3);
        }
        if(!empty($nome_arquivo4)) {
            $url_local4 = "img/icons/".$nome_arquivo4;
            $url_local_salvo4 = "../../img/icons/".$nome_arquivo4;
            move_uploaded_file($_FILES['imgCirculo1']['tmp_name'], $url_local_salvo4);
        }
        if(!empty($nome_arquivo5)) {
            $url_local5 = "img/icons/".$nome_arquivo5;
            $url_local_salvo5 = "../../img/icons/".$nome_arquivo5;
            move_uploaded_file($_FILES['imgCirculo2']['tmp_name'], $url_local_salvo5);
        }
        if(!empty($nome_arquivo6)) {
            $url_local6 = "img/icons/".$nome_arquivo6;
            $url_local_salvo6 = "../../img/icons/".$nome_arquivo6;
            move_uploaded_file($_FILES['imgCirculo3']['tmp_name'], $url_local_salvo6);
        }

        $atualizar = new manipuladados();
        $atualizar->updateInicio($id, $id_usuario, $textCarroseu1, $textCarroseu2, $textCarroseu3, $textCirculo1, $textCirculo2, $textCirculo3,$textCompletoCirculo1,$textCompletoCirculo2, $textCompletoCirculo3,  $url_local1, $url_local2,  $url_local3, $url_local4,  $url_local5, $url_local6);


        echo '<script>alert("Atualizado com sucesso");</script>';
        echo "<script>location ='../../?secoes=administracao';</script>";
    }



    
?>