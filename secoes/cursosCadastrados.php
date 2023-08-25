<?php

    include_once('dao/manipuladados.php');
    $manipula = new manipuladados();

    foreach($manipula->getCursosPorUsuarios($manipula->getUsuarioByEmail($_COOKIE['email'])[0]['id']) as $cursos ){
        
?>
    
    <div class="container card mb-3" style="width: 100%;">
        <div class="card-body">
           
                    
       
                <a href="?secoes=semanas&IdCurso=<?= $cursos ['id_curso'] ?>" style="text-decoration: none; color: black;">
                    <h3><?= $cursos['id_curso'] ?></h3>
                    
                
                <?php
                    foreach($manipula->getCursos($cursos['id_curso']) as $curso ){
                        if($cursos['semana'] > $curso['semanas']){
                ?>
                        <h1>concluido</h1>
                <?php
                        }else{
                ?>
                        <h1>andamento</h1>

                <?php
                        }
                    }
                ?>
                </a>
            </div>   
        </div>


<?php
    }
?>


