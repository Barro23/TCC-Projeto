<?php

include_once("../../dao/manipuladados.php");

session_start();

$manipula = new manipuladados;

$acao =  $_POST["acao"];

if ($acao == "criarChat"){
    $id_usuario1 = $_POST["id_usuario1"];
    $id_usuario2 = $_POST["id_usuario2"];
    $id_usuario3 = $_POST["id_usuario2"];
    $id_usuario4 = $_POST["id_usuario1"];
   
    $checkChat = $manipula->procurarChats($id_usuario1, $id_usuario2);
    $checkChat2 = $manipula->procurarChats2($id_usuario3, $id_usuario4);
    if($checkChat == 0 AND $checkChat2 == 0){
    
    
        $chat = new manipuladados();
        $chat->setTable("tb_chats");
        $chat->setFields("id_usuario1, id_usuario2");
        $chat->setDados("'$id_usuario1', '$id_usuario2'");
        $chat->insert();

        echo '<script>location ="../../?secoes=chats";</script>';
    }else{
       
        header("location:../../?secoes=chat&IdChat=".$manipula->procurarChatsMostrarID($id_usuario1, $id_usuario2, $id_usuario3, $id_usuario4)[0]['id']."#env");
    }

}
if ($acao == "addMensagem"){
    $id_usuario = $_POST["id_usuario"];
    $id_chat = $_POST["id_chat"];
    $mensagem = $_POST["mensagem"];
    
    $mensagens = new manipuladados();
    $mensagens->setTable("tb_mensagens");
    $mensagens->setFields("id_usuario, id_chat, mensagem");
    $mensagens->setDados("'$id_usuario', '$id_chat', '$mensagem'");
    $mensagens->insert();

    header("location:../../?secoes=chat&IdChat=".$id_chat."#env");


}



?>