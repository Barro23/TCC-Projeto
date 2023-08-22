<?php

    $manipula = new manipuladados;

    foreach( $manipula->getMensagens($_GET['IdChat']) as $mensagem ){




?>
    <div class="container card mb-3" style="width: 100%;">
        <div class="card-body">
      
                <h3><?= $mensagem['id_usuario'] ?></h3>
                <h1><?= $mensagem['mensagem'] ?></h1>

                <br/>
      
            </div>   
        </div>

<?php
    }
?>
<div class="container">
    <form class="d-flex" method="POST" action="adm/chats/chat.php" >      
        <input type="text" class="form-control" hidden  name="id_usuario" value="<?= $manipula->getUsuarioByEmail($_COOKIE['email'])[0]['id'] ?>" >                      
        <input type="text" class="form-control" hidden  name="id_chat" value="<?= $mensagem['id_chat'] ?>" >
        <input type="text" class="form-control"  name="mensagem" value="" >   
        <button type="submit"  class="btn btn" name="acao" value="addMensagem" style="" ><img src="img/Icons/send-fill.svg"/></button> 
    </form>
</div>