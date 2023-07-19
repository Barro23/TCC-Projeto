<?php

    session_start();
    include_once('../../dao/manipuladados.php');

    $checarUsuarios = new manipuladados();

    $nome = $_POST['nome'];
    $email = $_POST['email'];
    $senha = $_POST['senha'];
    $tipo = $_POST['tipo'];


    $checarUsuarios->setTable("tb_usuario");
    $usuarios = $checarUsuarios->getAllDataTable();

    $cadastrado = $checarUsuarios->validarLoginExistente($email);

    if($cadastrado){
        echo '<script>alert("Usuario ja existe");</script>';
        echo "<script>location ='login.php';</script>";

    }else{
        $checarUsuarios->setFields("nome, email, senha, tipo");
        $checarUsuarios->setDados("'$nome','$email','$senha','$tipo'");
        $checarUsuarios->insert();


        echo '<script>alert("Usuario Cadastrado com sucesso");</script>';
        echo "<script>location ='login.php';</script>";
    }
    
?>
