<?php

    include_once('dao/manipuladados.php');
    $manipula = new manipuladados();

    foreach($manipula->getSemanasPorCurso($_GET['IdCurso']) as $semanas ){
        
?>
    
    <div class="container card mb-3" style="width: 100%;">
        <div class="card-body">
           
                    
       
                <a href="?secoes=semana&IdSemana=<?= $semanas['id'] ?>" style="text-decoration: none; color: black;">
                <h3><?= $semanas['id_curso'] ?></h3>
                <h1><?= $semanas['nomeMateria'] ?></h1>

                </a>
        
            </div>   
        </div>


<?php
    }
?>