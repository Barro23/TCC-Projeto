<?php

    
    include_once("../../dao/manipuladados.php");

    session_start();


    $acao =  $_POST["acao"];
    if ($acao == "cadastrar"){
        $nome = $_POST["nome"];
        $nome_completo = $_POST["nome_completo"];
        $instituto = $_POST["instituto"];
        $descricao = $_POST["descricao"];
        $data_nascimento = $_POST["data_nascimento"];
        $email = $_POST["email"];
        $senha = $_POST["senha"];
        $tipo = $_POST["tipo"];
        $nome_arquivo1 =  $_FILES["img_capa"]['name'];
        $nome_arquivo2 =  $_FILES["img_fundo"]['name'];
        if(!empty($nome_arquivo1)) {
            $url_local1 = "img/perfis/".$nome_arquivo1;
            $url_local_salvo1 = "../../img/perfis/".$nome_arquivo1;
            move_uploaded_file($_FILES['img_capa']['tmp_name'], $url_local_salvo1);
        }
        if(!empty($nome_arquivo2)) {
            $url_local2 = "img/perfis/".$nome_arquivo2;
            $url_local_salvo2 = "../../img/perfis/".$nome_arquivo2;
            move_uploaded_file($_FILES['img_fundo']['tmp_name'], $url_local_salvo2);
        }

        $checarUsuarios = new manipuladados();
        $checarUsuarios->setTable("tb_usuario");
        $usuarios = $checarUsuarios->getAllDataTable();

        $cadastrado = $checarUsuarios->validarLoginExistente($email);

        if($cadastrado){
            echo '<script>alert("Usuario ja existe");</script>';
            echo "<script>location ='login.php';</script>";

        }else{
            $checarUsuarios->setFields("nome, nome_completo, instituto, descricao, data_nascimento, email, senha, tipo, img_capa, img_fundo");
            $checarUsuarios->setDados("'$nome', '$nome_completo', '$instituto', ' $descricao', '$data_nascimento', '$email','$senha','$tipo', '$url_local1', '$url_local2'");
            $checarUsuarios->insert();


            echo '<script>alert("Usuario Cadastrado com sucesso");</script>';
            echo "<script>location ='login.php';</script>";
        }
    
    }


    if ($acao == "Atualizar"){
        $id = $_POST["id"];
        $nome = $_POST["nome"];
        $nome_completo = $_POST["nome_completo"];
        $instituto = $_POST["instituto"];
        $descricao = $_POST["descricao"];
        $data_nascimento = $_POST["data_nascimento"];
        $email = $_POST["email"];
        $senha = $_POST["senha"];
        $tipo = $_POST["tipo"];
        $nome_arquivo1 =  $_FILES["img_capa"]['name'];
        $nome_arquivo2 =  $_FILES["img_fundo"]['name'];
        if(!empty($nome_arquivo1)) {
            $url_local1 = "img/perfis/".$nome_arquivo1;
            $url_local_salvo1 = "../../img/perfis/".$nome_arquivo1;
            move_uploaded_file($_FILES['img_capa']['tmp_name'], $url_local_salvo1);
        }
        if(!empty($nome_arquivo2)) {
            $url_local2 = "img/perfis/".$nome_arquivo2;
            $url_local_salvo2 = "../../img/perfis/".$nome_arquivo2;
            move_uploaded_file($_FILES['img_fundo']['tmp_name'], $url_local_salvo2);
        }

        $atualizar = new manipuladados();
        $atualizar->updateUser($id, $nome, $nome_completo, $instituto, $descricao, $data_nascimento, $email,$senha,$tipo, $url_local1, $url_local2);


            echo '<script>alert("Usuario Atualizado com sucesso");</script>';
            echo "<script>location ='../../?secoes=perfil';</script>";
    }

   
    if ($acao == "Deletar"){
        $id =  $_POST["id"];
        $delete = new manipuladados();
        $delete->DeleteUser($id);

        echo '<script>alert("Usuario deletado sucesso");</script>';
        echo "<script>location ='login.php';</script>";
    }

    
?>
