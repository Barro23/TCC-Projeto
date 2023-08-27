<div class="container">
        <div class="card mb-3">
            <div class="container" style="height:700px; width:100%; overflow:auto; padding:2%">
            
<?php

    $manipula = new manipuladados;

    foreach( $manipula->getMensagens($_GET['IdChat']) as $mensagem ){




?>
    
        <?php
            if($mensagem['id_usuario'] == $manipula->getUsuarioByEmail($_COOKIE['email'])[0]['id']){
                $contas = new manipuladados();
                $conta = $contas->getUsuariosPorID($mensagem['id_usuario'])
        ?>
            <div class="container card mb-3" style="width: fit-content; height: fit-content; margin-right: 10%; background-color: #a8d8a8;">
                <div class="card-body ">
                    <h6><?= $conta[0]['nome'] ?></h3>
                    <h4><?= $mensagem['mensagem'] ?></h1>
                <br/>
      
                </div>   
            </div>
            
        <?php
            }else{
                $contas = new manipuladados();
                $conta = $contas->getUsuariosPorID($mensagem['id_usuario'])
        ?>
            <div class="container card mb-3" style="width: fit-content; height: fit-content; margin-left: 10%; background-color: #262e2a71;">
                <div class="card-body ">
                    <h6><?= $conta[0]['nome'] ?></h3>
                    <h4><?= $mensagem['mensagem'] ?></h1>
                <br/>
      
                </div>   
            </div>
            
        <?php
            }
        ?>
        
<?php
    }
?>
            <h1 id=env style="position: relative; margin-top:-710px; "></h1>
        
        </div>
    </div>
</div>


<div class="container" >
    <form class="d-flex" method="POST" action="adm/chats/chat.php" >      
        <input type="text" class="form-control" hidden  name="id_usuario" value="<?= $manipula->getUsuarioByEmail($_COOKIE['email'])[0]['id'] ?>" >                      
        <input type="text" class="form-control" hidden  name="id_chat" value="<?= $_GET['IdChat'] ?>" >
        <input type="text" class="form-control"  name="mensagem">   
        <button type="submit"  class="btn btn" name="acao" value="addMensagem" style="" ><img src="img/Icons/send-fill.svg"/></button> 
    </form>
</div>