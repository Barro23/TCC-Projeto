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
        $_SESSION['message_alertJs'] = "Erro ao cadastrar usuário, e-mail já registrado.";
        $_SESSION['type_alertJs'] = "danger";
        
        header("Location: login.php");
        exit();
    }else{
        $checarUsuarios->setFields("nome, email, senha, tipo");
        $checarUsuarios->setDados("'$nome','$email','$senha','$tipo'");
        $checarUsuarios->insert();


        $_SESSION['message_alertJs'] = "Usuário cadastrado com sucesso!";
        $_SESSION['type_alertJs'] = "success";
        header("Location: login.php");
        exit();
    }
    
?>
