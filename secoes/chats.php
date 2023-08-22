<?php

    include_once('dao/manipuladados.php');
    $manipula = new manipuladados();

    foreach($manipula->getChatsPorUsuarios($manipula->getUsuarioByEmail($_COOKIE['email'])[0]['id']) as $chats ){
        
?>
    
    <div class="container card mb-3" style="width: 100%;">
        <div class="card-body">
           
                    
       
                <a href="?secoes=chat&IdChat=<?= $chats['id'] ?>" style="text-decoration: none; color: black;">

                <h1><?= $chats['id'] ?></h1>

                </a>
        
            </div>   
        </div>


<?php
    }
?>


