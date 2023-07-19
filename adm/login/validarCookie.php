<?php

    session_start();
    include_once('../../dao/manipuladados.php');

    $manipula = new manipuladados();

    // Recebendo as variaveis do POST
    $email = $_POST['email'];
    $senha = $_POST['password'];
    $tipo = $_POST['tipo'];

    // Definindo a tebela da consulta do banco de dados
    $manipula->setTable("tb_usuario");

    // Retorna a quantidade de usuarios registrados com o email e usuarios passados como parametro
    $linhas = $manipula->validarLogin($email, $senha , $tipo);

    // Caso não exista um usuário registrado no banco de dados
    if($linhas == 0){
        echo '<script>alert("Usuario não cadastrado ou incorreto(s)");</script>';
        echo "<script>location ='login.php';</script>";
    }else{
        // Definindo a variavel global e o coockie 
        $_SESSION['email'] = $email;
        $_SESSION['tipo'] = $tipo;
        setcookie("email", $email, time() + (106400 * 30), "/");  
        // Voltando para o index
        header("Location: ../../index.php");
        exit();
    }
?>