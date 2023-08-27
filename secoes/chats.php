<?php

    include_once('dao/manipuladados.php');
    $manipula = new manipuladados();

    foreach($manipula->getChatsPorUsuarios($manipula->getUsuarioByEmail($_COOKIE['email'])[0]['id']) as $chats ){
        
?>
    
    <div class="container card mb-3" style="width: 100%;">
        <div class="card-body">
           
        <?php
            $contas = new manipuladados();
           
            
            if($manipula->getUsuarioByEmail($_COOKIE['email'])[0]['id'] != $chats['id_usuario1']){
                $contas = new manipuladados();
                
                $conta = $contas->getUsuariosPorID($chats['id_usuario1']);
        ?>  
        
            <a href="?secoes=chat&IdChat=<?= $chats['id'] ?>#env" style="text-decoration: none; color: black;">
                
               
                <img src="<?= $conta[0]['img_capa'] ?>" style="object-fit: fill; background-color: white; width: 60px; height: 60px; border-radius: 50%; border: solid 4px white; position: relative; ">
                
                <h2 class="card-title" style="position: relative; margin-left: 60px; margin-top: -45px;"><?= $conta[0]['nome'] ?></h2>
    

            </a>
        <?php
            }if($manipula->getUsuarioByEmail($_COOKIE['email'])[0]['id'] != $chats['id_usuario2']){
                $contas = new manipuladados();
                
                $conta = $contas->getUsuariosPorID($chats['id_usuario2']);
        ?>
       
            <a href="?secoes=chat&IdChat=<?= $chats['id'] ?>#env" style="text-decoration: none; color: black;">
                
                
                <img src="<?= $conta[0]['img_capa'] ?>" style="object-fit: fill; background-color: white; width: 60px; height: 60px; border-radius: 50%; border: solid 4px white; position: relative; ">
                
                <h2 class="card-title" style="position: relative; margin-left: 60px; margin-top: -45px;"><?= $conta[0]['nome'] ?></h2>
    

            </a>
        <?php
            }
        ?>
        
            </div>   
        </div>


<?php
    }
?>


