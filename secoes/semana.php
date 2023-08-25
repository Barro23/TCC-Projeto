<?php

    include_once('dao/manipuladados.php');
    $manipula = new manipuladados();

    foreach($manipula->getSemana($_GET['IdSemana']) as $semana ){
        
?>
    
    <div class="container card mb-3" style="width: 100%;">
        <div class="card-body">
        
                
                <h3><?= $semana['nomeMateria'] ?></h3>
                <h1><?= $semana['conteudo'] ?></h1>

                <form method="POST" action="adm/salvar/salvar.php" enctype="multipart/form-data">   
                    <input type="text" class="form-control" hidden  name="semana" value="<?= $semana['semana'] ?>">
                    <input type="text" class="form-control" hidden  name="id_curso" value="<?= $semana['id_curso'] ?>" >
                    <input type="text" class="form-control" hidden  name="id_usuario" value="<?= $manipula->getUsuarioByEmail($_COOKIE['email'])[0]['id']?>" >
                    <button type="submit"  class="btn btn" name="acao" value="deletarTextosInPostagens" style="margin-left:95%; margin-top: -70px;" ><img src="img/Icons/save-fill.svg"/></button> 
                </form>

                </a>
        
            </div>   
        </div>


<?php
    }
?>